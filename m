Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9751B2D9AD2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Dec 2020 16:23:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 59DDC868E7;
	Mon, 14 Dec 2020 15:23:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x2ErtNGQYtAJ; Mon, 14 Dec 2020 15:23:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DE64F868D1;
	Mon, 14 Dec 2020 15:23:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 933C11BF2E5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 15:23:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8E26587466
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 15:23:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eVSC15TLrynh for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Dec 2020 15:23:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 72BA1870D1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Dec 2020 15:23:11 +0000 (UTC)
IronPort-SDR: PV2AS2ACgGhleWdQPsnr+of1Jps+vyoJLK0Im2S8zK0NMr58GRAlw6zL1KZHlHgnltDvTfpzAV
 3F/9JFYyU+TQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9834"; a="236308519"
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="236308519"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 07:23:11 -0800
IronPort-SDR: ctp9ScIgn6YcqGCvrAdH0QTDHWYEnWb8z+6R82dHgYTMKJNdwk7MX1I1sr2oCNFG/QFVtwkE+L
 1WnJpaF38FWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="411285763"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga001.jf.intel.com with ESMTP; 14 Dec 2020 07:23:09 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 14 Dec 2020 16:13:08 +0100
Message-Id: <20201214151308.15275-9-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201214151308.15275-1-maciej.fijalkowski@intel.com>
References: <20201214151308.15275-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 net-next 8/8] i40e,
 xsk: Simplify the do-while allocation loop
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

RnJvbTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgoKRm9sZCB0aGUgY291
bnQgZGVjcmVtZW50IGludG8gdGhlIHdoaWxlLXN0YXRlbWVudC4KClNpZ25lZC1vZmYtYnk6IEJq
w7ZybiBUw7ZwZWwgPGJqb3JuLnRvcGVsQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmMgfCA0ICstLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
NDBlL2k0MGVfeHNrLmMKaW5kZXggYmZhODRiZmIwNDg4Li42NzkyMDBkOTRlZjggMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV94c2suYworKysgYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfeHNrLmMKQEAgLTIxNSw5ICsyMTUsNyBA
QCBib29sIGk0MGVfYWxsb2NfcnhfYnVmZmVyc196YyhzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5n
LCB1MTYgY291bnQpCiAJCQliaSA9IGk0MGVfcnhfYmkocnhfcmluZywgMCk7CiAJCQludHUgPSAw
OwogCQl9Ci0KLQkJY291bnQtLTsKLQl9IHdoaWxlIChjb3VudCk7CisJfSB3aGlsZSAoLS1jb3Vu
dCk7CiAKIG5vX2J1ZmZlcnM6CiAJaWYgKHJ4X3JpbmctPm5leHRfdG9fdXNlICE9IG50dSkKLS0g
CjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpo
dHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
