Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D08AB2F36F2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Jan 2021 18:22:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3978E86CD3;
	Tue, 12 Jan 2021 17:22:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sWhzRGY8JL1M; Tue, 12 Jan 2021 17:22:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 78F3B86DD3;
	Tue, 12 Jan 2021 17:22:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 95A151BF36B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jan 2021 17:22:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 90AF4862C7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jan 2021 17:22:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wQ6yXDFA25De for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Jan 2021 17:22:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3256586274
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jan 2021 17:22:00 +0000 (UTC)
IronPort-SDR: yVAmmd3hzhuHu8NWQNpeedu0vXxivNFjNarmN9NZVtsmrPuDQKhHAJd4dVANDZPV3D4ZOP+WRN
 c/Fh9UwuceUA==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="157254309"
X-IronPort-AV: E=Sophos;i="5.79,341,1602572400"; d="scan'208";a="157254309"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 09:21:59 -0800
IronPort-SDR: ywgAe/U6gLvyyKVZqYARVVHun0VvgabsC/Y3mWuncBPns59KNI5n9881fSiOpNrrXMhxC1mOMH
 DGZwaWpIfMhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,342,1602572400"; d="scan'208";a="353106533"
Received: from amlin-018-053.igk.intel.com (HELO 10.252.34.83) ([10.102.18.53])
 by fmsmga008.fm.intel.com with ESMTP; 12 Jan 2021 09:21:58 -0800
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 12 Jan 2021 17:14:31 +0000
Message-Id: <20210112171431.457524-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v3] i40e: Fix for link-flapping
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

VF queues were not brought up when PF was brought up after being downed
if the VF driver disabled VFs queues during PF down. This could happen
in some older or external VF driver implementations.
The problem was that PF driver used vf->queues_enabled as a condition
to decide what link-state it would send out which caused the issue.
Remove the check for vf->queues_enabled in the VF link notify. Now VF
will always be notified of the current link status. Also remove
the queues_enabled member from i40e_vf structure as it is not used
anymore. Also refactor repeated link state reporting code into a
separate helper function i40e_set_vf_link_state().
Otherwise VNF implementation was broken and caused a link flap.

v2: improve commit message
v3: net tree target

Fixes: 2ad1274fa35a ("i40e: don't report link up for a VF who hasn't
enabled")
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 115 ++++++++++--------
 .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |   1 -
 2 files changed, 67 insertions(+), 49 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 7efc61a..6621943 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -39,6 +39,66 @@ static void i40e_vc_vf_broadcast(struct i40e_pf *pf,
 	}
 }
 
+/**
+ * i40e_vc_link_speed2mbps
+ * converts i40e_aq_link_speed to integer value of Mbps
+ * @link_speed: the speed to convert
+ *
+ * return the speed as direct value of Mbps.
+ **/
+static u32
+i40e_vc_link_speed2mbps(enum i40e_aq_link_speed link_speed)
+{
+	switch (link_speed) {
+	case I40E_LINK_SPEED_100MB:
+		return SPEED_100;
+	case I40E_LINK_SPEED_1GB:
+		return SPEED_1000;
+	case I40E_LINK_SPEED_2_5GB:
+		return SPEED_2500;
+	case I40E_LINK_SPEED_5GB:
+		return SPEED_5000;
+	case I40E_LINK_SPEED_10GB:
+		return SPEED_10000;
+	case I40E_LINK_SPEED_20GB:
+		return SPEED_20000;
+	case I40E_LINK_SPEED_25GB:
+		return SPEED_25000;
+	case I40E_LINK_SPEED_40GB:
+		return SPEED_40000;
+	case I40E_LINK_SPEED_UNKNOWN:
+		return SPEED_UNKNOWN;
+	}
+	return SPEED_UNKNOWN;
+}
+
+/**
+ * i40e_set_vf_link_state
+ * @vf: pointer to the VF structure
+ * @pfe: pointer to PF event structure
+ * @ls: pointer to link status structure
+ *
+ * set a link state on a single vf
+ **/
+static void i40e_set_vf_link_state(struct i40e_vf *vf,
+				   struct virtchnl_pf_event *pfe, struct i40e_link_status *ls)
+{
+	u8 link_status = ls->link_info & I40E_AQ_LINK_UP;
+
+	if (vf->link_forced)
+		link_status = vf->link_up;
+
+	if (vf->driver_caps & VIRTCHNL_VF_CAP_ADV_LINK_SPEED) {
+		pfe->event_data.link_event_adv.link_speed = link_status ?
+			i40e_vc_link_speed2mbps(ls->link_speed) : 0;
+		pfe->event_data.link_event_adv.link_status = link_status;
+	} else {
+		pfe->event_data.link_event.link_speed = link_status ?
+			i40e_virtchnl_link_speed(ls->link_speed) : 0;
+		pfe->event_data.link_event.link_status = link_status;
+	}
+}
+
 /**
  * i40e_vc_notify_vf_link_state
  * @vf: pointer to the VF structure
@@ -56,20 +116,7 @@ static void i40e_vc_notify_vf_link_state(struct i40e_vf *vf)
 	pfe.event = VIRTCHNL_EVENT_LINK_CHANGE;
 	pfe.severity = PF_EVENT_SEVERITY_INFO;
 
-	/* Always report link is down if the VF queues aren't enabled */
-	if (!vf->queues_enabled) {
-		pfe.event_data.link_event.link_status = false;
-		pfe.event_data.link_event.link_speed = 0;
-	} else if (vf->link_forced) {
-		pfe.event_data.link_event.link_status = vf->link_up;
-		pfe.event_data.link_event.link_speed =
-			(vf->link_up ? i40e_virtchnl_link_speed(ls->link_speed) : 0);
-	} else {
-		pfe.event_data.link_event.link_status =
-			ls->link_info & I40E_AQ_LINK_UP;
-		pfe.event_data.link_event.link_speed =
-			i40e_virtchnl_link_speed(ls->link_speed);
-	}
+	i40e_set_vf_link_state(vf, &pfe, ls);
 
 	i40e_aq_send_msg_to_vf(hw, abs_vf_id, VIRTCHNL_OP_EVENT,
 			       0, (u8 *)&pfe, sizeof(pfe), NULL);
