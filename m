Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 74811B0E492
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Jul 2025 22:10:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AA6FB807E1;
	Tue, 22 Jul 2025 20:10:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aSI0x-LVRbkW; Tue, 22 Jul 2025 20:10:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DCB85806B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753215037;
	bh=GWPIYEhuTbTKeAokbw/M/QCRWhBTWGxNcfv+3yHxBb4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SMls0zf8bICo+CWwvSeUG9fG0CW1UWJ0tXz+eOnPialDgFjRAcmjP82SQeewmWOET
	 g/5z6Kwxi3Kv+RgoYXQgp7JuwQ0kpJwLd3sdyuOkCaltvDjXYqOJpMnqN7IJJQCG7D
	 ZWLzjzFZRuGT6DBJKvcTNJX1OQvumrHGB+HMRfzsgMkEXXvN4ltvcIwwRNiktnmEnp
	 Jf9aWCArQDZYK0OFOTowfrqwRdw3a8KwBbeh2FbECCgfLPg7fM09C6Ut5yq+w8sQcp
	 23DsIBcdz7SkIOrZHeajlGmYE3+e83JaYpzClNy1756B7nEaf95Tyij0uEcHwBrm20
	 VvCyJqc1Iw2MQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DCB85806B7;
	Tue, 22 Jul 2025 20:10:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3CE2AE0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 20:10:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4BC9941101
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 20:10:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LWgN_J7EEoAi for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Jul 2025 20:10:34 +0000 (UTC)
X-Greylist: delayed 601 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 22 Jul 2025 20:10:34 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3CAAA410D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3CAAA410D5
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a02:e00:ffe7:c::2;
 helo=mail.valdk.tel; envelope-from=iam@valdikss.org.ru; receiver=<UNKNOWN> 
Received: from mail.valdk.tel (mail.valdk.tel [IPv6:2a02:e00:ffe7:c::2])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3CAAA410D5
 for <intel-wired-lan@osuosl.org>; Tue, 22 Jul 2025 20:10:34 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 780891B54D4D; Tue, 22 Jul 2025 22:51:05 +0300 (MSK)
Message-ID: <0c3ef80e-3aaf-42a2-83ee-109366c493c7@valdikss.org.ru>
Date: Tue, 22 Jul 2025 22:51:04 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: ValdikSS <iam@valdikss.org.ru>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>, intel-wired-lan@osuosl.org
References: <b946ccd3-3f7e-4c8b-ac07-0283be19e952@intel.com>
 <803760bf-04ff-4b23-8343-5e21f3ad9f63@valdikss.org.ru>
 <de3512b3-d3cd-4102-a047-71859a517fe9@valdikss.org.ru>
 <15248b4f-3271-42dd-8e35-02bfc92b25e1@intel.com>
 <de86c75b-b204-483f-a5fc-6a1410b24738@valdikss.org.ru>
 <9b13f24c-2dac-4cab-a84f-ddcc59cc8190@intel.com>
 <b711c9c8-6f46-4a13-9cfc-bd4595501dc2@valdikss.org.ru>
 <f561b5bf-6dfa-4875-ad68-8f410297334c@intel.com>
 <cc4a3a7c-f2f5-4796-94b8-94517a652b41@valdikss.org.ru>
Content-Language: ru, en-US
Autocrypt: addr=iam@valdikss.org.ru; keydata=
 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
 OEcVmRU/pw5/zoQyQg==
In-Reply-To: <cc4a3a7c-f2f5-4796-94b8-94517a652b41@valdikss.org.ru>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------kgA9xwN8fXZym0OH00QIIRSJ"
X-Last-TLS-Session-Version: TLSv1.3
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=valdikss.org.ru; s=msrv; t=1753213868;
 h=from:subject:date:message-id:to:mime-version:content-type:
 content-language:in-reply-to:references:autocrypt;
 bh=GWPIYEhuTbTKeAokbw/M/QCRWhBTWGxNcfv+3yHxBb4=;
 b=42jRtTDDDk98KEtB+Y9QZl4/JiOGS6LHQLFG3nJCoSUiIG63VbvPIk/0h+AOx2zXp97RZi
 gA+I4bmqtsN1y91OXX3dqbJiY4zIlkkvmomCIpStXQndIXvDu/E91OkkGxZJHdfUAK9WAa
 Jy8f7b3u8/FWV389W3mInA8hVyiqVUoqp5BtugooOyCH5P4os0K8540dOgTN46SGiPUkU2
 HKEOhEPUFO2ycCH2KCfjUPanN8THnPL6eTs4b8KXm/gov3rIRYBLvTl9G/Ae4wfcCdj+dq
 EsjZra/3Kuy35m4Som6CZtlDCyGq/Wp3925+W7i/IXzGx7sDDSaxh96F7aF8jA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=valdikss.org.ru
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=valdikss.org.ru header.i=@valdikss.org.ru
 header.a=rsa-sha256 header.s=msrv header.b=42jRtTDD
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
--------------kgA9xwN8fXZym0OH00QIIRSJ
Content-Type: multipart/mixed; boundary="------------WBEIOnuYemDlPdYnbpclth4M";
 protected-headers="v1"
