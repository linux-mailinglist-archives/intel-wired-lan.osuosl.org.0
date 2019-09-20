Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE901B96AC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Sep 2019 19:40:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8D17E87F9C;
	Fri, 20 Sep 2019 17:40:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qs0QQy26t1lb; Fri, 20 Sep 2019 17:40:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E729A87A8D;
	Fri, 20 Sep 2019 17:39:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 78E2A1BF9AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2019 17:39:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 75F2D85764
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2019 17:39:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MnVMVbUFJQ1i for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Sep 2019 17:39:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1755E8583F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Sep 2019 17:39:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Sep 2019 10:39:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,529,1559545200"; d="scan'208";a="212635335"
Received: from alicemic-1.jf.intel.com ([10.166.17.62])
 by fmsmga004.fm.intel.com with ESMTP; 20 Sep 2019 10:39:51 -0700
From: Alice Michael <alice.michael@intel.com>
To: alice.michael@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Fri, 20 Sep 2019 02:17:20 -0700
Message-Id: <20190920091724.51767-6-alice.michael@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190920091724.51767-1-alice.michael@intel.com>
References: <20190920091724.51767-1-alice.michael@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next PATCH S10 06/10] i40e: remove the macro
 with it's argument reuse
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Remove macro and call i40e_update_vfid_in_stats() function directly
to avoid checkpatch.pl complains about macro argument reuse and
possible side effects.

Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 .../net/ethernet/intel/i40e/i40e_ethtool.c    | 28 ++++---------------
 1 file changed, 6 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 67a6bd52eb95..883b43ac9816 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -2417,7 +2417,7 @@ static void i40e_get_ethtool_stats(struct net_device *netdev,
 }
 
 /**
- * __i40e_update_vfid_in_stats_strings - print VF num to stats names
+ * i40e_update_vfid_in_stats - print VF num to stats names
  * @stats_extra: array of stats structs with stats name strings
  * @strings_num: number of stats name strings in array above (length)
  * @vf_id: VF number to update stats name strings with
@@ -2425,8 +2425,8 @@ static void i40e_get_ethtool_stats(struct net_device *netdev,
  * Helper function to i40e_get_stat_strings() in case of extra stats.
  **/
 static inline void
-__i40e_update_vfid_in_stats_strings(struct i40e_stats stats_extra[],
-				    int strings_num, int vf_id)
+i40e_update_vfid_in_stats(struct i40e_stats stats_extra[],
+			  int strings_num, int vf_id)
 {
 	int i;
 
@@ -2438,24 +2438,6 @@ __i40e_update_vfid_in_stats_strings(struct i40e_stats stats_extra[],
 	}
 }
 
-/**
- * i40e_update_vfid_in_stats - print VF num to stat names
- * @stats_extra: array of stats structs with stats name strings
- * @vf_id: VF number to update stats name strings with
- *
- * Helper macro to i40e_get_stat_strings() to ease use of
- * __i40e_update_vfid_in_stats_strings() function due to extra stats.
- *
- * Macro to ease the use of __i40e_update_vfid_in_stats_strings by taking
- * a static constant stats array and passing the ARRAY_SIZE(). This avoids typos
- * by ensuring that we pass the size associated with the given stats array.
- *
- * The parameter @stats_extra is evaluated twice, so parameters with side
- * effects should be avoided.
- **/
-#define i40e_update_vfid_in_stats(stats_extra, vf_id) \
-__i40e_update_vfid_in_stats_strings(stats_extra, ARRAY_SIZE(stats_extra), vf_id)
-
 /**
  * i40e_get_stat_strings - copy stat strings into supplied buffer
  * @netdev: the netdev to collect strings for
@@ -2499,7 +2481,9 @@ static void i40e_get_stat_strings(struct net_device *netdev, u8 *data)
 		i40e_add_stat_strings(&data, i40e_gstrings_pfc_stats, i);
 
 	for (i = 0; i < I40E_STATS_EXTRA_COUNT; i++) {
-		i40e_update_vfid_in_stats(i40e_gstrings_eth_stats_extra, i);
+		i40e_update_vfid_in_stats
+			(i40e_gstrings_eth_stats_extra,
+			 ARRAY_SIZE(i40e_gstrings_eth_stats_extra), i);
 		i40e_add_stat_strings(&data, i40e_gstrings_eth_stats_extra);
 	}
 
-- 
2.21.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
