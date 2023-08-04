<?php

namespace Database\Seeders;

use App\Models\Tag;
use Illuminate\Database\Seeder;
use Modules\Language\Entities\Language;

class TagSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $tags = [
            'php',
            'laravel',
            'mysql',
            'job',
            'frontend',
            'backend',
            'bootstrap',
            'team',
            'testing',
            'database',
            'jobs',
            'remote',
            'others',
            'seeker',
            'candidate',
            'company',
            'technology',
            'work'
        ];

        // foreach ($tags as $tag) {
        //     Tag::create(['name' => $tag]);
        // }

        $languages = Language::all();

        foreach ($tags as $data) {
            $translation = new Tag();
            $translation->save();

            foreach ($languages as $language) {
                $translation->translateOrNew($language->code)->name = $data;
            }

            $translation->save();
        }
    }
}
