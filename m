Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 75DB02FA47B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Jan 2021 16:23:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 375FF8565B;
	Mon, 18 Jan 2021 15:23:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U-I2fAkiqFIT; Mon, 18 Jan 2021 15:23:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AE7C28577C;
	Mon, 18 Jan 2021 15:23:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A98331BF33E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 15:23:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A57EF8565B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 15:23:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8HJiwDrt1bgL for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Jan 2021 15:22:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0CF1C85A00
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 15:22:59 +0000 (UTC)
IronPort-SDR: WvKSPpdtP2GsHNShPzs8LM9OKNqZyUi17d1kJZyZ3wj8g9DzHXY9wJ4XoXNFTZiSDwU26qX0lP
 m5PSTMPeQsdQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9867"; a="240358011"
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="240358011"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 07:22:58 -0800
IronPort-SDR: Bd4fTjG3K5Bhe8zJXXX38hsKDWODEMr3ulSxXAOB/B1LVnSsITF5KbNtnjEpbQJNkFI5oAhqT4
 fVCUysn7Xs4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="500676310"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga004.jf.intel.com with ESMTP; 18 Jan 2021 07:22:56 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 18 Jan 2021 16:13:09 +0100
Message-Id: <20210118151318.12324-3-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210118151318.12324-1-maciej.fijalkowski@intel.com>
References: <20210118151318.12324-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v3 net-next 02/11] i40e: drop misleading
 function comments
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

