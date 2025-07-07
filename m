Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A62AFBA57
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Jul 2025 20:05:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6503C83EAC;
	Mon,  7 Jul 2025 18:05:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5kozhMnariSC; Mon,  7 Jul 2025 18:05:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AE17083EC7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751911535;
	bh=JEmWEpxhOD1z6zGsch4in/Gj59Ug9axXAUztg6+oJPc=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ua9Ub6sgxa9wMlnpoqDXBgY71gx523qQAtdX0NXz6yAzdiQEePq9soMZfyD+rFU2T
	 xXZOg0h/7foZAENP5i0x3RrBIvtbWq1PwPrUPp47dRtSRDU10QMjMVNfGGwGFWd0rE
	 5CJdVw/KwK6P9syYPLYpYKDpO6zZ7zCyK9Wn6E80yFi9GMu0vCyox1tH3hmrI7gwHY
	 KNuKBsM7Rdp5ybVxW9ciZMaUWAdKJ+EpGpVPNjZQ+NICMwg49ORyq+wQf7F8hDFxqc
	 ZbUFo1apK5XITqNI/CpVHrcOubLV/1kTy9dqeGnp75ioEe0xaCVUpP4JHy01xd/DcG
	 LlF6475Q2iqZw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AE17083EC7;
	Mon,  7 Jul 2025 18:05:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 793B01BF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 18:02:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5F87B4059F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 18:02:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VmOKv8pu2Kd3 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Jul 2025 18:02:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.119.213.154;
 helo=smtp-fw-52004.amazon.com;
 envelope-from=prvs=276f27600=ytohnuki@amazon.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 778514007B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 778514007B
Received: from smtp-fw-52004.amazon.com (smtp-fw-52004.amazon.com
 [52.119.213.154])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 778514007B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 18:02:09 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="6.16,295,1744070400"; d="scan'208";a="315409596"
Received: from iad12-co-svc-p1-lb1-vlan2.amazon.com (HELO
 smtpout.prod.us-west-2.prod.farcaster.email.amazon.dev) ([10.43.8.2])
 by smtp-border-fw-52004.iad7.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jul 2025 18:02:05 +0000
Received: from EX19MTAUWA001.ant.amazon.com [10.0.38.20:28506]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.38.16:2525]
 with esmtp (Farcaster)
 id b7392d5e-6d2c-480f-a030-0f0585b05e06; Mon, 7 Jul 2025 18:02:05 +0000 (UTC)
X-Farcaster-Flow-ID: b7392d5e-6d2c-480f-a030-0f0585b05e06
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWA001.ant.amazon.com (10.250.64.204) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1544.14;
 Mon, 7 Jul 2025 18:02:04 +0000
Received: from c889f3b07a0a.amazon.com (10.106.82.15) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1544.14;
 Mon, 7 Jul 2025 18:02:02 +0000
From: Yuto Ohnuki <ytohnuki@amazon.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>
CC: Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <ytohnuki@amazon.com>, Kohei Enju
 <enjuk@amazon.com>
Date: Mon, 7 Jul 2025 19:01:17 +0100
Message-ID: <20250707180116.44657-2-ytohnuki@amazon.com>
X-Mailer: git-send-email 2.50.0
MIME-Version: 1.0
X-Originating-IP: [10.106.82.15]
X-ClientProxiedBy: EX19D043UWC003.ant.amazon.com (10.13.139.240) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Mon, 07 Jul 2025 18:05:33 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1751911329; x=1783447329;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JEmWEpxhOD1z6zGsch4in/Gj59Ug9axXAUztg6+oJPc=;
 b=exGgoLyT6hjFXI5Aqp/Ie7R0A+CrrVozT/iOYE57QeDuz7xGWrtT/XcU
 oWMHGhVaXrRLHvYUlDyXyx/6uHB8BIRPtNP+3E872x4YKFUcdG2Hs7N7I
 lTXHpDC+pojvWsVbtE4dw+zVuiGTxxj3zLOVYeb+SbXno65n3p8V4z75p
 6zPGVbqBaI6i0ogGe9DB9bN6FMKlsuTddID9t58EdI1mDj9shuymTjhAd
 4/KrRtxQUHYdeGQ27UjVArZJWYqYr5djLKQnJZn2WoN5JoT6vCVMsXDMh
 ph0FQr1ysEPcnWVs1WDYjYTug/2cEGxxsfBYOfXYASX0X8G4FhgshmNyi
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=exGgoLyT
Subject: [Intel-wired-lan] [PATCH iwl-next v1] igbvf: remove unused fields
 from struct igbvf_adapter
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

Remove following unused fields from struct igbvf_adapter that are never
referenced in the driver.

- blink_timer
- eeprom_wol
- fc_autoneg
- int_mode
- led_status
- mng_vlan_id
- polling_interval
- rx_dma_failed
- test_icr
- test_rx_ring
- test_tx_ring
- tx_dma_failed
- tx_fifo_head
- tx_fifo_size
- tx_head_addr

Also removed the following fields from struct igbvf_adapter since they
are never read or used after initialization by igbvf_probe() and igbvf_sw_init().

- bd_number
- rx_abs_int_delay
- tx_abs_int_delay
- rx_int_delay
- tx_int_delay

This changes simplify the igbvf driver by removing unused fields, which
improves maintenability.

