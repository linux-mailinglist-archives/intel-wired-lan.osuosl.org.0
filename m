Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA06947B39
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Aug 2024 14:49:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D390840292;
	Mon,  5 Aug 2024 12:49:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jw8viJa8HCUv; Mon,  5 Aug 2024 12:49:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B78F840287
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722862167;
	bh=FZP5t9EMcl3pg9GT/2Q666ZLPg/PZE1IyBdDhb7M/Ks=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=7jyRBTWHqZrCRdzWMmHaZU6iCljEryJdHDJFKEClcUaY+lTNTdVAGjZHsqQhVPZN9
	 e+5RMlfGi7IRXrD1bqEfM9NVQzPCPZN6uAgHyXRxIi7cmkx/q0rYzhiCmt/V4JvYou
	 ClhLwkUU2/UcCTM7NVCVtdYVb2OXXnqixduF6vJOCd1pGzwAyKgYnO+YPNTxr/PNE+
	 h/QS4lr4E6/5OOCEeBQ3a8Cm1kNkuTJqfXH6gbKBuJEMqkhVZp8cS1ynV3CdWBJDxd
	 JQ+HUncD4H7n+T+hvKvCkuBS0cZggTBhU3nv4HfUybtH8pCgjJRWYU/17ck6z39ebA
	 2mrUma0Nuq2bw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B78F840287;
	Mon,  5 Aug 2024 12:49:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 17B251BF381
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2024 12:49:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0398240277
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2024 12:49:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2nMSkVm1jWjM for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Aug 2024 12:49:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C2BCE40276
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C2BCE40276
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C2BCE40276
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2024 12:49:23 +0000 (UTC)
X-CSE-ConnectionGUID: eGf/vIeGTwWwgd/BF9EtGQ==
X-CSE-MsgGUID: NMPPctSzSU6l/4ZtfNygow==
X-IronPort-AV: E=McAfee;i="6700,10204,11155"; a="12870885"
X-IronPort-AV: E=Sophos;i="6.09,264,1716274800"; d="scan'208";a="12870885"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2024 05:49:23 -0700
X-CSE-ConnectionGUID: 4Dv2BeK6R8+7ju42lzXuoQ==
X-CSE-MsgGUID: SrFvJRiNTvKgVpbaRl1eog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,264,1716274800"; d="scan'208";a="60294031"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa003.fm.intel.com with ESMTP; 05 Aug 2024 05:49:20 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 3A5ED27BC6;
 Mon,  5 Aug 2024 13:49:19 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: netdev@vger.kernel.org
Date: Mon,  5 Aug 2024 14:46:51 +0200
Message-Id: <20240805124651.125761-1-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722862164; x=1754398164;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PiLm9bPRE4bswuvkxe9Aicuep+TbFpE1u+KZP8w8+/w=;
 b=NBlWsiEZHTqQ1hEkrhu4nqxOrU4N/IisosVqH/jKUpAw1G/AhctWsj52
 PDjZ/8hR2wV3aYUeN3npxr8p/MqvRi92jJJELP91UttD63gM2UUaHvi25
 a8GP8pZcad4Z46U2UwI3xc5RrudO9KupxI4akp9VMvdxlj0Nez2DyKUVk
 WHAoC9ipe0K4wRZH4s7ULX/jIBT72Gh6tv/UH7MtIzBwqfU3pDAdDamZE
 26ohrkAfLN/teWoLaTc5ZI6xOZYiLsgbSdoCBiEKfn32R2l9Ojyd4RaKc
 FM1ZHXd9+aHOC3/raKE0VDKAjWmo7YWXbm8Gle2vNXhFyG/t9xkYInEA/
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NBlWsiEZ
Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: Implement ethtool reset
 support
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
Cc: przemyslaw.kitszel@intel.com, edumazet@google.com,
 anthony.l.nguyen@intel.com, horms@kernel.org, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Enable ethtool reset support. Ethtool reset flags are mapped to the
E810 reset type:
PF reset:
  $ ethtool --reset <ethX> irq dma filter offload
CORE reset:
  $ ethtool --reset <ethX> irq-shared dma-shared filter-shared \
    offload-shared ram-shared
GLOBAL reset:
  $ ethtool --reset <ethX> irq-shared dma-shared filter-shared \
    offload-shared mac-shared phy-shared ram-shared

Calling the same set of flags as in PF reset case on port representor
triggers VF reset.

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 .../device_drivers/ethernet/intel/ice.rst     | 28 +++++++
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 77 +++++++++++++++++++
 2 files changed, 105 insertions(+)

diff --git a/Documentation/networking/device_drivers/ethernet/intel/ice.rst b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
index 934752f675ba..c043164bfacc 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/ice.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
@@ -102,6 +102,34 @@ rx_bytes as "X", then ethtool (hardware statistics) will display rx_bytes as
 "X+40" (4 bytes CRC x 10 packets).
 
 