aTQwZV9jbGVhbnVwX2hlYWRlcnMgaGFzIGEgc3RhdGVtZW50IGFib3V0IGNoZWNrIGFnYWluc3Qg
c2tiIGJlaW5nCmxpbmVhciBvciBub3Qgd2hpY2ggaXMgbm90IHJlbGV2YW50IGFueW1vcmUsIHNv
IGxldCdzIHJlbW92ZSBpdC4KClNhbWUgY2FzZSBmb3IgaTQwZV9jYW5fcmV1c2VfcnhfcGFnZSwg
aXQgcmVmZXJlbmNlcyB0aGluZ3MgdGhhdCBhcmUgbm90CnByZXNlbnQgdGhlcmUgYW55bW9yZS4K
ClJldmlld2VkLWJ5OiBCasO2cm4gVMO2cGVsIDxiam9ybi50b3BlbEBpbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IE1hY2llaiBGaWphbGtvd3NraSA8bWFjaWVqLmZpamFsa293c2tpQGludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdHhyeC5jIHwgMzMg
KysrKy0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAy
NyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
NDBlL2k0MGVfdHhyeC5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3R4
cnguYwppbmRleCAyNTc0ZTc4Zjc1OTcuLmY4YWE2OGYyYTdmZCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3R4cnguYworKysgYi9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdHhyeC5jCkBAIC0xODA5LDkgKzE4MDksNiBAQCB2b2lk
IGk0MGVfcHJvY2Vzc19za2JfZmllbGRzKHN0cnVjdCBpNDBlX3JpbmcgKnJ4X3JpbmcsCiAgKiBA
c2tiOiBwb2ludGVyIHRvIGN1cnJlbnQgc2tiIGJlaW5nIGZpeGVkCiAgKiBAcnhfZGVzYzogcG9p
bnRlciB0byB0aGUgRU9QIFJ4IGRlc2NyaXB0b3IKICAqCi0gKiBBbHNvIGFkZHJlc3MgdGhlIGNh
c2Ugd2hlcmUgd2UgYXJlIHB1bGxpbmcgZGF0YSBpbiBvbiBwYWdlcyBvbmx5Ci0gKiBhbmQgYXMg
c3VjaCBubyBkYXRhIGlzIHByZXNlbnQgaW4gdGhlIHNrYiBoZWFkZXIuCi0gKgogICogSW4gYWRk
aXRpb24gaWYgc2tiIGlzIG5vdCBhdCBsZWFzdCA2MCBieXRlcyB3ZSBuZWVkIHRvIHBhZCBpdCBz
byB0aGF0CiAgKiBpdCBpcyBsYXJnZSBlbm91Z2ggdG8gcXVhbGlmeSBhcyBhIHZhbGlkIEV0aGVy
bmV0IGZyYW1lLgogICoKQEAgLTE4NTcsMzMgKzE4NTQsMTUgQEAgc3RhdGljIGlubGluZSBib29s
IGk0MGVfcGFnZV9pc19yZXVzYWJsZShzdHJ1Y3QgcGFnZSAqcGFnZSkKIH0KIAogLyoqCi0gKiBp
NDBlX2Nhbl9yZXVzZV9yeF9wYWdlIC0gRGV0ZXJtaW5lIGlmIHRoaXMgcGFnZSBjYW4gYmUgcmV1
c2VkIGJ5Ci0gKiB0aGUgYWRhcHRlciBmb3IgYW5vdGhlciByZWNlaXZlCi0gKgorICogaTQwZV9j
YW5fcmV1c2VfcnhfcGFnZSAtIERldGVybWluZSBpZiBwYWdlIGNhbiBiZSByZXVzZWQgZm9yIGFu
b3RoZXIgUngKICAqIEByeF9idWZmZXI6IGJ1ZmZlciBjb250YWluaW5nIHRoZSBwYWdlCiAgKiBA
cnhfYnVmZmVyX3BnY250OiBidWZmZXIgcGFnZSByZWZjb3VudCBwcmUgeGRwX2RvX3JlZGlyZWN0
KCkgY2FsbAogICoKLSAqIElmIHBhZ2UgaXMgcmV1c2FibGUsIHJ4X2J1ZmZlci0+cGFnZV9vZmZz
ZXQgaXMgYWRqdXN0ZWQgdG8gcG9pbnQgdG8KLSAqIGFuIHVudXNlZCByZWdpb24gaW4gdGhlIHBh
Z2UuCi0gKgotICogRm9yIHNtYWxsIHBhZ2VzLCBAdHJ1ZXNpemUgd2lsbCBiZSBhIGNvbnN0YW50
IHZhbHVlLCBoYWxmIHRoZSBzaXplCi0gKiBvZiB0aGUgbWVtb3J5IGF0IHBhZ2UuICBXZSdsbCBh
dHRlbXB0IHRvIGFsdGVybmF0ZSBiZXR3ZWVuIGhpZ2ggYW5kCi0gKiBsb3cgaGFsdmVzIG9mIHRo
ZSBwYWdlLCB3aXRoIG9uZSBoYWxmIHJlYWR5IGZvciB1c2UgYnkgdGhlIGhhcmR3YXJlCi0gKiBh
bmQgdGhlIG90aGVyIGhhbGYgYmVpbmcgY29uc3VtZWQgYnkgdGhlIHN0YWNrLiAgV2UgdXNlIHRo
ZSBwYWdlCi0gKiByZWYgY291bnQgdG8gZGV0ZXJtaW5lIHdoZXRoZXIgdGhlIHN0YWNrIGhhcyBm
aW5pc2hlZCBjb25zdW1pbmcgdGhlCi0gKiBwb3J0aW9uIG9mIHRoaXMgcGFnZSB0aGF0IHdhcyBw
YXNzZWQgdXAgd2l0aCBhIHByZXZpb3VzIHBhY2tldC4gIElmCi0gKiB0aGUgcGFnZSByZWYgY291
bnQgaXMgPjEsIHdlJ2xsIGFzc3VtZSB0aGUgIm90aGVyIiBoYWxmIHBhZ2UgaXMKLSAqIHN0aWxs
IGJ1c3ksIGFuZCB0aGlzIHBhZ2UgY2Fubm90IGJlIHJldXNlZC4KLSAqCi0gKiBGb3IgbGFyZ2Vy
IHBhZ2VzLCBAdHJ1ZXNpemUgd2lsbCBiZSB0aGUgYWN0dWFsIHNwYWNlIHVzZWQgYnkgdGhlCi0g
KiByZWNlaXZlZCBwYWNrZXQgKGFkanVzdGVkIHVwd2FyZCB0byBhbiBldmVuIG11bHRpcGxlIG9m
IHRoZSBjYWNoZQotICogbGluZSBzaXplKS4gIFRoaXMgd2lsbCBhZHZhbmNlIHRocm91Z2ggdGhl
IHBhZ2UgYnkgdGhlIGFtb3VudAotICogYWN0dWFsbHkgY29uc3VtZWQgYnkgdGhlIHJlY2VpdmVk
IHBhY2tldHMgd2hpbGUgdGhlcmUgaXMgc3RpbGwKLSAqIHNwYWNlIGZvciBhIGJ1ZmZlci4gIEVh
Y2ggcmVnaW9uIG9mIGxhcmdlciBwYWdlcyB3aWxsIGJlIHVzZWQgYXQKLSAqIG1vc3Qgb25jZSwg
YWZ0ZXIgd2hpY2ggdGhlIHBhZ2Ugd2lsbCBub3QgYmUgcmV1c2VkLgotICoKLSAqIEluIGVpdGhl
ciBjYXNlLCBpZiB0aGUgcGFnZSBpcyByZXVzYWJsZSBpdHMgcmVmY291bnQgaXMgaW5jcmVhc2Vk
LgotICoqLworICogSWYgcGFnZSBpcyByZXVzYWJsZSwgd2UgaGF2ZSBhIGdyZWVuIGxpZ2h0IGZv
ciBjYWxsaW5nIGk0MGVfcmV1c2VfcnhfcGFnZSwKKyAqIHdoaWNoIHdpbGwgYXNzaWduIHRoZSBj
dXJyZW50IGJ1ZmZlciB0byB0aGUgYnVmZmVyIHRoYXQgbmV4dF90b19hbGxvYyBpcworICogcG9p
bnRpbmcgdG87IG90aGVyd2lzZSwgdGhlIERNQSBtYXBwaW5nIG5lZWRzIHRvIGJlIGRlc3Ryb3ll
ZCBhbmQKKyAqIHBhZ2UgZnJlZWQKKyAqLwogc3RhdGljIGJvb2wgaTQwZV9jYW5fcmV1c2Vfcnhf
cGFnZShzdHJ1Y3QgaTQwZV9yeF9idWZmZXIgKnJ4X2J1ZmZlciwKIAkJCQkgICBpbnQgcnhfYnVm
ZmVyX3BnY250KQogewotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVk
LWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLXdpcmVkLWxhbgo=
