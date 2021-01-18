Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7592FA47A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Jan 2021 16:23:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E276F85B5B;
	Mon, 18 Jan 2021 15:23:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xb79LT-r52zV; Mon, 18 Jan 2021 15:23:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9F17085BC8;
	Mon, 18 Jan 2021 15:23:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CA3FE1BF33E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 15:23:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C6A9B85A84
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 15:23:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pfIhFsAFKEdy for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Jan 2021 15:23:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5A70C8565B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 15:23:03 +0000 (UTC)
IronPort-SDR: nComlSRnF4l9NW/447PGYKrVNPsNX+SyZuxFFxyqo5zmWVs7SylJ/j20vc/GGV6RjltoArt856
 IJ6cMGln/MbQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9867"; a="240358019"
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="240358019"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 07:23:03 -0800
IronPort-SDR: Svm4C2oTnqmgVefwqsvjsAaIAgHNe86gHgU9NshqdyQ8B9QKOBFMAeDZaqmVCTYKL9SNw0uauF
 ddNBa7QeSp1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="500676335"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga004.jf.intel.com with ESMTP; 18 Jan 2021 07:23:01 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 18 Jan 2021 16:13:11 +0100
Message-Id: <20210118151318.12324-5-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210118151318.12324-1-maciej.fijalkowski@intel.com>
References: <20210118151318.12324-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v3 net-next 04/11] ice: simplify
 ice_run_xdp
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

VGhlcmUncyBubyBuZWVkIGZvciAncmVzdWx0JyB2YXJpYWJsZSwgd2UgY2FuIGRpcmVjdGx5IHJl
dHVybiB0aGUKaW50ZXJuYWwgc3RhdHVzIGJhc2VkIG9uIGFjdGlvbiByZXR1cm5lZCBieSB4ZHAg
cHJvZy4KClJldmlld2VkLWJ5OiBCasO2cm4gVMO2cGVsIDxiam9ybi50b3BlbEBpbnRlbC5jb20+
ClNpZ25lZC1vZmYtYnk6IE1hY2llaiBGaWphbGtvd3NraSA8bWFjaWVqLmZpamFsa293c2tpQGlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R4cnguYyB8
IDE1ICsrKysrLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMTAg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZV90eHJ4LmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3R4cnguYwpp
bmRleCA0MjJmNTM5OTdjMDIuLmRjMWFkNDVlYWM4ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV90eHJ4LmMKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV90eHJ4LmMKQEAgLTUzNywyMiArNTM3LDIwIEBAIHN0YXRpYyBpbnQKIGlj
ZV9ydW5feGRwKHN0cnVjdCBpY2VfcmluZyAqcnhfcmluZywgc3RydWN0IHhkcF9idWZmICp4ZHAs
CiAJICAgIHN0cnVjdCBicGZfcHJvZyAqeGRwX3Byb2cpCiB7Ci0JaW50IGVyciwgcmVzdWx0ID0g
SUNFX1hEUF9QQVNTOwogCXN0cnVjdCBpY2VfcmluZyAqeGRwX3Jpbmc7CisJaW50IGVycjsKIAl1
MzIgYWN0OwogCiAJYWN0ID0gYnBmX3Byb2dfcnVuX3hkcCh4ZHBfcHJvZywgeGRwKTsKIAlzd2l0
Y2ggKGFjdCkgewogCWNhc2UgWERQX1BBU1M6Ci0JCWJyZWFrOworCQlyZXR1cm4gSUNFX1hEUF9Q
QVNTOwogCWNhc2UgWERQX1RYOgogCQl4ZHBfcmluZyA9IHJ4X3JpbmctPnZzaS0+eGRwX3Jpbmdz
W3NtcF9wcm9jZXNzb3JfaWQoKV07Ci0JCXJlc3VsdCA9IGljZV94bWl0X3hkcF9idWZmKHhkcCwg
eGRwX3JpbmcpOwotCQlicmVhazsKKwkJcmV0dXJuIGljZV94bWl0X3hkcF9idWZmKHhkcCwgeGRw
X3JpbmcpOwogCWNhc2UgWERQX1JFRElSRUNUOgogCQllcnIgPSB4ZHBfZG9fcmVkaXJlY3Qocnhf
cmluZy0+bmV0ZGV2LCB4ZHAsIHhkcF9wcm9nKTsKLQkJcmVzdWx0ID0gIWVyciA/IElDRV9YRFBf
UkVESVIgOiBJQ0VfWERQX0NPTlNVTUVEOwotCQlicmVhazsKKwkJcmV0dXJuICFlcnIgPyBJQ0Vf
WERQX1JFRElSIDogSUNFX1hEUF9DT05TVU1FRDsKIAlkZWZhdWx0OgogCQlicGZfd2Fybl9pbnZh
bGlkX3hkcF9hY3Rpb24oYWN0KTsKIAkJZmFsbHRocm91Z2g7CkBAIC01NjAsMTEgKzU1OCw4IEBA
IGljZV9ydW5feGRwKHN0cnVjdCBpY2VfcmluZyAqcnhfcmluZywgc3RydWN0IHhkcF9idWZmICp4
ZHAsCiAJCXRyYWNlX3hkcF9leGNlcHRpb24ocnhfcmluZy0+bmV0ZGV2LCB4ZHBfcHJvZywgYWN0
KTsKIAkJZmFsbHRocm91Z2g7CiAJY2FzZSBYRFBfRFJPUDoKLQkJcmVzdWx0ID0gSUNFX1hEUF9D
T05TVU1FRDsKLQkJYnJlYWs7CisJCXJldHVybiBJQ0VfWERQX0NPTlNVTUVEOwogCX0KLQotCXJl
dHVybiByZXN1bHQ7CiB9CiAKIC8qKgotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cklu
dGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
