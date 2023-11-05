Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF3D7E153B
	for <lists+intel-wired-lan@lfdr.de>; Sun,  5 Nov 2023 17:46:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 14F4B418E1;
	Sun,  5 Nov 2023 16:46:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14F4B418E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699202780;
	bh=xdHy/Jfoc8zNzMrTC6B2qFGniKXe1gBk10PoHXcCrPk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=lIKlVvpQArAjmdL/bh04Hqtfepkr3F+Yu4uqwFyJZQZYyd3DTDnn+0/6RIIJvcnx8
	 aabM7Ry9LtYW47VOkS5XryECrulKHxBCNhayCI7j9G7SCi/MOSLNJlqf8HRX0I/AfP
	 JHFhEiIVM/8tEjGuGjfhwbSSWWOQ4PepNd7B1Ukq8y/VYfY9DRX4GM3kW8zZpMii9Y
	 mmpm+881lB/LGr3EfUKhT6g7Tdcy9VAsYZpugW5GmvFjEb1Vzfqa10Pc3JCeKpQ7ak
	 modzoqx/r0oEOfr2sbQw39RSJQTG35I7SKBNfysKxubRBjwHU41zVlAHkCSvB8DRMI
	 jJZL/yUgH+Diw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6AZn-vTJUgCB; Sun,  5 Nov 2023 16:46:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D8D854173A;
	Sun,  5 Nov 2023 16:46:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D8D854173A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6C04F1BF584
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Nov 2023 16:46:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 424F24013F
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Nov 2023 16:46:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 424F24013F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id upaUnC0PKHzM for <intel-wired-lan@lists.osuosl.org>;
 Sun,  5 Nov 2023 16:46:12 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4D3F14013D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  5 Nov 2023 16:46:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4D3F14013D
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-460-cwp2luAZMS6wp8sRjoORrA-1; Sun, 05 Nov 2023 11:46:07 -0500
X-MC-Unique: cwp2luAZMS6wp8sRjoORrA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8578D185A780;
 Sun,  5 Nov 2023 16:46:06 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.224.31])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6C71340C6EB9;
 Sun,  5 Nov 2023 16:46:03 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Sun,  5 Nov 2023 17:46:02 +0100
Message-ID: <20231105164602.1107498-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1699202771;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=eC7KMeIBQqNk/V3RXfwXIU+MwIED52IGZpLe2RUKxaU=;
 b=d2fcsbGp28ioz82TwO2CKEGmzRfg/LgK4vXeoUNshI58w9yZ3oDTW1A6GCR2W8bF9Crqfl
 JzN3jkIyi9JVa7bXB8vJJ8LQBw2W9+obuVYn7VAGoxytLz/oKrJDMdUNSVfl+C760nYyeY
 Yx/2UWFeC6CKHMn/omnAeFXQfTKs02I=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=d2fcsbGp
Subject: [Intel-wired-lan] [PATCH net v2] i40e: Fix adding unsupported cloud
 filters
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
 intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If a VF tries to add unsupported cloud filter through virchnl
then i40e_add_del_cloud_filter(_big_buf) returns -ENOTSUPP but
this error code is stored in 'ret' instead of 'aq_ret' that
is used as error code sent back to VF. In this scenario where
one of the mentioned functions fails the value of 'aq_ret'
is zero so the VF will incorrectly receive a 'success'.

Use 'aq_ret' to store return value and remove 'ret' local
variable. Additionally fix the issue when filter allocation
fails, in this case no notification is sent back to the VF.

Fixes: e284fc280473be ("i40e: Add and delete cloud filter")
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 .../net/ethernet/intel/i40e/i40e_virtchnl_pf.c   | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 08d7edccfb8ddb..3f99eb19824527 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -3844,7 +3844,7 @@ static int i40e_vc_add_cloud_filter(struct i40e_vf *vf, u8 *msg)
 	struct i40e_pf *pf = vf->pf;
 	struct i40e_vsi *vsi = NULL;
 	int aq_ret = 0;
-	int i, ret;
+	int i;
 
 	if (!i40e_sync_vf_state(vf, I40E_VF_STATE_ACTIVE)) {
 		aq_ret = -EINVAL;
@@ -3868,8 +3868,10 @@ static int i40e_vc_add_cloud_filter(struct i40e_vf *vf, u8 *msg)
 	}
 
 	cfilter = kzalloc(sizeof(*cfilter), GFP_KERNEL);
-	if (!cfilter)
-		return -ENOMEM;
+	if (!cfilter) {
+		aq_ret = -ENOMEM;
+		goto err_out;
+	}
 
 	/* parse destination mac address */
 	for (i = 0; i < ETH_ALEN; i++)
@@ -3917,13 +3919,13 @@ static int i40e_vc_add_cloud_filter(struct i40e_vf *vf, u8 *msg)
 
 	/* Adding cloud filter programmed as TC filter */
 	if (tcf.dst_port)
-		ret = i40e_add_del_cloud_filter_big_buf(vsi, cfilter, true);
+		aq_ret = i40e_add_del_cloud_filter_big_buf(vsi, cfilter, true);
 	else
-		ret = i40e_add_del_cloud_filter(vsi, cfilter, true);
-	if (ret) {
+		aq_ret = i40e_add_del_cloud_filter(vsi, cfilter, true);
+	if (aq_ret) {
 		dev_err(&pf->pdev->dev,
 			"VF %d: Failed to add cloud filter, err %pe aq_err %s\n",
-			vf->vf_id, ERR_PTR(ret),
+			vf->vf_id, ERR_PTR(aq_ret),
 			i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 		goto err_free;
 	}
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
