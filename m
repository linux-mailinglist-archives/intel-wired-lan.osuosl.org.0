Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D46F97E0A6E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Nov 2023 21:42:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B792882316;
	Fri,  3 Nov 2023 20:42:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B792882316
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699044156;
	bh=ZZPO9tdcx+Ic/+62j7Z50Z3LACDlMPQ65FeUrQJUjrg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=BH+K1CnDfMRHYi6A0fIaYDo9ZtuhPkq8IiYpmXU3AKp5O1BTSR8pxstNTnEA/jO1o
	 SyYS2lHgzFUEn25Zz1ajZ7z8vn4j7RFoyGUJGeTHTveSkUpQuuBRfk92e/lmUWJrVJ
	 hz4NUNtvGJlOpRJsac5YpaK/1BWQityYvPq9JdLFKQqvYM/UTAmSzegLw3fvOAwbJH
	 kxTOK8Vyed6ujNvn4O5/FunXSmTXu4SGCPZBXe1vYE1R8YZhq2Rep34m2JcHBoYski
	 3uz0abieBjfJbDOE/0e8uNvJ7dWtcUdJVNT3NxRJ9y8aGXExrHPlhG3a2EY8zYVRgJ
	 Xu9qskXJqy5IQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T22w-QHZ1d_1; Fri,  3 Nov 2023 20:42:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A2B982314;
	Fri,  3 Nov 2023 20:42:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A2B982314
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7649F1BF33D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Nov 2023 20:42:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 58CE74048D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Nov 2023 20:42:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 58CE74048D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id At0VYROn0qsv for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Nov 2023 20:42:29 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 34CCE40441
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Nov 2023 20:42:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 34CCE40441
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-121-GCm0XO-jMfWFr0uynWPCMA-1; Fri, 03 Nov 2023 16:42:20 -0400
X-MC-Unique: GCm0XO-jMfWFr0uynWPCMA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
 [10.11.54.3])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 22D5C101A529;
 Fri,  3 Nov 2023 20:42:20 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.45.224.31])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3E5D51121309;
 Fri,  3 Nov 2023 20:42:17 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Fri,  3 Nov 2023 21:42:16 +0100
Message-ID: <20231103204216.1072251-1-ivecera@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1699044148;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=pzoYxr3bqaj9J8o6w9KSItY5CaVEMiyYip8XBCOjU7A=;
 b=GXnJnsj9/D6Uvdz/wwFj2WB6y0NXixB92Pt32tjk90OqwpzguSmrhp8t4aH+2TMVYO+P7D
 hCY4yfvEBuyAnAda1VD1CWXyvS9qHK0GtQ3zMn+d1/fn6HmLOAEhkNtTJMkKgMbiznTlem
 +LfrrPN1/d0EUHanHkRn61Za3RFlc0A=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=GXnJnsj9
Subject: [Intel-wired-lan] [PATCH net] i40e: Fix adding unsupported cloud
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
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
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
