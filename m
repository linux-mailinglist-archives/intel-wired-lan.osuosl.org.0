Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BBCF3318E3E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Feb 2021 16:24:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 636816F708
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Feb 2021 15:24:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oFAolgMlb-mv for <lists+intel-wired-lan@lfdr.de>;
	Thu, 11 Feb 2021 15:24:35 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id E2B1B6F6C6; Thu, 11 Feb 2021 15:24:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A36D26F4F9;
	Thu, 11 Feb 2021 15:24:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DAD971BF3EB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Feb 2021 11:29:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B2A566EFB5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Feb 2021 11:29:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DGY2LipB9r6o for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Feb 2021 11:29:25 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id C35C96F52D; Thu, 11 Feb 2021 11:29:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 034EC6EFB5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Feb 2021 11:29:23 +0000 (UTC)
IronPort-SDR: VYchb6UNhio71y5TlbxRx9Bh7vmkSTzPPHGjylwqboAY+I95zaplAXvXbbCZ0ZbxgSpKDUTQqs
 nptceR2UleNw==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="243717527"
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="243717527"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 03:29:09 -0800
IronPort-SDR: vnEfvsh+2WMDPjj9PE5RPrf/qZZHwkFYra+oGP207RQEvXh5sMS0udYPAHJhNIh7zYS2u+1HHE
 NCZQX2S/oWxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="414777765"
Received: from amlin-019-242.igk.intel.com ([10.102.19.242])
 by fmsmga004.fm.intel.com with ESMTP; 11 Feb 2021 03:29:08 -0800
From: =?UTF-8?q?Micha=C5=82=20Ma=C5=82oszewski?= <michal.maloszewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 11 Feb 2021 11:29:01 +0000
Message-Id: <1613042941-31948-1-git-send-email-michal.maloszewski@intel.com>
X-Mailer: git-send-email 1.8.3.1
X-Mailman-Approved-At: Thu, 11 Feb 2021 15:24:20 +0000
Subject: [Intel-wired-lan] [PATCH net v2] i40e: Fix NULL ptr dereference on
 VSI filter sync
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
Cc: =?UTF-8?q?Micha=C5=82=20Ma=C5=82oszewski?= <michal.maloszewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Remove the reason of null pointer dereference in sync vsi filters.
Added new I40E_VSI_RELEASING flag to signalize deleting and releasing
of VSI resources to sync this thread with sync filters subtask.
Without this patch it is possible to start update the vsi filter list
after vsi is removed, that's causing a kernel oops.

Fixes: 17652c6336fd("i40e: remove unused argument")
Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
Signed-off by: Michal Maloszewski <michal.maloszewski@intel.com>
Reviewed-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Reviewed-by: Fijalkowski, WitoldX <witoldx.fijalkowski@intel.com>
Reviewed-by: Jaroslaw Gawin <jaroslawx.gawin@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

---
v2: permissions are changed

 drivers/net/ethernet/intel/i40e/i40e.h      | 1 +
 drivers/net/ethernet/intel/i40e/i40e_main.c | 8 ++++++--
 2 files changed, 7 insertions(+), 2 deletions(-)
 mode change 100644 => 100755 drivers/net/ethernet/intel/i40e/i40e.h
 mode change 100644 => 100755 drivers/net/ethernet/intel/i40e/i40e_main.c

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
old mode 100644
new mode 100755
index b6830e3..558b0ae
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -158,6 +158,7 @@ enum i40e_vsi_state_t {
 	__I40E_VSI_OVERFLOW_PROMISC,
 	__I40E_VSI_REINIT_REQUESTED,
 	__I40E_VSI_DOWN_REQUESTED,
+	__I40E_VSI_RELEASING,
 	/* This must be last as it determines the size of the BITMAP */
 	__I40E_VSI_STATE_SIZE__,
 };
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
old mode 100644
new mode 100755
index 60e68fc..de7b6f5
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -2634,9 +2634,9 @@ static void i40e_sync_filters_subtask(struct i40e_pf *pf)
 
 	for (v = 0; v < pf->num_alloc_vsi; v++) {
 		if (pf->vsi[v] &&
-		    (pf->vsi[v]->flags & I40E_VSI_FLAG_FILTER_CHANGED)) {
+		    (pf->vsi[v]->flags & I40E_VSI_FLAG_FILTER_CHANGED) &&
+		    !test_bit(__I40E_VSI_RELEASING, pf->vsi[v]->state)) {
 			int ret = i40e_sync_vsi_filters(pf->vsi[v]);
-
 			if (ret) {
 				/* come back and try again later */
 				set_bit(__I40E_MACVLAN_SYNC_PENDING,
@@ -12955,6 +12955,9 @@ static int i40e_xdp_setup(struct i40e_vsi *vsi, struct bpf_prog *prog,
 	/* Don't allow frames that span over multiple buffers */
 	if (frame_size > vsi->rx_buf_len) {
 		NL_SET_ERR_MSG_MOD(extack, "MTU too large to enable XDP");
+		dev_info(&pf->pdev->dev,
+			 "MTU of %u bytes is too large to enable XDP (maximum: %u bytes)\n",
+			 vsi->netdev->mtu, vsi->rx_buf_len);
 		return -EINVAL;
 	}
 
@@ -13785,6 +13788,7 @@ int i40e_vsi_release(struct i40e_vsi *vsi)
 		return -ENODEV;
 	}
 
+	set_bit(__I40E_VSI_RELEASING, vsi->state);
 	uplink_seid = vsi->uplink_seid;
 	if (vsi->type != I40E_VSI_SRIOV) {
 		if (vsi->netdev_registered) {
-- 
1.8.3.1

---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia Gospodarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 | Kapita zakadowy 200.000 PLN.
Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i moe zawiera informacje poufne. W razie przypadkowego otrzymania tej wiadomoci, prosimy o powiadomienie nadawcy oraz trwae jej usunicie; jakiekolwiek przegldanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
