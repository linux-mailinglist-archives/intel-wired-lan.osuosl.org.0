Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F852C84F9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Nov 2020 14:20:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C36EA228A0;
	Mon, 30 Nov 2020 13:20:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w4nr5DQtl-X2; Mon, 30 Nov 2020 13:20:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7C256228AE;
	Mon, 30 Nov 2020 13:20:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 00D1A1BF477
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Nov 2020 13:20:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F0613860D2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Nov 2020 13:20:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4GAOqaa3Y_GL for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Nov 2020 13:20:12 +0000 (UTC)
X-Greylist: delayed 00:06:48 by SQLgrey-1.7.6
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 923D7860AE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Nov 2020 13:20:11 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-180-DGR_7tNRN9CkUNUD-8sOHw-1; Mon, 30 Nov 2020 08:13:18 -0500
X-MC-Unique: DGR_7tNRN9CkUNUD-8sOHw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 608BA107ACFB;
 Mon, 30 Nov 2020 13:13:17 +0000 (UTC)
Received: from p50.redhat.com (ovpn-112-15.ams2.redhat.com [10.36.112.15])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E9C4E5D9C0;
 Mon, 30 Nov 2020 13:13:15 +0000 (UTC)
From: Stefan Assmann <sassmann@kpanic.de>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 30 Nov 2020 14:12:57 +0100
Message-Id: <20201130131257.28856-1-sassmann@kpanic.de>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sassmann@kpanic.de
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: kpanic.de
Subject: [Intel-wired-lan] [PATCH] i40e: acquire VSI pointer only after VF
 is initialized
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
Cc: netdev@vger.kernel.org, davem@davemloft.net, sassmann@kpanic.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This change simplifies the VF initialization check and also minimizes
the delay between acquiring the VSI pointer and using it. As known by
the commit being fixed, there is a risk of the VSI pointer getting
changed. Therefore minimize the delay between getting and using the
pointer.

Fixes: 9889707b06ac ("i40e: Fix crash caused by stress setting of VF MAC addresses")
Signed-off-by: Stefan Assmann <sassmann@kpanic.de>
---
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 729c4f0d5ac5..bf6034c3a6ea 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -4046,20 +4046,16 @@ int i40e_ndo_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
 		goto error_param;
 
 	vf = &pf->vf[vf_id];
-	vsi = pf->vsi[vf->lan_vsi_idx];
 
 	/* When the VF is resetting wait until it is done.
 	 * It can take up to 200 milliseconds,
 	 * but wait for up to 300 milliseconds to be safe.
-	 * If the VF is indeed in reset, the vsi pointer has
-	 * to show on the newly loaded vsi under pf->vsi[id].
+	 * Acquire the vsi pointer only after the VF has been
+	 * properly initialized.
 	 */
 	for (i = 0; i < 15; i++) {
-		if (test_bit(I40E_VF_STATE_INIT, &vf->vf_states)) {
-			if (i > 0)
-				vsi = pf->vsi[vf->lan_vsi_idx];
+		if (test_bit(I40E_VF_STATE_INIT, &vf->vf_states))
 			break;
-		}
 		msleep(20);
 	}
 	if (!test_bit(I40E_VF_STATE_INIT, &vf->vf_states)) {
@@ -4068,6 +4064,7 @@ int i40e_ndo_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
 		ret = -EAGAIN;
 		goto error_param;
 	}
+	vsi = pf->vsi[vf->lan_vsi_idx];
 
 	if (is_multicast_ether_addr(mac)) {
 		dev_err(&pf->pdev->dev,
-- 
2.28.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
