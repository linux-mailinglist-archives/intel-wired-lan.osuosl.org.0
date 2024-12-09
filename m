Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1330F9E8E92
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Dec 2024 10:21:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2264C403CE;
	Mon,  9 Dec 2024 09:21:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zTsLoWi8_i3R; Mon,  9 Dec 2024 09:21:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D040D403B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733736082;
	bh=zU4Up4d0M8UZZFBnEnTL1Ppw0zhjRXvrGPRjF4QNAU0=;
	h=Date:From:To:References:Cc:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wq7g1gVUYvvDx3w+EpF2gSOQRvZnbaS9kI6SQ6QEjScEWKt/iYlIrhuxxpgG0MxBB
	 P4kdvCVxb2E1Gbm5/ehJi4cVLbXgYED/df68e93S9IqCbM/6al/ARAbT8lQ15d63NC
	 8Kt25jJ/8Af2ESh1KS3XzTxrhLvpkjmnsEz0+Y7uRkHcM6VO6WLU5A4f76cshlZTdg
	 KQzyJTOtIGbwy8xhlfKJPfet7epaHSvNod4h5Ju+XvrbvFqbqYj6B+Z37Xphgvadx8
	 exunuotgYV7PuxXKU8mVXyi4GQSN2cmbB1fRa1iaaVw1/uPJ47tezCEiDri4051YbD
	 Kb1ybNPVUCs0w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D040D403B9;
	Mon,  9 Dec 2024 09:21:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 88A5F6F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Dec 2024 09:21:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 83C3E4035A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Dec 2024 09:21:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xqB7AwH473Ju for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Dec 2024 09:21:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.177.150.13;
 helo=mail.valdk.tel; envelope-from=iam@valdikss.org.ru; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F0CF34035C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F0CF34035C
