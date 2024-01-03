Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 992AA822F2D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jan 2024 15:07:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 85B9D41749;
	Wed,  3 Jan 2024 14:07:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 85B9D41749
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704290847;
	bh=uZr0c2Qq9nvzen7hULqjp7zIpS61BI3dyHNJY1gncXg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=HgUQf+CZ0pV8lEDO2AmX3l4oMfAoBR62Fpg5zyKUGUNfCsd1kWrnhJtAadFa5qV6e
	 65HaTGahrsIH3KUSslOknzk4hLmt0yDWYAwJm4JgAW9Zm3sdzWh/4qEadbY/FnV63g
	 0ALi+TIzkuYS8XCHVuCBYEkbTEHqUoIFMaziRbILL/sapoc8hUQIhevaQba8nirl3c
	 uAbDFDD8gL0qFjVmUoF71TN7hdn+4G1LDF1NxE8DUV7tw0Jp0TEYBnH57Oj1Qt5a8Y
	 yrDbskTSk/vSCp4PLSsEh6zJdAffvLUnRCMuzUbcvblZEP2GnaXZm6b6GzN2Q07O+F
	 j2Dghk56j9E2A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kbYRHMhRWIM8; Wed,  3 Jan 2024 14:07:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2FD4F404B5;
	Wed,  3 Jan 2024 14:07:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2FD4F404B5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 50D291BF369
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 14:07:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2596F8238E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 14:07:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2596F8238E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yyz56WmG89Bl for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jan 2024 14:07:17 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ACB6F82499
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 14:07:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ACB6F82499
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="3813543"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; 
   d="scan'208";a="3813543"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 06:07:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="779998486"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="779998486"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga002.jf.intel.com with ESMTP; 03 Jan 2024 06:07:04 -0800
Received: from DevelopmentVM.nql.local (s240.igk.intel.com [10.102.18.202])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 699C2373E2;
 Wed,  3 Jan 2024 14:06:58 +0000 (GMT)
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  3 Jan 2024 15:11:15 +0100
Message-Id: <20240103141115.9509-1-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704290833; x=1735826833;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gXW7NtRV3PRG3hVtfxiiINB9hIR80aIG4hAgr+HvWqE=;
 b=oBfPuM0pcet85lKBW3oUWR7Z716b20Tq+KQ89Wm9JX4txurV3QJczth8
 afpY5bphy1JhNJ48+lvzWNZouBpx9X4kOGvoYVdnYBD2CNwBR3HaQAkDW
 E7I9iiFj341XMtF+YkaCgQiXPzkKAjUNPIAqqc8cDAA30L+3Gwz4EJfF0
 QfhhDmBRg144Y2vdBRavyyjgwsUMxcg0dQwVzMCtkzI3UGkkyQZ22OTNQ
 4E3CeKcsmXakemQF6Uqgf+U9sLAv3/SgI3pXTcIrvn7nbDZfHfzEirlmn
 zDml5Jlb4Hx/MxfIyFBoivoTjFQ0a5SVLYr66Y8uLcHvX3qn+70TQAJxo
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=oBfPuM0p
Subject: [Intel-wired-lan] [PATCH iwl-next v1] ice: Add a new counter for Rx
 EIPE errors
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
Cc: netdev@vger.kernel.org, Jan Sokolowski <jan.sokolowski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jan Glaza <jan.glaza@intel.com>, Aniruddha Paul <aniruddha.paul@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Aniruddha Paul <aniruddha.paul@intel.com>

HW incorrectly reports EIPE errors on encapsulated packets
with L2 padding inside inner packet. HW shows outer UDP/IPV4
packet checksum errors as part of the EIPE flags of the
Rx descriptor. These are reported only if checksum offload
is enabled and L3/L4 parsed flag is valid in Rx descriptor.

When that error is reported by HW, we don't act on it
instead of incrementing main Rx errors statistic as it
would normally happen.

Add a new statistic to count these errors since we still want
to print them.

Signed-off-by: Aniruddha Paul <aniruddha.paul@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Jan Glaza <jan.glaza@intel.com>
Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          | 1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 1 +
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 8 ++++++--
 3 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 367b613d92c0..e841f6c4f1c4 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -606,6 +606,7 @@ struct ice_pf {
 	wait_queue_head_t reset_wait_queue;
 
 	u32 hw_csum_rx_error;
+	u32 hw_rx_eipe_error;
 	u32 oicr_err_reg;
 	struct msi_map oicr_irq;	/* Other interrupt cause MSIX vector */
 	struct msi_map ll_ts_irq;	/* LL_TS interrupt MSIX vector */
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index a19b06f18e40..f25e43881df2 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -129,6 +129,7 @@ static const struct ice_stats ice_gstrings_pf_stats[] = {
 	ICE_PF_STAT("rx_oversize.nic", stats.rx_oversize),
 	ICE_PF_STAT("rx_jabber.nic", stats.rx_jabber),
 	ICE_PF_STAT("rx_csum_bad.nic", hw_csum_rx_error),
+	ICE_PF_STAT("rx_eipe_error.nic", hw_rx_eipe_error),
 	ICE_PF_STAT("rx_dropped.nic", stats.eth.rx_discards),
 	ICE_PF_STAT("rx_crc_errors.nic", stats.crc_errors),
 	ICE_PF_STAT("illegal_bytes.nic", stats.illegal_bytes),
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index 839e5da24ad5..f8f1d2bdc1be 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -143,8 +143,12 @@ ice_rx_csum(struct ice_rx_ring *ring, struct sk_buff *skb,
 	ipv6 = (decoded.outer_ip == ICE_RX_PTYPE_OUTER_IP) &&
 	       (decoded.outer_ip_ver == ICE_RX_PTYPE_OUTER_IPV6);
 
-	if (ipv4 && (rx_status0 & (BIT(ICE_RX_FLEX_DESC_STATUS0_XSUM_IPE_S) |
-				   BIT(ICE_RX_FLEX_DESC_STATUS0_XSUM_EIPE_S))))
+	if (ipv4 && (rx_status0 & (BIT(ICE_RX_FLEX_DESC_STATUS0_XSUM_EIPE_S)))) {
+		ring->vsi->back->hw_rx_eipe_error++;
+		return;
+	}
+
+	if (ipv4 && (rx_status0 & (BIT(ICE_RX_FLEX_DESC_STATUS0_XSUM_IPE_S))))
 		goto checksum_fail;
 
 	if (ipv6 && (rx_status0 & (BIT(ICE_RX_FLEX_DESC_STATUS0_IPV6EXADD_S))))
-- 
2.31.1

