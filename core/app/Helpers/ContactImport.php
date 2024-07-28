<?php

namespace App\Helpers;

use App\Models\Contact;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;

class ContactImport implements ToCollection
{
    /**
     * @param Collection $collection
     */
    protected $label_id;
    protected $user_id;
    protected $session_id;
    public function __construct($label_id, $user_id, $session_id)
    {
        $this->tag = $label_id;
        $this->user = $user_id;
        $this->session_id = $session_id;
    }
    public function collection(Collection $collection)
    {

        // Log::info($collection);
        foreach ($collection as $index => $row) {
            if ($index == 0) {
                continue;
            }
            if (empty(array_filter($row->toArray()))) {
                continue;
            }
            if (empty($row[1])) {
                continue;
            }
            if (Contact::where([
                'user_id' => $this->user,
                'session_id' => $this->session_id,
                'label_id' => $this->tag,
                'number' => (string)$row[1],
            ])->count() > 0) continue;

            Contact::create([
                'user_id' => $this->user,
                'session_id' => $this->session_id,
                'label_id' => $this->tag,
                'name' => $row[0] ?? '',
                'number' => (string)$row[1],
                'billing' => $row[2] ?? '',
                'tgljt' => $row[3] ?? '',
                'nodep' => $row[4] ?? '',
                'baghas' => $row[5] ?? '',
                'dob' => $row[6] ?? '',
                'age' => $row[7] ?? '',
            ]);
        }
    }
}
