Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85C148FF470
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jun 2024 20:14:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 57C41417F6;
	Thu,  6 Jun 2024 18:14:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NhClcKcyf68S; Thu,  6 Jun 2024 18:14:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 52A8641649
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717697661;
	bh=Zpts+FQi0ipqbvJ6Ta+GeOn3EOSf4V8EhYcEC0P8JfY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HDJftPZalCzAomVZy+WSc926hFNl7Ox2KIS21bvKmvSM5xdI78cjbRTT5gEsHqDxd
	 ly3bLI0OakfLTf6P7XmO+Q12lXAgPF0xYlZxeaxFBiIZbEVlbRtWY35s2LEQ93C+hr
	 uKq/Vf6+GUTpSwHlNuEdrDEVIQnaMORzw01VZXi82imlMZA4MHW67TtOX51viWhNh4
	 xBJMGXdUa8K13679Yfuha/tmp7qChhf5+zqsQ62GaGgBQxk+zJZfqTiDIlurmMahSw
	 RA6Vp/H4GpWWxkZdieLEhsG2kvPeiqd3a/uGfXQMghwsF8J4tA8qygYFYqxwg7W7qJ
	 +YmqlRqjNSOtQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 52A8641649;
	Thu,  6 Jun 2024 18:14:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0C8FA1BF5A8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jun 2024 21:18:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EB686848BF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jun 2024 21:18:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NaWHLqcqQjnl for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Jun 2024 21:18:27 +0000 (UTC)
X-Greylist: delayed 493 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 05 Jun 2024 21:18:26 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9F593848B2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9F593848B2
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2001:df5:b000:5::4;
 helo=gate2.alliedtelesis.co.nz;
 envelope-from=chris.packham@alliedtelesis.co.nz; receiver=<UNKNOWN> 
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz
 [IPv6:2001:df5:b000:5::4])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9F593848B2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jun 2024 21:18:25 +0000 (UTC)
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 82EDC2C0240;
 Thu,  6 Jun 2024 09:10:10 +1200 (NZST)
Received: from svr-chch-ex2.atlnz.lc (Not Verified[2001:df5:b000:bc8::76]) by
 svr-chch-seg1.atlnz.lc with Trustwave SEG (v8, 2, 6, 11305)
 id <B6660d4320000>; Thu, 06 Jun 2024 09:10:10 +1200
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) by
 svr-chch-ex2.atlnz.lc (2001:df5:b000:bc8:f753:6de:11c0:a008) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.2.1544.11; Thu, 6 Jun 2024 09:10:10 +1200
Received: from svr-chch-ex2.atlnz.lc (2001:df5:b000:bc8::76) by
 svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) with Microsoft SMTP Server
 (TLS) id 15.0.1497.48; Thu, 6 Jun 2024 09:10:10 +1200
Received: from svr-chch-ex2.atlnz.lc ([fe80::a9eb:c9b7:8b52:9567]) by
 svr-chch-ex2.atlnz.lc ([fe80::a9eb:c9b7:8b52:9567%15]) with mapi id
 15.02.1544.011; Thu, 6 Jun 2024 09:10:10 +1200
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: Jacob Keller <jacob.e.keller@intel.com>, Jackie Jone
 <Jackie.Jone@alliedtelesis.co.nz>, "davem@davemloft.net"
 <davem@davemloft.net>
Thread-Topic: [PATCH] igb: Add MII write support
Thread-Index: AQHatiy8/IRPYuJPYUO9rw9qJEjE7LG43r0AgAAFPYA=
Date: Wed, 5 Jun 2024 21:10:10 +0000
Message-ID: <dce11b71-724c-4c5f-bc95-1b59e7cc7844@alliedtelesis.co.nz>
References: <20240604031020.2313175-1-jackie.jone@alliedtelesis.co.nz>
 <ad56235d-d267-4477-9c35-210309286ff4@intel.com>
In-Reply-To: <ad56235d-d267-4477-9c35-210309286ff4@intel.com>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.33.22.30]
Content-Type: text/plain; charset="utf-8"
Content-ID: <8F61B059D919A344858227565210CDD7@atlnz.lc>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-SEG-SpamProfiler-Analysis: v=2.4 cv=F9L0dbhN c=1 sm=1 tr=0 ts=6660d432
 a=Xf/6aR1Nyvzi7BryhOrcLQ==:117 a=xqWC_Br6kY4A:10 a=75chYTbOgJ0A:10
 a=IkcTkHD0fZMA:10 a=T1WGqf2p2xoA:10 a=YbpwbkzvB5h8nOF6__AA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-SEG-SpamProfiler-Score: 0