From: ValdikSS <iam@valdikss.org.ru>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>, intel-wired-lan@osuosl.org
Message-ID: <0c3ef80e-3aaf-42a2-83ee-109366c493c7@valdikss.org.ru>
Subject: Re: [Intel-wired-lan] I226-V 1G limited to ~250Mbit with ASPM enabled
References: <b946ccd3-3f7e-4c8b-ac07-0283be19e952@intel.com>
 <803760bf-04ff-4b23-8343-5e21f3ad9f63@valdikss.org.ru>
 <de3512b3-d3cd-4102-a047-71859a517fe9@valdikss.org.ru>
 <15248b4f-3271-42dd-8e35-02bfc92b25e1@intel.com>
 <de86c75b-b204-483f-a5fc-6a1410b24738@valdikss.org.ru>
 <9b13f24c-2dac-4cab-a84f-ddcc59cc8190@intel.com>
 <b711c9c8-6f46-4a13-9cfc-bd4595501dc2@valdikss.org.ru>
 <f561b5bf-6dfa-4875-ad68-8f410297334c@intel.com>
 <cc4a3a7c-f2f5-4796-94b8-94517a652b41@valdikss.org.ru>
In-Reply-To: <cc4a3a7c-f2f5-4796-94b8-94517a652b41@valdikss.org.ru>

