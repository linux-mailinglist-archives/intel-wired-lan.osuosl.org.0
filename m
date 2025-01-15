Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A3733A126AE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jan 2025 15:59:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1CF5E84821;
	Wed, 15 Jan 2025 14:59:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lTHzn-P2APO0; Wed, 15 Jan 2025 14:59:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7F93F84806
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736953157;
	bh=jqImDAXQZ1c6m3nAvKuvLOfUN6R/bGt56gL8WMl3RUg=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Lii31ik0udpzGWhPwwBBPFJ751iW7ed8uGeNPExEXODxvCWd+z0wT5lr6U57+hp1p
	 445veL22Yc3MA0MwPawwRBxJ5O6XP7yxV3vANMlUANUzgcyfiye5O56CUBX4WH7vOP
	 vm7ipWhd86N+xIbOgydsu7bptrypQbdhGhcMoUZJ38HL+dyvztRQy1mrfqwVOXFpbT
	 UIVxeRewC4fU9SbEDUIJfCkJWGj63UIAqWSBvgRR56LmZXNXOSJJF0fr3Gp8iwrHgY
	 B7plsNU3LWG80mNFk0N0gUb25Hxpp3wIJJqadyHnuMQT9VR94N2hYdtl/bAJ3TOnT2
	 DijTXfKTZtXcA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F93F84806;
	Wed, 15 Jan 2025 14:59:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 225F394B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jan 2025 14:59:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1097283774
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jan 2025 14:59:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KJ2Ii8XprVJB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jan 2025 14:59:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 41AA6847E7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 41AA6847E7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 41AA6847E7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jan 2025 14:59:14 +0000 (UTC)
X-CSE-ConnectionGUID: 0UDv3XDXTMu1Kvq33fpi/Q==
X-CSE-MsgGUID: NFhd6Nw3QJi7XS0BCxLJvw==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="37320385"
X-IronPort-AV: E=Sophos;i="6.13,206,1732608000"; d="scan'208";a="37320385"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2025 06:59:14 -0800
X-CSE-ConnectionGUID: tDEcJ+pIT/6IFim1fvi2PA==
X-CSE-MsgGUID: s2KFV/+3Q8u8cs4UnkQUQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,206,1732608000"; d="scan'208";a="104918805"
Received: from pkwapuli-mobl1.ger.corp.intel.com (HELO
 vbox-pkwap.ger.corp.intel.com) ([10.245.119.85])
 by orviesa009.jf.intel.com with ESMTP; 15 Jan 2025 06:59:11 -0800
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, dan.carpenter@linaro.org, yuehaibing@huawei.com,
 przemyslaw.kitszel@intel.com,
 Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Date: Wed, 15 Jan 2025 15:59:04 +0100
Message-ID: <20250115145904.7023-1-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.43.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736953155; x=1768489155;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Hj6bIC3mtXLykVYNSIKTjD3hXyxWOTzH3f+l3vfESQA=;
 b=hsWqHpTr/tUZ/rKCDO3QoxQH+F9+T7vLMjv1+eK31Pc07s3LP/f2y1jk
 czDWKresCZNmCwy3nmIyFwpknC0t1tEi2T5Zjk9oQAyuzOEa9gnF4Q7R2
 3njYYZWX116ObOEYN2bK8WpmneF3oec7ezBoz2HeYEMc1qZ5ob0Q2dtou
 GR1oGZBwt0N+mMOD2xfJy4+88ppMYKljahPfOHZKX+2BtBi9NrtM51aoB
 ZmVs95gAnVgqz7xcgT37agGwkmSSzrcbwrBhM4ni5y8nwfKyJO/bCIcu2
 pxPLCF8Ek57LdhiZszVssg4lg8jOiADA/PNzQRm0wNVbiLvneaUpe2ji8
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hsWqHpTr
Subject: [Intel-wired-lan] [PATCH iwl-next] ixgbe: Fix possible skb NULL
 pointer dereference
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

Check both skb NULL pointer dereference and error in ixgbe_put_rx_buffer().

Fixes: c824125cbb18 ("ixgbe: Fix passing 0 to ERR_PTR in ixgbe_run_xdp()")
Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 7236f20..c682c3d 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -2098,14 +2098,14 @@ static struct ixgbe_rx_buffer *ixgbe_get_rx_buffer(struct ixgbe_ring *rx_ring,
 
 static void ixgbe_put_rx_buffer(struct ixgbe_ring *rx_ring,
 				struct ixgbe_rx_buffer *rx_buffer,
-				struct sk_buff *skb,
-				int rx_buffer_pgcnt)
+				struct sk_buff *skb, int rx_buffer_pgcnt,
+				int xdp_res)
 {
 	if (ixgbe_can_reuse_rx_page(rx_buffer, rx_buffer_pgcnt)) {
 		/* hand second half of page back to the ring */
 		ixgbe_reuse_rx_page(rx_ring, rx_buffer);
 	} else {
-		if (!IS_ERR(skb) && IXGBE_CB(skb)->dma == rx_buffer->dma) {
+		if (skb && !xdp_res && IXGBE_CB(skb)->dma == rx_buffer->dma) {
 			/* the page has been released from the ring */
 			IXGBE_CB(skb)->page_released = true;
 		} else {
@@ -2415,7 +2415,8 @@ static int ixgbe_clean_rx_irq(struct ixgbe_q_vector *q_vector,
 			break;
 		}
 
-		ixgbe_put_rx_buffer(rx_ring, rx_buffer, skb, rx_buffer_pgcnt);
+		ixgbe_put_rx_buffer(rx_ring, rx_buffer, skb, rx_buffer_pgcnt,
+				    xdp_res);
 		cleaned_count++;
 
 		/* place incomplete frames back on ring for completion */
-- 
2.43.0

