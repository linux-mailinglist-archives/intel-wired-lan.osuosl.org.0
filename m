Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EFF7940FFE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jul 2024 12:54:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9484581011;
	Tue, 30 Jul 2024 10:54:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ry280LMxJb5y; Tue, 30 Jul 2024 10:54:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A48558101A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722336840;
	bh=Lg8Ahmhs0VOMwhFRxgyWmXijkxsytQ72y+ktZ0Oqo9s=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=rGDI0xgejhfZVIU2NPPBnVgCYdb6DLGxz42BKSnFfo2PIOAslts8XMZ/tXbnlfhZl
	 Bks1RrB2v1tN+l+Wcsxg/AHFlX9I3kVmeV83c2GRszraX7cuXCQdmt013DaJ+NuaZa
	 t4F9tWsh1xlKUW1rXfui4sSzxiLYt9Stqbe6F/cKjNl6bIrIry0++vAcLx5bo5HEsr
	 1EZsgJypM6uOMDnkIewLE8nqAFILJe8EqCTVIl/oqwNxLvCiVMtgnn0fyljJnWOhX+
	 neXNJJAwTcfVFGx0dYCpigfyvmLce3/N2g62R6E8WTuhIoWhwzIQcpwEdGVS9bDSzc
	 K/H0x7U3TOPdw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A48558101A;
	Tue, 30 Jul 2024 10:54:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B917C1BF5A7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 10:53:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A54A440634
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 10:53:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LFlzVYgu0kYI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jul 2024 10:53:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=wojciech.drewek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 916BD405CC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 916BD405CC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 916BD405CC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 10:53:57 +0000 (UTC)
X-CSE-ConnectionGUID: 1ApBumlLTLuo1niMPGHaAQ==
X-CSE-MsgGUID: qKVlsH5FR/WvwtDCuoJ3bA==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="24008881"
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="24008881"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 03:53:56 -0700
X-CSE-ConnectionGUID: U+YjfOn3TZWfD4vHXFMS+w==
X-CSE-MsgGUID: 8pifwwIhSkmz5t0grano6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="84945670"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa002.jf.intel.com with ESMTP; 30 Jul 2024 03:53:54 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id C5EB828779;
 Tue, 30 Jul 2024 11:53:52 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: netdev@vger.kernel.org
Date: Tue, 30 Jul 2024 12:51:21 +0200
Message-Id: <20240730105121.78985-1-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722336837; x=1753872837;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DVoHzPv9R/nXXO4kDVtIzZteJNPXteOZzO4wmWbPsO8=;
 b=YiuQVd1ZymJ+fk3PJAcTR/E4usIuymTlelQr7eKgyERgC5D4JG5fldYN
 /1oVd3rYGRfLy2s/PX1CD+GdzcEbDoF5UuCc6JZOBu5Dbt7KqtsDudaci
 sWxjvuV3kkJt2x+Ww0zeM62JMLrQkqJ286CYlJ1y9Y8I6CprAuyZRr8Vg
 i8yPq116uaEnP1UYekPU59lDDHfPSRX98moWVz7msEv4SpoVzlvMpiXx4
 eWlkz0hLaZupvgbgLaa/RkLVACEWt2oxPGq/PVjEDEnHjnawa1qM+wLwQ
 DGkJZBh2m3p/vd60dKqKpiM+isMTPRqyPqc+LAeYbavbjU1MLDAikbDPn
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YiuQVd1Z
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: Implement ethtool reset
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
Cc: simon.horman@corigine.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Enable ethtool reset support. Each ethtool reset
type is mapped to the CVL reset type:
ETH_RESET_MAC - ICE_RESET_CORER
ETH_RESET_ALL - ICE_RESET_GLOBR
ETH_RESET_DEDICATED - ICE_RESET_PFR

Multiple reset flags are not supported.
Calling any reset type on port representor triggers VF reset.

Command example:
GLOBR:
$ ethtool --reset enp1s0f0np0 all
CORER:
$ ethtool --reset enp1s0f0np0 mac
PFR:
$ ethtool --reset enp1s0f0np0 dedicated
VF reset:
$ ethtool --reset $port_representor mac

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 64 ++++++++++++++++++++
 1 file changed, 64 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 39d2652c3ee1..00b8ac3f1dff 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -4794,6 +4794,68 @@ static void ice_get_ts_stats(struct net_device *netdev,
 	ts_stats->lost = ptp->tx_hwtstamp_timeouts;
 }
 
+/**
+ * ice_ethtool_reset - triggers a given type of reset
+ * @dev: network interface device structure
+ * @flags: set of reset flags
+ *
+ * Note that multiple reset flags are not supported
+ */
+static int ice_ethtool_reset(struct net_device *dev, u32 *flags)
+{
+	struct ice_netdev_priv *np = netdev_priv(dev);
+	struct ice_pf *pf = np->vsi->back;
+	enum ice_reset_req reset;
+
+	switch (*flags) {
+	case ETH_RESET_MAC:
+		*flags &= ~ETH_RESET_MAC;
+		reset = ICE_RESET_CORER;
+		break;
+	case ETH_RESET_ALL:
+		*flags &= ~ETH_RESET_ALL;
+		reset = ICE_RESET_GLOBR;
+		break;
+	case ETH_RESET_DEDICATED:
+		*flags &= ~ETH_RESET_DEDICATED;
+		reset = ICE_RESET_PFR;
+		break;
+	default:
+		netdev_info(dev, "Unsupported set of ethtool flags, multiple flags are not supported");
+		return -EOPNOTSUPP;
+	}
+
+	ice_schedule_reset(pf, reset);
+
+	return 0;
+}
+
+/**
+ * ice_repr_ethtool_reset - triggers a VF reset
+ * @dev: network interface device structure
+ * @flags: set of reset flags
+ *
+ * VF associated with the given port representor will be reset
+ * Any type of reset will trigger VF reset
+ */
+static int ice_repr_ethtool_reset(struct net_device *dev, u32 *flags)
+{
+	struct ice_repr *repr = ice_netdev_to_repr(dev);
+	struct ice_vf *vf;
+
+	if (repr->type != ICE_REPR_TYPE_VF)
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
@@ -4829,6 +4891,7 @@ static const struct ethtool_ops ice_ethtool_ops = {
 	.nway_reset		= ice_nway_reset,
 	.get_pauseparam		= ice_get_pauseparam,
 	.set_pauseparam		= ice_set_pauseparam,
+	.reset			= ice_ethtool_reset,
 	.get_rxfh_key_size	= ice_get_rxfh_key_size,
 	.get_rxfh_indir_size	= ice_get_rxfh_indir_size,
 	.get_rxfh		= ice_get_rxfh,
@@ -4885,6 +4948,7 @@ static const struct ethtool_ops ice_ethtool_repr_ops = {
 	.get_strings		= ice_repr_get_strings,
 	.get_ethtool_stats      = ice_repr_get_ethtool_stats,
 	.get_sset_count		= ice_repr_get_sset_count,
+	.reset			= ice_repr_ethtool_reset,
 };
 
 /**
-- 
2.40.1

