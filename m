Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D35D3C12E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jan 2026 08:57:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D6F0085732;
	Tue, 20 Jan 2026 07:57:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xJhm1R8Z_zqi; Tue, 20 Jan 2026 07:57:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 02D3E8572F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768895857;
	bh=dHNPCBS8JZczk4mj/RprkZdbFxtHFACE5Wea4DggNG8=;
	h=To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=GvGvDcKZeuS5h/5zME1+J/LA9Scv/5gIccNohpnTUBmh0zasMgpn5B8k/AZITyqez
	 xraRPcx9NOpOwIsAbnbuf+qgkGplm3Ulaa8TJ/MLNl4JxCCbtSvbjX9AgA9NafgKTE
	 uThr/cXViP6+xUZ2JsJ7gpo+ynjvFLxG53M/wKZhpwlJwC7MlK1d0GDBeMu71HCZkW
	 EODqzLFGrQw7sxWkI7d2l8uZ0HDkkKfQpF0pHYLXHFrpQF/xKGar7yxnMjD9uOFcLl
	 MxoirFn+Q+WzfS6eGry5Lj7r10+a1zciJ5IzM9DP7uqV9gwh3ZXTOpSsy606p2y6gd
	 jaYl84ynDnPNQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 02D3E8572F;
	Tue, 20 Jan 2026 07:57:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6EA14122
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 07:57:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5D60242D9B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 07:57:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B8Mpwxw7LZcG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jan 2026 07:57:33 +0000 (UTC)
X-Greylist: delayed 303 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 20 Jan 2026 07:57:32 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 29EF440042
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 29EF440042
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.136.65.227;
 helo=mta-65-227.siemens.flowmailer.net;
 envelope-from=fm-1333436-202601200752265cb710d0dc0002078c-pjelgu@rts-flowmailer.siemens.com;
 receiver=<UNKNOWN> 
Received: from mta-65-227.siemens.flowmailer.net
 (mta-65-227.siemens.flowmailer.net [185.136.65.227])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 29EF440042
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 07:57:32 +0000 (UTC)
Received: by mta-65-227.siemens.flowmailer.net with ESMTPSA id
 202601200752265cb710d0dc0002078c
 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jan 2026 08:52:26 +0100
To: aleksandr.loktionov@intel.com, jacob.e.keller@intel.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Cc: yoong.siang.song@intel.com, intel-wired-lan@lists.osuosl.org,
 vivek.behera@siemens.com
Date: Tue, 20 Jan 2026 08:52:16 +0100
Message-Id: <20260120075216.2260333-1-vivek.behera@siemens.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-1333436:519-21489:flowmailer
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; s=fm1; 
 d=siemens.com; i=vivek.behera@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=dHNPCBS8JZczk4mj/RprkZdbFxtHFACE5Wea4DggNG8=;
 b=LKzSYHgRAlP/g83Cw/NegIBrA9IztXhM54sn8RB+TNbixsq6YQU2lJmbMboriQVZy2jL+q
 8nFkgLDNTWMJIjPmUzrEpRevOCx6Z25EULT/ClGH6QA2HRfzfoGNTJCcDKH0N0pJ39aH4r6G
 /ib+cyWNeZJP4BGE5RkDCS2BB61fsCmg3fnp05E1W9oDWA8vheXgCrcYqqbYrCqDIFFaQbqD
 QGvM9zTd4PSb7/LXpjpTaesdCoYnwkEgbI37hVYdkosbv5W1Ho2HTAesrw/zqVDTzTRX75ee
 AgaHVfv4dPFfXrB3IKUBmQfRIi3Del16Mdgtddg3h6GYbn+w11WmMoMw==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=vivek.behera@siemens.com
 header.a=rsa-sha256 header.s=fm1 header.b=LKzSYHgR
Subject: [Intel-wired-lan] [PATCH iwl-net v11] igc: Fix trigger of incorrect
 irq in igc_xsk_wakeup function
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
From: Vivek Behera via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Vivek Behera <vivek.behera@siemens.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch addresses the issue where the igc_xsk_wakeup function
was triggering an incorrect IRQ for tx-0 when the i226 is configured
with only 2 combined queues or in an environment with 2 active CPU cores.
This prevented XDP Zero-copy send functionality in such split IRQ
configurations.

