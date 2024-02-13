Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C5BD38529B9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Feb 2024 08:23:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1F58D60B0E;
	Tue, 13 Feb 2024 07:23:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O6C-nU69FZjC; Tue, 13 Feb 2024 07:23:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EFC8760AF9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707809007;
	bh=vz16iYJdb/Ub3uMWj4HAnbR5bLzI9pkyjB5ShbwfbmI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0er+ek8EpzfMC3spKkhAS25uowUAbMAmQL37Tmef1ulVB+cv53ihNONgoA9+xPz/X
	 AaawsOXTneajeCfxvXVHJT5Nb0DXwerz7heybVb3EmWelIWcslMUj0Il2CbIOzU2mp
	 clP/1q3+xxEJouCw8xu5lxe9IDEdKA1cQtN+cPwiDwqlHn4eVda3UeQSK4Txkto24b
	 sActhqbmqiT8lAMO2vQpfkEbtB/X3nhMloiqOa9AV2tThMJ5o4UwRkyOgfEkur9Z9E
	 ghmeVgAHrF8j8FZYCbltFC9rNjszuE69nmvh0r5wN5FXpMqfFa/yz6UXqIj5fv3nGe
	 2W71SkNhTOOSw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EFC8760AF9;
	Tue, 13 Feb 2024 07:23:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 747581BF5F5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 07:23:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 60F9F40898
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 07:23:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NUJ82qwwJHDH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Feb 2024 07:23:22 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org AFC7340833
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AFC7340833
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AFC7340833
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 07:23:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="27247953"
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; d="scan'208";a="27247953"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2024 23:23:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; 
   d="scan'208";a="7385253"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmviesa003.fm.intel.com with ESMTP; 12 Feb 2024 23:23:20 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 13 Feb 2024 08:27:14 +0100
Message-ID: <20240213072724.77275-6-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240213072724.77275-1-michal.swiatkowski@linux.intel.com>
References: <20240213072724.77275-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707809003; x=1739345003;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YwDvVWo6NXGGCpC/D2g1HCCbq25A5oMOA/dNZaDlsqE=;
 b=Eik8cLwlZWbsN9M76D1EYUaSHbw/GnPgUvCdigTKp+54RlYvaDlGi1xc
 rTEYHlvbabLeLlTIEfAy/4xxvtlMhzIz7qrldQFlC3jn952KbwN5Vik+G
 R2H89E37JdyR79dBh34h0EXJ+dAJw3piBRDz9qMkKhA7LdkkM6eRpOeFC
 3HSrJPGSOGoQkefxOtabk4tr/s3L+CauKw4Y43Ag3cLwqbG857lO9y2/F
 AznQiHJGiFLcGuI4TcblFHXaLUn0VcY2d1I1Eomqrl/jIvsR3Z5h1mfRn
 Cos5Cj8xBOcTMWA5vwy8bnIyCqBvhKoyz/X3EYJxIbAw7cF7HpC/Vh5RJ
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Eik8cLwl
Subject: [Intel-wired-lan] [iwl-next v1 05/15] ice: add subfunctions ethtool
 ops
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
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 maciej.fijalkowski@intel.com, sridhar.samudrala@intel.com,
 netdev@vger.kernel.org, Pawel Chmielewski <pawel.chmielewski@intel.com>,
 michal.kubiak@intel.com, pio.raczynski@gmail.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, wojciech.drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Pawel Chmielewski <pawel.chmielewski@intel.com>

Add only limited number of ethtools ops. Also, stats set for a
subfunction is different than a regular netdev since there are
not port stats, show only related VSI statistics.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 36 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_sf_eth.c  |  1 +
 2 files changed, 37 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 3cc364a4d682..c862b21bad9f 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -1564,6 +1564,22 @@ static int ice_set_priv_flags(struct net_device *netdev, u32 flags)
 	return ret;
 }
 
+/**
+ * ice_get_sf_sset_count - get number of stats to display for specified netdev
+ * of subfunction flavor
+ * @netdev: network interface device structure
+ * @sset: set of statistics to display
+ */
+static int ice_get_sf_sset_count(struct net_device *netdev, int sset)
+{
+	switch (sset) {
+	case ETH_SS_STATS:
+		return ICE_VSI_STATS_LEN + ice_q_stats_len(netdev);
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
 static int ice_get_sset_count(struct net_device *netdev, int sset)
 {
 	switch (sset) {
@@ -4290,6 +4306,17 @@ static const struct ethtool_ops ice_ethtool_safe_mode_ops = {
 	.get_channels		= ice_get_channels,
 };
 
+static const struct ethtool_ops ice_sf_ethtool_ops = {
+	.get_drvinfo		= ice_get_drvinfo,
+	.get_link		= ethtool_op_get_link,
+	.get_strings		= ice_get_strings,
+	.get_ethtool_stats	= ice_get_ethtool_stats,
+	.get_sset_count		= ice_get_sf_sset_count,
+	.get_ringparam		= ice_get_ringparam,
+	.set_ringparam		= ice_set_ringparam,
+	.get_channels		= ice_get_channels,
+};
+
 /**
  * ice_set_ethtool_safe_mode_ops - setup safe mode ethtool ops
  * @netdev: network interface device structure
@@ -4326,3 +4353,12 @@ void ice_set_ethtool_ops(struct net_device *netdev)
 {
 	netdev->ethtool_ops = &ice_ethtool_ops;
 }
+
+/**
+ * ice_set_ethtool_sf_ops - setup subfunction ethtool ops
+ * @netdev: network interface device structure
+ */
+void ice_set_ethtool_sf_ops(struct net_device *netdev)
+{
+	netdev->ethtool_ops = &ice_sf_ethtool_ops;
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.c b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
index f569f176f29f..f45ac76f0f43 100644
--- a/drivers/net/ethernet/intel/ice/ice_sf_eth.c
+++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
@@ -55,6 +55,7 @@ static int ice_sf_cfg_netdev(struct ice_dynamic_port *dyn_port)
 	eth_hw_addr_set(netdev, dyn_port->hw_addr);
 	ether_addr_copy(netdev->perm_addr, dyn_port->hw_addr);
 	netdev->netdev_ops = &ice_sf_netdev_ops;
+	ice_set_ethtool_sf_ops(netdev);
 	SET_NETDEV_DEVLINK_PORT(netdev, &dyn_port->devlink_port);
 
 	err = register_netdev(netdev);
-- 
2.42.0

