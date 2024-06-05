Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 512688FF471
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jun 2024 20:14:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1896F41825;
	Thu,  6 Jun 2024 18:14:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YMQyowGnCj6y; Thu,  6 Jun 2024 18:14:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 64F3C41649
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717697662;
	bh=KxTYCer4B2FidGGwLUIWfVVB28RPkGPyzNPIAfGR75w=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=G4ZN/caG+eeK5K6M4VkF2+5J+b4R7/+6fyDk5eV5eTl4IZA3B8eAd52Xt3MUzwkXs
	 knfFSZDqpMiAoowsd8YZhzGDCx6B+dnaTLKlrHJ+IGr+NwON3s30iL1mZu6DgT5WIW
	 0bi2tbOUbl2cMRQ6npsxzf6bWhHrJ3iNIUz6epmwVO6W0q6qrAwxIDuIOJdYEIEzjI
	 q0RFPMDMjaQ5QdRN3sdm0tNzWx74vKPn/zlji65v3mkS/J4EO5jlQLO3wXketdA2jk
	 ms7v9Pr7Goh0f1YMS7cTXYQcCFXeUeCUqLP+aVYxQIV4iFJAaxCZ4uBAeMGyamvSy7
	 HjtdEQr2q1fsw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 64F3C41649;
	Thu,  6 Jun 2024 18:14:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 30AE41BF5A8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jun 2024 21:30:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2759D4165E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jun 2024 21:30:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FVeyLtFk5a5A for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Jun 2024 21:30:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2001:df5:b000:5::4;
 helo=gate2.alliedtelesis.co.nz;
 envelope-from=chris.packham@alliedtelesis.co.nz; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4FCD54042C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4FCD54042C
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz
 [IPv6:2001:df5:b000:5::4])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4FCD54042C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jun 2024 21:30:12 +0000 (UTC)
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 3DCC12C0240;
 Thu,  6 Jun 2024 09:30:10 +1200 (NZST)
Received: from svr-chch-ex2.atlnz.lc (Not Verified[2001:df5:b000:bc8::76]) by
 svr-chch-seg1.atlnz.lc with Trustwave SEG (v8, 2, 6, 11305)
 id <B6660d8e20000>; Thu, 06 Jun 2024 09:30:10 +1200
Received: from svr-chch-ex2.atlnz.lc (2001:df5:b000:bc8::76) by
 svr-chch-ex2.atlnz.lc (2001:df5:b000:bc8::76) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Thu, 6 Jun 2024 09:30:09 +1200
Received: from svr-chch-ex2.atlnz.lc ([fe80::a9eb:c9b7:8b52:9567]) by
 svr-chch-ex2.atlnz.lc ([fe80::a9eb:c9b7:8b52:9567%15]) with mapi id
 15.02.1544.011; Thu, 6 Jun 2024 09:30:09 +1200
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: Jacob Keller <jacob.e.keller@intel.com>, Jackie Jone
 <Jackie.Jone@alliedtelesis.co.nz>, "davem@davemloft.net"
 <davem@davemloft.net>
Thread-Topic: [PATCH] igb: Add MII write support
Thread-Index: AQHatiy8/IRPYuJPYUO9rw9qJEjE7LG43r0AgAAFPYCAAAHagIAAA7yA
Date: Wed, 5 Jun 2024 21:30:09 +0000
Message-ID: <48b5cd5f-0613-4198-abfe-1f3297bb9c7e@alliedtelesis.co.nz>
References: <20240604031020.2313175-1-jackie.jone@alliedtelesis.co.nz>
 <ad56235d-d267-4477-9c35-210309286ff4@intel.com>
 <dce11b71-724c-4c5f-bc95-1b59e7cc7844@alliedtelesis.co.nz>
 <4f9af0e9-5ce0-4b76-a2cd-cbd37331d869@intel.com>
