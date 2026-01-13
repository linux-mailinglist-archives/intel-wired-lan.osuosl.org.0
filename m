Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F44AD18AC6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jan 2026 13:19:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 070528104F;
	Tue, 13 Jan 2026 12:19:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lp1jvXDJA_CZ; Tue, 13 Jan 2026 12:19:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A467E8105B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768306795;
	bh=wXYqp44HS9RMJoTPuDDx16pvgLusmSnqacU6mo8+/FU=;
	h=To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=fu5WTkupnXbVRYrY4i7tBLxyKDaVithqIogdssclkekTWf7xtvZ4RtwENNU4QDy21
	 AZhasm0MoxwuXfY8ermyig8HJgPe7Nn7FFL9OuaMQXTQqZLBWMMbHdIVJ9Jt0dUlPR
	 DTaXwe6PKKOP4MmaFQY0oZQtB/Q/VE5RQukyi8R2C93ztS65ejNYaiVb4ceryf9tIm
	 18FHBYyxhcGlCRsNjaGpfFa1soaGhtH0I05ejh4xtPDtferLCULAuyxvj2/oqG2GJa
	 TvGXYc46HsKWp2WfZ6PUExK+GQHn9hgkkCXLTvSgkFdmDMMMIm7RfmTWm6yjhKcSHX
	 CpZc+Z36GOsPw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A467E8105B;
	Tue, 13 Jan 2026 12:19:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8CFE61C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 12:19:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8944E429D6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 12:19:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uBrCEC9seCC0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jan 2026 12:19:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=160.53.250.24;
 helo=gwsmtp.ge.ch; envelope-from=jeremie.wenger@edu.ge.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7D5FF429D4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7D5FF429D4