X-Mailman-Approved-At: Thu, 06 Jun 2024 18:14:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=alliedtelesis.co.nz; 
 s=mail181024; t=1717621810;
 bh=Zpts+FQi0ipqbvJ6Ta+GeOn3EOSf4V8EhYcEC0P8JfY=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=NnvFfH1j7lUN/aRkfnglNwS1JVFajWIVRjZYXljWlKvLSRIdYjjPLHIsL+uscNChz
 roWN09hSZhKr94xEnSqL/3J053zoJ2Hf0ynZkGcukAjzOOXBDLHmcVm7Jm0vWqy4/D
 vOaa3jGeKilL2zcgcbirtgtNe0sHapzZLoga5ZEV3yAA3Cu+8KMpo6RA54+S/heT6Q
 WzX4fKJc8MJvVSxZSYC9OXTX26gEBQAYBTK72FP/GldUOxGaXAnZLyykzEz+WKsL5d
 Co2equ0L0FxW50k9EHhq+wlvAFpWOSv3cuW7O3Q0dNmNh1MWANFa+BySCGvQAgmsjJ
 iF21q0S/nWpvg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=alliedtelesis.co.nz
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz
 header.a=rsa-sha256 header.s=mail181024 header.b=NnvFfH1j
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

DQpPbiA2LzA2LzI0IDA4OjUxLCBKYWNvYiBLZWxsZXIgd3JvdGU6DQo+DQo+IE9uIDYvMy8yMDI0
IDg6MTAgUE0sIGphY2tpZS5qb25lQGFsbGllZHRlbGVzaXMuY28ubnogd3JvdGU6DQo+PiBGcm9t
OiBKYWNraWUgSm9uZSA8amFja2llLmpvbmVAYWxsaWVkdGVsZXNpcy5jby5uej4NCj4+DQo+PiBU
byBmYWNpbGl0YXRlIHJ1bm5pbmcgUEhZIHBhcmFtZXRyaWMgdGVzdHMsIGFkZCBzdXBwb3J0IGZv
ciB0aGUgU0lPQ1NNSUlSRUcNCj4+IGlvY3RsLiBUaGlzIGFsbG93cyBhIHVzZXJzcGFjZSBhcHBs
aWNhdGlvbiB0byB3cml0ZSB0byB0aGUgUEhZIHJlZ2lzdGVycw0KPj4gdG8gZW5hYmxlIHRoZSB0
ZXN0IG1vZGVzLg0KPj4NCj4+IFNpZ25lZC1vZmYtYnk6IEphY2tpZSBKb25lIDxqYWNraWUuam9u
ZUBhbGxpZWR0ZWxlc2lzLmNvLm56Pg0KPj4gLS0tDQo+PiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2lnYi9pZ2JfbWFpbi5jIHwgNCArKysrDQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCA0IGlu
c2VydGlvbnMoKykNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWdiL2lnYl9tYWluLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21h
aW4uYw0KPj4gaW5kZXggMDNhNGRhNmExNDQ3Li43ZmJmY2YwMWZiZjkgMTAwNjQ0DQo+PiAtLS0g
YS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX21haW4uYw0KPj4gKysrIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9tYWluLmMNCj4+IEBAIC04OTc3LDYgKzg5
NzcsMTAgQEAgc3RhdGljIGludCBpZ2JfbWlpX2lvY3RsKHN0cnVjdCBuZXRfZGV2aWNlICpuZXRk
ZXYsIHN0cnVjdCBpZnJlcSAqaWZyLCBpbnQgY21kKQ0KPj4gICAJCQlyZXR1cm4gLUVJTzsNCj4+
ICAgCQlicmVhazsNCj4+ICAgCWNhc2UgU0lPQ1NNSUlSRUc6DQo+PiArCQlpZiAoaWdiX3dyaXRl
X3BoeV9yZWcoJmFkYXB0ZXItPmh3LCBkYXRhLT5yZWdfbnVtICYgMHgxRiwNCj4+ICsJCQkJICAg
ICBkYXRhLT52YWxfaW4pKQ0KPj4gKwkJCXJldHVybiAtRUlPOw0KPj4gKwkJYnJlYWs7DQo+IEEg
aGFuZGZ1bCBvZiBkcml2ZXJzIHNlZW0gdG8gZXhwb3NlIHRoaXMuIFdoYXQgYXJlIHRoZSBjb25z
ZXF1ZW5jZXMgb2YNCj4gZXhwb3NpbmcgdGhpcyBpb2N0bD8gV2hhdCBjYW4gdXNlciBzcGFjZSBk
byB3aXRoIGl0Pw0KPg0KPiBJdCBsb29rcyBsaWtlIGEgZmV3IGRyaXZlcnMgYWxzbyBjaGVjayBz
b21ldGhpbmcgbGlrZSBDQVBfTkVUX0FETUlOIHRvDQo+IGF2b2lkIGFsbG93aW5nIHdyaXRlIGFj
Y2VzcyB0byBhbGwgdXNlcnMuIElzIHRoYXQgZW5mb3JjZWQgc29tZXdoZXJlIGVsc2U/DQoNCkNB
UF9ORVRfQURNSU4gaXMgZW5mb3JjZWQgdmlhIGRldl9pb2N0bCgpIHNvIGl0IHNob3VsZCBhbHJl
YWR5IGJlIA0KcmVzdHJpY3RlZCB0byB1c2VycyB3aXRoIHRoYXQgY2FwYWJpbGl0eS4NCg==
