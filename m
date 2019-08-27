Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 160FE9F569
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Aug 2019 23:43:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BF45F227CC;
	Tue, 27 Aug 2019 21:43:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KJ4xdk1OB+Cs; Tue, 27 Aug 2019 21:43:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9C77D232F2;
	Tue, 27 Aug 2019 21:43:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9B6481BF97D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2019 21:43:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 987AA868CB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2019 21:43:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D-7Czl-R64Av for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Aug 2019 21:43:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B437386B15
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2019 21:43:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 14:42:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,438,1559545200"; d="scan'208";a="174703662"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga008.jf.intel.com with ESMTP; 27 Aug 2019 14:42:59 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 27 Aug 2019 06:13:47 -0700
Message-Id: <20190827131354.12703-2-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190827131354.12703-1-anthony.l.nguyen@intel.com>
References: <20190827131354.12703-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S28 2/9] ice: report link down for VF when
 PF's queues are not enabled
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

From: Lukasz Czapnik <lukasz.czapnik@intel.com>

This is port of a fix from i40e commit 2ad1274fa35a ("i40e: don't
report link up for a VF who hasn't enabled queues")

Older VF drivers do not respond well to receiving a link
up notification before queues are enabled. This can cause their state
machine to think that it is safe to send traffic. This results in a Tx
hang on the VF.

Record whether the PF has actually enabled queues for the VF. When
reporting link status, always report link down if the queues aren't
enabled. In this way, the VF driver will never receive a link up
notification until after its queues are enabled.

Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 3ba6613048ef..1ec2a037a369 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -129,7 +129,10 @@ static void ice_vc_notify_vf_link_state(struct ice_vf *vf)
 	pfe.event = VIRTCHNL_EVENT_LINK_CHANGE;
 	pfe.severity = PF_EVENT_SEVERITY_INFO;
 
-	if (vf->link_forced)
+	/* Always report link is down if the VF queues aren't enabled */
+	if (!vf->num_qs_ena)
+		ice_set_pfe_link(vf, &pfe, ICE_AQ_LINK_SPEED_UNKNOWN, false);
+	else if (vf->link_forced)
 		ice_set_pfe_link_forced(vf, &pfe, vf->link_up);
 	else
 		ice_set_pfe_link(vf, &pfe, ls->link_speed, ls->link_info &
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
