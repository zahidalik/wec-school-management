# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Role.create([{name: "accountant"}, {name: "cashier"}, {name: "ceo"}, {name: "cfc"}, {name: "director"},
            {name: "chairman"}, {name: "kitchen_supervisor"}, {name: "uans_headmaster"},
            {name: "kemps_headmaster"}, {name: "wbs_headmaster"}, {name: "wgs_headmaster"},
            {name: "cttc_principal"}, {name: "journalism_principal"}, {name: "nursing_principal"},
            {name: "operations_manager"}])