@@ -1946,6 +1993,7 @@ static int i40e_vc_get_vf_resources_msg(struct i40e_vf *vf, u8 *msg)
 				  VIRTCHNL_VF_OFFLOAD_VLAN;
 
 	vfres->vf_cap_flags = VIRTCHNL_VF_OFFLOAD_L2;
+	vfres->vf_cap_flags |= VIRTCHNL_VF_CAP_ADV_LINK_SPEED;
 	vsi = pf->vsi[vf->lan_vsi_idx];
 	if (!vsi->info.pvid)
 		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_VLAN;
@@ -2443,8 +2491,6 @@ static int i40e_vc_enable_queues_msg(struct i40e_vf *vf, u8 *msg)
 		}
 	}
 
-	vf->queues_enabled = true;
-
 error_param:
 	/* send the response to the VF */
 	return i40e_vc_send_resp_to_vf(vf, VIRTCHNL_OP_ENABLE_QUEUES,
@@ -2466,9 +2512,6 @@ static int i40e_vc_disable_queues_msg(struct i40e_vf *vf, u8 *msg)
 	struct i40e_pf *pf = vf->pf;
 	i40e_status aq_ret = 0;
 
-	/* Immediately mark queues as disabled */
-	vf->queues_enabled = false;
-
 	if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
 		aq_ret = I40E_ERR_PARAM;
 		goto error_param;
@@ -3698,26 +3741,8 @@ static int i40e_vc_add_qch_msg(struct i40e_vf *vf, u8 *msg)
 	}
 
 	/* get link speed in MB to validate rate limit */
-	switch (ls->link_speed) {
-	case VIRTCHNL_LINK_SPEED_100MB:
-		speed = SPEED_100;
-		break;
-	case VIRTCHNL_LINK_SPEED_1GB:
-		speed = SPEED_1000;
-		break;
-	case VIRTCHNL_LINK_SPEED_10GB:
-		speed = SPEED_10000;
-		break;
-	case VIRTCHNL_LINK_SPEED_20GB:
-		speed = SPEED_20000;
-		break;
-	case VIRTCHNL_LINK_SPEED_25GB:
-		speed = SPEED_25000;
-		break;
-	case VIRTCHNL_LINK_SPEED_40GB:
-		speed = SPEED_40000;
-		break;
-	default:
+	speed = i40e_vc_link_speed2mbps(ls->link_speed);
+	if (speed == SPEED_UNKNOWN) {
 		dev_err(&pf->pdev->dev,
 			"Cannot detect link speed\n");
 		aq_ret = I40E_ERR_PARAM;
@@ -4466,23 +4491,17 @@ int i40e_ndo_set_vf_link_state(struct net_device *netdev, int vf_id, int link)
 	switch (link) {
 	case IFLA_VF_LINK_STATE_AUTO:
 		vf->link_forced = false;
-		pfe.event_data.link_event.link_status =
-			pf->hw.phy.link_info.link_info & I40E_AQ_LINK_UP;
-		pfe.event_data.link_event.link_speed =
-			(enum virtchnl_link_speed)
-			pf->hw.phy.link_info.link_speed;
+		i40e_set_vf_link_state(vf, &pfe, ls);
 		break;
 	case IFLA_VF_LINK_STATE_ENABLE:
 		vf->link_forced = true;
 		vf->link_up = true;
-		pfe.event_data.link_event.link_status = true;
-		pfe.event_data.link_event.link_speed = i40e_virtchnl_link_speed(ls->link_speed);
+		i40e_set_vf_link_state(vf, &pfe, ls);
 		break;
 	case IFLA_VF_LINK_STATE_DISABLE:
 		vf->link_forced = true;
 		vf->link_up = false;
-		pfe.event_data.link_event.link_status = false;
-		pfe.event_data.link_event.link_speed = 0;
+		i40e_set_vf_link_state(vf, &pfe, ls);
 		break;
 	default:
 		ret = -EINVAL;
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
 

base-commit: 82edab16ec1fc048ef6a9a96ec5a0d1374f5bf3b
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