Tested-by: Kohei Enju <enjuk@amazon.com>
Signed-off-by: Yuto Ohnuki <ytohnuki@amazon.com>
---
 drivers/net/ethernet/intel/igbvf/igbvf.h  | 25 -----------------------
 drivers/net/ethernet/intel/igbvf/netdev.c |  7 -------
 2 files changed, 32 deletions(-)

diff --git a/drivers/net/ethernet/intel/igbvf/igbvf.h b/drivers/net/ethernet/intel/igbvf/igbvf.h
index ca6e44245a7b..a61e8eeb4121 100644
--- a/drivers/net/ethernet/intel/igbvf/igbvf.h
+++ b/drivers/net/ethernet/intel/igbvf/igbvf.h
@@ -154,7 +154,6 @@ struct igbvf_ring {
 /* board specific private data structure */
 struct igbvf_adapter {
 	struct timer_list watchdog_timer;
-	struct timer_list blink_timer;
 
 	struct work_struct reset_task;
 	struct work_struct watchdog_task;
@@ -162,10 +161,7 @@ struct igbvf_adapter {
 	const struct igbvf_info *ei;
 
 	unsigned long active_vlans[BITS_TO_LONGS(VLAN_N_VID)];
-	u32 bd_number;
 	u32 rx_buffer_len;
-	u32 polling_interval;
-	u16 mng_vlan_id;
 	u16 link_speed;
 	u16 link_duplex;
 
@@ -183,9 +179,6 @@ struct igbvf_adapter {
 	unsigned int restart_queue;
 	u32 txd_cmd;
 
-	u32 tx_int_delay;
-	u32 tx_abs_int_delay;
-
 	unsigned int total_tx_bytes;
 	unsigned int total_tx_packets;
 	unsigned int total_rx_bytes;
@@ -193,23 +186,15 @@ struct igbvf_adapter {
 
 	/* Tx stats */
 	u32 tx_timeout_count;
-	u32 tx_fifo_head;
-	u32 tx_head_addr;
-	u32 tx_fifo_size;
-	u32 tx_dma_failed;
 
 	/* Rx */
 	struct igbvf_ring *rx_ring;
 
-	u32 rx_int_delay;
-	u32 rx_abs_int_delay;
-
 	/* Rx stats */
 	u64 hw_csum_err;
 	u64 hw_csum_good;
 	u64 rx_hdr_split;
 	u32 alloc_rx_buff_failed;
-	u32 rx_dma_failed;
 
 	unsigned int rx_ps_hdr_size;
 	u32 max_frame_size;
@@ -229,26 +214,16 @@ struct igbvf_adapter {
 	struct e1000_vf_stats stats;
 	u64 zero_base;
 
-	struct igbvf_ring test_tx_ring;
-	struct igbvf_ring test_rx_ring;
-	u32 test_icr;
-
 	u32 msg_enable;
 	struct msix_entry *msix_entries;
-	int int_mode;
 	u32 eims_enable_mask;
 	u32 eims_other;
 	u32 int_counter0;
 	u32 int_counter1;
 
-	u32 eeprom_wol;
 	u32 wol;
 	u32 pba;
 
-	bool fc_autoneg;
-
-	unsigned long led_status;
-
 	unsigned int flags;
 	unsigned long last_reset;
 };
diff --git a/drivers/net/ethernet/intel/igbvf/netdev.c b/drivers/net/ethernet/intel/igbvf/netdev.c
index e55dd9345833..c5e677d07a20 100644
--- a/drivers/net/ethernet/intel/igbvf/netdev.c
+++ b/drivers/net/ethernet/intel/igbvf/netdev.c
@@ -1633,10 +1633,6 @@ static int igbvf_sw_init(struct igbvf_adapter *adapter)
 	adapter->max_frame_size = netdev->mtu + ETH_HLEN + ETH_FCS_LEN;
 	adapter->min_frame_size = ETH_ZLEN + ETH_FCS_LEN;
 
-	adapter->tx_int_delay = 8;
-	adapter->tx_abs_int_delay = 32;
-	adapter->rx_int_delay = 0;
-	adapter->rx_abs_int_delay = 8;
 	adapter->requested_itr = 3;
 	adapter->current_itr = IGBVF_START_ITR;
 
@@ -2712,7 +2708,6 @@ static int igbvf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	struct igbvf_adapter *adapter;
 	struct e1000_hw *hw;
 	const struct igbvf_info *ei = igbvf_info_tbl[ent->driver_data];
-	static int cards_found;
 	int err;
 
 	err = pci_enable_device_mem(pdev);
@@ -2784,8 +2779,6 @@ static int igbvf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	netdev->watchdog_timeo = 5 * HZ;
 	strscpy(netdev->name, pci_name(pdev), sizeof(netdev->name));
 
-	adapter->bd_number = cards_found++;
-
 	netdev->hw_features = NETIF_F_SG |
 			      NETIF_F_TSO |
 			      NETIF_F_TSO6 |
-- 
2.47.1




Amazon Web Services EMEA SARL, 38 avenue John F. Kennedy, L-1855 Luxembourg, R.C.S. Luxembourg B186284

Amazon Web Services EMEA SARL, Irish Branch, One Burlington Plaza, Burlington Road, Dublin 4, Ireland, branch registration number 908705



