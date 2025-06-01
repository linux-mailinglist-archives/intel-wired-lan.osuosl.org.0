Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D792DAC9E9E
	for <lists+intel-wired-lan@lfdr.de>; Sun,  1 Jun 2025 15:17:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8029281E5A;
	Sun,  1 Jun 2025 13:17:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P2QwdJHoFpN3; Sun,  1 Jun 2025 13:17:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D480F81E5C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748783821;
	bh=xe6SJ/G9B77MrgtynNt9i2vbYg5/yHgbihaX3NwvC0s=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=twDTADRElM4eQH1iHH/QLB8GqOu62lzdTCl+mCAweH8e05RUo4H4atoBjgPFrWkIe
	 Y71RxIXNxOUcYW9YMk1V2ExkB6SdpYyLUAc5Fnvd47ePUgiDhzBUaiOs7ByEo3zx/q
	 uV+yKI2ijPd78caBE/9k8667gM3J1K5zWl2S0szdXTzupcpQXaTydjwSMxYClVtAIQ
	 /JO+Wvw4pdQP8FvaES4tzmA4b0L5jMOpIfRTJ9apRHc90cHnVHHLGvwjhzpx5ZHFod
	 iMjPEB9lx4YsgNyOjOz7D1oP55qFvMCeJ670i+9gUjzEIy7Rt4qI0P3qo2T1cWBRL/
	 PVW3A0E/X/Q/g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D480F81E5C;
	Sun,  1 Jun 2025 13:17:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9C6D7127
 for <intel-wired-lan@lists.osuosl.org>; Sun,  1 Jun 2025 13:17:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 825A560905
 for <intel-wired-lan@lists.osuosl.org>; Sun,  1 Jun 2025 13:17:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S-yzaqO8gUEu for <intel-wired-lan@lists.osuosl.org>;
 Sun,  1 Jun 2025 13:17:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a02:e00:ffe7:c::2;
 helo=mail.valdk.tel; envelope-from=iam@valdikss.org.ru; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 674DC608FD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 674DC608FD
Received: from mail.valdk.tel (mail.valdk.tel [IPv6:2a02:e00:ffe7:c::2])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 674DC608FD
 for <intel-wired-lan@osuosl.org>; Sun,  1 Jun 2025 13:16:59 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 4EC7B1A7A232; Sun,  1 Jun 2025 16:16:52 +0300 (MSK)
Message-ID: <b711c9c8-6f46-4a13-9cfc-bd4595501dc2@valdikss.org.ru>
Date: Sun, 1 Jun 2025 16:16:52 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>, intel-wired-lan@osuosl.org
References: <b946ccd3-3f7e-4c8b-ac07-0283be19e952@intel.com>
 <803760bf-04ff-4b23-8343-5e21f3ad9f63@valdikss.org.ru>
 <de3512b3-d3cd-4102-a047-71859a517fe9@valdikss.org.ru>
 <15248b4f-3271-42dd-8e35-02bfc92b25e1@intel.com>
 <de86c75b-b204-483f-a5fc-6a1410b24738@valdikss.org.ru>
 <9b13f24c-2dac-4cab-a84f-ddcc59cc8190@intel.com>
Content-Language: ru, en-US
From: ValdikSS <iam@valdikss.org.ru>
Autocrypt: addr=iam@valdikss.org.ru; keydata=
 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
 OEcVmRU/pw5/zoQyQg==
In-Reply-To: <9b13f24c-2dac-4cab-a84f-ddcc59cc8190@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------4NJbeJyWUVC8Iw29PZeiwMOv"
X-Last-TLS-Session-Version: TLSv1.3
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=valdikss.org.ru; s=msrv; t=1748783815;
 h=from:subject:date:message-id:to:mime-version:content-type:
 content-language:in-reply-to:references:autocrypt;
 bh=xe6SJ/G9B77MrgtynNt9i2vbYg5/yHgbihaX3NwvC0s=;
 b=KpGXRib03RFKUt7JlRvUE5Z77EAYCD+af8AVbrHMTGGAZVrQTUSj4vMMw22cNtL74SAmQJ
 hg8J1oUFyc6siRLlSOA8a0Kdkb2fM9XkhivJCTfUx0L7oWy7OGlrKizfRdKc//SWIoLUvg
 cc44YdtX8dHaCcPcl/yIPs3fRayKR89QfCfw5cUmYDly1TxrvEpdjDVms0MG06Oz/iSuFY
 chlNuwFBvvs1c0K80wmj9d9AWUbnmFr0oEsRnag8vEYsWg3015AjLhOyLEJbMaglakjSgj
 vyWAOYersu7x7lN8MQGLQ2CfShzRvTG9DLY7ZIex+tE7IDldmicW6evvj8jwrA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=valdikss.org.ru
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=valdikss.org.ru header.i=@valdikss.org.ru
 header.a=rsa-sha256 header.s=msrv header.b=KpGXRib0
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
--------------4NJbeJyWUVC8Iw29PZeiwMOv
Content-Type: multipart/mixed; boundary="------------0jpA4eyi90EoMQvfl01SqpRS";
 protected-headers="v1"
