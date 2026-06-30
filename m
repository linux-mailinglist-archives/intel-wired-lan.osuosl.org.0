Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BM8aInLeQ2rmkgoAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jun 2026 17:19:14 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B066E5DB4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jun 2026 17:19:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=FAvhVadV;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B9B7D60FF5;
	Tue, 30 Jun 2026 15:19:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ab1NeiHNq_N9; Tue, 30 Jun 2026 15:19:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 03B42606C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782832751;
	bh=KN3v4O8jkhd6Mt2HpgZaziumJD8qk36FkI+IylasYd4=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FAvhVadVsKi77mJAX/morhygbGY0GBJ9BZ4Zq7tJipzPHInPw33cg+w7hcLqnzqPG
	 KbxQD+i09U/D3xL6X9wRmLNyaaXPkzCanK1TJUsG4eeKbr78ruUbl2xyhIJn39kABY
	 go23Y4BQobPaG+skN2GiyWMkpLEANHhpfjIGedi54uLEynkrVdqM+WhVucjexry0XH
	 m6GkVYP+/Cy7okHq71VCJaJA2aMPGgZGT3OGXzWNoTBab2e7RhPszSwKIICT0//ekk
	 ZPAUsSJbG0Lvyvxv7hg0rKkz84ruzcI/TfDw5rN0l+bPU0k1QvmyzyeuHNZ8cXBtRO
	 89IaM0t/+TaaQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 03B42606C4;
	Tue, 30 Jun 2026 15:19:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2B1CFED6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2026 10:59:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2910260FC9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2026 10:59:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id euLU3OcGkFXu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jun 2026 10:59:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=rppt@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5AB0960B4A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5AB0960B4A
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5AB0960B4A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2026 10:59:38 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id DD18941711;
 Tue, 30 Jun 2026 10:59:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 403D61F00A3D;
 Tue, 30 Jun 2026 10:59:33 +0000 (UTC)
From: "Mike Rapoport (Microsoft)" <rppt@kernel.org>
Date: Tue, 30 Jun 2026 13:59:21 +0300
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260630-b4-drivers-net-v1-2-672162a91f37@kernel.org>
References: <20260630-b4-drivers-net-v1-0-672162a91f37@kernel.org>
In-Reply-To: <20260630-b4-drivers-net-v1-0-672162a91f37@kernel.org>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: Brian Norris <briannorris@chromium.org>, 
 Edward Cree <ecree.xilinx@gmail.com>, 
 Francesco Dolcini <francesco@dolcini.it>, 
 Manish Chopra <manishc@marvell.com>, Mike Rapoport <rppt@kernel.org>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Sudarsana Kalluru <skalluru@marvell.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, b43-dev@lists.infradead.org, 
 intel-wired-lan@lists.osuosl.org, libertas-dev@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, linux-net-drivers@amd.com, 
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org
X-Mailer: b4 0.15.2
X-Mailman-Approved-At: Tue, 30 Jun 2026 15:19:08 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1782817177;
 bh=KN3v4O8jkhd6Mt2HpgZaziumJD8qk36FkI+IylasYd4=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc;
 b=MXQEF3aHWSiWNFSvYXHU4R7tW6cLU800PWaoSIs368VJxA7phfv+Es8c+cLkEeAW6
 N+cXvy7GWxnDbC1bFm9jgfCrZuJ7NcmOzPRxV0f8rFe0NonrUKVi/oDpm1r0R9GiMH
 cFOmtV0Vf+osCftv3+z9BekM2fYxe3pkef2/XzhRaonSJCjH2k1BUQb+abz3ksERB5
 ID+PK5GmcE2FHvH8VaVrrDkXHHS9PnbWWtmKluZc/es6TuUdTPfONxggTOYT41WBK/
 yoD9s2qt4xuVYdBtBHU1XDZGLStlv3wqrZawLDg0DkelNXb1Y5TLnaXGaGmtkKIZNf
 utF9NJfRkg01A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20260515 header.b=MXQEF3aH
Subject: [Intel-wired-lan] [PATCH net-next 2/8] bnx2x: use kzalloc() to
 allocate mac filtering list
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_SENDER(0.00)[rppt@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:briannorris@chromium.org,m:ecree.xilinx@gmail.com,m:francesco@dolcini.it,m:manishc@marvell.com,m:rppt@kernel.org,m:przemyslaw.kitszel@intel.com,m:skalluru@marvell.com,m:anthony.l.nguyen@intel.com,m:b43-dev@lists.infradead.org,m:libertas-dev@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:linux-mm@kvack.org,m:linux-net-drivers@amd.com,m:linux-wireless@vger.kernel.org,m:netdev@vger.kernel.org,m:andrew@lunn.ch,m:ecreexilinx@gmail.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[chromium.org,gmail.com,dolcini.it,marvell.com,kernel.org,intel.com,lists.infradead.org,lists.osuosl.org,vger.kernel.org,kvack.org,amd.com];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:from_smtp,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rppt@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E4B066E5DB4

bnx2x_mcast_enqueue_cmd() allocates memory for mac filtering list using
__get_free_pages().

This memory can be allocated with kzalloc() as there's nothing special
about it to go directly to the page allocator.

kmalloc() provides a better API that does not require ugly casts and
kfree() does not need to know the size of the freed object.

Performance difference between kmalloc() and __get_free_pages() is not
measurable as both allocators take an object/page from a per-CPU list for
fast path allocations.

For the slow path the performance is anyway determined by the amount of
reclaim involved rather than by what allocator is used.

Replace use of __get_free_page() with kzalloc() and free_page() with
kfree().

Link: https://lore.kernel.org/all/635405e4-9423-4a25-a6e7-e03c8ea0bcbe@redhat.com
Signed-off-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
---
 drivers/net/ethernet/broadcom/bnx2x/bnx2x_sp.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/bnx2x/bnx2x_sp.c b/drivers/net/ethernet/broadcom/bnx2x/bnx2x_sp.c
index 07a908a2c72f..d560524d317d 100644
--- a/drivers/net/ethernet/broadcom/bnx2x/bnx2x_sp.c
+++ b/drivers/net/ethernet/broadcom/bnx2x/bnx2x_sp.c
@@ -26,6 +26,7 @@
 #include <linux/netdevice.h>
 #include <linux/etherdevice.h>
 #include <linux/crc32c.h>
+#include <linux/slab.h>
 #include "bnx2x.h"
 #include "bnx2x_cmn.h"
 #include "bnx2x_sp.h"
@@ -2664,7 +2665,7 @@ static void bnx2x_free_groups(struct list_head *mcast_group_list)
 				      struct bnx2x_mcast_elem_group,
 				      mcast_group_link);
 		list_del(&current_mcast_group->mcast_group_link);
-		free_page((unsigned long)current_mcast_group);
+		kfree(current_mcast_group);
 	}
 }
 
@@ -2713,8 +2714,7 @@ static int bnx2x_mcast_enqueue_cmd(struct bnx2x *bp,
 				total_elems = BNX2X_MCAST_BINS_NUM;
 		}
 		while (total_elems > 0) {
-			elem_group = (struct bnx2x_mcast_elem_group *)
-				     __get_free_page(GFP_ATOMIC | __GFP_ZERO);
+			elem_group = kzalloc(PAGE_SIZE, GFP_ATOMIC);
 			if (!elem_group) {
 				bnx2x_free_groups(&new_cmd->group_head);
 				kfree(new_cmd);

-- 
2.53.0

