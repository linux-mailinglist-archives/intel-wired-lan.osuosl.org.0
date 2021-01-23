Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C45E33011B0
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Jan 2021 01:29:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 58E8B873AD;
	Sat, 23 Jan 2021 00:29:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E+ElBh9efTX6; Sat, 23 Jan 2021 00:29:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BD78B873E2;
	Sat, 23 Jan 2021 00:29:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 91C6F1BF335
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Jan 2021 00:29:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8C9EF873B1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Jan 2021 00:29:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mzk+jgmZ8YXq for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Jan 2021 00:29:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 91587873AD
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Jan 2021 00:29:39 +0000 (UTC)
IronPort-SDR: cxdYxGe6h7auWYv02CKSuOv2AslMGaQowuIHaN+PHJ7vH65DNPW04JWSNyAVSdwfZSdx6On+on
 zC7InymuG21A==
X-IronPort-AV: E=McAfee;i="6000,8403,9872"; a="198292195"
X-IronPort-AV: E=Sophos;i="5.79,368,1602572400"; d="scan'208";a="198292195"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 16:29:34 -0800
IronPort-SDR: en/tMIv4N84I24nB6uehULFWP0zv5TVfVtD7jYLCbTyTT1kPbhBuIpquA9YNVTupeyJpZG/k/o
 CpBF3aARNMEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,368,1602572400"; d="scan'208";a="468211626"
Received: from amlin-018-053.igk.intel.com (HELO 10.252.34.83) ([10.102.18.53])
 by fmsmga001.fm.intel.com with ESMTP; 22 Jan 2021 16:29:33 -0800
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sat, 23 Jan 2021 00:22:23 +0000
Message-Id: <20210123002223.361450-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v5 1/2] i40e: Revert "i40e: don't
 report link up for a VF who hasn't enabled queues"
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

This reverts commit 2ad1274fa35ace5c6360762ba48d33b63da2396c

VF queues were not brought up when PF was brought up after being
downed if the VF driver disabled VFs queues during PF down.
This could happen in some older or external VF driver implementations.
The problem was that PF driver used vf->queues_enabled as a condition
to decide what link-state it would send out which caused the issue.

Remove the check for vf->queues_enabled in the VF link notify.
Now VF will always be notified of the current link status.
Also remove the queues_enabled member from i40e_vf structure as it is
not used anymore. Otherwise VNF implementation was broken and caused
a link flap.

Fixes: 2ad1274fa35a ("i40e: don't report link up for a VF who hasn't enabled")
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
v2: improve commit message
v3: net tree target
v4: split into 2 patches
v5: improve explanation of revert commit
---
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 13 +------------
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h |  1 -
 2 files changed, 1 insertion(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 7efc61a..1b6ec9b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -55,12 +55,7 @@ static void i40e_vc_notify_vf_link_state(struct i40e_vf *vf)
 
 	pfe.event = VIRTCHNL_EVENT_LINK_CHANGE;
 	pfe.severity = PF_EVENT_SEVERITY_INFO;
-
-	/* Always report link is down if the VF queues aren't enabled */
-	if (!vf->queues_enabled) {
-		pfe.event_data.link_event.link_status = false;
-		pfe.event_data.link_event.link_speed = 0;
-	} else if (vf->link_forced) {
+	if (vf->link_forced) {
 		pfe.event_data.link_event.link_status = vf->link_up;
 		pfe.event_data.link_event.link_speed =
 			(vf->link_up ? i40e_virtchnl_link_speed(ls->link_speed) : 0);
@@ -70,7 +65,6 @@ static void i40e_vc_notify_vf_link_state(struct i40e_vf *vf)
 		pfe.event_data.link_event.link_speed =
 			i40e_virtchnl_link_speed(ls->link_speed);
 	}
-
 	i40e_aq_send_msg_to_vf(hw, abs_vf_id, VIRTCHNL_OP_EVENT,
 			       0, (u8 *)&pfe, sizeof(pfe), NULL);
 }
@@ -2443,8 +2437,6 @@ static int i40e_vc_enable_queues_msg(struct i40e_vf *vf, u8 *msg)
 		}
 	}
 
-	vf->queues_enabled = true;
-
 error_param:
 	/* send the response to the VF */
 	return i40e_vc_send_resp_to_vf(vf, VIRTCHNL_OP_ENABLE_QUEUES,
@@ -2466,9 +2458,6 @@ static int i40e_vc_disable_queues_msg(struct i40e_vf *vf, u8 *msg)
 	struct i40e_pf *pf = vf->pf;
 	i40e_status aq_ret = 0;
 
-	/* Immediately mark queues as disabled */
-	vf->queues_enabled = false;
-
 	if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
 		aq_ret = I40E_ERR_PARAM;
 		goto error_param;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
index 5491215..091e32c 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
@@ -98,7 +98,6 @@ struct i40e_vf {
 	unsigned int tx_rate;	/* Tx bandwidth limit in Mbps */
 	bool link_forced;
 	bool link_up;		/* only valid if VF link is forced */
-	bool queues_enabled;	/* true if the VF queues are enabled */
 	bool spoofchk;
 	u16 num_vlan;
 
-- 
2.18.4

---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia Gospodarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 | Kapita zakadowy 200.000 PLN.
Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i moe zawiera informacje poufne. W razie przypadkowego otrzymania tej wiadomoci, prosimy o powiadomienie nadawcy oraz trwae jej usunicie; jakiekolwiek przegldanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