Received: from gwsmtp.ge.ch (smtpsw24.ge.ch [160.53.250.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7D5FF429D4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 12:19:50 +0000 (UTC)
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "przemyslaw.kitszel@intel.com" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Index: AQHcgKY4vqPf4k7m6ECp9OMR6mOttLVPYM6AgACqqoo=
Date: Tue, 13 Jan 2026 12:19:47 +0000
Message-ID: <eeb0f6c90cf847879f22ce2ec1591668@edu.ge.ch>
References: <c8bd43a3053047dba7999102920d37c9@edu.ge.ch>,
 <1e905400-da08-47e8-af6e-91c24e3166e4@intel.com>
In-Reply-To: <1e905400-da08-47e8-af6e-91c24e3166e4@intel.com>
Accept-Language: fr-CH, en-US
Content-Language: fr-CH
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-FEAS-BEC-Info: WlpIGw0aAQkEARIJHAEHBlJSCRoLAAEeDUhZUEhYSFhIWUhZXkguLUVaIy48WlpbWFhYWFldSFpcSAINGg0FAQ1GHw0GDw0aKA0MHUYPDUYLAEhZSFpeSAkGHAAHBhFGBEYGDx0RDQYoAQYcDQRGCwcFSFhIWkhZW0hZWEZZXF1GUF5GWV9ZSFBIWEhYSFtIWEhYSFhIWl5ICQYcAAcGEUYERgYPHRENBigBBhwNBEYLBwVIWEhbWkgBBhwNBEUfARoNDEUECQYoBAEbHBtGBxsdBxsERgcaD0hYSFpQSAQBBh0QRQMNGgYNBCgeDw0aRgMNGgYNBEYHGg9IWA==
X-SM-outgoing: yes
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; d=edu.ge.ch;
 s=GVA21; c=relaxed/relaxed; 
 h=from:to:cc:subject:date:message-id:references:content-type:mime-version;
 bh=wXYqp44HS9RMJoTPuDDx16pvgLusmSnqacU6mo8+/FU=;
 b=mFWt1riBboU8t3mXs8FtxLta6YMPcx+FjqVOKEZ/1iUMwu2sraCIv7KPvJoPsgjRdvb77CaRouLS
 kP3KY/vPgECJwwpGw/WHTRqf2zmhz60dF2NsuYddseon6RDm8rPnSWDwjOmqsSh0OyTxQihIa6sE
 zi3c4d2mXGPLFJmc/Lbgm538WMnAggWurLg9gZNABNq/6iI7TSdc5STC6EJZE28x088+XgJPva3v
 32fzcKfJX1VIgU+/R+UaRon9W9hj+l7D3SzQ2ZzzHLkmzmviZ/HnrYTk+Jzz2OjjUk9LJVPouj7p
 bTYkHTOzhm3qViT2qUyzJ1BOOYDBYEPvj0OhJA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=edu.ge.ch
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=edu.ge.ch header.i=@edu.ge.ch header.a=rsa-sha256
 header.s=GVA21 header.b=mFWt1riB
Subject: Re: [Intel-wired-lan] [REGRESSION] e1000e: RX stops after link
 down/up on Intel 8086:550a since v6.12.43 (fixed by suspend/resume)
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
From: "Wenger Jeremie \(EDU\) via Intel-wired-lan" <intel-wired-lan@osuosl.org>
Reply-To: "Wenger Jeremie \(EDU\)" <jeremie.wenger@edu.ge.ch>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGUgOiBMaWZzaGl0cywgVml0YWx5IDx2aXRhbHkubGlmc2hpdHNAaW50ZWwuY29tPg0KRW52b3nD
qSA6IG1hcmRpLCAxMyBqYW52aWVyIDIwMjYgMDQ6MDUNCsOAIDogV2VuZ2VyIEplcmVtaWUgKEVE
VSk7IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmcNCkNjwqA6IGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwu
Y29tOyBwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tOyBpbnRlbC13aXJlZC1sYW5AbGlzdHMu
b3N1b3NsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZw0KT2JqZXQgOiBSZTogW0lu
dGVsLXdpcmVkLWxhbl0gW1JFR1JFU1NJT05dIGUxMDAwZTogUlggc3RvcHMgYWZ0ZXIgbGluayBk
b3duL3VwIG9uIEludGVsIDgwODY6NTUwYSBzaW5jZSB2Ni4xMi40MyAoZml4ZWQgYnkgc3VzcGVu
ZC9yZXN1bWUpDQrCoCAgIA0KUFJVREVOQ0UuIENlIG1lc3NhZ2UgcHJvdmllbnQgZCd1biBleHDD
qWRpdGV1ciBleHRlcm5lIMOgIGwnw4l0YXQuIE5lIGNsaXF1ZXogc3VyIGxlcyBsaWVucyBvdSBu
J291dnJleiBsZXMgcGnDqGNlcyBqb2ludGVzIHF1ZSBzaSB2b3VzIGZhaXRlcyBlbnRpw6hyZSBj
b25maWFuY2Ugw6AgY2V0IGV4cMOpZGl0ZXVyLg0KDQpPbiAxLzgvMjAyNiA0OjE1IFBNLCBXZW5n
ZXIgSmVyZW1pZSAoRURVKSB2aWEgSW50ZWwtd2lyZWQtbGFuIHdyb3RlOg0KPiBIZWxsbywNCj4N
Cj4NCj4gSSB3b3VsZCBsaWtlIHRvIHJlcG9ydCBhIHJlZ3Jlc3Npb24gaW4gdGhlIGUxMDAwZSBk
cml2ZXIgYWZmZWN0aW5nIGFuDQo+IEludGVsIGludGVncmF0ZWQgRXRoZXJuZXQgY29udHJvbGxl
ci4NCj4NCj4NCj4gSGFyZHdhcmU6DQo+IEludGVsIEV0aGVybmV0IGNvbnRyb2xsZXIgWzgwODY6
NTUwYV0NCj4gRHJpdmVyOiBlMTAwMGUNCj4NCj4NCj4gU3VtbWFyeToNCj4gUlggc3RvcHMgd29y
a2luZyBhZnRlciBhbiBFdGhlcm5ldCBsaW5rIGRvd24vdXAgKHVucGx1Zy9yZXBsdWcgY2FibGUp
Lg0KPiBUWCBzdGlsbCB3b3Jrcy4gQSBzeXN0ZW0gc3VzcGVuZC9yZXN1bWUgcmVsaWFibHkgcmVz
dG9yZXMgUlguDQo+DQo+DQo+IFJlZ3Jlc3Npb24gcmFuZ2U6DQo+DQo+wqDCoCAqDQo+DQo+wqDC
oMKgwqAgV29ya2luZzogdjYuMTIuMjINCj4NCj7CoMKgICoNCj4NCj7CoMKgwqDCoCBCcm9rZW46
IHY2LjEyLjQzIC4uIHY2LjE4LjMgKHRlc3RlZCBvbiBEZWJpYW4gMTIgYmFja3BvcnRzLCBEZWJp
YW4NCj7CoMKgwqDCoCAxMywgRGViaWFuIHNpZCkuIHY2LjE4LjMgaXMgdGhlIG1vc3QgcmVjZW50
IGtlcm5lbCB0ZXN0ZWQgc28gZmFyLCBzbw0KPsKgwqDCoMKgIHRoZSByZWdyZXNzaW9uIGlzIGxp
a2VseSBzdGlsbCBwcmVzZW50IGluIG5ld2VyIGtlcm5lbHMuDQo+DQo+IFN5bXB0b21zOg0KPg0K
PsKgwqAgKg0KPg0KPsKgwqDCoMKgIExpbmsgaXMgZGV0ZWN0ZWQgKDFHYnBzLCBmdWxsIGR1cGxl
eCkuDQo+DQo+wqDCoCAqDQo+DQo+wqDCoMKgwqAgREhDUCBESVNDT1ZFUiBmcmFtZXMgYXJlIHRy
YW5zbWl0dGVkIChjb25maXJtZWQgdmlhIGV4dGVybmFsIHBhY2tldA0KPsKgwqDCoMKgIGNhcHR1
cmUpLg0KPg0KPsKgwqAgKg0KPg0KPsKgwqDCoMKgIE5vIHBhY2tldHMgYXJlIHJlY2VpdmVkIChu
byBESENQIE9GRkVSLCBSWCBhcHBlYXJzIGRlYWQpLg0KPg0KPsKgwqAgKg0KPg0KPsKgwqDCoMKg
IEJvb3Rpbmcgd2l0aCB0aGUgY2FibGUgcGx1Z2dlZCB3b3Jrcy4NCj4NCj7CoMKgICoNCj4NCj7C
oMKgwqDCoCBUaGUgaXNzdWUgaXMgdHJpZ2dlcmVkIG9ubHkgYWZ0ZXIgdW5wbHVnZ2luZyBhbmQg
cmVwbHVnZ2luZyB0aGUgY2FibGUuDQo+DQo+wqDCoCAqDQo+DQo+wqDCoMKgwqAgQSBzdXNwZW5k
L3Jlc3VtZSBjeWNsZSByZXN0b3JlcyBSWCBpbW1lZGlhdGVseS4NCj4NCj7CoMKgICoNCj4NCj7C
oMKgwqDCoCBVc2luZyBhIFVTQiBFdGhlcm5ldCBhZGFwdGVyIChyODE1Mikgb24gdGhlIHNhbWUg
bmV0d29yayB3b3Jrcw0KPsKgwqDCoMKgIGNvcnJlY3RseS4NCj4NCj4gUmVwcm9kdWN0aW9uIHN0
ZXBzOg0KPg0KPsKgIDEuDQo+DQo+wqDCoMKgwqAgQm9vdCB3aXRoIEV0aGVybmV0IGNhYmxlIHBs
dWdnZWQuDQo+DQo+wqAgMi4NCj4NCj7CoMKgwqDCoCBWZXJpZnkgbmV0d29yayBjb25uZWN0aXZp
dHkgd29ya3MuDQo+DQo+wqAgMy4NCj4NCj7CoMKgwqDCoCBVbnBsdWcgdGhlIEV0aGVybmV0IGNh
YmxlLg0KPg0KPsKgIDQuDQo+DQo+wqDCoMKgwqAgUGx1ZyB0aGUgRXRoZXJuZXQgY2FibGUgYmFj
ayBpbi4NCj4NCj7CoCA1Lg0KPg0KPsKgwqDCoMKgIE9ic2VydmUgdGhhdCBSWCBubyBsb25nZXIg
d29ya3MgKG5vIERIQ1AgT0ZGRVIpLg0KPg0KPsKgIDYuDQo+DQo+wqDCoMKgwqAgU3VzcGVuZC9y
ZXN1bWUgdGhlIHN5c3RlbSDihpIgUlggd29ya3MgYWdhaW4uDQo+DQo+IFRoaXMgc3VnZ2VzdHMg
dGhhdCB0aGUgUEhZIG9yIFJYIHBhdGggaXMgbm90IGNvcnJlY3RseSByZWluaXRpYWxpemVkDQo+
IG9uIGxpbmsgdXAgYWZ0ZXIgYSBsaW5rIGRvd24gZXZlbnQsIHdoaWxlIHRoZSByZXN1bWUgcGF0
aCBwZXJmb3JtcyBhDQo+IG1vcmUgY29tcGxldGUgcmVzZXQuDQo+DQo+DQo+IEkgY2FuIHByb3Zp
ZGUgYWRkaXRpb25hbCBsb2dzLCBldGh0b29sIHN0YXRpc3RpY3MsIG9yIHRlc3QgcGF0Y2hlcyBp
Zg0KPiBuZWVkZWQuDQo+DQo+DQo+DQo+IEJlc3QgcmVnYXJkcywNCj4NCj4NCj4gSsOpcsOpbWll
IFdlbmdlcg0KPg0KPg0KDQpIaSBKw6lyw6ltaWUsDQoNCllvdXIgaXNzdWUgc291bmRzIHZlcnkg
c2ltaWxhciB0byB0aGUgaXNzdWVzIHRoYXQgd2VyZSBhZGRyZXNzZXMgaW4gdGhpcw0KY29tbWl0
Og0KaHR0cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2NvbW1pdC8zYzdiZjVhZjIxOTYw
ODdmMzk0ZjkwOTliNTNlMzc1Njk2MzZiMjU5DQoNCkFyZSB5b3UgYWJsZSB0byByZXByb2R1Y2Ug
aXQgb3ZlciB0aGUgbGF0ZXN0IGtlcm5lbCA2LjE5Pw0KDQogICAgDQoNCkhpIFZpdGFseSwNCg0K
WWVzLCBJIGNhbiBjb25maXJtIHRoaXMuDQoNCkkgdGVzdGVkIHdpdGggTGludXggNi4xOSAoNi4x
OX5yYzQtMX5leHAxKSwgYW5kIHRoZSBpc3N1ZSBpcyBmaXhlZCB0aGVyZS4NCkFmdGVyIGFuIEV0
aGVybmV0IGxpbmsgZG93bi91cCwgUlggbm93IHJlY292ZXJzIGNvcnJlY3RseSB3aXRob3V0IHJl
cXVpcmluZw0KYSBzdXNwZW5kL3Jlc3VtZSBjeWNsZS4NCg0KU28gdGhpcyBhcHBlYXJzIHRvIGJl
IHJlc29sdmVkIGJ5IGNvbW1pdDoNCjNjN2JmNWFmMjE5NjA4N2YzOTRmOTA5OWI1M2UzNzU2OTYz
NmIyNTkNCg0KRG8geW91IGtub3cgaWYgdGhpcyBmaXggaXMgcGxhbm5lZCB0byBiZSBiYWNrcG9y
dGVkIHRvIHN0YWJsZSBrZXJuZWxzDQooZS5nLiA2LjEyLnkpLCBvciBpZiBhIGJhY2twb3J0IHdv
dWxkIGJlIGFjY2VwdGFibGU/DQoNClRoYW5rcyBhZ2FpbiBmb3IgeW91ciBoZWxwLg0KDQpCZXN0
IHJlZ2FyZHMsDQoNCkrDqXLDqW1pZQ0K
