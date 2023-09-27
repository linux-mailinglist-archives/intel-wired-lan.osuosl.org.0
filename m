Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C33717AFBAE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Sep 2023 09:08:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5B61582784;
	Wed, 27 Sep 2023 07:08:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5B61582784
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695798508;
	bh=Z8oGr7U11PiYiyM7Ur1XFRKtsFKfBWmUiFw6yDHFi4o=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gRNDmaXgdlBtUdgC0qj1JPVfyfGHJcfAbBS98dYqN89Rq7lZHcDMRLuvMaLkWSZcT
	 j7jO1Fpp/IS6nrV6t+OsUwvBcZdQ7V+2ePka8Qw7myYwCW55PSqCBiksxNaGOM5axV
	 fMMiLMh7w3Y+vQCM5noBDyUTCU6nyfwcdnOF1v60dPF5ZLO9L3on0VbqhNcayKNZZZ
	 M8lUiznhaAx1esS6Bs3n8X8O7ILYoRFbkgD5xX/aoWWf+zNNkBAg3yQNHqNyM90wUQ
	 kc4YJA1Ms4XucHjrfdbv4CVHPLCNC0J4qS4ywW+CB/ioM7/O4T/trVHfO0kUHoDQWl
	 1bsUM6Zz/yGrA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OVvA-C-cIH56; Wed, 27 Sep 2023 07:08:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C15F82778;
	Wed, 27 Sep 2023 07:08:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C15F82778
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BC99D1BF23C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 07:08:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8454361020
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 07:08:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8454361020
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2psN7nTdOkKd for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Sep 2023 07:08:21 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 900F46101B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 07:08:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 900F46101B
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-9-polHlrETPIugM8oCdkdXCA-1; Wed, 27 Sep 2023 03:08:16 -0400
X-MC-Unique: polHlrETPIugM8oCdkdXCA-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
 [10.11.54.9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0605F3C0C4A0;
 Wed, 27 Sep 2023 07:08:16 +0000 (UTC)
Received: from [10.45.225.119] (unknown [10.45.225.119])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5D90D492B16;
 Wed, 27 Sep 2023 07:08:14 +0000 (UTC)
Message-ID: <16cc3132-9d2c-04de-51b6-88e4476b4d26@redhat.com>
Date: Wed, 27 Sep 2023 09:08:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Content-Language: en-US
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, netdev@vger.kernel.org
References: <20230926182710.2517901-1-ivecera@redhat.com>
 <20230926182710.2517901-8-ivecera@redhat.com>
 <f17ed43b-7329-5566-a75e-befebd20d032@intel.com>
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <f17ed43b-7329-5566-a75e-befebd20d032@intel.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1695798500;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4kaLfJmtB6MqdF1sxC45vDWpKHYD0ArvO2N0519Wf3c=;
 b=Or0AoxtMN6HLlZjgUjfqXVm9G2oyFIalSYNiEGgicxyMi7GDl8YqRFbD5E7RZB3IzIb8EE
 zLekPHoHLO6k616V5yLBL+x1x+C4z9rVNcP1IZf8mnmH2KT6GEBonixVMg37R+gEqEN/0T
 tbuslTgNV4FxhQEdKPYmqCKrEQqSQjg=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Or0AoxtM
Subject: Re: [Intel-wired-lan] [PATCH net-next 7/9] i40e: Move memory
 allocation structures to i40e_alloc.h
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
Cc: edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org,
 anthony.l.nguyen@intel.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAyNi4gMDkuIDIzIDIxOjU3LCBQcnplbWVrIEtpdHN6ZWwgd3JvdGU6Cj4gT24gOS8yNi8y
MyAyMDoyNywgSXZhbiBWZWNlcmEgd3JvdGU6Cj4+IFN0cnVjdHVyZXMgaTQwZV9kbWFfbWVtICYg
aTQwZV92aXJ0X21lbSBhcmUgZGVmaW5lZCBpNDBlX29zZGVwLmggd2hpbGUKPj4gbWVtb3J5IGFs
bG9jYXRpb24gZnVuY3Rpb25zIHRoYXQgdXNlIHRoZW0gYXJlIGRlY2xhcmVkIGluIGk0MGVfYWxs
b2MuaAo+PiBNb3ZlIHRoZW0gdG8gaTQwZV9hbGxvYy5oIGFuZCByZW1vdmUgdGhpcyBoZWFkZXIg
ZmlsZSBkZXBlbmRlbmN5IG9uCj4+IGk0MGVfb3NkZXAuaCBoZWFkZXIuCj4+Cj4+IER1ZSB0byBy
ZW1vdmFsIG9mIHRoaXMgZGVwZW5kZW5jeSB3ZSBoYXZlIHRvIGluY2x1ZGUgaTQwZV9vc2RlcC5o
IGluIAo+PiBmaWxlcwo+PiB0aGF0IHJlcXVpcmVzIGl0Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBJ
dmFuIFZlY2VyYSA8aXZlY2VyYUByZWRoYXQuY29tPgo+PiAtLS0KPj4gwqAgZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2FkbWlucS5jIHzCoCAxICsKPj4gwqAgZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX2FkbWlucS5oIHzCoCAyICstCj4+IMKgIGRyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9hbGxvYy5owqAgfCAyMSArKysrKysrKysr
KysrKysrKystCj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9jb21t
b24uYyB8wqAgMSArCj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9k
Y2IuY8KgwqDCoCB8wqAgMSArCj4+IMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUv
aTQwZV9kaWFnLmPCoMKgIHzCoCAxICsKPj4gwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aTQwZS9pNDBlX2htYy5jwqDCoMKgIHzCoCAxICsKPj4gwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaTQwZS9pNDBlX2htYy5owqDCoMKgIHzCoCAyICstCj4+IMKgIC4uLi9uZXQvZXRoZXJu
ZXQvaW50ZWwvaTQwZS9pNDBlX2xhbl9obWMuY8KgwqDCoCB8wqAgMSArCj4+IMKgIGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9udm0uY8KgwqDCoCB8wqAgMSArCj4+IMKgIGRy
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9vc2RlcC5owqAgfCAxOSAtLS0tLS0t
LS0tLS0tLS0tLQo+PiDCoCAxMSBmaWxlcyBjaGFuZ2VkLCAyOSBpbnNlcnRpb25zKCspLCAyMiBk
ZWxldGlvbnMoLSkKPiAKPiBJIHZlcnkgbXVjaCBsaWtlIHRoaXMgc2VyaWVzLCBidXQgZXh0ZW5k
aW5nIGk0MGVfb3NkZXAuaCB1c2FnZSBhc2tzIGZvciAKPiBjb21tZW50IPCfmIkgLSBwbGVhc2Ug
dHJ5IHRvIHJlb3JkZXIgcGF0Y2hlcyB0byBoYXZlIGxlc3MgZGVwZW5kZW5jeSBvbiBpdCAKPiBm
aXJzdCwgYW5kIGFmdGVyd2FyZHMgZG8gc3BsaXQKPiAoSU9XIGZpcnN0IHJlbW92ZSZyZWR1Y2Us
IHRoZW4gc3BsaXQgd2hhdCdzIGxlZnQpCj4gCj4gKGRpc2NsYWltZXI6IEkgaGF2ZSBub3QgZG91
YmxlIGNoZWNrZWQgaWYgdGhhdCdzIHBvc3NpYmxlKQoKSSB3aWxsIG1vdmUgdGhlIHBhdGNoIDUg
YWZ0ZXIgaTQwZV9vc2RlcCBzcGxpdCBhbmQgbWVtb3J5IGFsbG9jYXRpb24gCmNsZWFuLXVwIHBh
dGNoZXMuIFRoaXMgc2hvdWxkIHNpbXBsaWZ5IHRoZSBjaGFuZ2VzLgoKVGhhbmtzIGZvciBjb21t
ZW50Li4uCgpJdmFuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wu
b3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVk
LWxhbgo=
