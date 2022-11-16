Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C61CA62C458
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Nov 2022 17:27:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A11260F39;
	Wed, 16 Nov 2022 16:27:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A11260F39
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668616021;
	bh=Xtel8Xgl4YM24PySdwb9NxfAmNnEA0UirKJN4u+GNeU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eQKojNpRwZfqWVpCuq+aAFeqO1yIkSywdQU0lzH8a0+aNzwAKCzOdGJF5Ho4FUsRP
	 v7hybDpQENNNWi67gziCI74Rr0GppUpyXEN+4AJjnKvjVNP27lEtXL12mE/npYE/01
	 OGm0VhjshLagZg/jxzHcoPXT1BhO26+jgkp5AqKO3o+zbRPiZAZWw3jYHiOHulwuMm
	 +t1vKmV+eW4/N2WC3d2Dg7fBpH0y4kUM9wtTrZUh7eZtAauqK/MOSCKlonaZRK4Tsz
	 KatT7WVYDFFrAUuZY5WBR0dZctEKpSx9Vq+cRqmfRoykQMUZNQJpgjp7OQsd4z0gtm
	 ysZnBuau79+oQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FILNVpC4f96W; Wed, 16 Nov 2022 16:26:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E01A960F9F;
	Wed, 16 Nov 2022 16:26:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E01A960F9F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2D6AA1BF8C7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 01:02:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 032A240BA2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 01:02:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 032A240BA2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4KvQU2ZkD8Og for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Nov 2022 01:02:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BAEFE40B66
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BAEFE40B66
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 01:02:02 +0000 (UTC)
Received: from kwepemi500016.china.huawei.com (unknown [172.30.72.54])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4NBl5s732fzqST1;
 Wed, 16 Nov 2022 08:58:09 +0800 (CST)
Received: from [10.174.176.230] (10.174.176.230) by
 kwepemi500016.china.huawei.com (7.221.188.220) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 16 Nov 2022 09:01:56 +0800
Message-ID: <64109941-7e88-5a8f-8cda-b552d12e2032@huawei.com>
Date: Wed, 16 Nov 2022 09:01:55 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.0
To: Tony Nguyen <anthony.l.nguyen@intel.com>, <jesse.brandeburg@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <jeffrey.t.kirsher@intel.com>,
 <shannon.nelson@intel.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>
References: <20221114011022.25127-1-shangxiaojing@huawei.com>
 <48014a1c-9fec-1bc9-ea81-9611bce742fd@intel.com>
From: shangxiaojing <shangxiaojing@huawei.com>
In-Reply-To: <48014a1c-9fec-1bc9-ea81-9611bce742fd@intel.com>
X-Originating-IP: [10.174.176.230]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 kwepemi500016.china.huawei.com (7.221.188.220)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Wed, 16 Nov 2022 16:26:52 +0000
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Fix error handling in
 i40e_init_module()
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAyMDIyLzExLzE2IDM6MDQsIFRvbnkgTmd1eWVuIHdyb3RlOgo+IE9uIDExLzEzLzIwMjIg
NToxMCBQTSwgU2hhbmcgWGlhb0ppbmcgd3JvdGU6Cj4+IGk0MGVfaW5pdF9tb2R1bGUoKSB3b24n
dCBmcmVlIHRoZSBkZWJ1Z2ZzIGRpcmVjdG9yeSBjcmVhdGVkIGJ5Cj4+IGk0MGVfZGJnX2luaXQo
KSB3aGVuIHBjaV9yZWdpc3Rlcl9kcml2ZXIoKSBmYWlsZWQuIEFkZCBmYWlsIHBhdGggdG8KPj4g
Y2FsbCBpNDBlX2RiZ19leGl0KCkgdG8gcmVtb3ZlIHRoZSBkZWJ1Z2ZzIGVudHJpZXMgdG8gcHJl
dmVudCB0aGUgYnVnLgo+Pgo+PiBpNDBlOiBJbnRlbChSKSBFdGhlcm5ldCBDb25uZWN0aW9uIFhM
NzEwIE5ldHdvcmsgRHJpdmVyCj4+IGk0MGU6IENvcHlyaWdodCAoYykgMjAxMyAtIDIwMTkgSW50
ZWwgQ29ycG9yYXRpb24uCj4+IGRlYnVnZnM6IERpcmVjdG9yeSAnaTQwZScgd2l0aCBwYXJlbnQg
Jy8nIGFscmVhZHkgcHJlc2VudCEKPj4KPj4gRml4ZXM6IDQxYzQ0NWZmMGY0OCAoImk0MGU6IG1h
aW4gZHJpdmVyIGNvcmUiKQo+PiBTaWduZWQtb2ZmLWJ5OiBTaGFuZyBYaWFvSmluZyA8c2hhbmd4
aWFvamluZ0BodWF3ZWkuY29tPgo+PiAtLS0KPj4gwqAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaTQwZS9pNDBlX21haW4uYyB8IDEwICsrKysrKysrKy0KPj4gwqAgMSBmaWxlIGNoYW5nZWQs
IDkgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYyAKPj4gYi9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jCj4+IGluZGV4IGI1ZGNkMTVjZWQzNi4uODI4
NjY5ZWE5NDZlIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBl
L2k0MGVfbWFpbi5jCj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQw
ZV9tYWluLmMKPj4gQEAgLTE2NjQ0LDYgKzE2NjQ0LDggQEAgc3RhdGljIHN0cnVjdCBwY2lfZHJp
dmVyIGk0MGVfZHJpdmVyID0gewo+PiDCoMKgICoqLwo+PiDCoCBzdGF0aWMgaW50IF9faW5pdCBp
NDBlX2luaXRfbW9kdWxlKHZvaWQpCj4+IMKgIHsKPj4gK8KgwqDCoCBpbnQgZXJyOwo+PiArCj4+
IMKgwqDCoMKgwqAgcHJfaW5mbygiJXM6ICVzXG4iLCBpNDBlX2RyaXZlcl9uYW1lLCBpNDBlX2Ry
aXZlcl9zdHJpbmcpOwo+PiDCoMKgwqDCoMKgIHByX2luZm8oIiVzOiAlc1xuIiwgaTQwZV9kcml2
ZXJfbmFtZSwgaTQwZV9jb3B5cmlnaHQpOwo+PiBAQCAtMTY2NjEsNyArMTY2NjMsMTMgQEAgc3Rh
dGljIGludCBfX2luaXQgaTQwZV9pbml0X21vZHVsZSh2b2lkKQo+PiDCoMKgwqDCoMKgIH0KPj4g
wqDCoMKgwqDCoCBpNDBlX2RiZ19pbml0KCk7Cj4+IC3CoMKgwqAgcmV0dXJuIHBjaV9yZWdpc3Rl
cl9kcml2ZXIoJmk0MGVfZHJpdmVyKTsKPj4gK8KgwqDCoCBlcnIgPSBwY2lfcmVnaXN0ZXJfZHJp
dmVyKCZpNDBlX2RyaXZlcik7Cj4+ICvCoMKgwqAgaWYgKGVycikgewo+PiArwqDCoMKgwqDCoMKg
wqAgaTQwZV9kYmdfZXhpdCgpOwo+IAo+IEZvciBmYWlsIHBhdGgsIHRoZSB3b3JrcXVldWUgbmVl
ZHMgdG8gYmUgZGVzdHJveWVkIGFzIHdlbGwuCgpSaWdodCwgd2lsbCBiZSBmaXhlZCBpbiB2Mi4K
ClRoYW5rcywKLS0gClNoYW5nIFhpYW9KaW5nCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2ly
ZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtd2lyZWQtbGFuCg==
