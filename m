Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 485D9886067
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Mar 2024 19:14:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D1B5B4040A;
	Thu, 21 Mar 2024 18:14:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sRu0isoE2LGg; Thu, 21 Mar 2024 18:14:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2302440529
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711044887;
	bh=HgrbIRE7VEvNM/7O+kRv8lnP7tFYK9W1rOWWA2jQum4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AeowcxKn79Y6PsypdKg0SVJPUipUqxERuNFmwUN7BdK6pbJE4Y7SHAS81kVr6L6P0
	 IFLLhLZqaf8KWPHgtvHNaKAHhPjR68t6VZVYGwM/ekJdcposdchFplrUTcRvXxpZyS
	 hyEH4AF///umqQU1oubwLe7qAfrJ1//aMdXMcEEjCKHWSS3HA3SMcdMJJr29acsBJO
	 5CoiCYgFEMOiHHaD7cUIpFHg18NCKvFiEkuRCgYxeXooX/yjJV2vuQGG7QOQvS+1xp
	 Q+iPceK6YTBx5uVfZRkZYYYdq8HFtGfOugKmh1bujypIaq+zRg3p9/VbbVjaKmfm6i
	 aFNxF1q4uPlhw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2302440529;
	Thu, 21 Mar 2024 18:14:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 90E701BF359
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 18:14:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7D1D060F13
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 18:14:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tBlVkdn8JAcR for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Mar 2024 18:14:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=212.227.15.3;
 helo=mout.web.de; envelope-from=markus.elfring@web.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 33D8D60F10
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 33D8D60F10
Received: from mout.web.de (mout.web.de [212.227.15.3])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 33D8D60F10
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Mar 2024 18:14:43 +0000 (UTC)
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.90.95]) by smtp.web.de (mrweb005
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1N5lnT-1qi0cQ3Muh-00sdt1; Thu, 21
 Mar 2024 19:14:13 +0100
Message-ID: <e5172afb-427b-423e-877a-10352cf4a007@web.de>
Date: Thu, 21 Mar 2024 19:14:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Dan Carpenter <dan.carpenter@linaro.org>, kernel-janitors@vger.kernel.org,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
References: <77145930-e3df-4e77-a22d-04851cf3a426@moroto.mountain>
 <d2b1f3bd-42f1-483b-916e-3735b39a30e1@web.de>
 <Zfx2VL7xnj4rQoV8@smile.fi.intel.com>
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <Zfx2VL7xnj4rQoV8@smile.fi.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:sgi560zt2vi0QRILaOf8Dno1paTZMF0JEueGv8qFTmpY2UfKHsL
 7YAth+4h13SGVefnGT3MdnvQlXK2uzciuQAvypP075NmJwH+S1f5f2BOQ79WNEYzGNYW9gQ
 yz0royLM51YEA7NL75PeQ8OuPHo/abXi7N/DUbBLsSMqyhUaUrXgvBCO1neaNLoBXEkxfq2
 wtnF/rBwxxzKrMKDBHRhg==
UI-OutboundReport: notjunk:1;M01:P0:DyYJFDcecfk=;2QuzO1XICFkOQDXsVI8pzomNCDz
 FwRawSWOWNxaFWEKN0lUKoq9Ual1sUYrMN5lh3MDuYCnwF8Jed37tXyikqECXyy7Ypgmp1BWA
 C+VV/bKGPVgDe423Z+YHdgio1PJ2HQgkCy7mfpWscFBSi1vAFoCuOAfpjYIXBttk1CjiA1hbX
 uQq9HgrbaaQjWuHurCkw8CIJkRCmmVG9uZW+9MYyad2htO+zl/6ckLjtp6ZkHoF2Iq24k8sAv
 72prKy/zGec5HtQ3fffU0/HXYlTBSqzCpC5kEpb+zPMwhYJa0nFT2DodJsAPwmHWHMGXUuZWJ
 VPCawDn6b+rqYIQ6pEYwol2mRErjMnP7B/ycbxUdSsuZxrU0ife/qr5STzEhJ7hHWTNAFUZYh
 JvkFtZp6bEIuRHq8u9RLEfDHTHRIIgGqwwyjxmpBpkjzeVCnIEa2fNgjdvQmGwCU+5exYgX8c
 GQpFZ1fM8amOl0Smeo/hygcVEpWOlvsscyTCKfVbTUtzGtBWdf8c68HttSUqAmcd5Wv9Ew6hc
 9KtI5bA9CEo9oq747N81Xw+uW/z8eqEYQjlh4nkjA+ug0E12FqZDzcuqPHG5CiCe9W9wntmVz
 2UVhZWtCp1lnKHV86WR/LxKwxohmaNQcd878SLEn4PNwPD4IaU0puPJDZIN4iSCVhgzClK6rZ
 h121WQSDFEn3bpEr+HrsUNMnFLyjU7N94xeS5mg84cj1aipT3TIGSP3uRpwFrYho1h+pNSknq
 G+bVb34uweOoKUStVFZBdqMcb1pJn96/DuW4egCUZaprIpJFjZQtasHdngqobIkf/55r5bHlg
 X8ld2652UnmZ9G9tA6zrxNUtASiHRdYRSba/kzHs0A/mk=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=web.de; 
 s=s29768273; t=1711044854; x=1711649654; i=markus.elfring@web.de;
 bh=HgrbIRE7VEvNM/7O+kRv8lnP7tFYK9W1rOWWA2jQum4=;
 h=X-UI-Sender-Class:Date:Subject:To:Cc:References:From:
 In-Reply-To;
 b=GtXXj6Sa5UERY4vEaqXDMVjXiea61ZzcaH7ua8GSMjtg5uyaB79pHsUlw3iRpqvg
 YQ2AGedW/S5ZMYBCGnd4fSXlKxCu8qKAAhuLNut2fZhSM2ZlWaNw/ISr+nMtHLzeG
 oiw54ZasA8zb3J1CaeB4b8wfsJFlh8Pr3y9Ap8AKPfxYhBCG21LZufqVaNze//9v1
 cQZuEr9f+PawEWoCxSOgW5gvY+oAxiJAP6u859bSc1PmlQcdw9Dzga0+3SajPyGmS
 Bb40KhEkV459mm5B/l3VCUFqj8Vz+pbvsuGyPhxg5zn3rcgq817qTxh+6ZibAmcJq
 i5ISVe6e1jZnRo21eg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=web.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=web.de header.i=markus.elfring@web.de
 header.a=rsa-sha256 header.s=s29768273 header.b=GtXXj6Sa
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix freeing uninitialized
 pointers
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>,
 Jiri Pirko <jiri@resnulli.us>, Kees Cook <keescook@chromium.org>,
 Lukasz Czapnik <lukasz.czapnik@intel.com>, LKML <linux-kernel@vger.kernel.org>,
 Julia Lawall <julia.lawall@inria.fr>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, David Laight <David.Laight@aculab.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, Jonathan Cameron <jic23@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>> How do you think about to reduce the scope for the affected local varia=
ble instead
>> with the help of a small script (like the following) for the semantic p=
atch language?
>>
>> @movement@
>> attribute name __free;
>> @@
>> -u8 *tx_frame __free(kfree);
>>  int i;
>>  ... when any
>>  if (ice_fltr_add_mac(test_vsi, ...))
>>  { ... }
>> +
>> +{
>> +u8 *tx_frame __free(kfree) =3D NULL;
>>  if (ice_lbtest_create_frame(pf, &tx_frame, ...))
>>  { ... }
>>  ... when any
>> +}
>> +
>>  valid_frames =3D ice_lbtest_receive_frames(...);
>
> I believe you don't understand what the scope of the above can be.

Will the understanding improve for the proposed source code transformation=
?

Regards,
Markus
