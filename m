Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AEEC83A71B9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Jun 2021 00:03:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3C0D983BBA;
	Mon, 14 Jun 2021 22:03:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kpXvTV6iHVip; Mon, 14 Jun 2021 22:03:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E948383B6B;
	Mon, 14 Jun 2021 22:03:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 08F921BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jun 2021 22:03:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E46DE4052C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jun 2021 22:03:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ki2ZiMIzpHes for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Jun 2021 22:03:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5EA924050E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Jun 2021 22:03:01 +0000 (UTC)
IronPort-SDR: 0pq6iQ5ZosdHiaBWWrexEOXl2k3XEX/e6hgMzx2Bnw2+iLXbIUp61KbDzb+r1cqc35xzizYHRZ
 VRDqu2Kfnrhg==
X-IronPort-AV: E=McAfee;i="6200,9189,10015"; a="186259056"
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="186259056"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 15:02:59 -0700
IronPort-SDR: Qs2zWa+3aZwjgOYgrjmswkKtWGl9dUCs+9s0sTBWHgnZ9IagNo7EtlfWu7Sp9ItNOGQHf1kb+X
 OQdZxnckEyDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="471448038"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga004.fm.intel.com with ESMTP; 14 Jun 2021 15:02:55 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 14 Jun 2021 15:02:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 14 Jun 2021 15:02:53 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.008;
 Mon, 14 Jun 2021 15:02:52 -0700
From: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>
To: "Sornek, Karen" <karen.sornek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] i40e: Add check for queue
 allocation for the VF and refactor VF queue requesting
Thread-Index: AQHXYQI2uzKm69zu10Wa3uyRm67ubqsUhV8A
Date: Mon, 14 Jun 2021 22:02:52 +0000
Message-ID: <emfc88e0e0-22ae-479a-94f2-666800d09efa@jbrandeb-mobl4>
References: <20210614094614.64215-1-karen.sornek@intel.com>
In-Reply-To: <20210614094614.64215-1-karen.sornek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: eM_Client/8.2.1473.0
x-originating-ip: [10.22.254.132]
Content-ID: <D4EC6B8089E59443B06DA9687B471801@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] i40e: Add check for queue
 allocation for the VF and refactor VF queue requesting
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
Reply-To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>
Cc: "Laba, SlawomirX" <slawomirx.laba@intel.com>, "Sornek,
 Karen" <karen.sornek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



------ Original Message ------
From: "Karen Sornek" <karen.sornek@intel.com>
To: "intel-wired-lan@lists.osuosl.org" 
<intel-wired-lan@lists.osuosl.org>
Cc: "Laba, SlawomirX" <slawomirx.laba@intel.com>; "Sornek, Karen" 
<karen.sornek@intel.com>
Sent: 6/14/2021 2:46:14 AM
Subject: [Intel-wired-lan] [PATCH net-next v1] i40e: Add check for queue 
allocation for the VF and refactor VF queue requesting

>The change implements the search for free space in PF
Please use imperative voice. "Implement the search for free space in PF 
queue pair piles, and refactor the VF queue request process to do the 
same."


>
>queue pair piles and refactors VF queue requesting.
>i40e_set_num_queues and i40e_request_queues_msg
>used similar logic to change number of queues for VF's.

Commit message should describe "why" a change is being made, think of it 
like convincing the kernel community that they need your patch in the 
kernel because <commit message.>
As it stands this commit message cannot be sent this way.

