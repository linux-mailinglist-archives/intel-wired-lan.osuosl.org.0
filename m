Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 796F0155D41
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2020 18:59:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 75E6987F34;
	Fri,  7 Feb 2020 17:59:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tpFYY6ff+AMt; Fri,  7 Feb 2020 17:59:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B2FAD87ED0;
	Fri,  7 Feb 2020 17:59:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 72C011BF23B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2020 17:59:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6E45F87EC5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2020 17:59:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XIi+Wr4k9SHx for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2020 17:59:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9D1E78783F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2020 17:59:23 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Feb 2020 09:59:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,414,1574150400"; d="scan'208";a="225611380"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 07 Feb 2020 09:59:21 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1j07uT-0003Mx-B9; Sat, 08 Feb 2020 01:59:21 +0800
Date: Sat, 8 Feb 2020 01:58:27 +0800
From: kbuild test robot <lkp@intel.com>
To: Jack Ping CHNG <jack.ping.chng@linux.intel.com>
Message-ID: <20200207175827.vnfqd6flcsdymvoi@f53c9c00458a>
References: <202002080142.jXgA7Lza%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202002080142.jXgA7Lza%lkp@intel.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: [Intel-wired-lan] [RFC PATCH jkirsher-next-queue] gwdpa: gswip:
 mac_get_speed() can be static
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
Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, kbuild-all@lists.01.org,
 Amireddy Mallikarjuna reddy <mallikarjunax.reddy@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


Fixes: efd2087941d2 ("gwdpa: gswip: Introduce Gigabit Ethernet Switch (GSWIP) device driver")
Signed-off-by: kbuild test robot <lkp@intel.com>
---
 mac_cfg.c |   14 +++++++-------
 xgmac.c   |    8 ++++----
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/gwdpa/gswip/mac_cfg.c b/drivers/net/ethernet/intel/gwdpa/gswip/mac_cfg.c
index 0e57404f00156..75776f402b608 100644
--- a/drivers/net/ethernet/intel/gwdpa/gswip/mac_cfg.c
+++ b/drivers/net/ethernet/intel/gwdpa/gswip/mac_cfg.c
@@ -35,7 +35,7 @@ static int mac_speed_to_val(u32 speed)
 	return val;
 }
 
-int mac_get_speed(struct device *dev)
+static int mac_get_speed(struct device *dev)
 {
 	struct gswip_mac *priv = dev_get_drvdata(dev);
 	u32 mac_speed;
@@ -47,7 +47,7 @@ int mac_get_speed(struct device *dev)
 	return mac_speed_to_val(mac_speed);
 }
 
-int mac_set_physpeed(struct gswip_mac *priv, u32 phy_speed)
+static int mac_set_physpeed(struct gswip_mac *priv, u32 phy_speed)
 {
 	spin_lock_bh(&priv->mac_lock);
 	xgmac_set_extcfg(priv, 1);
@@ -116,7 +116,7 @@ int mac_set_physpeed(struct gswip_mac *priv, u32 phy_speed)
 	return 0;
 }
 
-int mac_set_duplex(struct gswip_mac *priv, u32 mode)
+static int mac_set_duplex(struct gswip_mac *priv, u32 mode)
 {
 	u32 val;
 
@@ -141,7 +141,7 @@ int mac_set_duplex(struct gswip_mac *priv, u32 mode)
 	return 0;
 }
 
-int mac_get_duplex(struct device *dev)
+static int mac_get_duplex(struct device *dev)
 {
 	struct gswip_mac *priv = dev_get_drvdata(dev);
 	int val;
@@ -153,7 +153,7 @@ int mac_get_duplex(struct device *dev)
 	return val;
 }
 
-int mac_get_linksts(struct device *dev)
+static int mac_get_linksts(struct device *dev)
 {
 	struct gswip_mac *priv = dev_get_drvdata(dev);
 	int linksts;
@@ -165,7 +165,7 @@ int mac_get_linksts(struct device *dev)
 	return linksts;
 }
 
-int mac_set_linksts(struct gswip_mac *priv, u32 mode)
+static int mac_set_linksts(struct gswip_mac *priv, u32 mode)
 {
 	u8 val;
 
@@ -190,7 +190,7 @@ int mac_set_linksts(struct gswip_mac *priv, u32 mode)
 	return 0;
 }
 
-int mac_set_flowctrl(struct device *dev, u32 val)
+static int mac_set_flowctrl(struct device *dev, u32 val)
 {
 	struct gswip_mac *priv = dev_get_drvdata(dev);
 
diff --git a/drivers/net/ethernet/intel/gwdpa/gswip/xgmac.c b/drivers/net/ethernet/intel/gwdpa/gswip/xgmac.c
index 959b0e0e04ed8..618a63a32cb0e 100644
--- a/drivers/net/ethernet/intel/gwdpa/gswip/xgmac.c
+++ b/drivers/net/ethernet/intel/gwdpa/gswip/xgmac.c
@@ -475,8 +475,8 @@ int xgmac_mdio_set_clause(struct gswip_mac *priv, u32 clause, u32 phy_id)
 	return 0;
 }
 
-int xgmac_mdio_single_wr(struct gswip_mac *priv, u32 dev_adr, u32 phy_id,
-			 u32 phy_reg, u32 phy_reg_data)
+static int xgmac_mdio_single_wr(struct gswip_mac *priv, u32 dev_adr, u32 phy_id,
+				u32 phy_reg, u32 phy_reg_data)
 {
 	u32 mdio_sccdr, mdio_scar;
 	u32 retries = 100;
@@ -526,8 +526,8 @@ int xgmac_mdio_single_wr(struct gswip_mac *priv, u32 dev_adr, u32 phy_id,
 	return 0;
 }
 
-int xgmac_mdio_single_rd(struct gswip_mac *priv, u32 dev_adr, u32 phy_id,
-			 u32 phy_reg)
+static int xgmac_mdio_single_rd(struct gswip_mac *priv, u32 dev_adr, u32 phy_id,
+				u32 phy_reg)
 {
 	u32 mdio_sccdr, mdio_scar;
 	u32 retries = 100;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
