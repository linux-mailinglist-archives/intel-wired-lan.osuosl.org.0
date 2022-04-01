Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 843D04EEEA7
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Apr 2022 15:58:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E11426F63D;
	Fri,  1 Apr 2022 13:58:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0Ida1zJEUYuJ; Fri,  1 Apr 2022 13:58:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CAA7A60E96;
	Fri,  1 Apr 2022 13:58:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BA2561BF308
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Apr 2022 12:51:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B5E0F41514
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Apr 2022 12:51:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GRxMDL-yk9mn for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Apr 2022 12:51:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A438A41508
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Apr 2022 12:51:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648817472; x=1680353472;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0YIfjUbg/7od2kjsLpWd57vPujLyHSDJsI6ERY2E9g4=;
 b=IrRV7i+sUT27ckFB7Ba+6m7E7mrZnAf3dsb9sivvM4nprOWpSffeWLRa
 +VbBazd8I0okQEKW4NiUe/HzkpTABr+XFGGH7rVwvhW4wc+s5uDOMTH69
 0O2oW4kjZbmkRVUFDBfYcMDbMT5jw5jtsHP74R5rVZeecaBe4zvZDYke+
 K3qL/ytOXqkLZBLnqL0FdT/cuWTR8byyeynNfQ0Lhqz+Cyd3CrP4Xlkcv
 vUENNwJLVe5Zp1QGjj4aRYE2YMIikFqxkOwhDQQssDAs/MZZLYM8a6aUO
 8Sk+c7kunOpIs27NR9Tso0I5Rah/Sk35o7eZ7lCuv9pwcus11OTNu1XOO w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10303"; a="285060010"
X-IronPort-AV: E=Sophos;i="5.90,227,1643702400"; d="scan'208";a="285060010"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 05:51:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,227,1643702400"; d="scan'208";a="843432059"
Received: from propan.igk.intel.com ([10.211.8.82])
 by fmsmga005.fm.intel.com with ESMTP; 01 Apr 2022 05:51:10 -0700
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  1 Apr 2022 13:48:26 +0000
Message-Id: <20220401134826.627557-1-anatolii.gerasymenko@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 01 Apr 2022 13:58:08 +0000
Subject: [Intel-wired-lan] [PATCH net v1] ice: Do not skip not enabled
 queues in ice_vc_dis_qs_msg
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
Cc: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Disable check for queue being enabled in ice_vc_dis_qs_msg, because
there could be a case when queues were created, but were not enabled.
We still need to delete those queues.

Normal workflow for VF looks like:
Enable path:
VIRTCHNL_OP_ADD_ETH_ADDR (opcode 10)
VIRTCHNL_OP_CONFIG_VSI_QUEUES (opcode 6)
VIRTCHNL_OP_ENABLE_QUEUES (opcode 8)

Disable path:
VIRTCHNL_OP_DISABLE_QUEUES (opcode 9)
VIRTCHNL_OP_DEL_ETH_ADDR (opcode 11)

The issue appears only in stress conditions when VF is enabled and
disabled very fast.
Eventually there will be a case, when queues are created by
VIRTCHNL_OP_CONFIG_VSI_QUEUES, but are not enabled by
VIRTCHNL_OP_ENABLE_QUEUES.
In turn, these queues are not deleted by VIRTCHNL_OP_DISABLE_QUEUES,
because there is a check whether queues are enabled in
ice_vc_dis_qs_msg.

When we bring up the VF again, we will see the "Failed to set LAN Tx queue
context" error during VIRTCHNL_OP_CONFIG_VSI_QUEUES step. This
happens because old 16 queues were not deleted and VF requests to create
16 more, but ice_sched_get_free_qparent in ice_ena_vsi_txq would fail to
find a parent node for first newly requested queue (because all nodes
are allocated to 16 old queues).

Testing Hints:

Just enable and disable VF fast enough, so it would be disabled before
reaching VIRTCHNL_OP_ENABLE_QUEUES.

while true; do
        ip link set dev ens785f0v0 up
        sleep 0.065 # adjust delay value for you machine
        ip link set dev ens785f0v0 down
done

Fixes: 77ca27c41705 ("ice: add support for virtchnl_queue_select.[tx|rx]_queues bitmap")

Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
---
This is an urgent fix for https://bugzilla.redhat.com/show_bug.cgi?id=1997012
Send it, please, directly to net. Thanks!
---
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 3f1a63815bac..69ff4b929772 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -1358,9 +1358,9 @@ static int ice_vc_dis_qs_msg(struct ice_vf *vf, u8 *msg)
 				goto error_param;
 			}
 
-			/* Skip queue if not enabled */
 			if (!test_bit(vf_q_id, vf->txq_ena))
-				continue;
+				dev_dbg(ice_pf_to_dev(vsi->back), "Queue %u on VSI %u is not enabled, but stopping it anyway\n",
+					vf_q_id, vsi->vsi_num);
 
 			ice_fill_txq_meta(vsi, ring, &txq_meta);
 
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
