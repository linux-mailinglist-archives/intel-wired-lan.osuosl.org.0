Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aCSGKTuacWngJgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jan 2026 04:32:11 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D1C615B5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jan 2026 04:32:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3015342B3F;
	Thu, 22 Jan 2026 03:32:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s_3PDy5FL2To; Thu, 22 Jan 2026 03:32:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 98C5742B3B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769052727;
	bh=ffflAwULRkleIYICFHP/WFtQuZMy6nCm9F9CV+XYt/M=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ug6ulRixBXivi2jFoe8jd0nsqoSRpLzQfIZBIqHbRJBs5ffxCOD/u2Z+QCGQbWVzU
	 InCez+r43Ws52sx1vljbK4Xsk3zj9+efzS80dPotb2dUoZWUglp8wOwz/5dN3ckYaq
	 sZiWGTHSS7fOXAD4ySeK+MVu5w7OrD+CbmrJTFyxmw99mmgmoT7KiQzRvTF/5YebkM
	 uftqmCvLqli38WLPY6/FQtMNXJcVGR2sP0OSuyaD3tAjX/a5Hlm2XdCHgmQN/EO63f
	 PILOMkWtNbh/SQOD90/F8dSTyLfknr5uiAEJeCIRUhWsX/7NrAW3ARydn+x6EXpWld
	 iFCZSrHpkSEjg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 98C5742B3B;
	Thu, 22 Jan 2026 03:32:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6ACC5122
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 03:32:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 457A841E26
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 03:32:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MWkt_X5Hg25U for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Jan 2026 03:32:04 +0000 (UTC)
X-Greylist: delayed 305 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 22 Jan 2026 03:32:02 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6178A4130B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6178A4130B
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.224.81.205;
 helo=mail-m81205.xmail.ntesmail.com; envelope-from=zilin@seu.edu.cn;
 receiver=<UNKNOWN> 
Received: from mail-m81205.xmail.ntesmail.com (mail-m81205.xmail.ntesmail.com
 [156.224.81.205])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6178A4130B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jan 2026 03:32:01 +0000 (UTC)
Received: from LAPTOP-N070L597.localdomain (unknown [223.112.146.162])
 by smtp.qiye.163.com (Hmail) with ESMTP id 318765b89;
 Thu, 22 Jan 2026 11:26:48 +0800 (GMT+08:00)
From: Zilin Guan <zilin@seu.edu.cn>
To: anthony.l.nguyen@intel.com
Cc: przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, jianhao.xu@seu.edu.cn,
 Zilin Guan <zilin@seu.edu.cn>
Date: Thu, 22 Jan 2026 03:26:44 +0000
Message-Id: <20260122032644.183754-1-zilin@seu.edu.cn>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9be3bd8a0103a1kunm23da51ae25240
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
 tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDSEIdVkxPHk1DH00fGU5LGFYeHw5VEwETFhoSFy
 QUDg9ZV1kYEgtZQVlJSUhVSkpJVUpPTVVKTUlZV1kWGg8SFR0UWUFZT0tIVUpLSUhOQ0NVSktLVU
 tZBg++
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 b=g5rPP77AIAadHAgYTZtwYjnRmlYV8BfmdytF13ibzbRfLNRYo+N2ZiuuBTT/BPd2Ga+itEls8A3dlRwyPtZaIutl/yw422dm8A08PmPG923QRndV0C6v3rQ+ifFMzR7CGgGMPQdGQe0DVTc+p4vkFZtLbUyx5aS44cNf+/4bE/A=;
 c=relaxed/relaxed; s=default; d=seu.edu.cn; v=1; 
 bh=ffflAwULRkleIYICFHP/WFtQuZMy6nCm9F9CV+XYt/M=;
 h=date:mime-version:subject:message-id:from;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=seu.edu.cn
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=seu.edu.cn header.i=@seu.edu.cn header.a=rsa-sha256
 header.s=default header.b=g5rPP77A
Subject: [Intel-wired-lan] [PATCH net] ice: Fix memory leak in
 ice_set_ringparam()
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[seu.edu.cn : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[zilin@seu.edu.cn,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:jianhao.xu@seu.edu.cn,m:zilin@seu.edu.cn,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[seu.edu.cn:mid,seu.edu.cn:email,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[zilin@seu.edu.cn,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 21D1C615B5
X-Rspamd-Action: no action

In ice_set_ringparam, tx_rings and xdp_rings are allocated before
rx_rings. If the allocation of rx_rings fails, the code jumps to
the done label leaking both tx_rings and xdp_rings. Furthermore, if
the setup of an individual Rx ring fails during the loop, the code jumps
to the free_tx label which releases tx_rings but leaks xdp_rings.

Fix this by introducing a free_xdp label and updating the error paths to
ensure both xdp_rings and tx_rings are properly freed if rx_rings
allocation or setup fails.

Compile tested only. Issue found using a prototype static analysis tool
and code review.

Fixes: fcea6f3da546 ("ice: Add stats and ethtool support")
Fixes: efc2214b6047 ("ice: Add support for XDP")
Signed-off-by: Zilin Guan <zilin@seu.edu.cn>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 969d4f8f9c02..1643b118144a 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3318,7 +3318,7 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring,
 	rx_rings = kcalloc(vsi->num_rxq, sizeof(*rx_rings), GFP_KERNEL);
 	if (!rx_rings) {
 		err = -ENOMEM;
-		goto done;
+		goto free_xdp;
 	}
 
 	ice_for_each_rxq(vsi, i) {
@@ -3345,7 +3345,7 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring,
 			}
 			kfree(rx_rings);
 			err = -ENOMEM;
-			goto free_tx;
+			goto free_xdp;
 		}
 	}
 
@@ -3398,6 +3398,13 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring,
 	}
 	goto done;
 
+free_xdp:
+	if (xdp_rings) {
+		ice_for_each_xdp_txq(vsi, i)
+			ice_free_tx_ring(&xdp_rings[i]);
+		kfree(xdp_rings);
+	}
+
 free_tx:
 	/* error cleanup if the Rx allocations failed after getting Tx */
 	if (tx_rings) {
-- 
2.34.1

