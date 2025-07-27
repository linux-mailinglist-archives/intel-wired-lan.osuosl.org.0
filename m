Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 21824B12FC2
	for <lists+intel-wired-lan@lfdr.de>; Sun, 27 Jul 2025 15:58:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9988F41CBA;
	Sun, 27 Jul 2025 13:58:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jCguCCGaNV29; Sun, 27 Jul 2025 13:58:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 70D7541CBB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753624704;
	bh=0yaMYzF2veU+tL0RDS4L7bIfgl8wsKWQMLlbC1aOylk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YM63hTfW+YyPNuf4+/Y/tW7NQm0aLgjJ6xN1XVGXhXM4POpTRmtRsXhoai7wZ+IaI
	 ogA0u8wiWEdQzuLDNaFTgVJ+WzmFeHTJ4ZGKgxqzKaBwYbGxaQUAv8N3rrSE168+21
	 4ZoaybU2LwYCQg8qSLLvjeD1gJKMpc/jb6wRYNFQMw7TH1bDw+5XBMNGmiFtLJ3F20
	 O/F7r5r99+4LjB/mZdRsZfbI5UPcPRfs2keb1KT9zMiLKqbkBOGqZTZveGDkJnW+mz
	 RU4Z+mz8Z/aLgGgANvnIFkAp8bKYdSj/TRlpI+hEY0rMBZEp50rQRziHZI01akIt+P
	 ZRMUgKULapeCw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 70D7541CBB;
	Sun, 27 Jul 2025 13:58:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 883901BE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Jul 2025 13:58:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7A90F60FD6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Jul 2025 13:58:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z2oDu61m1YlJ for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Jul 2025 13:58:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a02:e00:ffe7:c::2;
 helo=mail.valdk.tel; envelope-from=iam@valdikss.org.ru; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0ACD1605E7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0ACD1605E7
Received: from mail.valdk.tel (mail.valdk.tel [IPv6:2a02:e00:ffe7:c::2])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0ACD1605E7
 for <intel-wired-lan@osuosl.org>; Sun, 27 Jul 2025 13:58:20 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id E950C1B67D79; Sun, 27 Jul 2025 16:58:14 +0300 (MSK)
Message-ID: <ac3d9591-f564-4306-9638-989ebb328d29@valdikss.org.ru>
Date: Sun, 27 Jul 2025 16:58:13 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>, intel-wired-lan@osuosl.org
References: <20250722200448.14963-1-iam@valdikss.org.ru>
 <0c09a02b-71df-409f-96a0-6372d936ff82@intel.com>
Content-Language: ru, en-US
From: ValdikSS <iam@valdikss.org.ru>
Autocrypt: addr=iam@valdikss.org.ru; keydata=
 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
 OEcVmRU/pw5/zoQyQg==
In-Reply-To: <0c09a02b-71df-409f-96a0-6372d936ff82@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------x1G00DI03bPHsU44caBmdmHh"
X-Last-TLS-Session-Version: TLSv1.3
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=valdikss.org.ru; s=msrv; t=1753624697;
 h=from:subject:date:message-id:to:mime-version:content-type:
 content-language:in-reply-to:references:autocrypt;
 bh=0yaMYzF2veU+tL0RDS4L7bIfgl8wsKWQMLlbC1aOylk=;
 b=2ttTQ5rtuQwD+kEQD1Cr17v4scY0A4uOOTDL585WwTWMx42gws+5CgBTv+obzTNcMnsGFZ
 DVZG/f79i2sZB+8hAQHCJdUPe6BniLhW1u5vantBFItCpmGho0WQhtjqPm+v3QqL4l9PGb
 x//b9oJQRa3aEBqZjWRUBxVFBXubvjZ3SACZd2VX3mhorSLsbZsYknVWD+FUJYqq/0awRI
 d+Dqwfk1sF2lZDsNvcp4El3YEhYJs6D/JteN6tk8egglDB3gfZeNBmDVJrjf3+XaEk23Ka
 8sna9f2kX+hi5HtzqpYyKcnBMyNarwXYJ4ztBBmryEK2+I9tmZkZeGEcUUbCPA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=valdikss.org.ru
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=valdikss.org.ru header.i=@valdikss.org.ru
 header.a=rsa-sha256 header.s=msrv header.b=2ttTQ5rt
