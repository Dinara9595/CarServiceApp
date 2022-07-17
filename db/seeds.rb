categories = Category.create!([{ name: 'Техническое обслуживание' }, { name: 'Шиномонтаж' }, { name: 'Двигатель и система охлаждения' }])

services = Service.create!([{ name: 'Замена охлаждающей жидкости', category: categories[0], price: 500 },
                            { name: 'Замена масла', category: categories[0], price: 500 },
                            { name: 'Балансировка колес', category: categories[1], price: 2000 },
                            { name: 'Компьютерная диагностика', category: categories[1], price: 5000 },
                            { name: 'Замена турбины', category: categories[2], price: 3000 },
                            { name: 'Регулировка клапанов', category: categories[2], price: 2000 },
                            { name: 'Замена радиатора', category: categories[2], price: 8000 }])

executors = Executor.create!([{ name: 'Анатолий' },
                              { name: 'Григорий' },
                              { name: 'Захар' },
                              { name: 'Леонард' },
                              { name: 'Прохор' },
                              { name: 'Николай' }])


all_executors = Executor.all

i = 0
while i <= services.count - 1
  all_executors.map { |executor| executor.services.push(services[i]) }
  i+=1
end

Order.create!([{ client: 'Иванов Антон', service: services[0], executor: executors[0] },
               { client: 'Петров Игорь', service: services[6], executor: executors[2] },
               { client: 'Антонов Иван', service: services[1], executor: executors[5] }])
