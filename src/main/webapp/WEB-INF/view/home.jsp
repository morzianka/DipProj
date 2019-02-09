<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <meta charset="utf-8">
    <title>BroBro</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <link type="text/css" href="${pageContext.request.contextPath}/resources/css/home.css" rel="stylesheet">
</head>
<body>

<div class="menu">
    <nav class="nav nav-pills nav-justified">
        <a class="nav-item nav-link active" href="/">Home</a>
        <a class="nav-item nav-link" href="/friends">Friends</a>
        <a class="nav-item nav-link" href="/about">About</a>
        <form:form action="${pageContext.request.contextPath}/logout" method="POST">
            <input class="logout" type="submit" value=""/>
        </form:form>
    </nav>
</div>

<div class="col-sm-6">Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data Profile Data </div>

<div>
    <!-- Trigger the modal with a button -->
    <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Edit</button>

    <!-- Modal -->
    <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <div class="modal-body">

                    <dt><label for="native">Your native language</label></dt>
                    <select name="native" id="native" size="1"><option value="null" selected="">- All -</option><option value="77">Afrikaans</option><option value="106">Akan</option><option value="60">Albanian</option><option value="94">Amharic (Ethiopian)</option><option value="18">Arabic, Egyptian</option><option value="3">Arabic, Middle Eastern</option><option value="2">Arabic, Moroccan</option><option value="4">Arabic, other</option><option value="168">Arabic, Palestinian</option><option value="82">Aramaic</option><option value="64">Armenian</option><option value="112">Assamese</option><option value="78">Assyrian</option><option value="72">Azerbaijani</option><option value="165">Bambara (Bamana)</option><option value="145">Baoulé (Baule, Bawule)</option><option value="7">Basque</option><option value="144">Bavarian (Austro-Bavarian)</option><option value="100">Belarusian</option><option value="153">Bemba (Chiwemba, Wemba)</option><option value="8">Bengali</option><option value="9">Berber (Tamazight)</option><option value="59">Bosnian</option><option value="116">Breton</option><option value="10">Bulgarian</option><option value="96">Burmese</option><option value="65">Cambodian (Khmer)</option><option value="55">Catalan</option><option value="136">Cebuano (Bisaya)</option><option value="95">Chichewa (Nyanja)</option><option value="11">Chinese, Cantonese</option><option value="12">Chinese, Mandarin</option><option value="13">Chinese, other</option><option value="167">Chinese, Taiwanese (Hokkien, Minnanhua)</option><option value="147">Chuvash (Bulgar)</option><option value="14">Creole</option><option value="83">Croatian</option><option value="15">Czech</option><option value="16">Danish</option><option value="17">Dutch</option><option value="1">English</option><option value="19">Esperanto</option><option value="63">Estonian</option><option value="146">Faroese</option><option value="88">Fijian</option><option value="20">Filipino (Tagalog)</option><option value="21">Finnish</option><option value="155">Fon (Dahomeen, Djedji, Fongbe)</option><option value="22">French</option><option value="68">Gaelic (Irish)</option><option value="69">Gaelic (Scottish)</option><option value="79">Galician</option><option value="71">Georgian</option><option value="23">German</option><option value="24">Greek</option><option value="74">Gujarati</option><option value="138">Hausa</option><option value="73">Hawaiian</option><option value="25">Hebrew</option><option value="26">Hindi</option><option value="117">Hmong</option><option value="27">Hungarian</option><option value="56">Icelandic</option><option value="109">Ido</option><option value="157">Igbo (Ibo)</option><option value="5">Indonesian (Bahasa)</option><option value="108">Interlingua</option><option value="29">Italian</option><option value="30">Japanese</option><option value="159">Kachchi</option><option value="67">Kannada</option><option value="91">Kazakh</option><option value="141">Kituba (Kikoongo, Munukutuba)</option><option value="123">Konkani</option><option value="143">Konkani (Kunabi, Cugani, Bankoti)</option><option value="31">Korean</option><option value="53">Kurdish</option><option value="135">Kyrgyz (Kara-Kirgiz, Kirghiz, Kirgiz)</option><option value="133">Ladino</option><option value="84">Lao</option><option value="57">Latin</option><option value="62">Latvian</option><option value="114">Ligurian</option><option value="142">Lingala (Ngala)</option><option value="61">Lithuanian</option><option value="66">Lombard</option><option value="148">Luxembourgeois (Luxemburgian)</option><option value="87">Macedonian</option><option value="115">Malagasy</option><option value="6">Malay (Bahasa Malaysia)</option><option value="93">Malayalam</option><option value="119">Maldivian (Dhivehi)</option><option value="101">Maltese</option><option value="160">Mandinka</option><option value="122">Maori (New Zealand Maori)</option><option value="85">Marathi</option><option value="105">Mongolian</option><option value="158">Montenegrin</option><option value="104">Native American (Ojibway, Cree...)</option><option value="81">Nepali</option><option value="102">Newari</option><option value="32">Norwegian</option><option value="151">Nyanja (Chewa, Chinyanja)</option><option value="154">Occitan (Occitani)</option><option value="90">Oriya</option><option value="152">Oromo (Oromoo , Oromiffa)</option><option value="161">Papiamento (or Papiamentu)</option><option value="124">Paraguayan Guarani</option><option value="33">Persian (Farsi, Dari)</option><option value="34">Polish</option><option value="35">Portuguese</option><option value="128">Pulaar</option><option value="36">Punjabi</option><option value="166">Purépecha (Tarascan)</option><option value="58">Pushto (Pashto)</option><option value="80">Quechua</option><option value="169">Rapa Nui</option><option value="37">Romanian</option><option value="89">Romansch</option><option value="150">Romany (Gypsy, Danubian)</option><option value="140">Rundi (Kirundi, Urundi)</option><option value="38">Russian</option><option value="139">Rwanda (Kinyarwanda)</option><option value="121">Saami (sami)</option><option value="132">Samoan</option><option value="111">Sanskrit</option><option value="39">Serbian</option><option value="98">Shona</option><option value="131">Sicilian</option><option value="40">Sign Language</option><option value="76">Sindhi</option><option value="86">Sinhalese</option><option value="41">Slovak</option><option value="54">Slovenian</option><option value="99">Somali</option><option value="42">Spanish</option><option value="43">Swahili</option><option value="44">Swedish</option><option value="163">Swiss German</option><option value="149">Tajiki (Tajiki, Tadzhik)</option><option value="45">Tamil</option><option value="126">Tatar (Tartar)</option><option value="75">Telugu</option><option value="103">Tetum</option><option value="46">Thai</option><option value="47">Tibetan</option><option value="137">Tigrigna (Tigray, Tigrinya)</option><option value="162">Tok Pisin</option><option value="107">Tongan</option><option value="92">Tswana</option><option value="134">Tumbuka</option><option value="48">Turkish</option><option value="49">Ukrainian</option><option value="50">Urdu</option><option value="127">Uyghur (Wighor)</option><option value="97">Uzbek</option><option value="113">Venetian</option><option value="51">Vietnamese</option><option value="70">Welsh</option><option value="129">Wolof</option><option value="118">Xhosa</option><option value="52">Yiddish</option><option value="130">Yoruba</option><option value="125">Zulu</option></select>
                    <dt>
                        <br>

                    <dt><label for="native">Language you want to learn</label></dt>
                    <select name="native" id="native" size="1"><option value="null" selected="">- All -</option><option value="77">Afrikaans</option><option value="106">Akan</option><option value="60">Albanian</option><option value="94">Amharic (Ethiopian)</option><option value="18">Arabic, Egyptian</option><option value="3">Arabic, Middle Eastern</option><option value="2">Arabic, Moroccan</option><option value="4">Arabic, other</option><option value="168">Arabic, Palestinian</option><option value="82">Aramaic</option><option value="64">Armenian</option><option value="112">Assamese</option><option value="78">Assyrian</option><option value="72">Azerbaijani</option><option value="165">Bambara (Bamana)</option><option value="145">Baoulé (Baule, Bawule)</option><option value="7">Basque</option><option value="144">Bavarian (Austro-Bavarian)</option><option value="100">Belarusian</option><option value="153">Bemba (Chiwemba, Wemba)</option><option value="8">Bengali</option><option value="9">Berber (Tamazight)</option><option value="59">Bosnian</option><option value="116">Breton</option><option value="10">Bulgarian</option><option value="96">Burmese</option><option value="65">Cambodian (Khmer)</option><option value="55">Catalan</option><option value="136">Cebuano (Bisaya)</option><option value="95">Chichewa (Nyanja)</option><option value="11">Chinese, Cantonese</option><option value="12">Chinese, Mandarin</option><option value="13">Chinese, other</option><option value="167">Chinese, Taiwanese (Hokkien, Minnanhua)</option><option value="147">Chuvash (Bulgar)</option><option value="14">Creole</option><option value="83">Croatian</option><option value="15">Czech</option><option value="16">Danish</option><option value="17">Dutch</option><option value="1">English</option><option value="19">Esperanto</option><option value="63">Estonian</option><option value="146">Faroese</option><option value="88">Fijian</option><option value="20">Filipino (Tagalog)</option><option value="21">Finnish</option><option value="155">Fon (Dahomeen, Djedji, Fongbe)</option><option value="22">French</option><option value="68">Gaelic (Irish)</option><option value="69">Gaelic (Scottish)</option><option value="79">Galician</option><option value="71">Georgian</option><option value="23">German</option><option value="24">Greek</option><option value="74">Gujarati</option><option value="138">Hausa</option><option value="73">Hawaiian</option><option value="25">Hebrew</option><option value="26">Hindi</option><option value="117">Hmong</option><option value="27">Hungarian</option><option value="56">Icelandic</option><option value="109">Ido</option><option value="157">Igbo (Ibo)</option><option value="5">Indonesian (Bahasa)</option><option value="108">Interlingua</option><option value="29">Italian</option><option value="30">Japanese</option><option value="159">Kachchi</option><option value="67">Kannada</option><option value="91">Kazakh</option><option value="141">Kituba (Kikoongo, Munukutuba)</option><option value="123">Konkani</option><option value="143">Konkani (Kunabi, Cugani, Bankoti)</option><option value="31">Korean</option><option value="53">Kurdish</option><option value="135">Kyrgyz (Kara-Kirgiz, Kirghiz, Kirgiz)</option><option value="133">Ladino</option><option value="84">Lao</option><option value="57">Latin</option><option value="62">Latvian</option><option value="114">Ligurian</option><option value="142">Lingala (Ngala)</option><option value="61">Lithuanian</option><option value="66">Lombard</option><option value="148">Luxembourgeois (Luxemburgian)</option><option value="87">Macedonian</option><option value="115">Malagasy</option><option value="6">Malay (Bahasa Malaysia)</option><option value="93">Malayalam</option><option value="119">Maldivian (Dhivehi)</option><option value="101">Maltese</option><option value="160">Mandinka</option><option value="122">Maori (New Zealand Maori)</option><option value="85">Marathi</option><option value="105">Mongolian</option><option value="158">Montenegrin</option><option value="104">Native American (Ojibway, Cree...)</option><option value="81">Nepali</option><option value="102">Newari</option><option value="32">Norwegian</option><option value="151">Nyanja (Chewa, Chinyanja)</option><option value="154">Occitan (Occitani)</option><option value="90">Oriya</option><option value="152">Oromo (Oromoo , Oromiffa)</option><option value="161">Papiamento (or Papiamentu)</option><option value="124">Paraguayan Guarani</option><option value="33">Persian (Farsi, Dari)</option><option value="34">Polish</option><option value="35">Portuguese</option><option value="128">Pulaar</option><option value="36">Punjabi</option><option value="166">Purépecha (Tarascan)</option><option value="58">Pushto (Pashto)</option><option value="80">Quechua</option><option value="169">Rapa Nui</option><option value="37">Romanian</option><option value="89">Romansch</option><option value="150">Romany (Gypsy, Danubian)</option><option value="140">Rundi (Kirundi, Urundi)</option><option value="38">Russian</option><option value="139">Rwanda (Kinyarwanda)</option><option value="121">Saami (sami)</option><option value="132">Samoan</option><option value="111">Sanskrit</option><option value="39">Serbian</option><option value="98">Shona</option><option value="131">Sicilian</option><option value="40">Sign Language</option><option value="76">Sindhi</option><option value="86">Sinhalese</option><option value="41">Slovak</option><option value="54">Slovenian</option><option value="99">Somali</option><option value="42">Spanish</option><option value="43">Swahili</option><option value="44">Swedish</option><option value="163">Swiss German</option><option value="149">Tajiki (Tajiki, Tadzhik)</option><option value="45">Tamil</option><option value="126">Tatar (Tartar)</option><option value="75">Telugu</option><option value="103">Tetum</option><option value="46">Thai</option><option value="47">Tibetan</option><option value="137">Tigrigna (Tigray, Tigrinya)</option><option value="162">Tok Pisin</option><option value="107">Tongan</option><option value="92">Tswana</option><option value="134">Tumbuka</option><option value="48">Turkish</option><option value="49">Ukrainian</option><option value="50">Urdu</option><option value="127">Uyghur (Wighor)</option><option value="97">Uzbek</option><option value="113">Venetian</option><option value="51">Vietnamese</option><option value="70">Welsh</option><option value="129">Wolof</option><option value="118">Xhosa</option><option value="52">Yiddish</option><option value="130">Yoruba</option><option value="125">Zulu</option></select>
                    <dt>
                        <br>

                        <label for="country">Country</label>
                    </dt>
                    <dd>
                        <select id="country" class="lettersonly" name="country">
                            <option>Choose Your Country</option>
                            <option value="AF">Afghanistan</option>
                            <option value="AL">Albania</option>
                            <option value="DZ">Algeria</option>
                            <option value="AS">American Samoa</option>
                            <option value="AD">Andorra</option>
                            <option value="AO">Angola</option>
                            <option value="AI">Anguilla</option>
                            <option value="AQ">Antarctica</option>
                            <option value="AG">Antigua and Barbuda</option>
                            <option value="AR">Argentina</option>
                            <option value="AM">Armenia</option>
                            <option value="AW">Aruba</option>
                            <option value="AU">Australia</option>
                            <option value="AT">Austria</option>
                            <option value="AZ">Azerbaijan</option>
                            <option value="BS">Bahamas</option>
                            <option value="BH">Bahrain</option>
                            <option value="BD">Bangladesh</option>
                            <option value="BB">Barbados</option>
                            <option value="BY">Belarus</option>
                            <option value="BE">Belgium</option>
                            <option value="BZ">Belize</option>
                            <option value="BJ">Benin</option>
                            <option value="BM">Bermuda</option>
                            <option value="BT">Bhutan</option>
                            <option value="BO">Bolivia</option>
                            <option value="BA">Bosnia and Herzegowina</option>
                            <option value="BW">Botswana</option>
                            <option value="BV">Bouvet Island</option>
                            <option value="BR">Brazil</option>
                            <option value="IO">British Indian Ocean Territory</option>
                            <option value="BN">Brunei Darussalam</option>
                            <option value="BG">Bulgaria</option>
                            <option value="BF">Burkina Faso</option>
                            <option value="BI">Burundi</option>
                            <option value="KH">Cambodia</option>
                            <option value="CM">Cameroon</option>
                            <option value="CA">Canada</option>
                            <option value="CV">Cape Verde</option>
                            <option value="KY">Cayman Islands</option>
                            <option value="CF">Central African Republic</option>
                            <option value="TD">Chad</option>
                            <option value="CL">Chile</option>
                            <option value="CN">China</option>
                            <option value="CX">Christmas Island</option>
                            <option value="CC">Cocos (Keeling) Islands</option>
                            <option value="CO">Colombia</option>
                            <option value="KM">Comoros</option>
                            <option value="CG">Congo</option>
                            <option value="CD">Congo, the Democratic Republic of the</option>
                            <option value="CK">Cook Islands</option>
                            <option value="CR">Costa Rica</option>
                            <option value="CI">Cote d'Ivoire</option>
                            <option value="HR">Croatia (Hrvatska)</option>
                            <option value="CU">Cuba</option>
                            <option value="CY">Cyprus</option>
                            <option value="CZ">Czech Republic</option>
                            <option value="DK">Denmark</option>
                            <option value="DJ">Djibouti</option>
                            <option value="DM">Dominica</option>
                            <option value="DO">Dominican Republic</option>
                            <option value="TP">East Timor</option>
                            <option value="EC">Ecuador</option>
                            <option value="EG">Egypt</option>
                            <option value="SV">El Salvador</option>
                            <option value="GQ">Equatorial Guinea</option>
                            <option value="ER">Eritrea</option>
                            <option value="EE">Estonia</option>
                            <option value="ET">Ethiopia</option>
                            <option value="FK">Falkland Islands (Malvinas)</option>
                            <option value="FO">Faroe Islands</option>
                            <option value="FJ">Fiji</option>
                            <option value="FI">Finland</option>
                            <option value="FR">France</option>
                            <option value="FX">France, Metropolitan</option>
                            <option value="GF">French Guiana</option>
                            <option value="PF">French Polynesia</option>
                            <option value="TF">French Southern Territories</option>
                            <option value="GA">Gabon</option>
                            <option value="GM">Gambia</option>
                            <option value="GE">Georgia</option>
                            <option value="DE">Germany</option>
                            <option value="GH">Ghana</option>
                            <option value="GI">Gibraltar</option>
                            <option value="GR">Greece</option>
                            <option value="GL">Greenland</option>
                            <option value="GD">Grenada</option>
                            <option value="GP">Guadeloupe</option>
                            <option value="GU">Guam</option>
                            <option value="GT">Guatemala</option>
                            <option value="GN">Guinea</option>
                            <option value="GW">Guinea-Bissau</option>
                            <option value="GY">Guyana</option>
                            <option value="HT">Haiti</option>
                            <option value="HM">Heard and Mc Donald Islands</option>
                            <option value="VA">Holy See (Vatican City State)</option>
                            <option value="HN">Honduras</option>
                            <option value="HK">Hong Kong</option>
                            <option value="HU">Hungary</option>
                            <option value="IS">Iceland</option>
                            <option value="IN">India</option>
                            <option value="ID">Indonesia</option>
                            <option value="IR">Iran (Islamic Republic of)</option>
                            <option value="IQ">Iraq</option>
                            <option value="IE">Ireland</option>
                            <option value="IL">Israel</option>
                            <option value="IT">Italy</option>
                            <option value="JM">Jamaica</option>
                            <option value="JP">Japan</option>
                            <option value="JO">Jordan</option>
                            <option value="KZ">Kazakhstan</option>
                            <option value="KE">Kenya</option>
                            <option value="KI">Kiribati</option>
                            <option value="KP">Korea, Democratic People's Republic of</option>
                            <option value="KR">Korea, Republic of</option>
                            <option value="KW">Kuwait</option>
                            <option value="KG">Kyrgyzstan</option>
                            <option value="LA">Lao People's Democratic Republic</option>
                            <option value="LV">Latvia</option>
                            <option value="LB">Lebanon</option>
                            <option value="LS">Lesotho</option>
                            <option value="LR">Liberia</option>
                            <option value="LY">Libyan Arab Jamahiriya</option>
                            <option value="LI">Liechtenstein</option>
                            <option value="LT">Lithuania</option>
                            <option value="LU">Luxembourg</option>
                            <option value="MO">Macau</option>
                            <option value="MK">Macedonia, The Former Yugoslav Republic of</option>
                            <option value="MG">Madagascar</option>
                            <option value="MW">Malawi</option>
                            <option value="MY">Malaysia</option>
                            <option value="MV">Maldives</option>
                            <option value="ML">Mali</option>
                            <option value="MT">Malta</option>
                            <option value="MH">Marshall Islands</option>
                            <option value="MQ">Martinique</option>
                            <option value="MR">Mauritania</option>
                            <option value="MU">Mauritius</option>
                            <option value="YT">Mayotte</option>
                            <option value="MX">Mexico</option>
                            <option value="FM">Micronesia, Federated States of</option>
                            <option value="MD">Moldova, Republic of</option>
                            <option value="MC">Monaco</option>
                            <option value="MN">Mongolia</option>
                            <option value="MS">Montserrat</option>
                            <option value="MA">Morocco</option>
                            <option value="MZ">Mozambique</option>
                            <option value="MM">Myanmar</option>
                            <option value="NA">Namibia</option>
                            <option value="NR">Nauru</option>
                            <option value="NP">Nepal</option>
                            <option value="NL">Netherlands</option>
                            <option value="AN">Netherlands Antilles</option>
                            <option value="NC">New Caledonia</option>
                            <option value="NZ">New Zealand</option>
                            <option value="NI">Nicaragua</option>
                            <option value="NE">Niger</option>
                            <option value="NG">Nigeria</option>
                            <option value="NU">Niue</option>
                            <option value="NF">Norfolk Island</option>
                            <option value="MP">Northern Mariana Islands</option>
                            <option value="NO">Norway</option>
                            <option value="OM">Oman</option>
                            <option value="PK">Pakistan</option>
                            <option value="PW">Palau</option>
                            <option value="PA">Panama</option>
                            <option value="PG">Papua New Guinea</option>
                            <option value="PY">Paraguay</option>
                            <option value="PE">Peru</option>
                            <option value="PH">Philippines</option>
                            <option value="PN">Pitcairn</option>
                            <option value="PL">Poland</option>
                            <option value="PT">Portugal</option>
                            <option value="PR">Puerto Rico</option>
                            <option value="QA">Qatar</option>
                            <option value="RE">Reunion</option>
                            <option value="RO">Romania</option>
                            <option value="RU">Russian Federation</option>
                            <option value="RW">Rwanda</option>
                            <option value="KN">Saint Kitts and Nevis</option>
                            <option value="LC">Saint LUCIA</option>
                            <option value="VC">Saint Vincent and the Grenadines</option>
                            <option value="WS">Samoa</option>
                            <option value="SM">San Marino</option>
                            <option value="ST">Sao Tome and Principe</option>
                            <option value="SA">Saudi Arabia</option>
                            <option value="SN">Senegal</option>
                            <option value="SC">Seychelles</option>
                            <option value="SL">Sierra Leone</option>
                            <option value="SG">Singapore</option>
                            <option value="SK">Slovakia (Slovak Republic)</option>
                            <option value="SI">Slovenia</option>
                            <option value="SB">Solomon Islands</option>
                            <option value="SO">Somalia</option>
                            <option value="ZA">South Africa</option>
                            <option value="GS">South Georgia and the South Sandwich Islands</option>
                            <option value="ES">Spain</option>
                            <option value="LK">Sri Lanka</option>
                            <option value="SH">St. Helena</option>
                            <option value="PM">St. Pierre and Miquelon</option>
                            <option value="SD">Sudan</option>
                            <option value="SR">Suriname</option>
                            <option value="SJ">Svalbard and Jan Mayen Islands</option>
                            <option value="SZ">Swaziland</option>
                            <option value="SE">Sweden</option>
                            <option value="CH">Switzerland</option>
                            <option value="SY">Syrian Arab Republic</option>
                            <option value="TW">Taiwan, Province of China</option>
                            <option value="TJ">Tajikistan</option>
                            <option value="TZ">Tanzania, United Republic of</option>
                            <option value="TH">Thailand</option>
                            <option value="TG">Togo</option>
                            <option value="TK">Tokelau</option>
                            <option value="TO">Tonga</option>
                            <option value="TT">Trinidad and Tobago</option>
                            <option value="TN">Tunisia</option>
                            <option value="TR">Turkey</option>
                            <option value="TM">Turkmenistan</option>
                            <option value="TC">Turks and Caicos Islands</option>
                            <option value="TV">Tuvalu</option>
                            <option value="UG">Uganda</option>
                            <option value="UA">Ukraine</option>
                            <option value="AE">United Arab Emirates</option>
                            <option value="GB">United Kingdom</option>
                            <option value="US">United States</option>
                            <option value="UM">United States Minor Outlying Islands</option>
                            <option value="UY">Uruguay</option>
                            <option value="UZ">Uzbekistan</option>
                            <option value="VU">Vanuatu</option>
                            <option value="VE">Venezuela</option>
                            <option value="VN">Viet Nam</option>
                            <option value="VG">Virgin Islands (British)</option>
                            <option value="VI">Virgin Islands (U.S.)</option>
                            <option value="WF">Wallis and Futuna Islands</option>
                            <option value="EH">Western Sahara</option>
                            <option value="YE">Yemen</option>
                            <option value="YU">Yugoslavia</option>
                            <option value="ZM">Zambia</option>
                            <option value="ZW">Zimbabwe</option>
                        </select>
                    </dd>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Подключаем jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Подключаем плагин Popper -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>

<!-- Подключаем Bootstrap JS -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</body>
</html>