+ethtool reset
+-------------
+The driver supports 3 types of resets:
+- PF reset - resets only components associated with the given PF, does not
+  impact other PFs
+- CORE reset - whole adapter is affected, reset all PFs
+- GLOBAL reset - same as CORE but mac and phy components are also reinitialized
+
+These are mapped to ethtool reset flags as follow:
+- PF reset:
+
+  # ethtool --reset <ethX> irq dma filter offload
+
+- CORE reset:
+
+  # ethtool --reset <ethX> irq-shared dma-shared filter-shared offload-shared \
+  ram-shared
+
+- GLOBAL reset:
+
+  # ethtool --reset <ethX> irq-shared dma-shared filter-shared offload-shared \
+  mac-shared phy-shared ram-shared
+
+In switchdev mode you can reset a VF using port representor:
+
+  # ethtool --reset <repr> irq dma filter offload
+
+
 Viewing Link Messages
 ---------------------
 Link messages will not be displayed to the console if the distribution is
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 39d2652c3ee1..14f4bd9397c5 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -4794,6 +4794,81 @@ static void ice_get_ts_stats(struct net_device *netdev,
 	ts_stats->lost = ptp->tx_hwtstamp_timeouts;
 }
 
+#define ICE_ETHTOOL_PFR (ETH_RESET_IRQ | ETH_RESET_DMA | \
+	ETH_RESET_FILTER | ETH_RESET_OFFLOAD)
+
+#define ICE_ETHTOOL_CORER ((ICE_ETHTOOL_PFR | ETH_RESET_RAM) << \
+	ETH_RESET_SHARED_SHIFT)
+
+#define ICE_ETHTOOL_GLOBR (ICE_ETHTOOL_CORER | \
+	(ETH_RESET_MAC << ETH_RESET_SHARED_SHIFT) | \
+	(ETH_RESET_PHY << ETH_RESET_SHARED_SHIFT))
+
+#define ICE_ETHTOOL_VFR ICE_ETHTOOL_PFR
+
+/**
+ * ice_ethtool_reset - triggers a given type of reset
+ * @dev: network interface device structure
+ * @flags: set of reset flags
+ *
+ * Return: 0 on success, -EOPNOTSUPP when using unsupported set of flags.
+ */
+static int ice_ethtool_reset(struct net_device *dev, u32 *flags)
+{
+	struct ice_netdev_priv *np = netdev_priv(dev);
+	struct ice_pf *pf = np->vsi->back;
+	enum ice_reset_req reset;
+
+	switch (*flags) {
+	case ICE_ETHTOOL_CORER:
+		reset = ICE_RESET_CORER;
+		break;
+	case ICE_ETHTOOL_GLOBR:
+		reset = ICE_RESET_GLOBR;
+		break;
+	case ICE_ETHTOOL_PFR:
+		reset = ICE_RESET_PFR;
+		break;
+	default:
+		netdev_info(dev, "Unsupported set of ethtool flags");
+		return -EOPNOTSUPP;
+	}
+
+	ice_schedule_reset(pf, reset);
+
+	*flags = 0;
+
+	return 0;
+}
+
+/**
+ * ice_repr_ethtool_reset - triggers a VF reset
+ * @dev: network interface device structure
+ * @flags: set of reset flags
+ *
+ * Return: 0 on success,
+ * -EOPNOTSUPP when using unsupported set of flags
+ * -EBUSY when VF is not ready for reset.
+ */
+static int ice_repr_ethtool_reset(struct net_device *dev, u32 *flags)
+{
+	struct ice_repr *repr = ice_netdev_to_repr(dev);
+	struct ice_vf *vf;
+
+	if (repr->type != ICE_REPR_TYPE_VF ||
+	    *flags != ICE_ETHTOOL_VFR)
+		return -EOPNOTSUPP;
+
+	vf = repr->vf;
+
+	if (ice_check_vf_ready_for_cfg(vf))
+		return -EBUSY;
+
+	*flags = 0;
+
+	return ice_reset_vf(vf, ICE_VF_RESET_VFLR | ICE_VF_RESET_LOCK);
+}
+
 static const struct ethtool_ops ice_ethtool_ops = {
 	.cap_rss_ctx_supported  = true,
 	.supported_coalesce_params = ETHTOOL_COALESCE_USECS |
@@ -4829,6 +4904,7 @@ static const struct ethtool_ops ice_ethtool_ops = {
 	.nway_reset		= ice_nway_reset,
 	.get_pauseparam		= ice_get_pauseparam,
 	.set_pauseparam		= ice_set_pauseparam,
+	.reset			= ice_ethtool_reset,
 	.get_rxfh_key_size	= ice_get_rxfh_key_size,
 	.get_rxfh_indir_size	= ice_get_rxfh_indir_size,
 	.get_rxfh		= ice_get_rxfh,
@@ -4885,6 +4961,7 @@ static const struct ethtool_ops ice_ethtool_repr_ops = {
 	.get_strings		= ice_repr_get_strings,
 	.get_ethtool_stats      = ice_repr_get_ethtool_stats,
 	.get_sset_count		= ice_repr_get_sset_count,
+	.reset			= ice_repr_ethtool_reset,
 };
 
 /**
-- 
2.40.1

