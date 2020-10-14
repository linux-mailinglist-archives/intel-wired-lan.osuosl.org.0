Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 344D628DC13
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Oct 2020 10:54:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DC4AC87B85;
	Wed, 14 Oct 2020 08:54:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zsH2mMfm3YLS; Wed, 14 Oct 2020 08:54:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 02CA88763E;
	Wed, 14 Oct 2020 08:54:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 70AFF1BF285
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Oct 2020 08:54:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6C2C9875FA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Oct 2020 08:54:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HwT8xW_T3Nxn for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Oct 2020 08:54:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AEBC0875AC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Oct 2020 08:54:29 +0000 (UTC)
IronPort-SDR: XbqM3cne4taq47Yu5BpyDp7X7OLV6shZAoMYkxVnceufD1QqD7xzLICCFJXfMxiUdlZLAL30mx
 Vlvkg0wRfyQg==
X-IronPort-AV: E=McAfee;i="6000,8403,9773"; a="153897492"
X-IronPort-AV: E=Sophos;i="5.77,374,1596524400"; d="scan'208";a="153897492"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2020 01:54:27 -0700
IronPort-SDR: qbXNWq5n4bYU9DT9HjakI+az8LeJbEpXSppUnp6NNiCCtaE5kdp+3s+E7StbiXieZELMdVAwV4
 cQulYyTQnY3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,374,1596524400"; d="scan'208";a="463808765"
Received: from amlin-018-150.igk.intel.com ([10.102.18.150])
 by orsmga004.jf.intel.com with ESMTP; 14 Oct 2020 01:54:26 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 14 Oct 2020 08:54:09 +0000
Message-Id: <20201014085409.13389-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH net v2] i40e: Fix MAC address setting for
 a VF via Host/VM
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
Cc: Slawomir Laba <slawomirx.laba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Slawomir Laba <slawomirx.laba@intel.com>

Fix MAC setting flow for the PF driver.

Update the unicast VF's MAC address in VF structure if it is
a new setting in i40e_vc_add_mac_addr_msg.

When unicast MAC address gets deleted, record that and
set the new unicast MAC address that is already waiting in the filter
list. This logic is based on the order of messages arriving to
the PF driver.

Without this change the MAC address setting was interpreted
incorrectly in the following usecases:
1) Print incorrect VF MAC or zero MAC
ip link show dev $pf
2) Don't preserve MAC between driver reload
rmmod iavf; modprobe iavf
3) Update VF MAC when macvlan was set
ip link add link $vf address $mac $vf.1 type macvlan
4) Failed to update mac address when VF was trusted
ip link set dev $vf address $mac

This includes all other configurations including above commands.

Fixes: f657a6e1313b ("i40e: Fix VF driver MAC address configuration")
Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
---
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 25 +++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 8e133d6..ef96f68 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -2702,6 +2702,10 @@ static int i40e_vc_add_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
 				spin_unlock_bh(&vsi->mac_filter_hash_lock);
 				goto error_param;
 			}
+			if (is_valid_ether_addr(al->list[i].addr) &&
+			    is_zero_ether_addr(vf->default_lan_addr.addr))
+				ether_addr_copy(vf->default_lan_addr.addr,
+						al->list[i].addr);
 		}
 	}
 	spin_unlock_bh(&vsi->mac_filter_hash_lock);
@@ -2729,6 +2733,7 @@ static int i40e_vc_del_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
 {
 	struct virtchnl_ether_addr_list *al =
 	    (struct virtchnl_ether_addr_list *)msg;
+	bool was_unimac_deleted = false;
 	struct i40e_pf *pf = vf->pf;
 	struct i40e_vsi *vsi = NULL;
 	i40e_status ret = 0;
@@ -2748,6 +2753,8 @@ static int i40e_vc_del_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
 			ret = I40E_ERR_INVALID_MAC_ADDR;
 			goto error_param;
 		}
+		if (ether_addr_equal(al->list[i].addr, vf->default_lan_addr.addr))
+			was_unimac_deleted = true;
 	}
 	vsi = pf->vsi[vf->lan_vsi_idx];
 
@@ -2768,10 +2775,24 @@ static int i40e_vc_del_mac_addr_msg(struct i40e_vf *vf, u8 *msg)
 		dev_err(&pf->pdev->dev, "Unable to program VF %d MAC filters, error %d\n",
 			vf->vf_id, ret);
 
+	if (vf->trusted && was_unimac_deleted) {
+		struct i40e_mac_filter *f;
+		struct hlist_node *h;
+		u8 *macaddr = NULL;
+		int bkt;
+		/* set last unicast mac address as default */
+		spin_lock_bh(&vsi->mac_filter_hash_lock);
+		hash_for_each_safe(vsi->mac_filter_hash, bkt, h, f, hlist) {
+			if (is_valid_ether_addr(f->macaddr))
+				macaddr = f->macaddr;
+		}
+		if (macaddr)
+			ether_addr_copy(vf->default_lan_addr.addr, macaddr);
+		spin_unlock_bh(&vsi->mac_filter_hash_lock);
+	}
 error_param:
 	/* send the response to the VF */
-	return i40e_vc_send_resp_to_vf(vf, VIRTCHNL_OP_DEL_ETH_ADDR,
-				       ret);
+	return i40e_vc_send_resp_to_vf(vf, VIRTCHNL_OP_DEL_ETH_ADDR, ret);
 }
 
 /**
-- 
2.17.1

---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia Gospodarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 | Kapita zakadowy 200.000 PLN.
Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i moe zawiera informacje poufne. W razie przypadkowego otrzymania tej wiadomoci, prosimy o powiadomienie nadawcy oraz trwae jej usunicie; jakiekolwiek przegldanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
