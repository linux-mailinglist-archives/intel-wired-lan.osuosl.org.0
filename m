Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D7436D38F45
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Jan 2026 16:13:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E15C413CD;
	Sat, 17 Jan 2026 15:13:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b5ohWmFrGC0K; Sat, 17 Jan 2026 15:13:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2BFDE413C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768662805;
	bh=EVpPnF8F+n2o384/KL5p/8n+/o6K5JaZb4ddTgeDIzg=;
	h=To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=NhA2OhMf0OWc6QDSr04fvkOVyHosGQEQcqUzfksvt0r63jlZUa9LKG58CblFW4toT
	 r5dIQ+hMUQoIy9M+Q1QuX+8ccttPMjHBMvavsSk+XJtm0q1kdkupmG7YzXIThd+VCT
	 3UtrMZerkWWy3lmBSokZKlTao3r2I7gzpi11uDlMQeOQkMIoGYHjdJi5mn227mgG8S
	 kqU/jp6ul7bBBruLGDXm5+ZR4heB6Qk8JaAK0EBKJcTQyhHT8Uxpdp9FMzicmTxqUk
	 1SSarWVY1/xsUPyn/AgXLfic1GHgwAx6bcHwMOUgyFMRidLDr9gLSH3mFCZofXS5dE
	 GpkGZmauNsrDQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2BFDE413C9;
	Sat, 17 Jan 2026 15:13:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8F38F2CC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Jan 2026 15:13:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7707760A85
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Jan 2026 15:13:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NgWyvSQ0pn1k for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Jan 2026 15:13:22 +0000 (UTC)
X-Greylist: delayed 303 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 17 Jan 2026 15:13:20 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5B1746079A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B1746079A
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.136.65.225;
 helo=mta-65-225.siemens.flowmailer.net;
 envelope-from=fm-1333436-2026011715081383cfdcecf20002079d-nv2ti8@rts-flowmailer.siemens.com;
 receiver=<UNKNOWN> 
Received: from mta-65-225.siemens.flowmailer.net
 (mta-65-225.siemens.flowmailer.net [185.136.65.225])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5B1746079A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Jan 2026 15:13:20 +0000 (UTC)
Received: by mta-65-225.siemens.flowmailer.net with ESMTPSA id
 2026011715081383cfdcecf20002079d
 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Jan 2026 16:08:14 +0100
To: aleksandr.loktionov@intel.com, jacob.e.keller@intel.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Cc: yoong.siang.song@intel.com, intel-wired-lan@lists.osuosl.org,
 vivek.behera@siemens.com
Date: Sat, 17 Jan 2026 16:07:53 +0100
Message-Id: <20260117150753.2088857-1-vivek.behera@siemens.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-1333436:519-21489:flowmailer
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; s=fm1; 
 d=siemens.com; i=vivek.behera@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=EVpPnF8F+n2o384/KL5p/8n+/o6K5JaZb4ddTgeDIzg=;
 b=LsmymRkoWTe/h+0bTcs0J613bhzK/lvdyOrtZaREF9etPvzDtNV5Zav8boy30oiws3hC6P
 vGQzWn7yyXsMbEtS6zrt6J+jCNK92JVSgovtNnKVQHbiCFEjJze8VtpXSMmcPMSWoStjI4WN
 G28wtbfP5VhPDsd0ib3hDdT8Sqgkdwa0omHDSUfz3cR8Cjn0n/U598gg1g34xC5E1R5jjEnf
 8OIq2AJ1FHCoqKyrCwF+W4IuIVKzCTMZZLs4WzgrtkrCgWWUMq/NEQxC6ga9Wr7R225sF3GV
 PREWd/j86RKQfgFKmNqmchuzxM59sujttyXo6IRsiQ03j0Qjcmbtrt4w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=vivek.behera@siemens.com
 header.a=rsa-sha256 header.s=fm1 header.b=LsmymRko
Subject: [Intel-wired-lan] [PATCH iwl-net v10] igc: Fix trigger of incorrect
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
---
 drivers/net/ethernet/intel/igc/igc_main.c | 32 ++++++++++++++++-------
 drivers/net/ethernet/intel/igc/igc_ptp.c  |  3 ++-
 2 files changed, 24 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 7aafa60ba0c8..16a61d432296 100644
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
 
@@ -6938,9 +6939,20 @@ int igc_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags)
 	if (!ring->xsk_pool)
 		return -ENXIO;
 
-	q_vector = adapter->q_vector[queue_id];
-	if (!napi_if_scheduled_mark_missed(&q_vector->napi))
-		igc_trigger_rxtxq_interrupt(adapter, q_vector);
+	if (flags & XDP_WAKEUP_RX)
+		eics |= igc_sw_irq_prep(ring->q_vector);
+
+	if (flags & XDP_WAKEUP_TX) {
+		/* for IGC_FLAG_QUEUE_PAIRS, this will be NOP as NAPI has
+		 * been already marked with NAPIF_STATE_MISSED
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

