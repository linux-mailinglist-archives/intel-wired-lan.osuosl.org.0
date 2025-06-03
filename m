Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 483C8ACCCD9
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Jun 2025 20:24:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 88138616E2;
	Tue,  3 Jun 2025 18:24:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q-hHzKSDK4i2; Tue,  3 Jun 2025 18:24:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DFCBE61552
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748975089;
	bh=884DRlyW+RjRIFNNSaHI7FWJGaaIVj4OgF4/GpXHNy8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9GtazpRt0Y4aSSOusitIG51Ob1TmG3/7kWd+LorIIWjrRnWSTS2sp9uqmXoYTpVNP
	 ULpQwLjWl3aElIqVsaQMvBFX53vnbSE4lJzXIUMSbszxz0Oz1Prhg+pXKAYHXmIOAC
	 B8yvuUJD0j/DTjvUQ27cLAs58Gm4ZYdbheAT8WQWLyEeVWD8kkQ4kGZQG64cpMB6C8
	 BCfSQt2dI+vHjO8lu8BylEcR/20hQ3Y7ZnNzbvZ3VH0tqmmlGXGrRjCP5wktJv0hMe
	 6odfgTQSEt7Lj16zpIHmR/p7IjPw6wdZmC7ywTWEhrOtioqEVB6QDdvzQ/sgb3sUxg
	 a8iVFWMdER0BQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DFCBE61552;
	Tue,  3 Jun 2025 18:24:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id E5AA21F7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jun 2025 18:24:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CBD344195F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Jun 2025 18:24:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 66X6NpOrHPMT for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Jun 2025 18:24:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a02:e00:ffe7:c::2;
 helo=mail.valdk.tel; envelope-from=iam@valdikss.org.ru; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A3C1C41802
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A3C1C41802
Received: from mail.valdk.tel (mail.valdk.tel [IPv6:2a02:e00:ffe7:c::2])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A3C1C41802
 for <intel-wired-lan@osuosl.org>; Tue,  3 Jun 2025 18:24:47 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 946DD1A83819; Tue,  3 Jun 2025 21:24:41 +0300 (MSK)
Message-ID: <cc4a3a7c-f2f5-4796-94b8-94517a652b41@valdikss.org.ru>
Date: Tue, 3 Jun 2025 21:24:41 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>, intel-wired-lan@osuosl.org
References: <b946ccd3-3f7e-4c8b-ac07-0283be19e952@intel.com>
 <803760bf-04ff-4b23-8343-5e21f3ad9f63@valdikss.org.ru>
 <de3512b3-d3cd-4102-a047-71859a517fe9@valdikss.org.ru>
 <15248b4f-3271-42dd-8e35-02bfc92b25e1@intel.com>
 <de86c75b-b204-483f-a5fc-6a1410b24738@valdikss.org.ru>
 <9b13f24c-2dac-4cab-a84f-ddcc59cc8190@intel.com>
 <b711c9c8-6f46-4a13-9cfc-bd4595501dc2@valdikss.org.ru>
 <f561b5bf-6dfa-4875-ad68-8f410297334c@intel.com>
Content-Language: ru, en-US
From: ValdikSS <iam@valdikss.org.ru>
Autocrypt: addr=iam@valdikss.org.ru; keydata=
 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
 OEcVmRU/pw5/zoQyQg==
