/*
 * Copyright 2015-2021 Ritense BV, the Netherlands.
 *
 * Licensed under EUPL, Version 1.2 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * https://joinup.ec.europa.eu/collection/eupl/eupl-text-eupl-12
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" basis,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

INSERT INTO accounts_user VALUES (1, 'pbkdf2_sha256$150000$804RI2AKro7g$4bToWwzuZO7OtruzIi6VRshCwshQVgxFTwF7ZOYowRg=', '2021-09-22 21:28:40.15254+00', true, 'admin', '', '', 'admin@exmaple.com', true, true, '2021-09-22 14:13:43.383088+00');

INSERT INTO token_tokenauth (id, token, contact_person, email, organization, last_modified, created, application, administration, identifier) VALUES (1, '5bf819967d9fdd00d326ce20774768b4182285e5', 'ritense', 'support@ritense.com', 'Ritense', '2025-07-18 14:54:21.492 +0200', '2025-07-18 14:54:21.492 +0200', 'GZAC', '', 'valtimo_client');

INSERT INTO klantinteracties_partij(id, bezoekadres_nummeraanduiding_id, bezoekadres_adresregel1, bezoekadres_adresregel2, bezoekadres_adresregel3, bezoekadres_land, correspondentieadres_nummeraanduiding_id, correspondentieadres_adresregel1, correspondentieadres_adresregel2, correspondentieadres_adresregel3, correspondentieadres_land, uuid, nummer, interne_notitie, soort_partij, voorkeurstaal, indicatie_actief, bezoekadres_huisnummertoevoeging, bezoekadres_postcode, bezoekadres_stad, bezoekadres_straatnaam, correspondentieadres_huisnummertoevoeging, correspondentieadres_postcode, correspondentieadres_stad, correspondentieadres_straatnaam) VALUES (1, '', '', '', '', 'NL', '', '', '', '', '', 'b39c60c0-6575-42bf-b9e2-5fb4f4c56f3f', '0000000001', '', 'persoon', '', 'false', '', '', '', '', '', '', '', '');
INSERT INTO klantinteracties_partijidentificator(id, uuid, andere_partij_identificator, partij_identificator_code_objecttype, partij_identificator_code_soort_object_id, partij_identificator_object_id, partij_identificator_code_register, partij_id) VALUES (1, 'ac2a3e9d-d3bb-483b-8085-b2aeecb0b169', '', 'natuurlijk_persoon', 'bsn', '569312863', 'brp', 1);
INSERT INTO klantinteracties_persoon(id, contactnaam_voorletters, contactnaam_voornaam, contactnaam_voorvoegsel_achternaam, contactnaam_achternaam, partij_id) VALUES (1, '', 'Peter', 'van', 'Klaver', 1);