The fix implements the correct logic for extracting q_vectors saved
during rx and tx ring allocation and utilizes flags provided by the
ndo_xsk_wakeup API to trigger the appropriate IRQ.

Fixes: fc9df2a0b520 ("igc: Enable RX via AF_XDP zero-copy")
Fixes: 15fd021bc427 ("igc: Add Tx hardware timestamp request for AF_XDP zero-copy packet")
Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
Reviewed-by: Jacob Keller <jacob.keller@intel.com>
Reviewed-by: Aleksandr loktinov <aleksandr.loktionov@intel.com>
Reviewed-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
---
v1: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore.kernel.org%2Fintel-wired-lan%2FAS1PR10MB5392B7268416DB8A1624FDB88FA7A%40AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM%2F&data=05%7C02%7Cvivek.behera%40siemens.com%7Cb609a859d19b47e8f47808de38d77627%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C639010695226787962%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=S1060xzCOGrJo0cO2enNhDmCIJUcCLZd%2F%2BmKLByazm8%3D&reserved=0
v2: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore.kernel.org%2Fintel-wired-lan%2FAS1PR10MB539280B1427DA0ABE9D65E628FA5A%40AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM%2F&data=05%7C02%7Cvivek.behera%40siemens.com%7Cb609a859d19b47e8f47808de38d77627%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C639010695226846016%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=ksDVfndVlbafyexZ2%2B3j9GccO9hupybvtl1twZs5OSk%3D&reserved=0
v3: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore.kernel.org%2Fintel-wired-lan%2FIA3PR11MB8986E4ACB7F264CF2DD1D750E5A0A%40IA3PR11MB8986.namprd11.prod.outlook.com%2F&data=05%7C02%7Cvivek.behera%40siemens.com%7Cb609a859d19b47e8f47808de38d77627%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C639010695226890990%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=zEWhj7N2%2BmwsShmoy1ACAjb3vi7yJgbA077fISIOZiM%3D&reserved=0
v4: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore.kernel.org%2Fintel-wired-lan%2FAS1PR10MB53926CB955FBD4F9F4A018818FA0A%40AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM%2F&data=05%7C02%7Cvivek.behera%40siemens.com%7Cb609a859d19b47e8f47808de38d77627%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C639010695226933538%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=23aTM4TNsnyzoS%2FpSM1GcluaWzLPNbrPKEo%2BOrm9hZQ%3D&reserved=0
v5: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore.kernel.org%2Fintel-wired-lan%2FAS1PR10MB5392FCA415A38B9DD7BB5F218FA0A%40AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM%2F&data=05%7C02%7Cvivek.behera%40siemens.com%7Cb609a859d19b47e8f47808de38d77627%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7C639010695227205026%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=JdY3aHzIcIWtir9fAV%2BMELNWtiyLJYRU7IMxLZ0mPqQ%3D&reserved=0
v6: https://lore.kernel.org/intel-wired-lan/20251211173916.23951-1-vivek.behera@siemens.com/
v7: https://lore.kernel.org/intel-wired-lan/20251212163208.137164-1-vivek.behera@siemens.com/
v8: https://lore.kernel.org/intel-wired-lan/20251215122052.412327-1-vivek.behera@siemens.com/
v9: https://lore.kernel.org/intel-wired-lan/20251220110009.137245-1-vivek.behera@siemens.com/
v10: https://lore.kernel.org/intel-wired-lan/20260117150753.2088857-1-vivek.behera@siemens.com/
changelog:
v1
- Inital description of the Bug and steps to reproduce with RTC Testbench
- Test results after applying the patch
v1 -> v2
- Handling of RX and TX Wakeup in igc_xsk_wakeup for a split IRQ configuration
- Removal of igc_trigger_rxtxq_interrupt (now redundant)
- Added flag to igc_xsk_wakeup function call in igc_ptp_free_tx_buffer
v2 -> v3
- Added 'Fixes:' tags for the relevant commits.
- Added reviewer
v3 -> v4
- Added reviewer
v4 -> v5
- Updated comment style from multi-star to standard linux convention
v5 -> v6
- Resolve formatting issues highlighted by reviewers
- Try to include version histroy as defined in netdev guidelines
- Included review suggestions from Przemyslaw
- Added reviewers
v6 -> v7
- Included review suggestions from Przemyslaw missed in v6
v7 -> v8
- Modified sequence to complete all error checks for rx and tx
  before updating napi states and triggering irq
