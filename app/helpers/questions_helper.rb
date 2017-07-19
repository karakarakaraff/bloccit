module QuestionsHelper
  def index_resolved(question)
    if question.resolved
      link_to "RESOLVED: #{question.title}", question
    else
      link_to question.title, question
    end
  end

  def show_resolved(question)
    if question.resolved
      "RESOLVED: #{question.title}"
    else
      question.title
    end
  end
end
