Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F2A2FA477
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Jan 2021 16:23:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A43A485A84;
	Mon, 18 Jan 2021 15:23:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iPiGiz03gv-5; Mon, 18 Jan 2021 15:23:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2DCCE85ABE;
	Mon, 18 Jan 2021 15:23:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9F6DD1BF33E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 15:23:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9AA4E85A80
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 15:23:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U4BNxkgxOb3b for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Jan 2021 15:22:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D89088577C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 15:22:58 +0000 (UTC)
IronPort-SDR: WVCGW1CIhjT8WOy1R8x4UQZ/Tc0ePDMlyakRsftoQR9txh/mKtL+bGaWlAefM6NLRaIaq81V/P
 wOkuVn/k/uXg==
X-IronPort-AV: E=McAfee;i="6000,8403,9867"; a="240358009"
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="240358009"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 07:22:56 -0800
IronPort-SDR: Wl1Ohqw2f9zjVMa9ygvPDQw5InWNl1iorcbiVyzoi9S7Sh0cHQ3bcxlrWy0n7NXxjGyQDGFnJ6
 3yWzWtndyxlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="500676300"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga004.jf.intel.com with ESMTP; 18 Jan 2021 07:22:54 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 18 Jan 2021 16:13:08 +0100
Message-Id: <20210118151318.12324-2-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210118151318.12324-1-maciej.fijalkowski@intel.com>
References: <20210118151318.12324-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v3 net-next 01/11] i40e: drop redundant
 check when setting xdp prog
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

TmV0IGNvcmUgaGFuZGxlcyB0aGUgY2FzZSB3aGVyZSBuZXRkZXYgaGFzIG5vIHhkcCBwcm9nIGF0
dGFjaGVkIGFuZApjdXJyZW50IHByb2cgaXMgTlVMTC4gVGhlcmVmb3JlLCByZW1vdmUgc3VjaCBj
aGVjayB3aXRoaW4KaTQwZV94ZHBfc2V0dXAuCgpSZXZpZXdlZC1ieTogQmrDtnJuIFTDtnBlbCA8
Ympvcm4udG9wZWxAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYWNpZWogRmlqYWxrb3dza2kg
PG1hY2llai5maWphbGtvd3NraUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaTQwZS9pNDBlX21haW4uYyB8IDMgLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVf
bWFpbi5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYwppbmRl
eCA1MjFlYTlkZjM4ZDUuLjEwM2RmMzVjMjUxZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYworKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pNDBlL2k0MGVfbWFpbi5jCkBAIC0xMjQ2Miw5ICsxMjQ2Miw2IEBAIHN0YXRpYyBpbnQg
aTQwZV94ZHBfc2V0dXAoc3RydWN0IGk0MGVfdnNpICp2c2ksCiAJaWYgKGZyYW1lX3NpemUgPiB2
c2ktPnJ4X2J1Zl9sZW4pCiAJCXJldHVybiAtRUlOVkFMOwogCi0JaWYgKCFpNDBlX2VuYWJsZWRf
eGRwX3ZzaSh2c2kpICYmICFwcm9nKQotCQlyZXR1cm4gMDsKLQogCS8qIFdoZW4gdHVybmluZyBY
RFAgb24tPm9mZi9vZmYtPm9uIHdlIHJlc2V0IGFuZCByZWJ1aWxkIHRoZSByaW5ncy4gKi8KIAlu
ZWVkX3Jlc2V0ID0gKGk0MGVfZW5hYmxlZF94ZHBfdnNpKHZzaSkgIT0gISFwcm9nKTsKIAotLSAK
Mi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0
dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
