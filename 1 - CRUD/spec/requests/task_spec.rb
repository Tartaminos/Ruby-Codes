require "rails_helper"

RSpec.describe "Tasks API", type: :request do
  describe "GET /taskss" do
    it "returns all tasks" do
      get "/tasks"

      expect(response).to have_http_status(:ok)
    end

    it "returns tasks with the defined status" do
      get "/tasks", params: { status: "pending" }

      expect(response).to have_http_status(:ok)
    end

    it "returns error for invalid status" do
      get "/tasks", params: { status: "archived" }

      expect(response).to have_http_status(:unprocessable_entity)
    end
  end

  describe "POST /tasks" do
    it "must create a task with blank status passed and apply pending" do
      post "/tasks", params: {
        task: {
          title: "title",
          description: "desc",
          status: " "
        }
      }

      expect(response).to have_http_status(:created)
    end

    it "must create a task" do
      post "/tasks", params: {
        task: {
          title: "title",
          description: "desc",
          status: "pending"
        }
      }

      expect(response).to have_http_status(:created)
    end

    it "must not create a task" do
      post "/tasks", params: {
        task: {
          title: "title",
          description: "desc",
          status: "invalid one"
        }
      }

      expect(response).to have_http_status(:unprocessable_entity)
    end
  end

  describe "PATCH /tasks/:id" do
    it "updates a task when params are valid" do
      patch "/tasks/1", params: {
        task: {
          title: "updated title",
          description: "updated desc",
          status: "done"
        }
      }

      expect(response).to have_http_status(:ok)
    end

    it "returns 404 when task does not exist" do
      patch "/tasks/999", params: {
        task: {
          title: "updated title",
          description: "updated desc",
          status: "done"
        }
      }

      expect(response).to have_http_status(:not_found)
    end

    it "returns 422 when status is invalid" do
      patch "/tasks/1", params: {
        task: {
          status: "invalid_status"
        }
      }

      expect(response).to have_http_status(:unprocessable_entity)
    end
  end

  describe "DELETE /tasks/:id" do
    it "deletes a task when params are valid" do
      delete "/tasks/1"
      
      expect(response).to have_http_status(:no_content)
    end

    it "returns 404 when task does not exist" do
      delete "/tasks/999"

      expect(response).to have_http_status(:not_found)
    end
  end
end