In-Reply-To: <f561b5bf-6dfa-4875-ad68-8f410297334c@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Momjjh8kESCSpR3BT7SWpNPN"
X-Last-TLS-Session-Version: TLSv1.3
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=valdikss.org.ru; s=msrv; t=1748975084;
 h=from:subject:date:message-id:to:mime-version:content-type:
 content-language:in-reply-to:references:autocrypt;
 bh=884DRlyW+RjRIFNNSaHI7FWJGaaIVj4OgF4/GpXHNy8=;
 b=7Of8NroMfiifCWPNemewZYXNxbwxIXDA2haSfQ8CuYjLv7XD4x7hM5f5pM845DtfFxoAf7
 6LDmyR2noRN6Jt5ddI+XS5yO6JK187Q6VeJ7igcvpqdf9HnVbHepqCtSLUdVYfCdldj70V
 pQM9bwwzB8Zu85JkrqZ1wG7gBxk8I0KdrukS43HoAnSI8xkAvZ1km1eMHIZajm1tBWpwbb
 0t24MkNFh46+6mlGDE+AW3r8J5qogUIf08EPXxPnjPHp5u3EZNKBzy7gioCfW1y+Jc9GyC
 C/ftsWVZ2aSk4Q5uQ72kCNkgDfNuANnrrSNR1WKG4nsOW6cwC9imDB5b/Cd/Lg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=valdikss.org.ru
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=valdikss.org.ru header.i=@valdikss.org.ru
 header.a=rsa-sha256 header.s=msrv header.b=7Of8NroM
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
--------------Momjjh8kESCSpR3BT7SWpNPN
Content-Type: multipart/mixed; boundary="------------txiOnngdPTvimtI0lGiewPs0";
 protected-headers="v1"
From: ValdikSS <iam@valdikss.org.ru>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>, intel-wired-lan@osuosl.org
Message-ID: <cc4a3a7c-f2f5-4796-94b8-94517a652b41@valdikss.org.ru>
Subject: Re: [Intel-wired-lan] I226-V 1G limited to ~250Mbit with ASPM enabled
References: <b946ccd3-3f7e-4c8b-ac07-0283be19e952@intel.com>
 <803760bf-04ff-4b23-8343-5e21f3ad9f63@valdikss.org.ru>
 <de3512b3-d3cd-4102-a047-71859a517fe9@valdikss.org.ru>
 <15248b4f-3271-42dd-8e35-02bfc92b25e1@intel.com>
 <de86c75b-b204-483f-a5fc-6a1410b24738@valdikss.org.ru>
 <9b13f24c-2dac-4cab-a84f-ddcc59cc8190@intel.com>
 <b711c9c8-6f46-4a13-9cfc-bd4595501dc2@valdikss.org.ru>
 <f561b5bf-6dfa-4875-ad68-8f410297334c@intel.com>
In-Reply-To: <f561b5bf-6dfa-4875-ad68-8f410297334c@intel.com>