--------------WBEIOnuYemDlPdYnbpclth4M
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMDMuMDYuMjAyNSA5OjI0IFBNLCBWYWxkaWtTUyB3cm90ZToNCj4gT24gMDMuMDYuMjAy
NSAxMTo0NiBBTSwgTGlmc2hpdHMsIFZpdGFseSB3cm90ZToNCj4+DQo+Pg0KPj4gT24gNi8x
LzIwMjUgNDoxNiBQTSwgVmFsZGlrU1Mgd3JvdGU6DQo+Pj4gT24gMDEuMDYuMjAyNSAxOjA0
IFBNLCBMaWZzaGl0cywgVml0YWx5IHdyb3RlOg0KPj4+Pg0KPj4+Pj4NCj4+Pj4+IEhlbGxv
LCBhcmUgdGhlcmUgYW55IHVwZGF0ZXMgb24gdXBzdHJlYW1pbmcgdGhpcyBjaGFuZ2U/DQo+
Pj4+Pg0KPj4+Pj4gSWYgdGhlcmUgaGF2ZW4ndCBiZWVuIG11Y2ggdGVzdGluZywgY291bGQg
aXQgYmUgcHV0IGJlaGluZCB0aGUgDQo+Pj4+PiBtb2R1bGUgb3B0aW9uIGFuZCBkaXNhYmxl
ZCBieSBkZWZhdWx0Pw0KPj4+Pj4NCj4+Pj4NCj4+Pj4NCj4+Pj4gSGVsbG8sDQo+Pj4+DQo+
Pj4+DQo+Pj4+IFdlJ3ZlIGRlY2lkZWQgdG8gcHVyc3VlIGEgZGlmZmVyZW50IHNvbHV0aW9u
IHRvIHRoZSBpc3N1ZS4NCj4+Pj4NCj4+Pj4gVGhlIG9yaWdpbmFsIHdvcmthcm91bmQgbWF5
IG5lZ2F0aXZlbHkgaW1wYWN0IHN5c3RlbSBwb3dlciANCj4+Pj4gY29uc3VtcHRpb24sIGFz
IGEgbG93IExUUiB2YWx1ZSBjYW4gcHJldmVudCB0aGUgQ1BVIGZyb20gZW50ZXJpbmcgDQo+
Pj4+IGRlZXBlciBwb3dlciBzdGF0ZXMuDQo+Pj4+DQo+Pj4+IEFzIGFuIGFsdGVybmF0aXZl
LCBhbmQgZm9yIHRlc3RpbmcgcHVycG9zZXMgb25seSwgY291bGQgeW91IHBsZWFzZSANCj4+
Pj4gY2hlY2sgd2hldGhlciB0aGUgZm9sbG93aW5nIGNoYW5nZXMgcmVzb2x2ZSB0aGUgaXNz
dWUgb24geW91ciBzeXN0ZW0/DQo+Pj4NCj4+PiBXaXRoIHRoaXMgcGF0Y2gsIHRoZSBzcGVl
ZCBpcyBmYXN0IG9ubHkgYWZ0ZXIgc3VzcGVuZC9yZXN1bWUgY3ljbGUuDQo+Pj4gSWYgSSBq
dXN0IHBvd2VyIG9uIHRoZSBQQywgdGhlIHNwZWVkIGlzIGNhcHBlZC4gSWYgSSB1bmxvYWQg
dGhlIA0KPj4+IG1vZHVsZSB3aXRoIHRoZSBwcmV2aW91cyBwYXRjaCBhbmQgaW5zZXJ0IHRo
aXMgb25lLCB0aGUgc3BlZWQgaXMgYWxzbyANCj4+PiBjYXBwZWQgYW5kIGFub3RoZXIgc3Vz
cGVuZC9yZXN1bWUgY3ljbGUgaXMgcmVxdWlyZWQuDQo+Pj4NCj4+PiBBZnRlciBzdXNwZW5k
L3Jlc3VtZSwgdGhlIHNwZWVkIGlzIGdvb2QuDQo+Pj4NCj4+PiBUZXN0ZWQgb24gNi4xNC44
LCB3aXRoIHRoZSBpZ2MgY29kZSBmcm9tIDYuMTQuOS4NCj4+DQo+PiBPaywgc28gSSBiZWxp
ZXZlIHRoYXQgYWRkaW5nIHRoaXMgdG8gaWdjX3Byb2JlIHNob3VsZCB3b3JrOg0KPj4NCj4+
IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jDQo+PiAr
KysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYw0KPj4gQEAg
LTcwNzQsNiArNzA3NCw4IEBAIHN0YXRpYyBpbnQgaWdjX3Byb2JlKHN0cnVjdCBwY2lfZGV2
ICpwZGV2LA0KPj4gwqDCoMKgwqDCoMKgwqDCoCBjb25zdCBzdHJ1Y3QgaWdjX2luZm8gKmVp
ID0gaWdjX2luZm9fdGJsW2VudC0+ZHJpdmVyX2RhdGFdOw0KPj4gwqDCoMKgwqDCoMKgwqDC
oCBpbnQgZXJyOw0KPj4NCj4+ICvCoMKgwqDCoMKgwqAgcGNpX2Rpc2FibGVfbGlua19zdGF0
ZShwZGV2LCBQQ0lFX0xJTktfU1RBVEVfTDFfMik7DQo+PiArDQo+PiDCoMKgwqDCoMKgwqDC
oMKgIGVyciA9IHBjaV9lbmFibGVfZGV2aWNlX21lbShwZGV2KTsNCj4+IMKgwqDCoMKgwqDC
oMKgwqAgaWYgKGVycikNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJl
dHVybiBlcnI7DQo+PiBAQCAtNzQ5OCw2ICs3NTAwLDggQEAgc3RhdGljIGludCBfX2lnY19y
ZXN1bWUoc3RydWN0IGRldmljZSAqZGV2LCBib29sIA0KPj4gcnBtKQ0KPj4gwqDCoMKgwqDC
oMKgwqDCoCBwY2lfZW5hYmxlX3dha2UocGRldiwgUENJX0QzaG90LCAwKTsNCj4+IMKgwqDC
oMKgwqDCoMKgwqAgcGNpX2VuYWJsZV93YWtlKHBkZXYsIFBDSV9EM2NvbGQsIDApOw0KPj4N
Cj4+ICvCoMKgwqDCoMKgwqAgcGNpX2Rpc2FibGVfbGlua19zdGF0ZShwZGV2LCBQQ0lFX0xJ
TktfU1RBVEVfTDFfMik7DQo+PiArDQo+PiDCoMKgwqDCoMKgwqDCoMKgIGlmIChpZ2NfaW5p
dF9pbnRlcnJ1cHRfc2NoZW1lKGFkYXB0ZXIsIHRydWUpKSB7DQo+PiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBuZXRkZXZfZXJyKG5ldGRldiwgIlVuYWJsZSB0byBhbGxv
Y2F0ZSBtZW1vcnkgZm9yIA0KPj4gcXVldWVzXG4iKTsNCj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRU5PTUVNOw0KPj4gQEAgLTc2MjMsNiArNzYyNyw3
IEBAIHN0YXRpYyBwY2lfZXJzX3Jlc3VsdF90IGlnY19pb19zbG90X3Jlc2V0KHN0cnVjdCAN
Cj4+IHBjaV9kZXYgKnBkZXYpDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBwY2lfZW5hYmxlX3dha2UocGRldiwgUENJX0QzaG90LCAwKTsNCj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBjaV9lbmFibGVfd2FrZShwZGV2LCBQQ0lfRDNjb2xk
LCAwKTsNCj4+DQo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwY2lfZGlzYWJs
ZV9saW5rX3N0YXRlX2xvY2tlZChwZGV2LCANCj4+IFBDSUVfTElOS19TVEFURV9MMV8yKTsN
Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8qIEluIGNhc2Ugb2YgUENJ
IGVycm9yLCBhZGFwdGVyIGxvc2VzIGl0cyBIVyBhZGRyZXNzDQo+PiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgICogc28gd2Ugc2hvdWxkIHJlLWFzc2lnbiBpdCBoZXJl
Lg0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqLw0KPj4NCj4+IEkg
dGhpbmsgdGhhdCBpZiB0aGlzIHBhdGNoIHdvcmtzLCB3ZSBjYW4gc3RhcnQgd29ya2luZyBv
biB1cHN0cmVhbWluZyBpdC4NCj4+DQo+IA0KPiBJdCB3b3JrcywgdGhhbmtzIQ0KPiANCg0K
VGhlIGN1cnJlbnQgZml4IHdoaWNoIGxhbmRlZCB1cHN0cmVhbSAgdjYuMTUuNissIHY2LjEy
LjM3KywgdjYuNi45NyssIA0KdjYuMS4xNDQrLCB2NS4xNS4xODcrIGhhcyB0aGUgaXNzdWU6
IGl0IHdvcmtzIG9ubHkgYWZ0ZXIgc3VzcGVuZC1yZXN1bWUgDQpjeWNsZS4NCg0KVGhlIHBh
dGNoIGhhcyBpZ2NfaXNfZGV2aWNlX2lkX2kyMjYgY2hlY2ssIGhvd2V2ZXIgaHctPmRldmlj
ZV9pZCBpcyANCmluaXRpYWxpemVkIG9ubHkgc29tZSB0aW1lIGFmdGVyIGluc2lkZSB0aGlz
IGZ1bmN0aW9uLCB0aHVzIHRoZSBjaGVjayANCmFsd2F5cyBmYWlscy4NCg0K

