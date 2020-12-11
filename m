Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8308F2D7BC0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Dec 2020 17:59:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 39D1D8739C;
	Fri, 11 Dec 2020 16:59:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FP9hInhXWtP3; Fri, 11 Dec 2020 16:59:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F14D1873A0;
	Fri, 11 Dec 2020 16:59:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 896561BF286
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Dec 2020 16:59:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8542E8739E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Dec 2020 16:59:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BUVi9i0WcGxs for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Dec 2020 16:59:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2822A87398
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Dec 2020 16:59:42 +0000 (UTC)
IronPort-SDR: zV/b2gfMCiaHIiyf4nBQBxFB3kJOQNJ06vLcVD+cdtCSNZjFtuveb/uHuqwtZxQffw6595wUnR
 PZ5kXFKwKnxA==
X-IronPort-AV: E=McAfee;i="6000,8403,9832"; a="174575078"
X-IronPort-AV: E=Sophos;i="5.78,411,1599548400"; d="scan'208";a="174575078"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2020 08:59:41 -0800
IronPort-SDR: a/edh5S++05OITw7g8Nm77D0CGanfPw213IMT96GmPop+iT5nqZFzkrar91MvZpaQuEbjE7Yuz
 bmo82Wcx/m8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,411,1599548400"; d="scan'208";a="365497585"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga008.jf.intel.com with ESMTP; 11 Dec 2020 08:59:40 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 11 Dec 2020 17:49:56 +0100
Message-Id: <20201211164956.59628-9-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201211164956.59628-1-maciej.fijalkowski@intel.com>
References: <20201211164956.59628-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 8/8] i40e,
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
