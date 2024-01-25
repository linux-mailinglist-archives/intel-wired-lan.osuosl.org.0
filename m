Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E20DA83C7AA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jan 2024 17:15:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AA71243584;
	Thu, 25 Jan 2024 16:15:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA71243584
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706199304;
	bh=zm/b30oA4BeMuo09sxDQuMYpr9o+oEkNDcM3A5c71XM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=kGU2r0fS1+kwS6iIHTzAVXRUAjNdwJN5QX9n/qWZCnmYVffDa2AvXlCu1ChroakCq
	 /Kfq4pblnob8PrJtDD16zyXr55SoW5nENczZnGqHNBROX6pyssCJwD3egbiThgPjf4
	 kNavtXX1s1SgnXgLmstyf/+bjqpmzYvKoli2YHbnVhAcW/fUDDb6XLYFGiJLYeTpkM
	 GrSNWO9zE0+Y4Ux6MxgGHcRZ8iio4nbtvFiq8iYaryasm0nutnNGFz+0ohiGCyMQY4
	 SIZjZ88ruiAKhRB2DgnWSFCagyGc6Vbb5zP5ckcJ5pEK8tNV2EjWhg/V7KnppXWDXI
	 SQdxysQ7q3+bA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JzlOyDlv9Dda; Thu, 25 Jan 2024 16:15:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 70627401ED;
	Thu, 25 Jan 2024 16:15:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 70627401ED
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D050E1BF580
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 13:41:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B29384048A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 13:41:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B29384048A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F92tolUdqyte for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jan 2024 13:41:01 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 32B4740236
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 13:41:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 32B4740236
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="20709899"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="20709899"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2024 05:41:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="786766922"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="786766922"
Received: from unknown (HELO mr10p30.jer.intel.com) ([10.12.132.169])
 by orsmga002.jf.intel.com with ESMTP; 25 Jan 2024 05:40:58 -0800
From: Yochai Hagvi <yochai.hagvi@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Jan 2024 15:40:55 +0200
Message-Id: <20240125134055.624272-1-yochai.hagvi@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 25 Jan 2024 16:14:58 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706190061; x=1737726061;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JJF6zfdQw1KLaWpsBKMbTjA3Oc+/70sPfPZ4/tYRLno=;
 b=VjTRoWocaH0hpj+JGhjKKoSqDQ15/xv4pKt+zr+ep0gWwpodbeIWSwsM
 akRAhSRzUSl6ACKDtZRcJmdcR4hY0xgfPrUR/6EI7zbR9rCD8g/77Ja5z
 /s9t622ECzB8yOXZZQ0zX89T+72sJnUbN3Sa2/hkErb0gjyfkDEbg50HI
 htjaQuYAD+QxWGkAIV8u2FDSRSBWkOAA+FwiVGA7xDLzhcCJcafi2wRot
 P3d4g8UOAXDa2boF5zq00ngfMzALWENIvy4aB2gFm+MArEtud5A7YOjDr
 CxnuYLAPTP29554hiaE0AlKKMDquI96Lq3djIcOHAvxUvey+7j6WH2wF2
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VjTRoWoc
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix connection state of
 DPLL and out pin
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 Yochai Hagvi <yochai.hagvi@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix the connection state between source DPLL and output pin, updating the
attribute 'state' of 'parent_device'. Previously, the connection state
was broken, and didn't reflect the correct state.

When 'state_on_dpll_set' is called with the value
'DPLL_PIN_STATE_CONNECTED' (1), the output pin will switch to the given
DPLL, and the state of the given DPLL will be set to connected.
E.g.:
	--do pin-set --json '{"id":2, "parent-device":{"parent-id":1,
						       "state": 1 }}'
This command will connect DPLL device with id 1 to output pin with id 2.

When 'state_on_dpll_set' is called with the value
'DPLL_PIN_STATE_DISCONNECTED' (2) and the given DPLL is currently
connected, then the output pin will be disabled.
E.g:
	--do pin-set --json '{"id":2, "parent-device":{"parent-id":1,
						       "state": 2 }}'
This command will disable output pin with id 2 if DPLL device with ID 1 is
connected to it; otherwise, the command is ignored.

