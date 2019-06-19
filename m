Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 811224BF1B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Jun 2019 18:58:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D1D6985DFC;
	Wed, 19 Jun 2019 16:58:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Eni2C2QZwJcZ; Wed, 19 Jun 2019 16:58:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DF05185E24;
	Wed, 19 Jun 2019 16:58:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 517DD1BF355
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 16:58:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4B3CD86749
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 16:58:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aPbi+9dJbKp2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Jun 2019 16:58:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 136C5813ED
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 16:58:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 09:58:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,392,1557212400"; d="scan'208";a="182800649"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.96])
 by fmsmga004.fm.intel.com with ESMTP; 19 Jun 2019 09:58:47 -0700
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 19 Jun 2019 09:58:53 -0700
Message-Id: <20190619165853.28234-1-jeffrey.t.kirsher@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net] ixgbevf: Use cached link state instead of
 re-reading the value for ethtool
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
Cc: Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 Guilherme Piccoli <gpiccoli@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alexander Duyck <alexander.h.duyck@linux.intel.com>

Change the ethtool link settings call to just read the cached state out of
the adapter structure instead of trying to recheck the value from the PF.
Doing this should prevent excessive reading of the mailbox.

Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
Reviewed-by: Guilherme Piccoli <gpiccoli@canonical.com>
---
 drivers/net/ethernet/intel/ixgbevf/ethtool.c |   10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbevf/ethtool.c b/drivers/net/ethernet/intel/ixgbevf/ethtool.c
index 5399787e07af..54459b69c948 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ethtool.c
@@ -85,22 +85,16 @@ static int ixgbevf_get_link_ksettings(struct net_device *netdev,
 				      struct ethtool_link_ksettings *cmd)
 {
 	struct ixgbevf_adapter *adapter = netdev_priv(netdev);
-	struct ixgbe_hw *hw = &adapter->hw;
-	u32 link_speed = 0;
-	bool link_up;
 
 	ethtool_link_ksettings_zero_link_mode(cmd, supported);
 	ethtool_link_ksettings_add_link_mode(cmd, supported, 10000baseT_Full);
 	cmd->base.autoneg = AUTONEG_DISABLE;
 	cmd->base.port = -1;
 
-	hw->mac.get_link_status = 1;
-	hw->mac.ops.check_link(hw, &link_speed, &link_up, false);
-
-	if (link_up) {
+	if (adapter->link_up) {
 		__u32 speed = SPEED_10000;
 
-		switch (link_speed) {
+		switch (adapter->link_speed) {
 		case IXGBE_LINK_SPEED_10GB_FULL:
 			speed = SPEED_10000;
 			break;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
