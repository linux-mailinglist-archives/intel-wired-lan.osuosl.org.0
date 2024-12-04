Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A4C489E396E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Dec 2024 13:03:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 35F7E81348;
	Wed,  4 Dec 2024 12:03:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O91tTbEQjpLU; Wed,  4 Dec 2024 12:03:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E391581358
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733313783;
	bh=c3G9pzSqjeFm2r7efAk2tQeVTb1q+yn5VP7TgTN9CXI=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=0Tt6PpVNWiICGuj0+aJeLuEWIYloxgwXMx6DdF5WT8UmFqdT2t3NdlDX7D/kLs697
	 7xqwkLzbdYab6TYhlwxE/zEu7L14hwluhCcspJdqmZBfIQZXVnSAdt7940tFquL3xc
	 zkhlVvf0GtDLvLDFBPpBof3aPqxFbYvedyIBTQHru9iuhbQmMfg7sUfwywLQHGzrbl
	 R8mKgbDoyadcuQy2QMJLPy1OTMaJNotK1zD4jeSb1L/oneLwbQ9zVN0uLoa/TgoFaN
	 2LJnQ50l1lyTy9DthhLBfgfTy+bQXZh+uLQWpR0JnAGT/k9JhYnvfdfsMkJe01tCNK
	 IXV8rt5pvVseg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E391581358;
	Wed,  4 Dec 2024 12:03:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 264391DD1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 12:03:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0A49D406C8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 12:03:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4pJoYedC9Knz for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Dec 2024 12:03:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=yoong.siang.song@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9EE034068D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9EE034068D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9EE034068D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 12:03:00 +0000 (UTC)
X-CSE-ConnectionGUID: UJZx5uzZTEaPww9LRvywhQ==
X-CSE-MsgGUID: KSggOS7hSNWVuTB9cu39yw==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="32917601"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="32917601"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 04:03:00 -0800
X-CSE-ConnectionGUID: 90P/YrGBQ2+mJIvejfkefA==
X-CSE-MsgGUID: iiK1cf2tRxOC0rlvxBge2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="116993058"
Received: from p12ill20yoongsia.png.intel.com ([10.88.227.28])
 by fmviesa002.fm.intel.com with ESMTP; 04 Dec 2024 04:02:56 -0800
From: Song Yoong Siang <yoong.siang.song@intel.com>
To: Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Richard Cochran <richardcochran@gmail.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org
Date: Wed,  4 Dec 2024 20:02:33 +0800
Message-Id: <20241204120233.3148482-1-yoong.siang.song@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733313781; x=1764849781;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dP22molM0C3gMBPOsLS2Nb47YqyQOf5PUwiKuRmgVG8=;
 b=AekKqKbGu9Os8pddxBVaCmx2TvO9jygxkGZN8vCcAgaf4tbp1e+6yIr/
 jTP0aRS1YsqwQAkxlZzH1iey96xlj+WP+TK+Vl+8f2wTGhoMLMMgAzoaX
 GYVNytTJALXC4vpFdzqD1DvckkrnbEDEv0xnK0TkAnFTmOXVwlyPmy3Op
 25PQuPg4lKPE6c2b6samnj16uhvN+SZWiz5R3PUciFdzHs9d2IVojiTVh
 YikP5T9HXP8Y5ZMsXP9o44n1HlTCKgZ/MbINTxsImtq6kcOUexAJhXnjY
 euUFrmNF3rhL0mpwuqQE5+InP2+GgTSOqbGMBSb9ioVQJ2Zot9umioazE
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AekKqKbG
Subject: [Intel-wired-lan] [PATCH iwl-next 1/1] igc: Improve XDP_SETUP_PROG
 process
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

Improve XDP_SETUP_PROG process by avoiding unnecessary link down/up event
and hardware device reset.

Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h      |   2 +
 drivers/net/ethernet/intel/igc/igc_main.c | 138 ++++++++++++++++++++++
 drivers/net/ethernet/intel/igc/igc_xdp.c  |   4 +-
 3 files changed, 142 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index eac0f966e0e4..b1e46fcaae1a 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -341,6 +341,8 @@ void igc_up(struct igc_adapter *adapter);
 void igc_down(struct igc_adapter *adapter);
 int igc_open(struct net_device *netdev);
 int igc_close(struct net_device *netdev);
+void igc_xdp_open(struct net_device *netdev);
+void igc_xdp_close(struct net_device *netdev);
 int igc_setup_tx_resources(struct igc_ring *ring);
 int igc_setup_rx_resources(struct igc_ring *ring);
 void igc_free_tx_resources(struct igc_ring *ring);
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 27872bdea9bd..098529a80b88 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6145,6 +6145,144 @@ int igc_close(struct net_device *netdev)
 	return 0;
 }
 