Subject: Re: [Intel-wired-lan] [PATCH] igc: fix disabling L1.2 PCI-E link
 substate on I226
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------x1G00DI03bPHsU44caBmdmHh
Content-Type: multipart/mixed; boundary="------------ZW6vxgf41ZW2PvbDKKvykBuB";
 protected-headers="v1"
From: ValdikSS <iam@valdikss.org.ru>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>, intel-wired-lan@osuosl.org
Message-ID: <ac3d9591-f564-4306-9638-989ebb328d29@valdikss.org.ru>
Subject: Re: [PATCH] igc: fix disabling L1.2 PCI-E link substate on I226
References: <20250722200448.14963-1-iam@valdikss.org.ru>
 <0c09a02b-71df-409f-96a0-6372d936ff82@intel.com>
In-Reply-To: <0c09a02b-71df-409f-96a0-6372d936ff82@intel.com>

--------------ZW6vxgf41ZW2PvbDKKvykBuB
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMjcuMDcuMjAyNSA0OjQ1IFBNLCBMaWZzaGl0cywgVml0YWx5IHdyb3RlOg0KPiBPbiA3
LzIyLzIwMjUgMTE6MDQgUE0sIFZhbGRpa1NTIHdyb3RlOg0KPj4gRGV2aWNlIElEIGNvbXBh
cmlzb24gaW4gaWdjX2lzX2RldmljZV9pZF9pMjI2IGlzIHBlcmZvcm1lZCBiZWZvcmUNCj4+
IHRoZSBJRCBpcyBzZXQsIHJlc3VsdGluZyBpbiBhbHdheXMgZmFpbGluZyBjaGVjay4NCj4+
DQo+PiBMaW5rOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9pbnRlbC13aXJlZC0gDQo+PiBs
YW4vMTUyNDhiNGYtMzI3MS00MmRkLThlMzUtMDJiZmM5MmIyNWUxQGludGVsLmNvbQ0KPj4g
U2lnbmVkLW9mZi1ieTogVmFsZGlrU1MgPGlhbUB2YWxkaWtzcy5vcmcucnU+DQo+PiAtLS0N
Cj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jIHwgMiAr
LQ0KPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0p
DQo+Pg0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9p
Z2NfbWFpbi5jIGIvZHJpdmVycy9uZXQvIA0KPj4gZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19t
YWluLmMNCj4+IGluZGV4IDAzMWMzMzJmNi4uMmRmMzYzNzNmIDEwMDY0NA0KPj4gLS0tIGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMNCj4+ICsrKyBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jDQo+PiBAQCAtNzExNiw2
ICs3MTE2LDcgQEAgc3RhdGljIGludCBpZ2NfcHJvYmUoc3RydWN0IHBjaV9kZXYgKnBkZXYs
DQo+PiDCoMKgwqDCoMKgIGFkYXB0ZXItPm1zZ19lbmFibGUgPSBuZXRpZl9tc2dfaW5pdChk
ZWJ1ZywgREVGQVVMVF9NU0dfRU5BQkxFKTsNCj4+IMKgwqDCoMKgwqAgLyogRGlzYWJsZSBB
U1BNIEwxLjIgb24gSTIyNiBkZXZpY2VzIHRvIGF2b2lkIHBhY2tldCBsb3NzICovDQo+PiAr
wqDCoMKgIGh3LT5kZXZpY2VfaWQgPSBwZGV2LT5kZXZpY2U7DQo+PiDCoMKgwqDCoMKgIGlm
IChpZ2NfaXNfZGV2aWNlX2lkX2kyMjYoaHcpKQ0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHBj
aV9kaXNhYmxlX2xpbmtfc3RhdGUocGRldiwgUENJRV9MSU5LX1NUQVRFX0wxXzIpOw0KPj4g
QEAgLTcxNDMsNyArNzE0NCw2IEBAIHN0YXRpYyBpbnQgaWdjX3Byb2JlKHN0cnVjdCBwY2lf
ZGV2ICpwZGV2LA0KPj4gwqDCoMKgwqDCoCAvKiBQQ0kgY29uZmlnIHNwYWNlIGluZm8gKi8N
Cj4+IMKgwqDCoMKgwqAgaHctPnZlbmRvcl9pZCA9IHBkZXYtPnZlbmRvcjsNCj4+IC3CoMKg
wqAgaHctPmRldmljZV9pZCA9IHBkZXYtPmRldmljZTsNCj4+IMKgwqDCoMKgwqAgaHctPnJl
dmlzaW9uX2lkID0gcGRldi0+cmV2aXNpb247DQo+PiDCoMKgwqDCoMKgIGh3LT5zdWJzeXN0
ZW1fdmVuZG9yX2lkID0gcGRldi0+c3Vic3lzdGVtX3ZlbmRvcjsNCj4+IMKgwqDCoMKgwqAg
aHctPnN1YnN5c3RlbV9kZXZpY2VfaWQgPSBwZGV2LT5zdWJzeXN0ZW1fZGV2aWNlOw0KPiAN
Cj4gSGkgVmxhZGlrLA0KPiANCj4gVGhhbmsgeW91IGZvciB0aGUgZml4Lg0KPiANCj4gSSBi
ZWxpZXZlIGl0IHdvdWxkIGJlIGJldHRlciB0byBtb3ZlIGFsbCB0aGUgZGV2aWNlIElEIHJl
bGF0ZWQgDQo+IGFzc2lnbm1lbnRzIGludG8gYSBzaW5nbGUgYmxvY2sgYXQgdGhlIGJlZ2lu
bmluZywgcmF0aGVyIHRoYW4gYXNzaWduaW5nIA0KPiBvbmx5IGh3LT5kZXZpY2VfaWQgZmly
c3QgYW5kIHRoZSByZXN0IGxhdGVyLiBUaGlzIHdvdWxkIGltcHJvdmUgdGhlIA0KPiByZWFk
YWJpbGl0eSBhbmQgZmxvdyBvZiB0aGUgY29kZS4NCg0KU29tZXRoaW5nIGxpa2UgdGhpcz8N
Cg==