From: ValdikSS <iam@valdikss.org.ru>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>, intel-wired-lan@osuosl.org
Message-ID: <b711c9c8-6f46-4a13-9cfc-bd4595501dc2@valdikss.org.ru>
Subject: Re: [Intel-wired-lan] I226-V 1G limited to ~250Mbit with ASPM enabled
References: <b946ccd3-3f7e-4c8b-ac07-0283be19e952@intel.com>
 <803760bf-04ff-4b23-8343-5e21f3ad9f63@valdikss.org.ru>
 <de3512b3-d3cd-4102-a047-71859a517fe9@valdikss.org.ru>
 <15248b4f-3271-42dd-8e35-02bfc92b25e1@intel.com>
 <de86c75b-b204-483f-a5fc-6a1410b24738@valdikss.org.ru>
 <9b13f24c-2dac-4cab-a84f-ddcc59cc8190@intel.com>
In-Reply-To: <9b13f24c-2dac-4cab-a84f-ddcc59cc8190@intel.com>

--------------0jpA4eyi90EoMQvfl01SqpRS
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMDEuMDYuMjAyNSAxOjA0IFBNLCBMaWZzaGl0cywgVml0YWx5IHdyb3RlOg0KPiANCj4+
DQo+PiBIZWxsbywgYXJlIHRoZXJlIGFueSB1cGRhdGVzIG9uIHVwc3RyZWFtaW5nIHRoaXMg
Y2hhbmdlPw0KPj4NCj4+IElmIHRoZXJlIGhhdmVuJ3QgYmVlbiBtdWNoIHRlc3RpbmcsIGNv
dWxkIGl0IGJlIHB1dCBiZWhpbmQgdGhlIG1vZHVsZSANCj4+IG9wdGlvbiBhbmQgZGlzYWJs
ZWQgYnkgZGVmYXVsdD8NCj4+DQo+IA0KPiANCj4gSGVsbG8sDQo+IA0KPiANCj4gV2UndmUg
ZGVjaWRlZCB0byBwdXJzdWUgYSBkaWZmZXJlbnQgc29sdXRpb24gdG8gdGhlIGlzc3VlLg0K
PiANCj4gVGhlIG9yaWdpbmFsIHdvcmthcm91bmQgbWF5IG5lZ2F0aXZlbHkgaW1wYWN0IHN5
c3RlbSBwb3dlciBjb25zdW1wdGlvbiwgDQo+IGFzIGEgbG93IExUUiB2YWx1ZSBjYW4gcHJl
dmVudCB0aGUgQ1BVIGZyb20gZW50ZXJpbmcgZGVlcGVyIHBvd2VyIHN0YXRlcy4NCj4gDQo+
IEFzIGFuIGFsdGVybmF0aXZlLCBhbmQgZm9yIHRlc3RpbmcgcHVycG9zZXMgb25seSwgY291
bGQgeW91IHBsZWFzZSBjaGVjayANCj4gd2hldGhlciB0aGUgZm9sbG93aW5nIGNoYW5nZXMg
cmVzb2x2ZSB0aGUgaXNzdWUgb24geW91ciBzeXN0ZW0/DQoNCldpdGggdGhpcyBwYXRjaCwg
dGhlIHNwZWVkIGlzIGZhc3Qgb25seSBhZnRlciBzdXNwZW5kL3Jlc3VtZSBjeWNsZS4NCklm
IEkganVzdCBwb3dlciBvbiB0aGUgUEMsIHRoZSBzcGVlZCBpcyBjYXBwZWQuIElmIEkgdW5s
b2FkIHRoZSBtb2R1bGUgDQp3aXRoIHRoZSBwcmV2aW91cyBwYXRjaCBhbmQgaW5zZXJ0IHRo
aXMgb25lLCB0aGUgc3BlZWQgaXMgYWxzbyBjYXBwZWQgDQphbmQgYW5vdGhlciBzdXNwZW5k
L3Jlc3VtZSBjeWNsZSBpcyByZXF1aXJlZC4NCg0KQWZ0ZXIgc3VzcGVuZC9yZXN1bWUsIHRo
ZSBzcGVlZCBpcyBnb29kLg0KDQpUZXN0ZWQgb24gNi4xNC44LCB3aXRoIHRoZSBpZ2MgY29k
ZSBmcm9tIDYuMTQuOS4NCg0KPiANCj4gDQo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2lnYy9pZ2NfbWFpbi5jDQo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2lnYy9pZ2NfbWFpbi5jDQo+IEBAIC03NDI2LDYgKzc0MjYsOCBAQCBzdGF0aWMgaW50
IF9faWdjX3Jlc3VtZShzdHJ1Y3QgZGV2aWNlICpkZXYsIGJvb2wgcnBtKQ0KPiAgwqDCoMKg
wqDCoMKgwqAgcGNpX2VuYWJsZV93YWtlKHBkZXYsIFBDSV9EM2hvdCwgMCk7DQo+ICDCoMKg
wqDCoMKgwqDCoCBwY2lfZW5hYmxlX3dha2UocGRldiwgUENJX0QzY29sZCwgMCk7DQo+IA0K
PiArwqDCoMKgwqDCoMKgIHBjaV9kaXNhYmxlX2xpbmtfc3RhdGUocGRldiwgUENJRV9MSU5L
X1NUQVRFX0wxXzIpOw0KPiArDQo+ICDCoMKgwqDCoMKgwqDCoCBpZiAoaWdjX2luaXRfaW50
ZXJydXB0X3NjaGVtZShhZGFwdGVyLCB0cnVlKSkgew0KPiAgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIG5ldGRldl9lcnIobmV0ZGV2LCAiVW5hYmxlIHRvIGFsbG9jYXRlIG1l
bW9yeSBmb3IgDQo+IHF1ZXVlc1xuIik7DQo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgcmV0dXJuIC1FTk9NRU07DQo+IEBAIC03NTUxLDYgKzc1NTMsNyBAQCBzdGF0aWMg
cGNpX2Vyc19yZXN1bHRfdCBpZ2NfaW9fc2xvdF9yZXNldChzdHJ1Y3QgDQo+IHBjaV9kZXYg
KnBkZXYpDQo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcGNpX2VuYWJsZV93
YWtlKHBkZXYsIFBDSV9EM2hvdCwgMCk7DQo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgcGNpX2VuYWJsZV93YWtlKHBkZXYsIFBDSV9EM2NvbGQsIDApOw0KPiANCj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcGNpX2Rpc2FibGVfbGlua19zdGF0ZV9sb2Nr
ZWQocGRldiwgUENJRV9MSU5LX1NUQVRFX0wxXzIpOw0KPiAgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIC8qIEluIGNhc2Ugb2YgUENJIGVycm9yLCBhZGFwdGVyIGxvc2VzIGl0
cyBIVyBhZGRyZXNzDQo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIHNv
IHdlIHNob3VsZCByZS1hc3NpZ24gaXQgaGVyZS4NCj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgICovDQo+IA0KDQo=