Received: from mail.valdk.tel (mail.valdk.tel [185.177.150.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F0CF34035C
 for <intel-wired-lan@osuosl.org>; Mon,  9 Dec 2024 09:21:18 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 02B2B176065B; Mon,  9 Dec 2024 12:21:09 +0300 (MSK)
Message-ID: <803760bf-04ff-4b23-8343-5e21f3ad9f63@valdikss.org.ru>
Date: Mon, 9 Dec 2024 12:21:00 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: ValdikSS <iam@valdikss.org.ru>
To: intel-wired-lan@osuosl.org
References: <b946ccd3-3f7e-4c8b-ac07-0283be19e952@intel.com>
Content-Language: ru, en-US
Cc: vitaly.lifshits@intel.com
Autocrypt: addr=iam@valdikss.org.ru; keydata=
 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
 OEcVmRU/pw5/zoQyQg==
In-Reply-To: <b946ccd3-3f7e-4c8b-ac07-0283be19e952@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------fLeJGZN8wC60SEBR3EAxkCte"
X-Last-TLS-Session-Version: TLSv1.3
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=valdikss.org.ru; s=msrv; t=1733736074;
 h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-language:in-reply-to:references:autocrypt;
 bh=zU4Up4d0M8UZZFBnEnTL1Ppw0zhjRXvrGPRjF4QNAU0=;
 b=s9V7or32RTwjxLhZreN4nPNprsGovQsV5UNvSWzjiBR4cgUMQiY9+RXwsOhfg3fJnzIDau
 /PgpsBvleOD1a6HpHTO95PwSjX1o0tlX0GzkCF2FuEEbNXe6o63KaKUwCUxi40B29IKnAM
 KVo+fKr7ym/1oAGIqjvTEBPWPwu//wed+6g5onvB29Ra89aoLsoCa0ZFUTHKIv5iMW8Toh
 6qnphc8if4cuRCSSRwJIgsWPtTDfy1f/gVccdXexWyGJ2KhYwi3I2m+GtZzyG7tcPWSHdK
 6eVmaiMcoeIFbIhHir8GPUVHz1r4jdV/oSmCu6i9aMbKp4cavcHGkLZ1WQlaLQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=valdikss.org.ru
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=valdikss.org.ru header.i=@valdikss.org.ru
 header.a=rsa-sha256 header.s=msrv header.b=s9V7or32
Subject: Re: [Intel-wired-lan] I226-V 1G limited to ~250Mbit with ASPM
 enabled
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
--------------fLeJGZN8wC60SEBR3EAxkCte
Content-Type: multipart/mixed; boundary="------------Cyjn4DoP2Vnqkvspr0fPufaN";
 protected-headers="v1"
From: ValdikSS <iam@valdikss.org.ru>
To: intel-wired-lan@osuosl.org
Cc: vitaly.lifshits@intel.com
Message-ID: <803760bf-04ff-4b23-8343-5e21f3ad9f63@valdikss.org.ru>
Subject: Re: [Intel-wired-lan] I226-V 1G limited to ~250Mbit with ASPM enabled
References: <b946ccd3-3f7e-4c8b-ac07-0283be19e952@intel.com>
In-Reply-To: <b946ccd3-3f7e-4c8b-ac07-0283be19e952@intel.com>

--------------Cyjn4DoP2Vnqkvspr0fPufaN
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

Pj4gQWZ0ZXIgKHByZXN1bWFibHkpIGxhdGVzdCBVRUZJIHYwMDMzIHVwZGF0ZSBmb3IgdGhl
IE5VQywgbXkgbmV0d29yayBpcyANCj4+IGxpbWl0ZWQgdG8gfjI1MCBNYml0L3MgZG93bmxv
YWQgdW5sZXNzIEkgZGlzYWJsZSBQQ0lFIEFTUE0gb3B0aW9uIGluIA0KPj4gVUVGSSBzZXR0
aW5ncy4NCj4+IDU2OjAwLjAgRXRoZXJuZXQgY29udHJvbGxlciBbMDIwMF06IEludGVsIENv
cnBvcmF0aW9uIEV0aGVybmV0IA0KPj4gQ29udHJvbGxlciBJMjI2LVYgWzgwODY6MTI1Y10g
KHJldiAwNCkNCj4gDQo+IEhlbGxvLA0KPiANCj4gSSBiZWxpZXZlIHRoYXQgdGhlIGlzc3Vl
IHlvdSBhcmUgZmFjaW5nIGlzIHJlbGF0ZWQgdG8gUENJRSBMMS4yIHN0YXRlIA0KPiBleGl0
IGxhdGVuY3kuIFRvIGNvbmZpcm0gdGhpcyBwbGVhc2UgdHJ5IHRvIHJlcHJvZHVjZSBpdCBh
ZnRlciBtYWtpbmcgDQo+IHRoZSBmb2xsb3dpbmcgY2hhbmdlcyBpbiB0aGUgaWdjIGNvZGU6
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2ln
Y19pMjI1LmMgDQo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19pMjI1
LmMNCj4gaW5kZXggMGRkNjE3MTlmMWVkLi4xYzBjM2Q2NjVhMGMgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfaTIyNS5jDQo+ICsrKyBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfaTIyNS5jDQo+IEBAIC02MTIsNiAr
NjEyLDEwIEBAIHMzMiBpZ2Nfc2V0X2x0cl9pMjI1KHN0cnVjdCBpZ2NfaHcgKmh3LCBib29s
IGxpbmspDQo+ICAgICAgICAgICAgICAgICAgICovDQo+ICAgICAgICAgICAgICAgICAgbHRy
X21pbiA9ICgxMDAwICogc2l6ZSkgLyBzcGVlZDsNCj4gICAgICAgICAgICAgICAgICBsdHJf
bWF4ID0gbHRyX21pbiArIHR3X3N5c3RlbTsNCj4gKyAgICAgICAgICAgICAgIGlmIChzcGVl
ZCA9PSBTUEVFRF8xMDAwKSB7DQo+ICsgICAgICAgICAgICAgICAgICAgICAgIGx0cl9taW4g
PSBsdHJfbWF4ID0gMTAwICogMTAwMDsNCj4gKyAgICAgICAgICAgICAgIH0NCj4gKw0KPiAg
ICAgICAgICAgICAgICAgIHNjYWxlX21pbiA9IChsdHJfbWluIC8gMTAyNCkgPCAxMDI0ID8g
DQo+IElHQ19MVFJNSU5WX1NDQUxFXzEwMjQgOg0KPiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIElHQ19MVFJNSU5WX1NDQUxFXzMyNzY4Ow0KPiAgICAgICAgICAgICAgICAgIHNj
YWxlX21heCA9IChsdHJfbWF4IC8gMTAyNCkgPCAxMDI0ID8gDQo+IElHQ19MVFJNQVhWX1ND
QUxFXzEwMjQgOg0KDQpUaGF0IGluc3RhbnRseSBmaXhlZCB0aGUgaXNzdWUsIHRoYW5rcyEN
Cg0KV2l0aCB0aGUgcGF0Y2g6DQoNCiQgY3VybCAtbyAvZGV2L251bGwgaHR0cDovL3NwZWVk
dGVzdC5zZWxlY3RlbC5ydS8xR0IgLTQNCiAgICUgVG90YWwgICAgJSBSZWNlaXZlZCAlIFhm
ZXJkICBBdmVyYWdlIFNwZWVkICAgVGltZSAgICBUaW1lICAgICBUaW1lIA0KQ3VycmVudA0K
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIERsb2FkICBVcGxvYWQgICBUb3Rh
bCAgIFNwZW50ICAgIExlZnQgDQpTcGVlZA0KMTAwIDEwMjRNICAxMDAgMTAyNE0gICAgMCAg
ICAgMCAgNTUuM00gICAgICAwICAwOjAwOjE4ICAwOjAwOjE4IC0tOi0tOi0tIA0KNTkuNU0N
Cg0KV2l0aG91dCB0aGUgcGF0Y2g6DQoNCiQgY3VybCAtbyAvZGV2L251bGwgaHR0cDovL3Nw
ZWVkdGVzdC5zZWxlY3RlbC5ydS8xR0IgLTQNCiAgICUgVG90YWwgICAgJSBSZWNlaXZlZCAl
IFhmZXJkICBBdmVyYWdlIFNwZWVkICAgVGltZSAgICBUaW1lICAgICBUaW1lIA0KQ3VycmVu
dA0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIERsb2FkICBVcGxvYWQgICBU
b3RhbCAgIFNwZW50ICAgIExlZnQgDQpTcGVlZA0KMTAwIDEwMjRNICAxMDAgMTAyNE0gICAg
MCAgICAgMCAgMjEuOE0gICAgICAwICAwOjAwOjQ2ICAwOjAwOjQ2IC0tOi0tOi0tIA0KMjAu
MU0NCg==

--------------Cyjn4DoP2Vnqkvspr0fPufaN--

--------------fLeJGZN8wC60SEBR3EAxkCte
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEMiogvXcpmS32v71gXNcgLu+I93IFAmdWtnwFAwAAAAAACgkQXNcgLu+I93Ji
gg//WeY0QEy6zTmZik1KUOb36aBRcrTwEyE1pTxZF84DpggOHZRajde2NQvsz7Xz+GdXlXmwkkij
yYxz23fQn6CJxciuUPm2og0vybpxjI4SDum+BX5K/XNviG4Q5QKH7QtAcpt1WcmTEVz/THr9Apch
bOgOHjol2qEuozTV6d0ohlMzt/BhAhzMOvgXOeDCa6Clylez6aKgOcu39QBABju6UYeNjgap4Udj
CCQsRpw/pBwUDGGOSb5KjHnmnejT7z5wVUqigKtr1tcYKjGKm4y4V5bTGuHVeZD4gEZGXxvOA1gF
G5SfS1zW5Luy85Ymj4Cr9gGt+ldOPmX3kwujEdqy2iG8ZM0vATZnctDhvnuGT0eAfWZ1Kty3u7/P
PJsZkt3oYCu2tNK5Q5ondf6Ra2YiHTb2wvjkm2J4VmZVplkBEuRP7tHjWOXXJQN9E87Mj+zh0w21
XtUU/hNmlA5mM0jAwlqtAYBXK5eBUw4xutxAA3L02Lnaaxsw1UXJ56fn1SMKrjHcRY2quVgqvQXa
4YQ43hPsIfj2Z/SU/Ltq2JtHMnd0GlHd2uUplfhrpEkbPKLdcFs5slL8AN3xFKPT00uqplEz8U1u
hagUkjebjBXp0lnBFjwDLumrCrQbVXJjcr3l/3SYativgonENOjze8zCadbXNEqzPoG6ujUhnGlk
5Es=
=9b1g
-----END PGP SIGNATURE-----

--------------fLeJGZN8wC60SEBR3EAxkCte--