Fixes: d7999f5ea64b ("ice: implement dpll interface to control cgu")
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Yochai Hagvi <yochai.hagvi@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dpll.c | 43 +++++++++++++++++------
 1 file changed, 32 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index b9c5eced6326..9c0d739be1e9 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -254,6 +254,7 @@ ice_dpll_output_frequency_get(const struct dpll_pin *pin, void *pin_priv,
  * ice_dpll_pin_enable - enable a pin on dplls
  * @hw: board private hw structure
  * @pin: pointer to a pin
+ * @dpll_idx: dpll index to connect to output pin
  * @pin_type: type of pin being enabled
  * @extack: error reporting
  *
@@ -266,7 +267,7 @@ ice_dpll_output_frequency_get(const struct dpll_pin *pin, void *pin_priv,
  */
 static int
 ice_dpll_pin_enable(struct ice_hw *hw, struct ice_dpll_pin *pin,
-		    enum ice_dpll_pin_type pin_type,
+		    u8 dpll_idx, enum ice_dpll_pin_type pin_type,
 		    struct netlink_ext_ack *extack)
 {
 	u8 flags = 0;
@@ -280,10 +281,12 @@ ice_dpll_pin_enable(struct ice_hw *hw, struct ice_dpll_pin *pin,
 		ret = ice_aq_set_input_pin_cfg(hw, pin->idx, 0, flags, 0, 0);
 		break;
 	case ICE_DPLL_PIN_TYPE_OUTPUT:
+		flags = ICE_AQC_SET_CGU_OUT_CFG_UPDATE_SRC_SEL;
 		if (pin->flags[0] & ICE_AQC_GET_CGU_OUT_CFG_ESYNC_EN)
 			flags |= ICE_AQC_SET_CGU_OUT_CFG_ESYNC_EN;
 		flags |= ICE_AQC_SET_CGU_OUT_CFG_OUT_EN;
-		ret = ice_aq_set_output_pin_cfg(hw, pin->idx, flags, 0, 0, 0);
+		ret = ice_aq_set_output_pin_cfg(hw, pin->idx, flags, dpll_idx,
+						0, 0);
 		break;
 	default:
 		return -EINVAL;
@@ -398,14 +401,27 @@ ice_dpll_pin_state_update(struct ice_pf *pf, struct ice_dpll_pin *pin,
 		break;
 	case ICE_DPLL_PIN_TYPE_OUTPUT:
 		ret = ice_aq_get_output_pin_cfg(&pf->hw, pin->idx,
-						&pin->flags[0], NULL,
+						&pin->flags[0], &parent,
 						&pin->freq, NULL);
 		if (ret)
 			goto err;
-		if (ICE_AQC_SET_CGU_OUT_CFG_OUT_EN & pin->flags[0])
-			pin->state[0] = DPLL_PIN_STATE_CONNECTED;
-		else
-			pin->state[0] = DPLL_PIN_STATE_DISCONNECTED;
+
+		parent &= ICE_AQC_GET_CGU_OUT_CFG_DPLL_SRC_SEL;
+		if (ICE_AQC_SET_CGU_OUT_CFG_OUT_EN & pin->flags[0]) {
+			pin->state[pf->dplls.eec.dpll_idx] =
+				parent == pf->dplls.eec.dpll_idx ?
+				DPLL_PIN_STATE_CONNECTED :
+				DPLL_PIN_STATE_DISCONNECTED;
+			pin->state[pf->dplls.pps.dpll_idx] =
+				parent == pf->dplls.pps.dpll_idx ?
+				DPLL_PIN_STATE_CONNECTED :
+				DPLL_PIN_STATE_DISCONNECTED;
+		} else {
+			pin->state[pf->dplls.eec.dpll_idx] =
+				DPLL_PIN_STATE_DISCONNECTED;
+			pin->state[pf->dplls.pps.dpll_idx] =
+				DPLL_PIN_STATE_DISCONNECTED;
+		}
 		break;
 	case ICE_DPLL_PIN_TYPE_RCLK_INPUT:
 		for (parent = 0; parent < pf->dplls.rclk.num_parents;
@@ -570,7 +586,8 @@ ice_dpll_pin_state_set(const struct dpll_pin *pin, void *pin_priv,
 
 	mutex_lock(&pf->dplls.lock);
 	if (enable)
-		ret = ice_dpll_pin_enable(&pf->hw, p, pin_type, extack);
+		ret = ice_dpll_pin_enable(&pf->hw, p, d->dpll_idx, pin_type,
+					  extack);
 	else
 		ret = ice_dpll_pin_disable(&pf->hw, p, pin_type, extack);
 	if (!ret)
@@ -603,6 +620,11 @@ ice_dpll_output_state_set(const struct dpll_pin *pin, void *pin_priv,
 			  struct netlink_ext_ack *extack)
 {
 	bool enable = state == DPLL_PIN_STATE_CONNECTED;
+	struct ice_dpll_pin *p = pin_priv;
+	struct ice_dpll *d = dpll_priv;
+
+	if (!enable && p->state[d->dpll_idx] == DPLL_PIN_STATE_DISCONNECTED)
+		return 0;
 
 	return ice_dpll_pin_state_set(pin, pin_priv, dpll, dpll_priv, enable,
 				      extack, ICE_DPLL_PIN_TYPE_OUTPUT);
@@ -669,10 +691,9 @@ ice_dpll_pin_state_get(const struct dpll_pin *pin, void *pin_priv,
 	ret = ice_dpll_pin_state_update(pf, p, pin_type, extack);
 	if (ret)
 		goto unlock;
-	if (pin_type == ICE_DPLL_PIN_TYPE_INPUT)
+	if (pin_type == ICE_DPLL_PIN_TYPE_INPUT ||
+	    pin_type == ICE_DPLL_PIN_TYPE_OUTPUT)
 		*state = p->state[d->dpll_idx];
-	else if (pin_type == ICE_DPLL_PIN_TYPE_OUTPUT)
-		*state = p->state[0];
 	ret = 0;
 unlock:
 	mutex_unlock(&pf->dplls.lock);

base-commit: fa47527c71dceb2fd4fb3b17104df53f7aed8d49
-- 
2.40.1

