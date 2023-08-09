Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 29122776382
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Aug 2023 17:15:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 657F7834CB;
	Wed,  9 Aug 2023 15:15:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 657F7834CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691594152;
	bh=CyFTfzC8u9knbQLxczcc3Wf+9lA33DRvq2GiS2hh+Jc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gkJKde28bnSZYOyMkSe/LZsxE0buLUXelsaIfhBTL+wN7Y6VkINDp9MK9TZt0IWmM
	 gKdznNEjjRSes4lQMgJRXsaHIswA5Qi+5oNlLgALbWUFxVRZoTnxrYdYHUJ/HMBlBz
	 zCDWAWky8Rh9zu3inge2PieGI6LwuCXnhymJxaMM32N7FqSfVuZpaRE4XlrtOcctxT
	 D8w04ULC84/BgYn0VhaM+dvAaS2Sj6indEFApAanLwlIn7pNSmPokDOYWM67rMO8wX
	 wgojAAahWd6sIiE07fcp5z76XC+LOxQkCQbV5eOUvyvczmt2C6yhOkgv882hSA0QiN
	 s/jo//4wvBEJg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q3bbFuwyBT3T; Wed,  9 Aug 2023 15:15:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 344B183252;
	Wed,  9 Aug 2023 15:15:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 344B183252
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6749C1BF283
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 15:15:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3EBD940469
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 15:15:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3EBD940469
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rDaqbeVvuMAZ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Aug 2023 15:15:45 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1D523402E8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 15:15:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D523402E8
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-14-sEMSBrkhOPuE60yA-D9Shg-1; Wed, 09 Aug 2023 11:15:38 -0400
X-MC-Unique: sEMSBrkhOPuE60yA-D9Shg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
 [10.11.54.4])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CB6FC801FA0;
 Wed,  9 Aug 2023 15:15:35 +0000 (UTC)
Received: from swamp.redhat.com (unknown [10.45.226.148])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5AE292026D4B;
 Wed,  9 Aug 2023 15:15:33 +0000 (UTC)
From: Petr Oros <poros@redhat.com>
To: netdev@vger.kernel.org
Date: Wed,  9 Aug 2023 17:15:28 +0200
Message-ID: <20230809151529.842798-2-poros@redhat.com>
In-Reply-To: <20230809151529.842798-1-poros@redhat.com>
References: <20230809151529.842798-1-poros@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1691594144;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=02YW8ArM2LukzalrlbsBsHAhHbZsYD1kRvVtXeVpNE8=;
 b=BOQ8V7cxCRbOUenuns99tZbn9dgwY+FZKWC2CCQZ0zD3ZJBE2rS3BC1umDYse6UqT/ytN7
 WaNT2BoldL0b006a7ctB6GXXlN06smfLjZ9mqRawJmVPRIf29nsRw6PTg/oZvqMseCWDJf
 oSSwxg2UTSDrIWRorDclwWfLoQbsFMM=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=BOQ8V7cx
Subject: [Intel-wired-lan] [PATCH net v2 1/2] Revert "ice: Fix ice VF reset
 during iavf initialization"
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
Cc: slawomirx.laba@intel.com, przemyslawx.patynowski@intel.com,
 kamil.maziarz@intel.com, jesse.brandeburg@intel.com,
 norbertx.zulinski@intel.com, dawidx.wesierski@intel.com, edumazet@google.com,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This reverts commit 7255355a0636b4eff08d5e8139c77d98f151c4fc.

After this commit we are not able to attach VF to VM:
virsh attach-interface v0 hostdev --managed 0000:41:01.0 --mac 52:52:52:52:52:52
error: Failed to attach interface
error: Cannot set interface MAC to 52:52:52:52:52:52 for ifname enp65s0f0np0 vf 0: Resource temporarily unavailable

ice_check_vf_ready_for_cfg() already contain waiting for reset.
New condition in ice_check_vf_ready_for_reset() causing only problems.

Fixes: 7255355a0636 ("ice: Fix ice VF reset during iavf initialization")
Signed-off-by: Petr Oros <poros@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.c    |  8 ++++----
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 19 -------------------
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  1 -
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  1 -
 4 files changed, 4 insertions(+), 25 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 1f66914c7a202a..31314e7540f8cf 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -1131,7 +1131,7 @@ int ice_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool ena)
 	if (!vf)
 		return -EINVAL;
 
-	ret = ice_check_vf_ready_for_reset(vf);
+	ret = ice_check_vf_ready_for_cfg(vf);
 	if (ret)
 		goto out_put_vf;
 
@@ -1246,7 +1246,7 @@ int ice_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
 		goto out_put_vf;
 	}
 
-	ret = ice_check_vf_ready_for_reset(vf);
+	ret = ice_check_vf_ready_for_cfg(vf);
 	if (ret)
 		goto out_put_vf;
 
@@ -1300,7 +1300,7 @@ int ice_set_vf_trust(struct net_device *netdev, int vf_id, bool trusted)
 		return -EOPNOTSUPP;
 	}
 
-	ret = ice_check_vf_ready_for_reset(vf);
+	ret = ice_check_vf_ready_for_cfg(vf);
 	if (ret)
 		goto out_put_vf;
 
@@ -1613,7 +1613,7 @@ ice_set_vf_port_vlan(struct net_device *netdev, int vf_id, u16 vlan_id, u8 qos,
 	if (!vf)
 		return -EINVAL;
 
-	ret = ice_check_vf_ready_for_reset(vf);
+	ret = ice_check_vf_ready_for_cfg(vf);
 	if (ret)
 		goto out_put_vf;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index b26ce4425f4559..294e91c3453ccd 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -185,25 +185,6 @@ int ice_check_vf_ready_for_cfg(struct ice_vf *vf)
 	return 0;
 }
 
-/**
- * ice_check_vf_ready_for_reset - check if VF is ready to be reset
- * @vf: VF to check if it's ready to be reset
- *
- * The purpose of this function is to ensure that the VF is not in reset,
- * disabled, and is both initialized and active, thus enabling us to safely
- * initialize another reset.
- */
-int ice_check_vf_ready_for_reset(struct ice_vf *vf)
-{
-	int ret;
-
-	ret = ice_check_vf_ready_for_cfg(vf);
-	if (!ret && !test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states))
-		ret = -EAGAIN;
-
-	return ret;
-}
-
 /**
  * ice_trigger_vf_reset - Reset a VF on HW
  * @vf: pointer to the VF structure
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index 67172fdd9bc27f..48fea6fa036210 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -215,7 +215,6 @@ u16 ice_get_num_vfs(struct ice_pf *pf);
 struct ice_vsi *ice_get_vf_vsi(struct ice_vf *vf);
 bool ice_is_vf_disabled(struct ice_vf *vf);
 int ice_check_vf_ready_for_cfg(struct ice_vf *vf);
-int ice_check_vf_ready_for_reset(struct ice_vf *vf);
 void ice_set_vf_state_dis(struct ice_vf *vf);
 bool ice_is_any_vf_in_unicast_promisc(struct ice_pf *pf);
 void
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index efbc2968a7bf6a..dcf628b1fccd93 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -3947,7 +3947,6 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
 		ice_vc_notify_vf_link_state(vf);
 		break;
 	case VIRTCHNL_OP_RESET_VF:
-		clear_bit(ICE_VF_STATE_ACTIVE, vf->vf_states);
 		ops->reset_vf(vf);
 		break;
 	case VIRTCHNL_OP_ADD_ETH_ADDR:
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
