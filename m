Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 64EFB1D5D33
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 May 2020 02:39:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CE69987F93;
	Sat, 16 May 2020 00:39:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EDz2UDnfEMj0; Sat, 16 May 2020 00:39:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CDE3788017;
	Sat, 16 May 2020 00:39:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4E7EE1BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:39:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4477687C49
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:39:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R+LxN0lBYGFB for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 00:39:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 349C387740
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:39:19 +0000 (UTC)
IronPort-SDR: /kBw2fCUO3V0ScTWXn8zBJFKad2iANNkgizWblRPmQLifZCYJ1m+JhS4zFaQJC92czBYanN2mT
 0LjoYLaP2C8Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 17:39:18 -0700
IronPort-SDR: RBdVAeE0rFaONrnv5pyQVuH7/qzEN0KLap5l59rMOcubYwRZ9zZytFhHGuw1iYr6GkUoq83Rmv
 upaCkf8qQBig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; d="scan'208";a="307560857"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by FMSMGA003.fm.intel.com with ESMTP; 15 May 2020 17:39:18 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 May 2020 17:36:31 -0700
Message-Id: <20200516003644.4658-2-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200516003644.4658-1-anthony.l.nguyen@intel.com>
References: <20200516003644.4658-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S43 02/15] ice: print Rx MDD auto reset
 message before VF reset
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Paul Greenwalt <paul.greenwalt@intel.com>

Rx MDD auto reset message was not being logged because logging occurred
after the VF reset and the VF MDD data was reinitialized.

Log the Rx MDD auto reset message before triggering the VF reset.

Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c     |  7 +++++-
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 25 ++++++++++++++-----
 .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |  2 ++
 3 files changed, 27 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 6af21510c694..9a05945c6419 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1326,8 +1326,13 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 			 * PF can be configured to reset the VF through ethtool
 			 * private flag mdd-auto-reset-vf.
 			 */
-			if (test_bit(ICE_FLAG_MDD_AUTO_RESET_VF, pf->flags))
+			if (test_bit(ICE_FLAG_MDD_AUTO_RESET_VF, pf->flags)) {
+				/* VF MDD event counters will be cleared by
+				 * reset, so print the event prior to reset.
+				 */
+				ice_print_vf_rx_mdd_event(vf);
 				ice_reset_vf(&pf->vf[i], false);
+			}
 		}
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index a046bd3431c6..7c8c1687f0bf 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -3764,6 +3764,24 @@ int ice_get_vf_stats(struct net_device *netdev, int vf_id,
 	return 0;
 }
 
+/**
+ * ice_print_vf_rx_mdd_event - print VF Rx malicious driver detect event
+ * @vf: pointer to the VF structure
+ */
+void ice_print_vf_rx_mdd_event(struct ice_vf *vf)
+{
+	struct ice_pf *pf = vf->pf;
+	struct device *dev;
+
+	dev = ice_pf_to_dev(pf);
+
+	dev_info(dev, "%d Rx Malicious Driver Detection events detected on PF %d VF %d MAC %pM. mdd-auto-reset-vfs=%s\n",
+		 vf->mdd_rx_events.count, pf->hw.pf_id, vf->vf_id,
+		 vf->dflt_lan_addr.addr,
+		 test_bit(ICE_FLAG_MDD_AUTO_RESET_VF, pf->flags)
+			  ? "on" : "off");
+}
+
 /**
  * ice_print_vfs_mdd_event - print VFs malicious driver detect event
  * @pf: pointer to the PF structure
@@ -3793,12 +3811,7 @@ void ice_print_vfs_mdd_events(struct ice_pf *pf)
 		if (vf->mdd_rx_events.count != vf->mdd_rx_events.last_printed) {
 			vf->mdd_rx_events.last_printed =
 							vf->mdd_rx_events.count;
-
-			dev_info(dev, "%d Rx Malicious Driver Detection events detected on PF %d VF %d MAC %pM. mdd-auto-reset-vfs=%s\n",
-				 vf->mdd_rx_events.count, hw->pf_id, i,
-				 vf->dflt_lan_addr.addr,
-				 test_bit(ICE_FLAG_MDD_AUTO_RESET_VF, pf->flags)
-					  ? "on" : "off");
+			ice_print_vf_rx_mdd_event(vf);
 		}
 
 		/* only print Tx MDD event message if there are new events */
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
index 474293ff4fe5..0adff89a6749 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
@@ -132,6 +132,7 @@ bool ice_is_any_vf_in_promisc(struct ice_pf *pf);
 void
 ice_vf_lan_overflow_event(struct ice_pf *pf, struct ice_rq_event_info *event);
 void ice_print_vfs_mdd_events(struct ice_pf *pf);
+void ice_print_vf_rx_mdd_event(struct ice_vf *vf);
 #else /* CONFIG_PCI_IOV */
 #define ice_process_vflr_event(pf) do {} while (0)
 #define ice_free_vfs(pf) do {} while (0)
@@ -141,6 +142,7 @@ void ice_print_vfs_mdd_events(struct ice_pf *pf);
 #define ice_set_vf_state_qs_dis(vf) do {} while (0)
 #define ice_vf_lan_overflow_event(pf, event) do {} while (0)
 #define ice_print_vfs_mdd_events(pf) do {} while (0)
+#define ice_print_vf_rx_mdd_event(vf) do {} while (0)
 
 static inline bool
 ice_reset_all_vfs(struct ice_pf __always_unused *pf,
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