>
>
>Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
>Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
>Signed-off-by: Karen Sornek <karen.sornek@intel.com>
>---
>  drivers/net/ethernet/intel/i40e/i40e.h        |   1 +
>  drivers/net/ethernet/intel/i40e/i40e_main.c   |  33 +++++
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 135 ++++++++++++++----
>  3 files changed, 145 insertions(+), 24 deletions(-)
>
>diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
>index ea9e301c6..0f2e0e5e0 100644
>--- a/drivers/net/ethernet/intel/i40e/i40e.h
>+++ b/drivers/net/ethernet/intel/i40e/i40e.h
>@@ -1154,6 +1154,7 @@ int i40e_reconfig_rss_queues(struct i40e_pf *pf, int queue_count);
>  struct i40e_veb *i40e_veb_setup(struct i40e_pf *pf, u16 flags, u16 uplink_seid,
>  				u16 downlink_seid, u8 enabled_tc);
>  void i40e_veb_release(struct i40e_veb *veb);
>+int i40e_max_lump_qp(struct i40e_pf *pf);
>
>  int i40e_veb_config_tc(struct i40e_veb *veb, u8 enabled_tc);
>  int i40e_vsi_add_pvid(struct i40e_vsi *vsi, u16 vid);
>diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
>index fce05ad24..5d4d323c9 100644
>--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
>+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
>@@ -257,6 +257,39 @@ static int i40e_put_lump(struct i40e_lump_tracking *pile, u16 index, u16 id)
>  	return count;
>  }
>
>+/**
>+ * i40e_max_lump_qp - find a biggest size of lump available in qp_pile
>+ * @pf: pointer to private device data structure
>+ *
>+ * Returns the max size of lump in a qp_pile, or negative for error
>+ */
>+int i40e_max_lump_qp(struct i40e_pf *pf)
>+{
>+        struct i40e_lump_tracking *pile = pf->qp_pile;
>+        int pool_size, max_size;
>+        u16 i;
>+
>+        if (!pile) {
>+                dev_info(&pf->pdev->dev,
>+                         "param err: pile=%s\n",
>+                         pile ? "<valid>" : "<null>");
>+                return -EINVAL;
>+        }
>+
>+        pool_size = 0;
>+        max_size = 0;
>+        for (i = 0; i < pile->num_entries; i++) {
>+                if (pile->list[i] & I40E_PILE_VALID_BIT) {
>+                        pool_size = 0;
>+                        continue;
>+                }
>+                if (max_size < ++pool_size)
>+                        max_size = pool_size;
>+        }
>+
>+        return max_size;
>+}
>+
>  /**
>   * i40e_find_vsi_from_id - searches for the vsi with the given id
>   * @pf: the pf structure to search for the vsi
>diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
>index edfdce5f6..3d184a2ef 100644
>--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
>+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
>@@ -2616,6 +2616,116 @@ error_param:
>  				       aq_ret);
>  }
>
>+/**
>+ * i40e_find_enough_vf_queues - find enough VF queues
>+ * @vf: pointer to the VF info
>+ * @needed: the number of items needed
>+ *
>+ * Returns the base item index of the queue, or negative for error
>+ **/
>+static int i40e_find_enough_vf_queues(struct i40e_vf *vf, u16 needed)
>+{
>+	struct i40e_pf *pf = vf->pf;
>+	struct i40e_vsi *vsi = pf->vsi[vf->lan_vsi_idx];
>+	struct i40e_lump_tracking *pile;
>+	u16 cur_queues, more;
>+	int i, j;
>+
>+	cur_queues = vsi->alloc_queue_pairs;
>+
>+	/* if current number of allocated queues is enough */
>+	if (cur_queues >= needed)
>+		return vsi->base_queue;
>+
>+	pile = pf->qp_pile;
>+	if (cur_queues > 0) {
>+		/*
no linefeed after /* on the first line of network comments.

>
>+		 * if number of allocated queues is non-zero, just check if
>+		 * there are enough queues behind the allocated queues
>+		 * for more.
>+		 */
>+		more = needed - cur_queues;
>+		for (i = vsi->base_queue + cur_queues;
>+			i < pile->num_entries; i++) {
>+			if (pile->list[i] & I40E_PILE_VALID_BIT)
>+				break;
>+
>+			/* there are enough queues */
>+			if (more-- == 1)
>+				return vsi->base_queue;
>+		}
>+		/* start the linear search with that queue behind */
>+		i++;
>+	} else {
>+		/* start the linear search with an imperfect hint */
>+		i = pile->search_hint;
>+	}
>+
>+	while (i < pile->num_entries) {
>+		/* skip already allocated entries */
>+		if (pile->list[i] & I40E_PILE_VALID_BIT) {
>+			i++;
>+			continue;
>+		}
>+
>+		/* Are there enough in this lump? */
>+		for (j = 1; j < needed && (i + j) < pile->num_entries; j++) {
>+			if (pile->list[i + j] & I40E_PILE_VALID_BIT)
>+				break;
>+		}
>+
>+		if (j == needed)
>+			/* there was enough */
>+			return i;
>+
>+		/* not enough, so skip over it and continue looking */
>+		i += j;
>+	}
>+
>+	return -ENOMEM;
>+}
>+
>+static int i40e_set_vf_num_queues(struct i40e_vf *vf, int num_queues)
>+{
>+	int cur_pairs = vf->num_queue_pairs;
>+	struct i40e_pf *pf = vf->pf;
>+	int max_size;
>+
>+	if (num_queues > I40E_MAX_VF_QUEUES) {
>+		dev_err(&pf->pdev->dev, "Unable to configure %d VF queues, the maximum is %d\n",
>+			num_queues,
>+			I40E_MAX_VF_QUEUES);
>+		return -EINVAL;
>+	} else if (num_queues - cur_pairs > pf->queues_left) {
>+		dev_warn(&pf->pdev->dev, "Unable to configure %d VF queues, only %d available\n",
>+			 num_queues - cur_pairs,
>+			 pf->queues_left);
>+		return -EINVAL;
>+	} else if (i40e_find_enough_vf_queues(vf, num_queues) < 0) {
>+		dev_warn(&pf->pdev->dev, "VF requested %d more queues, but there is not enough for it.\n",
>+			 num_queues - cur_pairs);
>+		return -EINVAL;
>+	}
>+
>+	max_size = i40e_max_lump_qp(pf);
>+	if (max_size < 0) {
>+		dev_err(&pf->pdev->dev, "Unable to configure %d VF queues, pile=<null>\n",
>+			num_queues);
>+		return -EINVAL;
>+	}
>+
>+	if (num_queues > max_size) {
>+		dev_err(&pf->pdev->dev, "Unable to configure %d VF queues, only %d available\n",
>+			num_queues, max_size);
>+		return -EINVAL;
>+	}
>+
>+	/* successful request */
>+	vf->num_req_queues = num_queues;
>+	i40e_vc_reset_vf(vf, true);
>+	return 0;
>+}
>+
>  /**
>   * i40e_vc_request_queues_msg
>   * @vf: pointer to the VF info
>@@ -2631,34 +2741,11 @@ static int i40e_vc_request_queues_msg(struct i40e_vf *vf, u8 *msg)
>  	struct virtchnl_vf_res_request *vfres =
>  		(struct virtchnl_vf_res_request *)msg;
>  	u16 req_pairs = vfres->num_queue_pairs;
>-	u8 cur_pairs = vf->num_queue_pairs;
>-	struct i40e_pf *pf = vf->pf;
>
>  	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE))
>  		return -EINVAL;
>
>-	if (req_pairs > I40E_MAX_VF_QUEUES) {
>-		dev_err(&pf->pdev->dev,
>-			"VF %d tried to request more than %d queues.\n",
>-			vf->vf_id,
>-			I40E_MAX_VF_QUEUES);
>-		vfres->num_queue_pairs = I40E_MAX_VF_QUEUES;
>-	} else if (req_pairs - cur_pairs > pf->queues_left) {
>-		dev_warn(&pf->pdev->dev,
>-			 "VF %d requested %d more queues, but only %d left.\n",
>-			 vf->vf_id,
>-			 req_pairs - cur_pairs,
>-			 pf->queues_left);
>-		vfres->num_queue_pairs = pf->queues_left + cur_pairs;
>-	} else {
>-		/* successful request */
>-		vf->num_req_queues = req_pairs;
>-		i40e_vc_reset_vf(vf, true);
>-		return 0;
>-	}
>-
>-	return i40e_vc_send_msg_to_vf(vf, VIRTCHNL_OP_REQUEST_QUEUES, 0,
>-				      (u8 *)vfres, sizeof(*vfres));
>+	return i40e_set_vf_num_queues(vf, req_pairs);
>  }
>
>  /**
>--
>2.27.0
>
>_______________________________________________
>Intel-wired-lan mailing list
>Intel-wired-lan@osuosl.org
>https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
