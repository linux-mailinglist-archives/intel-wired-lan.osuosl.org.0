Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF402FA478
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Jan 2021 16:23:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9F7D9861C1;
	Mon, 18 Jan 2021 15:23:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nb10B9a6arEs; Mon, 18 Jan 2021 15:23:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 408C284F5F;
	Mon, 18 Jan 2021 15:23:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D1B011BF962
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 15:23:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CAF118577C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 15:23:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cQqE6jMx9VYX for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Jan 2021 15:23:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 36B348565B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 15:23:01 +0000 (UTC)
IronPort-SDR: lyzP6+AVc8SB1bNvBhrnIDKDCBUBv2cHX0/WWha0WzRMksAlatNO7+m7aSSlaFdnIK729WMYG8
 uP2O+9liZK6Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9867"; a="240358017"
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="240358017"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 07:23:01 -0800
IronPort-SDR: tsCMy+5O9mwtFKnLO29RpX/+c/Wlxm9p7/FXUsc50Lkj1SlzJ6WKGLqIy8qLZTLAy9U3zcAmUw
 ZkWpJOnrPm0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="500676319"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga004.jf.intel.com with ESMTP; 18 Jan 2021 07:22:58 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 18 Jan 2021 16:13:10 +0100
Message-Id: <20210118151318.12324-4-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210118151318.12324-1-maciej.fijalkowski@intel.com>
References: <20210118151318.12324-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v3 net-next 03/11] i40e: adjust
 i40e_is_non_eop
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
Cc: netdev@vger.kernel.org, kuba@kernel.org, bpf@vger.kernel.org,
 bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

