Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F805D79A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jul 2019 22:43:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AF46A86E26;
	Tue,  2 Jul 2019 20:43:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tZPlXy8tngUo; Tue,  2 Jul 2019 20:43:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 36F3886DF3;
	Tue,  2 Jul 2019 20:43:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2A6471BF589
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 20:43:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2765587CCB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 20:43:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lggRFH78rbVX for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2019 20:43:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 335DD879FD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 20:43:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP; 02 Jul 2019 13:43:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,444,1557212400"; d="scan'208";a="190805448"
Received: from alicemic-1.jf.intel.com ([10.166.17.62])
 by fmsmga002.fm.intel.com with ESMTP; 02 Jul 2019 13:43:20 -0700
From: Alice Michael <alice.michael@intel.com>
To: alice.michael@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Jul 2019 08:22:51 -0400
Message-Id: <20190702122259.79070-1-alice.michael@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next PATCH S7 1/9] i40e: fix incorrect ethtool
 statistics veb and veb.tc_
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
Cc: Dmitrii Golovanov <dmitrii.golovanov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Dmitrii Golovanov <dmitrii.golovanov@intel.com>

This patch fixes missing call of i40e_update_veb_stats() in function
i40e_get_ethtool_stats() to update stats data of VEB and VEB TC
counters before they are written into ethtool buffer.
Before the patch ethtool counters may fell behind interface counters.

Signed-off-by: Dmitrii Golovanov <dmitrii.golovanov@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h         | 1 +
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 8 +++++++-
 drivers/net/ethernet/intel/i40e/i40e_main.c    | 2 +-
 3 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 84bd06901014..3e535d3263b3 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -1021,6 +1021,7 @@ i40e_find_vsi_by_type(struct i40e_pf *pf, u16 type)
 	return NULL;
 }
 void i40e_update_stats(struct i40e_vsi *vsi);
+void i40e_update_veb_stats(struct i40e_veb *veb);
 void i40e_update_eth_stats(struct i40e_vsi *vsi);
 struct rtnl_link_stats64 *i40e_get_vsi_stats_struct(struct i40e_vsi *vsi);
 int i40e_fetch_switch_configuration(struct i40e_pf *pf,
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 527eb52c5401..65e016f54f58 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -2250,7 +2250,7 @@ static void i40e_get_ethtool_stats(struct net_device *netdev,
 	struct i40e_netdev_priv *np = netdev_priv(netdev);
 	struct i40e_vsi *vsi = np->vsi;
 	struct i40e_pf *pf = vsi->back;
-	struct i40e_veb *veb = pf->veb[pf->lan_veb];
+	struct i40e_veb *veb = NULL;
 	unsigned int i;
 	bool veb_stats;
 	u64 *p = data;
@@ -2273,8 +2273,14 @@ static void i40e_get_ethtool_stats(struct net_device *netdev,
 		goto check_data_pointer;
 
 	veb_stats = ((pf->lan_veb != I40E_NO_VEB) &&
+		     (pf->lan_veb < I40E_MAX_VEB) &&
 		     (pf->flags & I40E_FLAG_VEB_STATS_ENABLED));
 
+	if (veb_stats) {
+		veb = pf->veb[pf->lan_veb];
+		i40e_update_veb_stats(veb);
+	}
+
 	/* If veb stats aren't enabled, pass NULL instead of the veb so that
 	 * we initialize stats to zero and update the data pointer
 	 * intelligently
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 5361c08328f7..8dac7a87834d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -677,7 +677,7 @@ void i40e_update_eth_stats(struct i40e_vsi *vsi)
  * i40e_update_veb_stats - Update Switch component statistics
  * @veb: the VEB being updated
  **/
-static void i40e_update_veb_stats(struct i40e_veb *veb)
+void i40e_update_veb_stats(struct i40e_veb *veb)
 {
 	struct i40e_pf *pf = veb->pf;
 	struct i40e_hw *hw = &pf->hw;
-- 
2.21.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