--------------txiOnngdPTvimtI0lGiewPs0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMDMuMDYuMjAyNSAxMTo0NiBBTSwgTGlmc2hpdHMsIFZpdGFseSB3cm90ZToNCj4gDQo+
IA0KPiBPbiA2LzEvMjAyNSA0OjE2IFBNLCBWYWxkaWtTUyB3cm90ZToNCj4+IE9uIDAxLjA2
LjIwMjUgMTowNCBQTSwgTGlmc2hpdHMsIFZpdGFseSB3cm90ZToNCj4+Pg0KPj4+Pg0KPj4+
PiBIZWxsbywgYXJlIHRoZXJlIGFueSB1cGRhdGVzIG9uIHVwc3RyZWFtaW5nIHRoaXMgY2hh
bmdlPw0KPj4+Pg0KPj4+PiBJZiB0aGVyZSBoYXZlbid0IGJlZW4gbXVjaCB0ZXN0aW5nLCBj
b3VsZCBpdCBiZSBwdXQgYmVoaW5kIHRoZSANCj4+Pj4gbW9kdWxlIG9wdGlvbiBhbmQgZGlz
YWJsZWQgYnkgZGVmYXVsdD8NCj4+Pj4NCj4+Pg0KPj4+DQo+Pj4gSGVsbG8sDQo+Pj4NCj4+
Pg0KPj4+IFdlJ3ZlIGRlY2lkZWQgdG8gcHVyc3VlIGEgZGlmZmVyZW50IHNvbHV0aW9uIHRv
IHRoZSBpc3N1ZS4NCj4+Pg0KPj4+IFRoZSBvcmlnaW5hbCB3b3JrYXJvdW5kIG1heSBuZWdh
dGl2ZWx5IGltcGFjdCBzeXN0ZW0gcG93ZXIgDQo+Pj4gY29uc3VtcHRpb24sIGFzIGEgbG93
IExUUiB2YWx1ZSBjYW4gcHJldmVudCB0aGUgQ1BVIGZyb20gZW50ZXJpbmcgDQo+Pj4gZGVl
cGVyIHBvd2VyIHN0YXRlcy4NCj4+Pg0KPj4+IEFzIGFuIGFsdGVybmF0aXZlLCBhbmQgZm9y
IHRlc3RpbmcgcHVycG9zZXMgb25seSwgY291bGQgeW91IHBsZWFzZSANCj4+PiBjaGVjayB3
aGV0aGVyIHRoZSBmb2xsb3dpbmcgY2hhbmdlcyByZXNvbHZlIHRoZSBpc3N1ZSBvbiB5b3Vy
IHN5c3RlbT8NCj4+DQo+PiBXaXRoIHRoaXMgcGF0Y2gsIHRoZSBzcGVlZCBpcyBmYXN0IG9u
bHkgYWZ0ZXIgc3VzcGVuZC9yZXN1bWUgY3ljbGUuDQo+PiBJZiBJIGp1c3QgcG93ZXIgb24g
dGhlIFBDLCB0aGUgc3BlZWQgaXMgY2FwcGVkLiBJZiBJIHVubG9hZCB0aGUgbW9kdWxlIA0K
Pj4gd2l0aCB0aGUgcHJldmlvdXMgcGF0Y2ggYW5kIGluc2VydCB0aGlzIG9uZSwgdGhlIHNw
ZWVkIGlzIGFsc28gY2FwcGVkIA0KPj4gYW5kIGFub3RoZXIgc3VzcGVuZC9yZXN1bWUgY3lj
bGUgaXMgcmVxdWlyZWQuDQo+Pg0KPj4gQWZ0ZXIgc3VzcGVuZC9yZXN1bWUsIHRoZSBzcGVl
ZCBpcyBnb29kLg0KPj4NCj4+IFRlc3RlZCBvbiA2LjE0LjgsIHdpdGggdGhlIGlnYyBjb2Rl
IGZyb20gNi4xNC45Lg0KPiANCj4gT2ssIHNvIEkgYmVsaWV2ZSB0aGF0IGFkZGluZyB0aGlz
IHRvIGlnY19wcm9iZSBzaG91bGQgd29yazoNCj4gDQo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jDQo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jDQo+IEBAIC03MDc0LDYgKzcwNzQsOCBAQCBzdGF0
aWMgaW50IGlnY19wcm9iZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwNCj4gIMKgwqDCoMKgwqDC
oMKgIGNvbnN0IHN0cnVjdCBpZ2NfaW5mbyAqZWkgPSBpZ2NfaW5mb190YmxbZW50LT5kcml2
ZXJfZGF0YV07DQo+ICDCoMKgwqDCoMKgwqDCoCBpbnQgZXJyOw0KPiANCj4gK8KgwqDCoMKg
wqDCoCBwY2lfZGlzYWJsZV9saW5rX3N0YXRlKHBkZXYsIFBDSUVfTElOS19TVEFURV9MMV8y
KTsNCj4gKw0KPiAgwqDCoMKgwqDCoMKgwqAgZXJyID0gcGNpX2VuYWJsZV9kZXZpY2VfbWVt
KHBkZXYpOw0KPiAgwqDCoMKgwqDCoMKgwqAgaWYgKGVycikNCj4gIMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gZXJyOw0KPiBAQCAtNzQ5OCw2ICs3NTAwLDggQEAg
c3RhdGljIGludCBfX2lnY19yZXN1bWUoc3RydWN0IGRldmljZSAqZGV2LCBib29sIHJwbSkN
Cj4gIMKgwqDCoMKgwqDCoMKgIHBjaV9lbmFibGVfd2FrZShwZGV2LCBQQ0lfRDNob3QsIDAp
Ow0KPiAgwqDCoMKgwqDCoMKgwqAgcGNpX2VuYWJsZV93YWtlKHBkZXYsIFBDSV9EM2NvbGQs
IDApOw0KPiANCj4gK8KgwqDCoMKgwqDCoCBwY2lfZGlzYWJsZV9saW5rX3N0YXRlKHBkZXYs
IFBDSUVfTElOS19TVEFURV9MMV8yKTsNCj4gKw0KPiAgwqDCoMKgwqDCoMKgwqAgaWYgKGln
Y19pbml0X2ludGVycnVwdF9zY2hlbWUoYWRhcHRlciwgdHJ1ZSkpIHsNCj4gIMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBuZXRkZXZfZXJyKG5ldGRldiwgIlVuYWJsZSB0byBh
bGxvY2F0ZSBtZW1vcnkgZm9yIA0KPiBxdWV1ZXNcbiIpOw0KPiAgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRU5PTUVNOw0KPiBAQCAtNzYyMyw2ICs3NjI3LDcg
QEAgc3RhdGljIHBjaV9lcnNfcmVzdWx0X3QgaWdjX2lvX3Nsb3RfcmVzZXQoc3RydWN0IA0K
PiBwY2lfZGV2ICpwZGV2KQ0KPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBj
aV9lbmFibGVfd2FrZShwZGV2LCBQQ0lfRDNob3QsIDApOw0KPiAgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHBjaV9lbmFibGVfd2FrZShwZGV2LCBQQ0lfRDNjb2xkLCAwKTsN
Cj4gDQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBjaV9kaXNhYmxlX2xpbmtf
c3RhdGVfbG9ja2VkKHBkZXYsIFBDSUVfTElOS19TVEFURV9MMV8yKTsNCj4gIMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvKiBJbiBjYXNlIG9mIFBDSSBlcnJvciwgYWRhcHRl
ciBsb3NlcyBpdHMgSFcgYWRkcmVzcw0KPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgKiBzbyB3ZSBzaG91bGQgcmUtYXNzaWduIGl0IGhlcmUuDQo+ICDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqLw0KPiANCj4gSSB0aGluayB0aGF0IGlmIHRoaXMg
cGF0Y2ggd29ya3MsIHdlIGNhbiBzdGFydCB3b3JraW5nIG9uIHVwc3RyZWFtaW5nIGl0Lg0K
PiANCg0KSXQgd29ya3MsIHRoYW5rcyENCg0K

