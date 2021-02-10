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
    image_path: "SomeURL"
  })

{:ok, api} =
  KeyLearning.School.create_course(%{
    name: "Phoenix API",
    image_path: "SomeURL"
  })

{:ok, otp} =
  KeyLearning.School.create_course(%{
    name: "OTP",
    image_path: "SomeURL"
  })

KeyLearning.School.create_lecture(%{
  description:
    "Phx hooks é a forma de como o backend pode mandar informações para o front end. O front end é o que manipula o DOM e o DOM são os elementos visuais de um site. Esse vídeo é um breve introdutório relacionado ao Phoenix Hook e todas suas possibilidades.",
  duration: 360,
  name: "Phoenix Hooks",
  video_url: "https://www.youtube.com/watch?v=YFFuViGq0Nw&ab_channel=elxproBR",
  course_id: live_view.id
})

KeyLearning.School.create_lecture(%{
  description:
    "Vamos utilizar duas applicacoes, uma com generators e uma sem. Na sem generator vamos fazer com uma abordagem step by step e ver nossa applicacao ser construida",
  duration: 360,
  name: "TDD in LiveView",
  video_url: "https://www.youtube.com/watch?v=AelTREo4h10&ab_channel=elxproBR",
  course_id: live_view.id
})

KeyLearning.School.create_lecture(%{
  description:
    "Hoje vamos falar sobre como usar event_handlers com live view e como extrair HTML para componentes stateless e statefull.",
  duration: 360,
  name: "LiveView event handlers",
  video_url: "https://www.youtube.com/watch?v=65qIOBRt72c&ab_channel=elxproBR",
  course_id: live_view.id
})

KeyLearning.School.create_lecture(%{
  description:
    "Utilizaremos os generators do phoenix para gerar nossos contextos e enfim consumir os recursos por meio de nossa API",
  duration: 360,
  name: "Como criar apis com Phoenix",
  video_url: "https://www.youtube.com/watch?v=ZVRuWxVJErU&t=4s&ab_channel=elxproBR",
  course_id: api.id
})

KeyLearning.School.create_lecture(%{
  description: "Video 13 da nossa serie de videos do antigo teste de Stone!",
  duration: 360,
  name: "COMO CRIAR API USANDO PHOENIX PODE SER SER MOLEZA PARA VOCÊ #13",
  video_url: "https://www.youtube.com/watch?v=ZVRuWxVJErU&t=4s&ab_channel=elxproBR",
  course_id: api.id
})
