Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B9F627525CE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jul 2023 16:58:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 101D7613CB;
	Thu, 13 Jul 2023 14:58:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 101D7613CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689260294;
	bh=BF90AXjqpA5CFhAjUX01z8OjDTwlAYqfVXmneuDApLI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=r9ez8wzBISBwOb+/cQJ0qwtZyrfIW6f7dRjCC7DyHrSSlaRIeqaGiWN0Ng2BlMkZN
	 GubfAirRpyQCsPiLvLeQ/oQtD+pzYhDPzcAgy8CiO+z3ScOTYlQR4+ZrBUTpV/Ibfq
	 eWu5ehyGOXCVo4n3rMFncL4lIP5z+fRAKdUeTqLERJBqIV5SDCb7yz71zCrmttYwET
	 ONqGWfololsRB5uMuadIt8L5s0dRtK+b4p3dL0UfsIzXMNnLj4lJeaarphx0tvo74j
	 WjNXttCDTDT8CWXUPtLjLBCHSNHq3+zdbs24bLAsVZz9VkxV5caNLHZ9F/Mjq1kBO1
	 VlvEyZqv1Lmtg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id srs9yGF0psLG; Thu, 13 Jul 2023 14:58:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C2206613BB;
	Thu, 13 Jul 2023 14:58:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C2206613BB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 601E71BF38E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 14:58:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 442974208C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 14:58:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 442974208C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SYLWTEy0ERUj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jul 2023 14:58:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3F4904208D
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3F4904208D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 14:58:06 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-641-AyF78o2TOvGLHZDMVG36XQ-1; Thu, 13 Jul 2023 10:58:00 -0400
X-MC-Unique: AyF78o2TOvGLHZDMVG36XQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
 [10.11.54.1])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8726B28EC100;
 Thu, 13 Jul 2023 14:57:59 +0000 (UTC)
Received: from p1.luc.cera.cz.com (unknown [10.45.224.91])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9137940C2063;
 Thu, 13 Jul 2023 14:57:57 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Thu, 13 Jul 2023 16:57:54 +0200
Message-ID: <20230713145755.1629442-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1689260285;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=oL/Daj3H+kT6hkli1QIioUjzvo7OTPi2aNIjM7rXu8k=;
 b=bbgq0taxgpsY1fuuwRi1B2XL1ddcEefQpF3qBdJBLuI38mbBfD4ddpXP58qnVSVliKREng
 mr4lqGpfFg381cvd2i1w5qktxfvzZE5ZlG+y4DTEabjEa4/EQQVRFURZAnor0L53bzIFyP
 q6LIcvqfMT+8fuKyIxIBOgw9AnuZaRw=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=bbgq0tax
Subject: [Intel-wired-lan] [PATCH net-next v3 1/2] i40e: Add helper for VF
 inited state check with timeout
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
Cc: Ma Yuying <yuma@redhat.com>, Leon Romanovsky <leon@kernel.org>,
 Simon Horman <simon.horman@corigine.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Move the check for VF inited state (with optional up-to 300ms
timeout to separate helper i40e_check_vf_init_timeout() that
will be used in the following commit.

Tested-by: Ma Yuying <yuma@redhat.com>
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 49 +++++++++++++------
 1 file changed, 33 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index be59ba3774e1..b203465357af 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -4304,6 +4304,38 @@ static int i40e_validate_vf(struct i40e_pf *pf, int vf_id)
 	return ret;
 }
 
+/**
+ * i40e_check_vf_init_timeout
+ * @vf: the virtual function
+ *
+ * Check that the VF's initialization was successfully done and if not
+ * wait up to 300ms for its finish.
+ *
+ * Returns true when VF is initialized, false on timeout
+ **/
+static bool i40e_check_vf_init_timeout(struct i40e_vf *vf)
+{
+	int i;
+
+	/* When the VF is resetting wait until it is done.
+	 * It can take up to 200 milliseconds, but wait for
+	 * up to 300 milliseconds to be safe.
+	 */
+	for (i = 0; i < 15; i++) {
+		if (test_bit(I40E_VF_STATE_INIT, &vf->vf_states))
+			return true;
+		msleep(20);
+	}
+
+	if (!test_bit(I40E_VF_STATE_INIT, &vf->vf_states)) {
+		dev_err(&vf->pf->pdev->dev,
+			"VF %d still in reset. Try again.\n", vf->vf_id);
+		return false;
+	}
+
+	return true;
+}
+
 /**
  * i40e_ndo_set_vf_mac
  * @netdev: network interface device structure
@@ -4322,7 +4354,6 @@ int i40e_ndo_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
 	int ret = 0;
 	struct hlist_node *h;
 	int bkt;
-	u8 i;
 
 	if (test_and_set_bit(__I40E_VIRTCHNL_OP_PENDING, pf->state)) {
 		dev_warn(&pf->pdev->dev, "Unable to configure VFs, other operation is pending.\n");
@@ -4335,21 +4366,7 @@ int i40e_ndo_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
 		goto error_param;
 
 	vf = &pf->vf[vf_id];
-
-	/* When the VF is resetting wait until it is done.
-	 * It can take up to 200 milliseconds,
-	 * but wait for up to 300 milliseconds to be safe.
-	 * Acquire the VSI pointer only after the VF has been
-	 * properly initialized.
-	 */
-	for (i = 0; i < 15; i++) {
-		if (test_bit(I40E_VF_STATE_INIT, &vf->vf_states))
-			break;
-		msleep(20);
-	}
-	if (!test_bit(I40E_VF_STATE_INIT, &vf->vf_states)) {
-		dev_err(&pf->pdev->dev, "VF %d still in reset. Try again.\n",
-			vf_id);
+	if (!i40e_check_vf_init_timeout(vf)) {
 		ret = -EAGAIN;
 		goto error_param;
 	}
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
