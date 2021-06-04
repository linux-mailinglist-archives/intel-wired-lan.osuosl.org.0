Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D97339BE0B
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Jun 2021 19:05:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BCF8B415E8;
	Fri,  4 Jun 2021 17:05:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Uwx3fui8MZvA; Fri,  4 Jun 2021 17:05:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A33BE415BC;
	Fri,  4 Jun 2021 17:05:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EDEEE1C1170
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:05:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D9F3F415B7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:05:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j5uXsJE4N6uT for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Jun 2021 17:05:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E39AF415E5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:05:05 +0000 (UTC)
IronPort-SDR: m/cr0R7VKwkC365t7FAV34P73k46SJl1nxibHH6mzIrchXR1Dv3CwY3yMuW1NePZUr+L7fCqPo
 ZufS/VQltL/A==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="191666478"
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="191666478"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 10:05:03 -0700
IronPort-SDR: BL8nqY9JR6rflfi/S/HM/2rEutMoTdp3FPfbK4yGdyFvwJJirB4pm3T1v5gdoIpsT7bUJrbSqA
 iQ/dg3JnCI8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="634086388"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.129])
 by fmsmga006.fm.intel.com with ESMTP; 04 Jun 2021 10:05:03 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  4 Jun 2021 09:53:29 -0700
Message-Id: <20210604165335.33329-9-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210604165335.33329-1-anthony.l.nguyen@intel.com>
References: <20210604165335.33329-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 09/15] iavf: Fix carrier on state
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

Carrier on is not set if the link up event (VIRTCHNL_EVENT_LINK_CHANGE)
occurs before the queues are enabled (VIRTCHNL_OP_ENABLE_QUEUES) since
setting carrier on during a link up event when queues are not enabled
can result in a Tx hang.

Therefore set carrier on when queues are enabled if link is up and carrier
is off.

Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 69e479eb5534..3c3fd604218e 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -1685,8 +1685,17 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 		break;
 	case VIRTCHNL_OP_ENABLE_QUEUES:
 		/* enable transmits */
-		if (adapter->state == __IAVF_RUNNING)
+		if (adapter->state == __IAVF_RUNNING) {
 			iavf_irq_enable(adapter, true);
+
+			/* If queues not enabled when handling link event,
+			 * then set carrier on now
+			 */
+			if (adapter->link_up && !netif_carrier_ok(netdev)) {
+				netif_tx_start_all_queues(netdev);
+				netif_carrier_on(netdev);
+			}
+		}
 		adapter->flags &= ~IAVF_FLAG_QUEUES_DISABLED;
 		break;
 	case VIRTCHNL_OP_DISABLE_QUEUES:
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
