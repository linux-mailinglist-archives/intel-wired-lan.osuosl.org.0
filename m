Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB4972E2A3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 14:16:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E1A33416E3;
	Tue, 13 Jun 2023 12:16:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E1A33416E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686658583;
	bh=yLYXn1auNvP76y02S2gtDtaVBHqknOHgtielHCHT1Vw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=eFxDgQAkZKuB1KduPtZSt/2451vMybydQzBu2q6gsakSQLjvjjzYbqB4WQ8wEq3Dx
	 Oi5SuB2uz19wmMjBCy35m+vbsgnfYyhv/woL1H+dWog7okKzM4VheGT6rrjOTY40vx
	 i0drPHOMsr9fCQ4PJ8j1zXphrBCxxvOI8mbXwLjXQ2kdord/Pwf93Xn41KAEbazdOe
	 FqV3AQMP7ErRWFezTJnvOCrISZ4mgnbrLNc46rFukIMc6IktQr04EZvEz0fjpXMmHt
	 2jCviUVVjWbEC6IFsqQcyUgUNUQAJgN8zNoIdKtMcO7bscZNQMH1Wb5L7fKITwO5lg
	 Y2kWOLe5pqD3w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vM63zw3nWPEW; Tue, 13 Jun 2023 12:16:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BB0424063D;
	Tue, 13 Jun 2023 12:16:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BB0424063D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6610E1BF352
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 12:16:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3D0606108F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 12:16:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3D0606108F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X52YRni0pMWO for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jun 2023 12:16:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 583956103A
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 583956103A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 12:16:16 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-619-UGGroGO4NQiheheR-aVoRw-1; Tue, 13 Jun 2023 08:16:13 -0400
X-MC-Unique: UGGroGO4NQiheheR-aVoRw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1CED71C05AB7;
 Tue, 13 Jun 2023 12:16:13 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.43.2.89])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6C5E11415102;
 Tue, 13 Jun 2023 12:16:11 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Tue, 13 Jun 2023 14:16:09 +0200
Message-Id: <20230613121610.137654-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1686658575;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=IiFySUIEcsyyK8WxzF4AVP7atzFxQsw20Y866Rcqlqk=;
 b=a2398VLcYS6VnZbu6NrXesQ5aWqufrGRfnjetJtVhfU1yxoBockh7wIT5gzjtb3DS+dJzQ
 ftLnWn2HLS0GouELzeVHaZA2UsvJQoRguqQiQPC4tS6Inq5eZybRQtsbvIITL1OjjdviKj
 TMmb2QCbofTseRVDylEYYq/cV3GYq9g=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=a2398VLc
Subject: [Intel-wired-lan] [PATCH net-next 1/2] i40e: Add helper for VF
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
Cc: Ma Yuying <yuma@redhat.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
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
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 47 ++++++++++++-------
 1 file changed, 31 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index be59ba3774e1..b84b6b675fa7 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -4304,6 +4304,36 @@ static int i40e_validate_vf(struct i40e_pf *pf, int vf_id)
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
+
+		msleep(20);
+	}
+
+	dev_err(&vf->pf->pdev->dev, "VF %d still in reset. Try again.\n",
+		vf->vf_id);
+
+	return false;
+}
+
 /**
  * i40e_ndo_set_vf_mac
  * @netdev: network interface device structure
@@ -4322,7 +4352,6 @@ int i40e_ndo_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
 	int ret = 0;
 	struct hlist_node *h;
 	int bkt;
-	u8 i;
 
 	if (test_and_set_bit(__I40E_VIRTCHNL_OP_PENDING, pf->state)) {
 		dev_warn(&pf->pdev->dev, "Unable to configure VFs, other operation is pending.\n");
@@ -4335,21 +4364,7 @@ int i40e_ndo_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
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
2.39.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
