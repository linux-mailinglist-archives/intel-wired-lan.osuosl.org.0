Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9C952309C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 May 2022 12:24:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9C34C40B70;
	Wed, 11 May 2022 10:24:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fxox0zP-Kx2c; Wed, 11 May 2022 10:24:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8346F40B57;
	Wed, 11 May 2022 10:24:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B6E461BF2CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 10:24:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A0CCE418A4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 10:24:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D4ZbHMMdODXU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 May 2022 10:24:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8190241706
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 10:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652264678; x=1683800678;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=InVwblFC6r7j9xdEjekjb95ShZEc5jm2tJzEt6Ga6aA=;
 b=TNxZyAA5xj9qiP8DcopuLi9hivMn2m1VylRP7766t+Cb8nmrEbOM61bJ
 CKLzU1LD2anmfxAb010VGKTUC1JU7L1I/Daw7QjaexU6znT0f790+4Ggi
 rYobhkmmjaLe7nTBaGVsnSPW59w8RupCIV4b4tiebIO6o634qcvWjxXeL
 oeEoNRqfUSl46ky2MCtp7OnHdI3xuGQQHdl52kSeqZLwmwlS+FibNNlBh
 OYpqscpUBy5OxpGMxRO4Heg08xqfm/ocduWF/395dzEKwrsDo/i6FDFNU
 HxKH8PzUsRytvi11cIjJ84A+iCiePxCbzYe6FyPMCloNGWCy2ZkGwVxL8 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10343"; a="257200673"
X-IronPort-AV: E=Sophos;i="5.91,216,1647327600"; d="scan'208";a="257200673"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 03:24:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,216,1647327600"; d="scan'208";a="553268761"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by orsmga002.jf.intel.com with ESMTP; 11 May 2022 03:24:36 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 11 May 2022 12:21:28 +0200
Message-Id: <20220511102128.14684-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1] i40e: Add support for ethtool
 -s <interface> speed <speed in Mb>
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
Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 Norbert Zulinski <norbertx.zulinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add ability to change speed through ethtool -s <interface> speed <speed in Mb>
Driver advertises all link modes that support requested speed.
Autoneg must be set off e.g.:
	ethtool -s <interface> autoneg off speed <speed in Mb>.

Add helper function that translate speed in Mb to
enum i40e_aq_link_speed and compare it to supported speeds from
given ethtool_link_ksettings. Add in i40e_set_link_ksettings hold
for requested speed and set copy_ks.base.speed to safe_ks.base.speed
to be sure that user is not changing unsupported setting.
In i40e_speed_to_link_speed compare requested speed with supported
speeds. Set speed to requested speed.

Signed-off-by: Norbert Zulinski <norbertx.zulinski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 .../net/ethernet/intel/i40e/i40e_ethtool.c    | 90 +++++++++++++++++++
 1 file changed, 90 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index c65e9e2..9c6aa27 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -1143,6 +1143,71 @@ static int i40e_get_link_ksettings(struct net_device *netdev,
 	return 0;
 }
 
