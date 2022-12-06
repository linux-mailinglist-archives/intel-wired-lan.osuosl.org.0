Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F6D644958
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Dec 2022 17:35:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 732D361035;
	Tue,  6 Dec 2022 16:35:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 732D361035
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670344506;
	bh=XwGwqJu6t2KuxlnOTJlGnxVo6kQDl9lqre6vplf3cbE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7cDrEBeKuyVcKOcHZm5PJ7g0CUUJa8bxjrdG+HRM8U3wvfCE+VAWbknOQGNEIpFAV
	 K5GoK7SZNWNuPqXCzyMrK+KISpcuIRu9RJxmv1L3UEzs83BzHhAkFrQbC2Pk2cT/KK
	 d5J099CsvoHS+SQ6oLiBUPbsNTb+BKs3g10f+myg8IOxoTYdvtwfaFeBkLTS7q7xY/
	 BekWL1og0reokGwBE8BnEkpiv5e334x2ke7o0+nuHUS3jPbO5yLnaNDkJMZAWARDCf
	 8SFZTJH6w9U+JyI3edjr7pK1Lje0jaWqC/xcEIfu4JSNva+cYCTKNWE/COnRxJFzcf
	 Kpr+FmaxCzx1g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9m1Z6nT0a61f; Tue,  6 Dec 2022 16:35:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA33B61030;
	Tue,  6 Dec 2022 16:35:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA33B61030
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1AE731BF681
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 11:34:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 027CF60F81
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 11:34:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 027CF60F81
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PgIbjlnqGnIQ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Dec 2022 11:34:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B19A060C05
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [45.249.212.189])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B19A060C05
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 11:34:22 +0000 (UTC)
Received: from dggpeml500024.china.huawei.com (unknown [172.30.72.55])
 by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4NRJBZ2ZcfzJp2g;
 Tue,  6 Dec 2022 19:30:46 +0800 (CST)
Received: from [10.174.178.41] (10.174.178.41) by
 dggpeml500024.china.huawei.com (7.185.36.10) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Dec 2022 19:34:15 +0800
Message-ID: <8a914480-f392-1112-e672-457e8b61d6e5@huawei.com>
Date: Tue, 6 Dec 2022 19:34:15 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
To: Jiri Pirko <jiri@resnulli.us>
References: <20221206092613.122952-1-yuancan@huawei.com>
 <Y48ZXIjtsXu/FZQR@nanopsycho>
From: Yuan Can <yuancan@huawei.com>
In-Reply-To: <Y48ZXIjtsXu/FZQR@nanopsycho>
X-Originating-IP: [10.174.178.41]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
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

5ZyoIDIwMjIvMTIvNiAxODoyOCwgSmlyaSBQaXJrbyDlhpnpgZM6Cj4gVHVlLCBEZWMgMDYsIDIw
MjIgYXQgMTA6MjY6MTNBTSBDRVQsIHl1YW5jYW5AaHVhd2VpLmNvbSB3cm90ZToKPj4gSWYgaTQw
ZV92c2lfbWVtX2FsbG9jKCkgZmFpbGVkIGluIGk0MGVfaW5pdF9yZWNvdmVyeV9tb2RlKCksIHRo
ZSBwZiB3aWxsIGJlCj4+IGZyZWVkIHdpdGggdGhlIHBmLT52c2kgbGVha2VkLgo+PiBGaXggYnkg
ZnJlZSBwZi0+dnNpIGluIHRoZSBlcnJvciBoYW5kbGluZyBwYXRoLgo+Pgo+PiBGaXhlczogNGZm
MGVlMWFmMDE2ICgiaTQwZTogSW50cm9kdWNlIHJlY292ZXJ5IG1vZGUgc3VwcG9ydCIpCj4+IFNp
Z25lZC1vZmYtYnk6IFl1YW4gQ2FuIDx5dWFuY2FuQGh1YXdlaS5jb20+Cj4+IC0tLQo+PiBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jIHwgMSArCj4+IDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2k0MGUvaTQwZV9tYWluLmMKPj4gaW5kZXggYjVkY2QxNWNlZDM2Li5kMjMwODFjMjI0ZDYgMTAw
NjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMK
Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYwo+PiBA
QCAtMTU1MzYsNiArMTU1MzYsNyBAQCBzdGF0aWMgaW50IGk0MGVfaW5pdF9yZWNvdmVyeV9tb2Rl
KHN0cnVjdCBpNDBlX3BmICpwZiwgc3RydWN0IGk0MGVfaHcgKmh3KQo+PiAJcGNpX2Rpc2FibGVf
cGNpZV9lcnJvcl9yZXBvcnRpbmcocGYtPnBkZXYpOwo+PiAJcGNpX3JlbGVhc2VfbWVtX3JlZ2lv
bnMocGYtPnBkZXYpOwo+PiAJcGNpX2Rpc2FibGVfZGV2aWNlKHBmLT5wZGV2KTsKPj4gKwlrZnJl
ZShwZi0+dnNpKTsKPiBUaGlzIGlzIG5vdCB0aGUgb25seSB0aGluZyB3aGljaCBpcyB3cm9uZyBv
biB0aGlzIGVycm9yIHBhdGguIEp1c3QKPiBxdWlja2x5IGxvb2tpbmcgYXQgdGhlIGNvZGU6Cj4g
LSBrZnJlZShwZi0+cXBfcGlsZSk7IHNob3VsZCBiZSBjYWxsZWQgaGVyZSBhcyB3ZWxsCj4gLSBp
ZiBpNDBlX3NldHVwX21pc2NfdmVjdG9yX2Zvcl9yZWNvdmVyeV9tb2RlKCkgZmFpbHMsCj4gICAg
dW5yZWdpc3Rlcl9uZXRkZXYoKSBuZWVkcyB0byBiZSBjYWxsZWQuCj4gLSBpZiByZWdpc3Rlcl9u
ZXRkZXYoKSBmYWlscywgbmV0ZGV2IG5lZWRzIHRvIGJlIGZyZWVkIGF0IGxlYXN0Lgo+IEJhc2lj
YWxseSB0aGUgd2hvbGUgZXJyb3IgcGF0aCBpcyBjb21wbGV0ZWx5IHdyb25nLgo+IEkgc3VnZ2Vz
dCB0bzoKPgo+IDEpIHJlbHkgb24gZXJyb3IgcGF0aCBvZiBpNDBlX3Byb2JlKCkgd2hlbiBjYWxs
IG9mCj4gICAgIGk0MGVfaW5pdF9yZWNvdmVyeV9tb2RlKCkgZmFpbHMgYW5kIGRvbid0IGRvIHRo
ZSBjbGVhbnVwIG9mCj4gICAgIHByZXZpb3VzbHkgaW5pdGVkIHRoaW5ncyBpbiBpNDBlX3Byb2Jl
KCkgbG9jYWxseS4KPiAyKSBpbXBsZW1lbnQgYSBwcm9wZXIgbG9jYWwgZXJyb3IgcGF0aCBpbiBp
NDBlX2luaXRfcmVjb3ZlcnlfbW9kZSgpClRoYW5rcyBmb3IgdGhpcywgSSB3aWxsIHRyeSB0byBt
YWtlIGV2ZXJ5dGhpbmcgY29ycmVjdCBpbiB0aGUgbmV4dCB2ZXJzaW9uLgotLSAKCkJlc3QgcmVn
YXJkcywKWXVhbiBDYW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9z
bC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2ly
ZWQtbGFuCg==
