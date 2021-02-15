<?php

use Illuminate\Database\Seeder;

class PermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \App\Permission::insert([
            ['name' => 'view_users'],
            ['name' => 'edit_users'],
            ['name' => 'view_roles'],
            ['name' => 'edit_roles'],
            ['name' => 'view_orders'],
            ['name' => 'edit_orders'],
            ['name' => 'view_companies'],
            ['name' => 'edit_companies'],
            ['name'=>  'delete_companies'],
            ['name' => 'view_branches'],
            ['name' => 'edit_branches'],
            ['name'=>  'delete_branches'],
            ['name' => 'view_countries'],
            ['name' => 'edit_countries'],
            ['name'=>  'delete_countries'],
            ['name'=>  'view_cities'],
            ['name' => 'edit_cities'],
            ['name'=>  'delete_cities'],
            ['name'=>  'view_religions'],
            ['name' => 'edit_religions'],
            ['name'=>  'delete_religions'],
            ['name'=>  'view_competences_evaluations'],
            ['name' => 'competences_evaluations'],
            ['name'=>  'delete_competences_evaluations'],
            ['name'=>  'view_education_training_types'],
            ['name' => 'edit_education_training_types'],
            ['name'=>  'delete_education_training_types'],
            ['name'=>  'view_document_types'],
            ['name' => 'edit_document_types'],
            ['name'=>  'delete_beneficiany_types'],
            ['name'=>  'view_document_types'],
            ['name' => 'edit_beneficiany_types'],
            ['name'=>  'delete_beneficiany_types'],
            ['name'=>  'view_leave_vacation_types'],
            ['name' => 'edit_leave_vacation_types'],
            ['name'=>  'delete_leave_vacation_types'],
            ['name'=>  'view_position_designations'],
            ['name' => 'edit_position_designations'],
            ['name'=>  'delete_position_designations'],
            ['name'=>  'view_sponsors'],
            ['name' => 'edit_sponsors'],
            ['name'=>  'delete_sponsors'],
            ['name'=>  'view_earning_benefits'],
            ['name' => 'edit_earning_benefits'],
            ['name'=>  'delete_earning_benefits'],
            ['name'=>  'view_deductions'],
            ['name' => 'edit_deductions'],
            ['name'=>  'delete_deductions'],
            ['name'=>  'view_currencies'],
            ['name' => 'edit_currencies'],
            ['name'=>  'delete_currencies'],
            ['name'=>  'view_sections'],
            ['name' => 'edit_sections'],
            ['name'=>  'delete_sections'],
            ['name'=>  'view_percentages'],
            ['name' => 'edit_percentages'],
            ['name'=>  'delete_percentages'],
            ['name'=>  'view_evaluation_types'],
            ['name' => 'edit_evaluation_types'],
            ['name'=>  'delete_evaluation_types'],
            ['name'=>  'view_company_schedules'],
            ['name' => 'edit_company_schedules'],
            ['name'=>  'delete_company_schedules'],
            ['name'=>  'view_costcenters'],
            ['name' => 'edit_costcenters'],
            ['name'=>  'delete_costcenters'],
            ['name'=>  'view_modifications'],
            ['name' => 'edit_modifications'],
            ['name'=>  'delete_modifications'],
            ['name'=>  'view_sessions'],
            ['name' => 'edit_sessions'],
            ['name'=>  'delete_session'],
            ['name'=>  'view_gosi_subscription'],
            ['name' => 'edit_gosi_subscriptions'],
            ['name'=>  'delete_gosi_subscriptions']
        ]);
    }
}