aTQwZV9pc19ub25fZW9wIGhhZCBhIGxlZnRvdmVyIGNvbW1lbnQgYW5kIHVudXNlZCBza2IgYXJn
dW1lbnQgd2hpY2ggd2FzCnVzZWQgZm9yIHBsYWNpbmcgdGhlIHNrYiBvbnRvIHJ4X2J1ZiBpbiBj
YXNlIHdoZW4gY3VycmVudCBidWZmZXIgd2FzCm5vbi1lb3Agb25lLiBUaGlzIGlzIG5vdCByZWxl
dmFudCBhbnltb3JlIGFzIGNvbW1pdCBlNzJlNTY1OTdiYTEKKCJpNDBlL2k0MGV2ZjogTW92ZXMg
c2tiIGZyb20gaTQwZV9yeF9idWZmZXIgdG8gaTQwZV9yaW5nIikgcHVsbGVkIHRoZQpub24tY29t
cGxldGUgc2tiIGhhbmRsaW5nIG91dCBvZiByeF9idWZzIHVwIHRvIHJ4X3JpbmcuICBUaGVyZWZv
cmUsCmxldCdzIGFkanVzdCB0aGUgZnVuY3Rpb24gYXJndW1lbnRzIHRoYXQgaTQwZV9pc19ub25f
ZW9wIHRha2VzLgoKRnVydGhlcm1vcmUsIHNpbmNlIHRoZXJlIGlzIGFscmVhZHkgYSBmdW5jdGlv
biByZXNwb25zaWJsZSBmb3IgYnVtcGluZwp0aGUgbnRjLCBtYWtlIHVzZSBvZiB0aGF0IGFuZCBk
cm9wIHRoYXQgbG9naWMgZnJvbSBpNDBlX2lzX25vbl9lb3Agc28KdGhhdCB0aGUgc2NvcGUgb2Yg
dGhpcyBmdW5jdGlvbiBpcyBsaW1pdGVkIHRvIHdoYXQgdGhlIG5hbWUgYWN0dWFsbHkKc3RhdGVz
LgoKUmV2aWV3ZWQtYnk6IEJqw7ZybiBUw7ZwZWwgPGJqb3JuLnRvcGVsQGludGVsLmNvbT4KU2ln
bmVkLW9mZi1ieTogTWFjaWVqIEZpamFsa293c2tpIDxtYWNpZWouZmlqYWxrb3dza2lAaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV90eHJ4LmMgfCAy
MyArKysrKystLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyks
IDE3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2k0MGUvaTQwZV90eHJ4LmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVf
dHhyeC5jCmluZGV4IGY4YWE2OGYyYTdmZC4uN2UwMDhkYmJlZjk3IDEwMDY0NAotLS0gYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdHhyeC5jCisrKyBiL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV90eHJ4LmMKQEAgLTIxMzAsMjUgKzIxMzAsMTMgQEAg
c3RhdGljIHZvaWQgaTQwZV9wdXRfcnhfYnVmZmVyKHN0cnVjdCBpNDBlX3JpbmcgKnJ4X3Jpbmcs
CiAgKiBpNDBlX2lzX25vbl9lb3AgLSBwcm9jZXNzIGhhbmRsaW5nIG9mIG5vbi1FT1AgYnVmZmVy
cwogICogQHJ4X3Jpbmc6IFJ4IHJpbmcgYmVpbmcgcHJvY2Vzc2VkCiAgKiBAcnhfZGVzYzogUngg
ZGVzY3JpcHRvciBmb3IgY3VycmVudCBidWZmZXIKLSAqIEBza2I6IEN1cnJlbnQgc29ja2V0IGJ1
ZmZlciBjb250YWluaW5nIGJ1ZmZlciBpbiBwcm9ncmVzcwogICoKLSAqIFRoaXMgZnVuY3Rpb24g
dXBkYXRlcyBuZXh0IHRvIGNsZWFuLiAgSWYgdGhlIGJ1ZmZlciBpcyBhbiBFT1AgYnVmZmVyCi0g
KiB0aGlzIGZ1bmN0aW9uIGV4aXRzIHJldHVybmluZyBmYWxzZSwgb3RoZXJ3aXNlIGl0IHdpbGwg
cGxhY2UgdGhlCi0gKiBza19idWZmIGluIHRoZSBuZXh0IGJ1ZmZlciB0byBiZSBjaGFpbmVkIGFu
ZCByZXR1cm4gdHJ1ZSBpbmRpY2F0aW5nCi0gKiB0aGF0IHRoaXMgaXMgaW4gZmFjdCBhIG5vbi1F
T1AgYnVmZmVyLgotICoqLworICogSWYgdGhlIGJ1ZmZlciBpcyBhbiBFT1AgYnVmZmVyLCB0aGlz
IGZ1bmN0aW9uIGV4aXRzIHJldHVybmluZyBmYWxzZSwKKyAqIG90aGVyd2lzZSByZXR1cm4gdHJ1
ZSBpbmRpY2F0aW5nIHRoYXQgdGhpcyBpcyBpbiBmYWN0IGEgbm9uLUVPUCBidWZmZXIuCisgKi8K
IHN0YXRpYyBib29sIGk0MGVfaXNfbm9uX2VvcChzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5nLAot
CQkJICAgIHVuaW9uIGk0MGVfcnhfZGVzYyAqcnhfZGVzYywKLQkJCSAgICBzdHJ1Y3Qgc2tfYnVm
ZiAqc2tiKQorCQkJICAgIHVuaW9uIGk0MGVfcnhfZGVzYyAqcnhfZGVzYykKIHsKLQl1MzIgbnRj
ID0gcnhfcmluZy0+bmV4dF90b19jbGVhbiArIDE7Ci0KLQkvKiBmZXRjaCwgdXBkYXRlLCBhbmQg
c3RvcmUgbmV4dCB0byBjbGVhbiAqLwotCW50YyA9IChudGMgPCByeF9yaW5nLT5jb3VudCkgPyBu
dGMgOiAwOwotCXJ4X3JpbmctPm5leHRfdG9fY2xlYW4gPSBudGM7Ci0KLQlwcmVmZXRjaChJNDBF
X1JYX0RFU0MocnhfcmluZywgbnRjKSk7Ci0KIAkvKiBpZiB3ZSBhcmUgdGhlIGxhc3QgYnVmZmVy
IHRoZW4gdGhlcmUgaXMgbm90aGluZyBlbHNlIHRvIGRvICovCiAjZGVmaW5lIEk0MEVfUlhEX0VP
RiBCSVQoSTQwRV9SWF9ERVNDX1NUQVRVU19FT0ZfU0hJRlQpCiAJaWYgKGxpa2VseShpNDBlX3Rl
c3Rfc3RhdGVycihyeF9kZXNjLCBJNDBFX1JYRF9FT0YpKSkKQEAgLTI0MjcsNyArMjQxNSw4IEBA
IHN0YXRpYyBpbnQgaTQwZV9jbGVhbl9yeF9pcnEoc3RydWN0IGk0MGVfcmluZyAqcnhfcmluZywg
aW50IGJ1ZGdldCkKIAkJaTQwZV9wdXRfcnhfYnVmZmVyKHJ4X3JpbmcsIHJ4X2J1ZmZlciwgcnhf
YnVmZmVyX3BnY250KTsKIAkJY2xlYW5lZF9jb3VudCsrOwogCi0JCWlmIChpNDBlX2lzX25vbl9l
b3AocnhfcmluZywgcnhfZGVzYywgc2tiKSkKKwkJaTQwZV9pbmNfbnRjKHJ4X3JpbmcpOworCQlp
ZiAoaTQwZV9pc19ub25fZW9wKHJ4X3JpbmcsIHJ4X2Rlc2MpKQogCQkJY29udGludWU7CiAKIAkJ
aWYgKGk0MGVfY2xlYW51cF9oZWFkZXJzKHJ4X3JpbmcsIHNrYiwgcnhfZGVzYykpIHsKLS0gCjIu
MjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRw
czovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
