Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id s+laNc8cRWrV7AoAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 15:57:35 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7FD6EE6EC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 15:57:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=JUusYbk2;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 19EC5410E6;
	Wed,  1 Jul 2026 13:57:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YfDvQ0Ep_pvj; Wed,  1 Jul 2026 13:57:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5ED5E410E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782914253;
	bh=KN3v4O8jkhd6Mt2HpgZaziumJD8qk36FkI+IylasYd4=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JUusYbk2QgQvHJIMu6hvBLHchfnUsOJY/2hPvx3vBbz5tobfN0vHieBu+KKJBHhEQ
	 ERgzmQ5qcG2vBhLgqlUOPsCj2rF1q+XRDYcY3oM8L0LPKG4p4//FsZSZZ8VkVxpzqp
	 VV2DE/ARwUlF6viPbMucTcCiJuCq7ttAPbvnblPOAS24KZ5eLDEpmTI8f1l+ewkGbt
	 mx56uGxygm5yS+YhwgT1j+61CtznYDrPCD7qzZTIEF39uMSP9aWHCuqnr15CKotTT6
	 bDw7JQ2/bysQstb774Rluj92XmJgCVvuSdo4Mv03g/rIQf+zKvGqq5E4ruhQOm341g
	 mbVUp8+KS1JKA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5ED5E410E7;
	Wed,  1 Jul 2026 13:57:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4E0F7127
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 13:57:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2D3F3410E7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 13:57:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ErXDfq3KRQXk for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jul 2026 13:57:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=rppt@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 52951410B8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 52951410B8
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 52951410B8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 13:57:30 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id 91EBC60122;
 Wed,  1 Jul 2026 13:57:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF9FC1F000E9;
 Wed,  1 Jul 2026 13:57:24 +0000 (UTC)
From: "Mike Rapoport (Microsoft)" <rppt@kernel.org>
Date: Wed, 01 Jul 2026 16:57:18 +0300
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260701-b4-drivers-ethernet-v1-1-58776615db6e@kernel.org>
References: <20260701-b4-drivers-ethernet-v1-0-58776615db6e@kernel.org>
In-Reply-To: <20260701-b4-drivers-ethernet-v1-0-58776615db6e@kernel.org>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Manish Chopra <manishc@marvell.com>, 
 Paolo Abeni <pabeni@redhat.com>
Cc: Edward Cree <ecree.xilinx@gmail.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Sudarsana Kalluru <skalluru@marvell.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, Mike Rapoport <rppt@kernel.org>, 
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org, 
 linux-mm@kvack.org, linux-net-drivers@amd.com, netdev@vger.kernel.org
X-Mailer: b4 0.16-dev
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1782914248;
 bh=KN3v4O8jkhd6Mt2HpgZaziumJD8qk36FkI+IylasYd4=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc;
 b=KlniPm7g68QtWZ0ZI9P+lp3JUjV32CfOcL+P0rwGBBPnR7YemV6QARFIlMBom7Ft2
 hg+UXCYHwEMJfnINZ+cvQYZ2+Tx2E1sF9CLPJSZbS9/iJa9EAD3VFKNZHhuUfFv4h/
 bjenyY6mkL36a02MkyvLbUf8OWfNk5KqEgFxqkJpda74bg7w3btOfpXfB9Xrbv3Chq
 PE5b8Dsablj2qQqu/5Z0viSA4rkhgtGLq3C1kqL33o3SsCQ0rOotmd+azQFlkyCnqP
 wMq3kV+j7NIZUxi0pBzmzk/HNlVf2GeUrUj4tyvCR23R70TuTnD/ouuREl2EBNGope
 cPqa7hslPkgiQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20260515 header.b=KlniPm7g
Subject: [Intel-wired-lan] [PATCH 1/4] bnx2x: use kzalloc() to allocate mac
 filtering list
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
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:from_smtp,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	FREEMAIL_CC(0.00)[gmail.com,intel.com,marvell.com,kernel.org,lists.osuosl.org,vger.kernel.org,kvack.org,amd.com];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:manishc@marvell.com,m:pabeni@redhat.com,m:ecree.xilinx@gmail.com,m:przemyslaw.kitszel@intel.com,m:skalluru@marvell.com,m:anthony.l.nguyen@intel.com,m:rppt@kernel.org,m:linux-kernel@vger.kernel.org,m:linux-mm@kvack.org,m:linux-net-drivers@amd.com,m:netdev@vger.kernel.org,m:andrew@lunn.ch,m:ecreexilinx@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER(0.00)[rppt@kernel.org,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rppt@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8C7FD6EE6EC

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