--------------0jpA4eyi90EoMQvfl01SqpRS--

--------------4NJbeJyWUVC8Iw29PZeiwMOv
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEMiogvXcpmS32v71gXNcgLu+I93IFAmg8UsQFAwAAAAAACgkQXNcgLu+I93L6
/hAAgOvMyyB5qum9bVMAnGJ/QKl4hJSjFnfyN3Rz9K/1FhCqKreCTWAaAp9Pt9pH6PhQBjV9OIb5
kyTL0AT1C16sgSNN4WBDNMD/FA3+CCHA5rGyV+colf576IWD8pvUNWTbh+Czi1MvGOqM2/TkrsQw
U9zVNZ2IWTwS/ALUOUQg0cm+4/UOOvs+mL0Pu1FhiMwUymC6gtRuHqaufQwB+b7m3ory1sGM5vNN
HOgrP1cZLSDT2Yz3CI9EUTOE/ig/dxC+/5HgXwStFQxV11wglhVlfjskRMLEqy15bsqF4b3HQGqE
kWvLV6AYATG01WI7guyUwtG/PeIG2SQ76p5rHRFuqVawDQApsCIq8f5vL8SHL31/EBF+rNU//qbZ
uFqkd/6yk/wmuu3EhJOAN+V1Ud4YNNZQQ9LM1Vj22BNVHfWhN680K+gh64PwEXBDO+IlUgR2fm/5
+xmzJf7Ix1VtqVFUJjFzQ7vZyWYQ1VyoVcPnnmRSZiO3ciWIFwHHudmI1KXKD2MghxSBaRqRkNg0
jF9BtIKRT5s0RG3hQuJTFNydQny/ESLBlhfRgyA7CdaVOKiPjOB11S9cuXiMeZRnAwn8zInteKE3
/QgU2/d3RdgKjDs22mQ0nni3WqmOTt9mpsNFgqMyFFM5V8pnMws/bCt26Q7sQrBZfwpPZk6dkFyd
mrQ=
=Bkop
-----END PGP SIGNATURE-----

--------------4NJbeJyWUVC8Iw29PZeiwMOv--