In-Reply-To: <4f9af0e9-5ce0-4b76-a2cd-cbd37331d869@intel.com>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.33.22.30]
Content-Type: text/plain; charset="utf-8"
Content-ID: <E3805CB0DC3F0A429FA223C3CCF8182D@atlnz.lc>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-SEG-SpamProfiler-Analysis: v=2.4 cv=F9L0dbhN c=1 sm=1 tr=0 ts=6660d8e2
 a=Xf/6aR1Nyvzi7BryhOrcLQ==:117 a=xqWC_Br6kY4A:10 a=75chYTbOgJ0A:10
 a=IkcTkHD0fZMA:10 a=T1WGqf2p2xoA:10 a=TP2Coi8AN2xbl7mVpYUA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-SEG-SpamProfiler-Score: 0
X-Mailman-Approved-At: Thu, 06 Jun 2024 18:14:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=alliedtelesis.co.nz; 
 s=mail181024; t=1717623010;
 bh=KxTYCer4B2FidGGwLUIWfVVB28RPkGPyzNPIAfGR75w=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=G+Ui53eo69nOIYUHTwpOFSiYzKrqI6bvI+IGrJRydR+sopRVzaUfJL2Qwi79ln0WB
 5pEOHupZuzHWwLgDa2exPW6u4RPNdI4Vf4GU1ZTRykBHJvbLaKfuWYJZj9j6UTuKEe
 P7rpMzsWfYY+lrLOiW20YVaVbkRah8b1mLiOcOenLy2jIvY8KlM4cNH7qmKqmXhqkL
 liUw/aZg+ooL8nXQ3YxHkCFvulWSQyU/A1qzrCCNWnOMh8cwXBqS/Qb06i8S1Kmvmn
 aV9O3YveQXYWtk6fqTSbzbuExj1WoMAGnXWGa+EzJ+WIoEodDSS5XaYciRRMxDuxw8
 zmoM+hoQK5LkQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=alliedtelesis.co.nz
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz
 header.a=rsa-sha256 header.s=mail181024 header.b=G+Ui53eo