v8 -> v9
- Included review feedback and suggestions from Tony and Siang
v9 -> v10
- Introduced a simplified logic for sequential check for RX and TX
v10 -> v11
- Improved explanation of implemented logic in comment block
---
 drivers/net/ethernet/intel/igc/igc_main.c | 34 ++++++++++++++++-------
 drivers/net/ethernet/intel/igc/igc_ptp.c  |  3 +-
 2 files changed, 26 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 7aafa60ba0c8..0a2673cf7ece 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6908,28 +6908,29 @@ static int igc_xdp_xmit(struct net_device *dev, int num_frames,
 	return nxmit;
 }
 
-static void igc_trigger_rxtxq_interrupt(struct igc_adapter *adapter,
-					struct igc_q_vector *q_vector)
+static u32 igc_sw_irq_prep(struct igc_q_vector *q_vector)
 {
-	struct igc_hw *hw = &adapter->hw;
 	u32 eics = 0;
 
-	eics |= q_vector->eims_value;
-	wr32(IGC_EICS, eics);
+	if (!napi_if_scheduled_mark_missed(&q_vector->napi))
+		eics = q_vector->eims_value;
+
+	return eics;
 }
 
 int igc_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags)
 {
 	struct igc_adapter *adapter = netdev_priv(dev);
-	struct igc_q_vector *q_vector;
+	struct igc_hw *hw = &adapter->hw;
 	struct igc_ring *ring;
+	u32 eics = 0;
 
 	if (test_bit(__IGC_DOWN, &adapter->state))
 		return -ENETDOWN;
 
 	if (!igc_xdp_is_enabled(adapter))
 		return -ENXIO;
-
+	/* Check if queue_id is valid. Tx and Rx queue numbers are always same */
 	if (queue_id >= adapter->num_rx_queues)
 		return -EINVAL;
 
@@ -6938,9 +6939,22 @@ int igc_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags)
 	if (!ring->xsk_pool)
 		return -ENXIO;
 
-	q_vector = adapter->q_vector[queue_id];
-	if (!napi_if_scheduled_mark_missed(&q_vector->napi))
-		igc_trigger_rxtxq_interrupt(adapter, q_vector);
+	if (flags & XDP_WAKEUP_RX)
+		eics |= igc_sw_irq_prep(ring->q_vector);
+
+	if (flags & XDP_WAKEUP_TX) {
+		/* If IGC_FLAG_QUEUE_PAIRS is active, the q_vector
+		 * and NAPI is shared between RX and TX.
+		 * If NAPI is already running it would be marked as missed
+		 * from the RX path, making this TX call a NOP
+		 */
+		ring = adapter->tx_ring[queue_id];
+		eics |= igc_sw_irq_prep(ring->q_vector);
+	}
+
+	if (eics)
+		/* Cause software interrupt */
+		wr32(IGC_EICS, eics);
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index b7b46d863bee..df2e500a4d7e 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -550,7 +550,8 @@ static void igc_ptp_free_tx_buffer(struct igc_adapter *adapter,
 		tstamp->buffer_type = 0;
 
 		/* Trigger txrx interrupt for transmit completion */
-		igc_xsk_wakeup(adapter->netdev, tstamp->xsk_queue_index, 0);
+		igc_xsk_wakeup(adapter->netdev, tstamp->xsk_queue_index,
+			       XDP_WAKEUP_TX);
 
 		return;
 	}
-- 
2.34.1