--------------WBEIOnuYemDlPdYnbpclth4M--

--------------kgA9xwN8fXZym0OH00QIIRSJ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEMiogvXcpmS32v71gXNcgLu+I93IFAmh/66kFAwAAAAAACgkQXNcgLu+I93IB
RRAAqEG97ys68ten4lCMPUnBXaba94bsgQAF7QZPuFeybgggQLjtAEKptnxDoU0MfFuluM+0F4ND
EZD/7YVxKORiaSTvyaNjoTPk8OMDMROw4bLWD89HCrtDS8A0rte8gj1CUm/upYD73rJN2wkf23vu
0so1jrqijHt/Djn63gZ0QwoQzSMRwWs8IiIZYh+zpwiHXO4ug+ASY9YYSnR32kmBOjWJGaeiZNTv
mw6LfVF1Wu6ACR6Yg7905CKb97vUfDeR6YKeNOAYlz5KvX1WGclFLscm3rxlEomX1OwS65fdLLLS
NAYdEhmWD2AW/fdd17oE1v69g15jqt3AfA+4zpfRQZliMACPBdhyVxnLqpUEIdRS4fbdEY9comy7
74/x4WGeoO4ZzQ9+7GLnpI026Sbeo4RM3TwRc/V8FOxaRF07qlmnVQlmaNODUAIv/isRVdlMo553
5IZ2eOqeprlpJmhSJ4GIMoRvKFNTDQicMsSVhw6gJfm+Rks8KCtuVRxlGpUiGcm5eVP1z/fMaPJq
SwgJ0E+5sU/3QHWWxmYUhX+hWBHJlBN6CyiGeQFYNADjhs42RBw1WGd14ECJ1WsX9DRzfA3skQZu
s9J8mmVZWb36H+xBqhsTC1CIWqWo2xql3YXfY5MHF97ZM1HRRfs6kkWYCIh4QP3/J8GdJxDEnMnv
2Zs=
=I/vB
-----END PGP SIGNATURE-----

--------------kgA9xwN8fXZym0OH00QIIRSJ--