--------------txiOnngdPTvimtI0lGiewPs0--

--------------Momjjh8kESCSpR3BT7SWpNPN
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEMiogvXcpmS32v71gXNcgLu+I93IFAmg/PekFAwAAAAAACgkQXNcgLu+I93IK
yBAAlJCEoF9HI3JxJIiQB1Po6tUbgwGedrKTtjs8UnNp+DmMikumZ1JfPPYdLAOCZOcMVAbfmkn4
FxgM6essimcxExMKq/soWis/zd6sR3yotn53+W/p4sfBH6Cuy1Lsun8EDJ3rEVe6DpykMiBVNT3b
ua0W1Fm26zHqFSj6Byy/Wxt9jrSOk30h2oTHkn8gdGRG1O4IDAMOJhHUu4LE6y12qVkL+s3Bj4M/
NE4/k8HTwHyXAPHdxsfFf8evoSTUboLcfjboDeiHGGLjKVhpckvZG+YbVa12XCiFgyHE/2bKGNFs
d7ErYoUzoERbvUcLYS/cWnVwRO+g96mEoQLjzJ2YLeS93BwLKVYqnNbJ7acMJtJ+Ddph9wO9fPQO
zCWKkNTTv5Rqo3id/dJf/u9KfBpSvpb0DNOxegqpy8HdEeN0/Q915gcBLvhABmbcmVzxFshzUyXm
nf4Nc2qbo3XETiaH1eHQNB5g6hC2MuoSQyr910CfXiT2B7LyNZRtPIf6sPDW6RDMm9v6lfRIz0T6
ovM72lMwRaiFLBqGPlm1MQCWLsEamOZX9NpYknc0KzXOeYmVM97+gFFH4Y06w0bX7O2v1Dx/LyoM
4+DTpY2QfP99/rtGVGLnk4TzDghEiE+o12yHaWyegu0BEoICobOUSi8ZrSruokls/z631euwlyJv
JjE=
=oMUG
-----END PGP SIGNATURE-----

--------------Momjjh8kESCSpR3BT7SWpNPN--