--------------ZW6vxgf41ZW2PvbDKKvykBuB--

--------------x1G00DI03bPHsU44caBmdmHh
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEMiogvXcpmS32v71gXNcgLu+I93IFAmiGMHUFAwAAAAAACgkQXNcgLu+I93K3
ihAAqYPAuzYEdbbkSYaV1bF5XZcKbRuPotT4iXXTIxtjJMSKHXIMu9xPC94q/83dN7AWfaaSgwtF
kN+GzMPvFeVOfyYeDoA5d5xZKn9PgMCPQqr4ycptSrPT6mD73G1zCJK6EtCkCiXXH/B+WyFt2dEb
X9R7CBYHh4CoPK4QT4/1fZFqxEP5d5906Bi0GzWBAvE1kG1NCodQdIhwsSuMlAXsBEPsUUoesLLg
NSVCVb6VmFNM9pFb/er2OB+DbkhxeiMnIPjvd6n2je5Cbm6ZQE1szrTf69mitqVU+JYW1cUePolX
mBYf85Pd5p1PRIHoLNQ+zHUxvKl115bb5/gih6DQSQUF53hfc+/Zl1+P640DwqwhEUBGR3RJvpa6
XDWm0Bp5wnj67iOW6aw+p4KPMWX5NpEAxge9KglA4df9uQ5FZ1uZoP0hIc2QmaUYUhTo2a7Xn4Dl
XTb3MZLtjHZDtyDYDsuTcPtH67CZ/C87z4XugfS3h8XQJ2+lVKnMxhkDXR2X0UvTZAI21j79iQ4L
sgxviPYWFBiY2G3qRHxqylEcC7LgSCABn1HnXVqUePt3lh9L8yKNA7acWOVzOMgBtuUodSaDILS+
oTh5QCRYuFoyLvreHNivWidHHiRURsS2NRYUAb+8WscXrv0koA/9gwomqVkIFTEywNfoWP3/jUaU
uro=
=lEs/
-----END PGP SIGNATURE-----

--------------x1G00DI03bPHsU44caBmdmHh--