+#define I40E_LBIT_SIZE 8
+/**
+ * i40e_speed_to_link_speed - Translate decimal speed to i40e_aq_link_speed
+ * @speed: speed in decimal
+ * @ks: ethtool ksettings
+ *
+ * Return i40e_aq_link_speed based on speed
+ **/
+static enum i40e_aq_link_speed
+i40e_speed_to_link_speed(__u32 speed, const struct ethtool_link_ksettings *ks)
+{
+	enum i40e_aq_link_speed link_speed = I40E_LINK_SPEED_UNKNOWN;
+	bool speed_changed = false;
+	int i, j;
+
+	static const struct {
+		__u32 speed;
+		enum i40e_aq_link_speed link_speed;
+		__u8 bit[I40E_LBIT_SIZE];
+	} i40e_speed_lut[] = {
+#define I40E_LBIT(mode) ETHTOOL_LINK_MODE_ ## mode ##_Full_BIT
+		{SPEED_100, I40E_LINK_SPEED_100MB, {I40E_LBIT(100baseT)} },
+		{SPEED_1000, I40E_LINK_SPEED_1GB,
+		 {I40E_LBIT(1000baseT), I40E_LBIT(1000baseX),
+		  I40E_LBIT(1000baseKX)} },
+		{SPEED_10000, I40E_LINK_SPEED_10GB,
+		 {I40E_LBIT(10000baseT), I40E_LBIT(10000baseKR),
+		  I40E_LBIT(10000baseLR), I40E_LBIT(10000baseCR),
+		  I40E_LBIT(10000baseSR), I40E_LBIT(10000baseKX4)} },
+
+		{SPEED_25000, I40E_LINK_SPEED_25GB,
+		 {I40E_LBIT(25000baseCR), I40E_LBIT(25000baseKR),
+		  I40E_LBIT(25000baseSR)} },
+		{SPEED_40000, I40E_LINK_SPEED_40GB,
+		 {I40E_LBIT(40000baseKR4), I40E_LBIT(40000baseCR4),
+		  I40E_LBIT(40000baseSR4), I40E_LBIT(40000baseLR4)} },
+		{SPEED_20000, I40E_LINK_SPEED_20GB,
+		 {I40E_LBIT(20000baseKR2)} },
+		{SPEED_2500, I40E_LINK_SPEED_2_5GB, {I40E_LBIT(2500baseT)} },
+		{SPEED_5000, I40E_LINK_SPEED_5GB, {I40E_LBIT(2500baseT)} }
+#undef I40E_LBIT
+};
+
+	for (i = 0; i < ARRAY_SIZE(i40e_speed_lut); i++) {
+		if (i40e_speed_lut[i].speed == speed) {
+			for (j = 0; j < I40E_LBIT_SIZE; j++) {
+				if (test_bit(i40e_speed_lut[i].bit[j],
+					     ks->link_modes.supported)) {
+					speed_changed = true;
+					break;
+				}
+				if (!i40e_speed_lut[i].bit[j])
+					break;
+			}
+			if (speed_changed) {
+				link_speed = i40e_speed_lut[i].link_speed;
+				break;
+			}
+		}
+	}
+	return link_speed;
+}
+
+#undef I40E_LBIT_SIZE
+
 /**
  * i40e_set_link_ksettings - Set Speed and Duplex
  * @netdev: network interface device structure
@@ -1159,12 +1224,14 @@ static int i40e_set_link_ksettings(struct net_device *netdev,
 	struct ethtool_link_ksettings copy_ks;
 	struct i40e_aq_set_phy_config config;
 	struct i40e_pf *pf = np->vsi->back;
+	enum i40e_aq_link_speed link_speed;
 	struct i40e_vsi *vsi = np->vsi;
 	struct i40e_hw *hw = &pf->hw;
 	bool autoneg_changed = false;
 	i40e_status status = 0;
 	int timeout = 50;
 	int err = 0;
+	__u32 speed;
 	u8 autoneg;
 
 	/* Changing port settings is not supported if this isn't the
@@ -1197,6 +1264,7 @@ static int i40e_set_link_ksettings(struct net_device *netdev,
 
 	/* save autoneg out of ksettings */
 	autoneg = copy_ks.base.autoneg;
+	speed = copy_ks.base.speed;
 
 	/* get our own copy of the bits to check against */
 	memset(&safe_ks, 0, sizeof(struct ethtool_link_ksettings));
@@ -1215,6 +1283,7 @@ static int i40e_set_link_ksettings(struct net_device *netdev,
 
 	/* set autoneg back to what it currently is */
 	copy_ks.base.autoneg = safe_ks.base.autoneg;
+	copy_ks.base.speed  = safe_ks.base.speed;
 
 	/* If copy_ks.base and safe_ks.base are not the same now, then they are
 	 * trying to set something that we do not support.
@@ -1331,6 +1400,27 @@ static int i40e_set_link_ksettings(struct net_device *netdev,
 						  40000baseLR4_Full))
 		config.link_speed |= I40E_LINK_SPEED_40GB;
 
+	/* Autonegotiation must be disabled to change speed */
+	if ((speed != SPEED_UNKNOWN && safe_ks.base.speed != speed) &&
+	    (autoneg == AUTONEG_DISABLE ||
+	    (safe_ks.base.autoneg == AUTONEG_DISABLE && !autoneg_changed))) {
+		link_speed = i40e_speed_to_link_speed(speed, ks);
+		if (link_speed == I40E_LINK_SPEED_UNKNOWN) {
+			netdev_info(netdev, "Given speed is not supported\n");
+			err = -EOPNOTSUPP;
+			goto done;
+		} else {
+			config.link_speed = link_speed;
+		}
+	} else {
+		if (safe_ks.base.speed != speed) {
+			netdev_info(netdev,
+				    "Unable to set speed, disable autoneg\n");
+			err = -EOPNOTSUPP;
+			goto done;
+		}
+	}
+
 	/* If speed didn't get set, set it to what it currently is.
 	 * This is needed because if advertise is 0 (as it is when autoneg
 	 * is disabled) then speed won't get set.
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