+void igc_xdp_open(struct net_device *netdev)
+{
+	struct igc_adapter *adapter = netdev_priv(netdev);
+	struct pci_dev *pdev = adapter->pdev;
+	struct igc_hw *hw = &adapter->hw;
+	int err = 0;
+	int i = 0;
+
+	/* disallow open during test */
+	if (test_bit(__IGC_TESTING, &adapter->state))
+		return;
+
+	pm_runtime_get_sync(&pdev->dev);
+
+	igc_ptp_reset(adapter);
+
+	/* allocate transmit descriptors */
+	err = igc_setup_all_tx_resources(adapter);
+	if (err)
+		goto err_setup_tx;
+
+	/* allocate receive descriptors */
+	err = igc_setup_all_rx_resources(adapter);
+	if (err)
+		goto err_setup_rx;
+
+	igc_setup_tctl(adapter);
+	igc_setup_rctl(adapter);
+	igc_configure_tx(adapter);
+	igc_configure_rx(adapter);
+	igc_rx_fifo_flush_base(&adapter->hw);
+
+	/* call igc_desc_unused which always leaves
+	 * at least 1 descriptor unused to make sure
+	 * next_to_use != next_to_clean
+	 */
+	for (i = 0; i < adapter->num_rx_queues; i++) {
+		struct igc_ring *ring = adapter->rx_ring[i];
+
+		if (ring->xsk_pool)
+			igc_alloc_rx_buffers_zc(ring, igc_desc_unused(ring));
+		else
+			igc_alloc_rx_buffers(ring, igc_desc_unused(ring));
+	}
+
+	err = igc_request_irq(adapter);
+	if (err)
+		goto err_req_irq;
+
+	clear_bit(__IGC_DOWN, &adapter->state);
+
+	for (i = 0; i < adapter->num_q_vectors; i++)
+		napi_enable(&adapter->q_vector[i]->napi);
+
+	/* Clear any pending interrupts. */
+	rd32(IGC_ICR);
+	igc_irq_enable(adapter);
+
+	pm_runtime_put(&pdev->dev);
+
+	netif_tx_start_all_queues(netdev);
+	netif_carrier_on(netdev);
+
+	return;
+
+err_req_irq:
+	igc_release_hw_control(adapter);
+	igc_power_down_phy_copper_base(&adapter->hw);
+	igc_free_all_rx_resources(adapter);
+err_setup_rx:
+	igc_free_all_tx_resources(adapter);
+err_setup_tx:
+	igc_reset(adapter);
+	pm_runtime_put(&pdev->dev);
+}
+
+void igc_xdp_close(struct net_device *netdev)
+{
+	struct igc_adapter *adapter = netdev_priv(netdev);
+	struct pci_dev *pdev = adapter->pdev;
+	struct igc_hw *hw = &adapter->hw;
+	u32 tctl, rctl;
+	int i = 0;
+
+	WARN_ON(test_bit(__IGC_RESETTING, &adapter->state));
+
+	pm_runtime_get_sync(&pdev->dev);
+
+	set_bit(__IGC_DOWN, &adapter->state);
+
+	igc_ptp_suspend(adapter);
+
+	if (pci_device_is_present(pdev)) {
+		/* disable receives in the hardware */
+		rctl = rd32(IGC_RCTL);
+		wr32(IGC_RCTL, rctl & ~IGC_RCTL_EN);
+		/* flush and sleep below */
+	}
+	/* set trans_start so we don't get spurious watchdogs during reset */
+	netif_trans_update(netdev);
+
+	netif_carrier_off(netdev);
+	netif_tx_stop_all_queues(netdev);
+
+	if (pci_device_is_present(pdev)) {
+		/* disable transmits in the hardware */
+		tctl = rd32(IGC_TCTL);
+		tctl &= ~IGC_TCTL_EN;
+		wr32(IGC_TCTL, tctl);
+		/* flush both disables and wait for them to finish */
+		wrfl();
+		usleep_range(10000, 20000);
+
+		igc_irq_disable(adapter);
+	}
+
+	for (i = 0; i < adapter->num_q_vectors; i++) {
+		if (adapter->q_vector[i]) {
+			napi_synchronize(&adapter->q_vector[i]->napi);
+			napi_disable(&adapter->q_vector[i]->napi);
+		}
+	}
+
+	del_timer_sync(&adapter->watchdog_timer);
+	del_timer_sync(&adapter->phy_info_timer);
+
+	igc_disable_all_tx_rings_hw(adapter);
+	igc_clean_all_tx_rings(adapter);
+	igc_clean_all_rx_rings(adapter);
+
+	igc_free_irq(adapter);
+
+	igc_free_all_tx_resources(adapter);
+	igc_free_all_rx_resources(adapter);
+
+	pm_runtime_put_sync(&pdev->dev);
+}
+
 /**
  * igc_ioctl - Access the hwtstamp interface
  * @netdev: network interface device structure
diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.c b/drivers/net/ethernet/intel/igc/igc_xdp.c
index 869815f48ac1..f1d6ab56ab54 100644
--- a/drivers/net/ethernet/intel/igc/igc_xdp.c
+++ b/drivers/net/ethernet/intel/igc/igc_xdp.c
@@ -25,7 +25,7 @@ int igc_xdp_set_prog(struct igc_adapter *adapter, struct bpf_prog *prog,
 
 	need_update = !!adapter->xdp_prog != !!prog;
 	if (if_running && need_update)
-		igc_close(dev);
+		igc_xdp_close(dev);
 
 	old_prog = xchg(&adapter->xdp_prog, prog);
 	if (old_prog)
@@ -37,7 +37,7 @@ int igc_xdp_set_prog(struct igc_adapter *adapter, struct bpf_prog *prog,
 		xdp_features_clear_redirect_target(dev);
 
 	if (if_running && need_update)
-		igc_open(dev);
+		igc_xdp_open(dev);
 
 	return 0;
 }
-- 
2.34.1

