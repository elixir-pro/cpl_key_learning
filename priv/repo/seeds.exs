# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     KeyLearning.Repo.insert!(%KeyLearning.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

{:ok, live_view} =
  KeyLearning.School.create_course(%{
    name: "Phoenix Live View",
    lectures: [
      %{
        description:
          "Hoje vamos falar sobre como usar event_handlers com live view e como extrair HTML para componentes stateless e statefull.",
        duration: 360,
        name: "LiveView event handlers",
        video_url: "https://www.youtube.com/watch?v=ZVRuWxVJErU&t=4s&ab_channel=elxproBR"      },
      %{
        description:
          "Vamos utilizar duas applicacoes, uma com generators e uma sem. Na sem generator vamos fazer com uma abordagem step by step e ver nossa applicacao ser construida",
        duration: 360,
        name: "TDD in LiveView",
        video_url: "https://www.youtube.com/watch?v=ZVRuWxVJErU&t=4s&ab_channel=elxproBR"      },
      %{
        description:
          "Phx hooks é a forma de como o backend pode mandar informações para o front end. O front end é o que manipula o DOM e o DOM são os elementos visuais de um site. Esse vídeo é um breve introdutório relacionado ao Phoenix Hook e todas suas possibilidades.",
        duration: 360,
        name: "Phoenix Hooks",
        video_url: "https://www.youtube.com/watch?v=ZVRuWxVJErU&t=4s&ab_channel=elxproBR"      }
    ],
    image_path: "data:image/png;base64,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"
  })

{:ok, api} =
  KeyLearning.School.create_course(%{
    name: "Phoenix API",
    lectures: [
      %{
        description: "Video 13 da nossa serie de videos do antigo teste de Stone!",
        duration: 360,
        name: "COMO CRIAR API USANDO PHOENIX PODE SER SER MOLEZA PARA VOCÊ #13",
        video_url: "https://www.youtube.com/watch?v=ZVRuWxVJErU&t=4s&ab_channel=elxproBR"      },
      %{
        description:
          "Utilizaremos os generators do phoenix para gerar nossos contextos e enfim consumir os recursos por meio de nossa API",
        duration: 360,
        name: "Como criar apis com Phoenix",
        video_url: "https://www.youtube.com/watch?v=ZVRuWxVJErU&t=4s&ab_channel=elxproBR"      }
    ],
    image_path: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJ_vopfFWAjzLRAoV12qb8WZaGGer5GGxJeA&usqp=CAU"
  })

{:ok, otp} =
  KeyLearning.School.create_course(%{
    name: "OTP",
    image_path: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJ_vopfFWAjzLRAoV12qb8WZaGGer5GGxJeA&usqp=CAU"
  })

# KeyLearning.School.create_lecture(%{
#   description:
#     "Phx hooks é a forma de como o backend pode mandar informações para o front end. O front end é o que manipula o DOM e o DOM são os elementos visuais de um site. Esse vídeo é um breve introdutório relacionado ao Phoenix Hook e todas suas possibilidades.",
#   duration: 360,
#   name: "Phoenix Hooks",
#   video_url: "https://www.youtube.com/watch?v=YFFuViGq0Nw&ab_channel=elxproBR",
#   course_id: live_view.id
# })

# KeyLearning.School.create_lecture(%{
#   description:
#     "Vamos utilizar duas applicacoes, uma com generators e uma sem. Na sem generator vamos fazer com uma abordagem step by step e ver nossa applicacao ser construida",
#   duration: 360,
#   name: "TDD in LiveView",
#   video_url: "https://www.youtube.com/watch?v=AelTREo4h10&ab_channel=elxproBR",
#   course_id: live_view.id
# })

# KeyLearning.School.create_lecture(%{
#   description:
#     "Hoje vamos falar sobre como usar event_handlers com live view e como extrair HTML para componentes stateless e statefull.",
#   duration: 360,
#   name: "LiveView event handlers",
#   video_url: "https://www.youtube.com/watch?v=65qIOBRt72c&ab_channel=elxproBR",
#   course_id: live_view.id
# })

# KeyLearning.School.create_lecture(%{
#   description:
#     "Utilizaremos os generators do phoenix para gerar nossos contextos e enfim consumir os recursos por meio de nossa API",
#   duration: 360,
#   name: "Como criar apis com Phoenix",
#   video_url: "https://www.youtube.com/watch?v=ZVRuWxVJErU&t=4s&ab_channel=elxproBR",
#   course_id: api.id
# })

# KeyLearning.School.create_lecture(%{
#   description: "Video 13 da nossa serie de videos do antigo teste de Stone!",
#   duration: 360,
#   name: "COMO CRIAR API USANDO PHOENIX PODE SER SER MOLEZA PARA VOCÊ #13",
#   video_url: "https://www.youtube.com/watch?v=ZVRuWxVJErU&t=4s&ab_channel=elxproBR",
#   course_id: api.id
# })