Subject: Re: [Intel-wired-lan] [PATCH] igb: Add MII write support
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQpPbiA2LzA2LzI0IDA5OjE2LCBKYWNvYiBLZWxsZXIgd3JvdGU6DQo+DQo+IE9uIDYvNS8yMDI0
IDI6MTAgUE0sIENocmlzIFBhY2toYW0gd3JvdGU6DQo+PiBPbiA2LzA2LzI0IDA4OjUxLCBKYWNv
YiBLZWxsZXIgd3JvdGU6DQo+Pj4gT24gNi8zLzIwMjQgODoxMCBQTSwgamFja2llLmpvbmVAYWxs
aWVkdGVsZXNpcy5jby5ueiB3cm90ZToNCj4+Pj4gRnJvbTogSmFja2llIEpvbmUgPGphY2tpZS5q
b25lQGFsbGllZHRlbGVzaXMuY28ubno+DQo+Pj4+DQo+Pj4+IFRvIGZhY2lsaXRhdGUgcnVubmlu
ZyBQSFkgcGFyYW1ldHJpYyB0ZXN0cywgYWRkIHN1cHBvcnQgZm9yIHRoZSBTSU9DU01JSVJFRw0K
Pj4+PiBpb2N0bC4gVGhpcyBhbGxvd3MgYSB1c2Vyc3BhY2UgYXBwbGljYXRpb24gdG8gd3JpdGUg
dG8gdGhlIFBIWSByZWdpc3RlcnMNCj4+Pj4gdG8gZW5hYmxlIHRoZSB0ZXN0IG1vZGVzLg0KPj4+
Pg0KPj4+PiBTaWduZWQtb2ZmLWJ5OiBKYWNraWUgSm9uZSA8amFja2llLmpvbmVAYWxsaWVkdGVs
ZXNpcy5jby5uej4NCj4+Pj4gLS0tDQo+Pj4+ICAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2lnYi9pZ2JfbWFpbi5jIHwgNCArKysrDQo+Pj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2Vy
dGlvbnMoKykNCj4+Pj4NCj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2lnYi9pZ2JfbWFpbi5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9t
YWluLmMNCj4+Pj4gaW5kZXggMDNhNGRhNmExNDQ3Li43ZmJmY2YwMWZiZjkgMTAwNjQ0DQo+Pj4+
IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2JfbWFpbi5jDQo+Pj4+ICsr
KyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2JfbWFpbi5jDQo+Pj4+IEBAIC04
OTc3LDYgKzg5NzcsMTAgQEAgc3RhdGljIGludCBpZ2JfbWlpX2lvY3RsKHN0cnVjdCBuZXRfZGV2
aWNlICpuZXRkZXYsIHN0cnVjdCBpZnJlcSAqaWZyLCBpbnQgY21kKQ0KPj4+PiAgICAJCQlyZXR1
cm4gLUVJTzsNCj4+Pj4gICAgCQlicmVhazsNCj4+Pj4gICAgCWNhc2UgU0lPQ1NNSUlSRUc6DQo+
Pj4+ICsJCWlmIChpZ2Jfd3JpdGVfcGh5X3JlZygmYWRhcHRlci0+aHcsIGRhdGEtPnJlZ19udW0g
JiAweDFGLA0KPj4+PiArCQkJCSAgICAgZGF0YS0+dmFsX2luKSkNCj4+Pj4gKwkJCXJldHVybiAt
RUlPOw0KPj4+PiArCQlicmVhazsNCj4+PiBBIGhhbmRmdWwgb2YgZHJpdmVycyBzZWVtIHRvIGV4
cG9zZSB0aGlzLiBXaGF0IGFyZSB0aGUgY29uc2VxdWVuY2VzIG9mDQo+Pj4gZXhwb3NpbmcgdGhp
cyBpb2N0bD8gV2hhdCBjYW4gdXNlciBzcGFjZSBkbyB3aXRoIGl0Pw0KPj4+DQo+Pj4gSXQgbG9v
a3MgbGlrZSBhIGZldyBkcml2ZXJzIGFsc28gY2hlY2sgc29tZXRoaW5nIGxpa2UgQ0FQX05FVF9B
RE1JTiB0bw0KPj4+IGF2b2lkIGFsbG93aW5nIHdyaXRlIGFjY2VzcyB0byBhbGwgdXNlcnMuIElz
IHRoYXQgZW5mb3JjZWQgc29tZXdoZXJlIGVsc2U/DQo+PiBDQVBfTkVUX0FETUlOIGlzIGVuZm9y
Y2VkIHZpYSBkZXZfaW9jdGwoKSBzbyBpdCBzaG91bGQgYWxyZWFkeSBiZQ0KPj4gcmVzdHJpY3Rl
ZCB0byB1c2VycyB3aXRoIHRoYXQgY2FwYWJpbGl0eS4NCj4gT2sgZ29vZC4gVGhhdCBhdCBsZWFz
dCBsaW1pdHMgdGhpcyBzbyB0aGF0IHJhbmRvbSB1c2VycyBjYW4ndCBjYXVzZSBhbnkNCj4gc2lk
ZSBlZmZlY3RzLg0KPg0KPiBJJ20gbm90IHN1cGVyIGZhbWlsaWFyIHdpdGggd2hhdCBjYW4gYmUg
YWZmZWN0ZWQgYnkgd3JpdGluZyB0aGUgTUlJDQo+IHJlZ2lzdGVycy4gSSdtIGFsc28gbm90IHN1
cmUgd2hhdCB0aGUgY29tbXVuaXR5IHRoaW5rcyBvZiBleHBvc2luZyBzdWNoDQo+IGFjY2VzcyBk
aXJlY3RseS4NCj4NCj4gIEZyb20gdGhlIGRlc2NyaXB0aW9uIHRoaXMgaXMgaW50ZW5kZWQgdG8g
dXNlIGZvciBkZWJ1Z2dpbmcgYW5kIHRlc3RpbmcNCj4gcHVycG9zZXM/DQoNClRoZSBpbW1lZGlh
dGUgbmVlZCBpcyB0byBwcm92aWRlIGFjY2VzcyB0byBzb21lIHRlc3QgbW9kZSByZWdpc3RlcnMg
dGhhdCANCm1ha2UgdGhlIFBIWSBvdXRwdXQgc3BlY2lmaWMgdGVzdCBwYXR0ZXJucyB0aGF0IGNh
biBiZSBvYnNlcnZlZCB3aXRoIGFuIA0Kb3NjaWxsb3Njb3BlLiBPdXIgaGFyZHdhcmUgY29sbGVh
Z3VlcyB1c2UgdGhlc2UgdG8gdmFsaWRhdGUgbmV3IGhhcmR3YXJlIA0KZGVzaWducy4gT24gb3Ro
ZXIgcHJvZHVjdHMgd2UgaGF2ZSBiZWVuIHVzaW5nIHRob3NlICJoYW5kZnVsIG9mIGRyaXZlcnMi
IA0KdGhhdCBhbHJlYWR5IHN1cHBvcnQgdGhpcywgdGhpcyBpcyB0aGUgZmlyc3QgZGVzaWduIHdl
J3JlIHdlJ3ZlIG5lZWRlZCANCml0IHdpdGggaWdiLg0KDQpUaGVyZSBpcyBvZiBjb3Vyc2UgdGhl
IGFsdGVybmF0aXZlIG9mIGV4cG9zaW5nIHRob3NlIHRlc3QgbW9kZXMgc29tZSANCm90aGVyIHdh
eSBidXQgdGhlbiB3ZSBuZWVkIHRvIHN0YXJ0IGVudW1lcmF0aW5nIHdoYXQgUEhZcyBzdXBwb3J0
IHdoaWNoIA0KdGVzdCBtb2Rlcy4gU29tZSBvZiB0aGVzZSBhcmUgZGVmaW5lZCBpbiA4MDIuMyBi
dXQgdGhlcmUgYXJlIHBsZW50eSBvZiANCnZlbmRvciBleHRlbnNpb25zLg0KDQpPbmUgYmVuZWZp
dCBJIHNlZSBpbiB0aGlzIGlzIHRoYXQgZG9lcyBhbGxvdyB1c2VybGFuZCBhY2Nlc3MgdG8gYW4g
TUlJIA0KZGV2aWNlLiBJJ3ZlIHVzZWQgaXQgdG8gZGVidWcgbm9uLVBIWSBkZXZpY2VzIGxpa2Ug
dGhlIG12ODhlNnh4eCBMMiANCnN3aXRjaCB3aGljaCBoYXMgYSBtYW5hZ2VtZW50IGludGVyZmFj
ZSBvdmVyIE1ESU8uIFRoZXJlJ3MgYW4gaW4ta2VybmVsIA0KZHJpdmVyIGZvciB0aGlzIG5vdyBz
byB0aGF0IHNwZWNpZmljIHVzYWdlIGlzbid0IHJlcXVpcmVkIGJ1dCBJIGJyaW5nIGl0IA0KdXAg
YXMgYW4gZXhhbXBsZSBvZiBhIGRldmljZSB0aGF0IHNwZWFrcyBNRElPIGJ1dCBpc24ndCBhIFBI
WS4gV2hldGhlciANCnRoaXMgaXMgYSByZWFsIGFkdmFudGFnZSBvciBub3QgbWlnaHQgZGVwZW5k
IG9uIGhvdyB5b3UgZmVlbCBhYm91dCANCnVzZXJsYW5kIGRyaXZlcnMuDQo=
