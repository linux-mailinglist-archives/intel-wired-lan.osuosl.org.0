Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 77891644952
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Dec 2022 17:34:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1E785605AD;
	Tue,  6 Dec 2022 16:34:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1E785605AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670344498;
	bh=56seCu2gyODqodwiDPoACIFEIUeQmIMbrE4qfzb8SSk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jv4jmUVc/8sdqpsTC5QP3DkWf57dxmhvIan3FT+huacSB7FBGpBw4XdD+d2sjdhH0
	 92d7LIRe8lnY2pyeZxGuzgmKBd2Dvj3990kh8bstnfMvjSoZU2iRqMgqoaM4/fHqdg
	 47kDvwNSQyrxkC+5Mgt+ahXpGfJ7sGyAZ5WfmV8KRxTRhB31wmrVTjEQCt3QNEZzqw
	 mibYbpSRGIVYPIkIaTXpQLDJb2EkEt/IL+XOCFj3nXGCnnOOdGRDiLRkLjLjJ/Yu74
	 U0KtaElGCmgHbrIEHy0LQoMjCWJN32AQKDNdM4SwvH2kEuHFeFz2LVhioJ+kNc8hK9
	 U78gme3Pcpphw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fPZ9Pkz_pHw5; Tue,  6 Dec 2022 16:34:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1BB266102C;
	Tue,  6 Dec 2022 16:34:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1BB266102C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E6CD61BF215
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 10:28:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CE75E40641
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 10:28:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CE75E40641
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XCInDAf7RGy2 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Dec 2022 10:28:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A4DBD40150
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A4DBD40150
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 10:28:44 +0000 (UTC)
Received: from dggpeml500024.china.huawei.com (unknown [172.30.72.57])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4NRGnm0qnPzFqv0;
 Tue,  6 Dec 2022 18:27:39 +0800 (CST)
Received: from [10.174.178.41] (10.174.178.41) by
 dggpeml500024.china.huawei.com (7.185.36.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Dec 2022 18:28:27 +0800
Message-ID: <e9f5eeae-6785-5fb8-06a4-3d846e8658c9@huawei.com>
Date: Tue, 6 Dec 2022 18:28:26 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
To: Leon Romanovsky <leon@kernel.org>
References: <20221206092613.122952-1-yuancan@huawei.com>
 <Y48TO7s0K9J0kVh0@unreal>
From: Yuan Can <yuancan@huawei.com>
In-Reply-To: <Y48TO7s0K9J0kVh0@unreal>
X-Originating-IP: [10.174.178.41]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 dggpeml500024.china.huawei.com (7.185.36.10)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Tue, 06 Dec 2022 16:34:43 +0000
Subject: Re: [Intel-wired-lan] [PATCH] intel/i40e: Fix potential memory leak
 in i40e_init_recovery_mode()
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
Cc: intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 edumazet@google.com, netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 jeffrey.t.kirsher@intel.com, piotr.marczak@intel.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CuWcqCAyMDIyLzEyLzYgMTg6MDIsIExlb24gUm9tYW5vdnNreSDlhpnpgZM6Cj4gT24gVHVlLCBE
ZWMgMDYsIDIwMjIgYXQgMDk6MjY6MTNBTSArMDAwMCwgWXVhbiBDYW4gd3JvdGU6Cj4+IElmIGk0
MGVfdnNpX21lbV9hbGxvYygpIGZhaWxlZCBpbiBpNDBlX2luaXRfcmVjb3ZlcnlfbW9kZSgpLCB0
aGUgcGYgd2lsbCBiZQo+PiBmcmVlZCB3aXRoIHRoZSBwZi0+dnNpIGxlYWtlZC4KPj4gRml4IGJ5
IGZyZWUgcGYtPnZzaSBpbiB0aGUgZXJyb3IgaGFuZGxpbmcgcGF0aC4KPj4KPj4gRml4ZXM6IDRm
ZjBlZTFhZjAxNiAoImk0MGU6IEludHJvZHVjZSByZWNvdmVyeSBtb2RlIHN1cHBvcnQiKQo+PiBT
aWduZWQtb2ZmLWJ5OiBZdWFuIENhbiA8eXVhbmNhbkBodWF3ZWkuY29tPgo+PiAtLS0KPj4gICBk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jIHwgMSArCj4+ICAgMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gVGhlIHBhdGNoIHRpdGxlIG5lZWRzIHRvIGJl
ICJbUEFUQ0ggbmV0XS4uLiIKPgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaTQwZS9pNDBlX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUv
aTQwZV9tYWluLmMKPj4gaW5kZXggYjVkY2QxNWNlZDM2Li5kMjMwODFjMjI0ZDYgMTAwNjQ0Cj4+
IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMKPj4gKysr
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYwo+PiBAQCAtMTU1
MzYsNiArMTU1MzYsNyBAQCBzdGF0aWMgaW50IGk0MGVfaW5pdF9yZWNvdmVyeV9tb2RlKHN0cnVj
dCBpNDBlX3BmICpwZiwgc3RydWN0IGk0MGVfaHcgKmh3KQo+PiAgIAlwY2lfZGlzYWJsZV9wY2ll
X2Vycm9yX3JlcG9ydGluZyhwZi0+cGRldik7Cj4+ICAgCXBjaV9yZWxlYXNlX21lbV9yZWdpb25z
KHBmLT5wZGV2KTsKPj4gICAJcGNpX2Rpc2FibGVfZGV2aWNlKHBmLT5wZGV2KTsKPj4gKwlrZnJl
ZShwZi0+dnNpKTsKPj4gICAJa2ZyZWUocGYpOwo+PiAgIAo+PiAgIAlyZXR1cm4gZXJyOwo+IFRo
ZSBjaGFuZ2UgaXMgb2ssIGJ1dCBpdCBpcyB3b3J0aCB0byBjbGVhbnVwIGVycm9yIGZsb3cgb2Yg
aTQwZV9wcm9iZSBhbmQgaTQwZV9yZW1vdmUKPiBhcyB0aGV5IGFyZSBub3QgcmVhbGx5IGluIHRo
ZSBzYW1lIG9yZGVyLgo+Cj4gVGhhbmtzLAo+IFJldmlld2VkLWJ5OiBMZW9uIFJvbWFub3Zza3kg
PGxlb25yb0BudmlkaWEuY29tPgpUaGFua3MgZm9yIHRoZSByZXZpZXcsIHRoZSB0aXRsZSBwcm9i
bGVtIHdpbGwgYmUgZml4ZWQgaW4gdGhlIG5leHQgdmVyc2lvbi4KCi0tIApCZXN0IHJlZ2FyZHMs
Cll1YW4gQ2FuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3Jn
Cmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxh
bgo=
