Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 694AB803A26
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Dec 2023 17:26:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 87B478207C;
	Mon,  4 Dec 2023 16:26:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 87B478207C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701707171;
	bh=D3CEQ5Xh/kKCvqBfT3f8zzaGOWlIkuPY4hHVYclsRfc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=masLHC0IETxyIrzfh3tkCCaJA8EGIENvbeYYjrnsZ4ZXxMFAjAQkTQfqTKvawF3+4
	 QpN+2Nibgntu+Ay08+onJJxc176aZmm2Gi5s5bu+lO4otP1TVLjyQtxKgcm1Lhb5Ts
	 98Da+ggohlN/KRmYOmolIZGk1gWz7hLJv5gnK4UfgSJz6+fmbkYg0kHyNWU27+y2l6
	 LlrZWH/aNyWlO87M7LgsMXX5p/nwKK1+GYOppFaZ52ZuxiJDMBd67PHkBXT755X4C5
	 hkZSK3XBx+zsu5cAoPfyiuVpQZNzQBZs3Hj07fFO4YMtUIdVfSySxztxaQqoYDadC4
	 aIX0LLmLJ2cVQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9dMcmJA5goRB; Mon,  4 Dec 2023 16:26:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6485F81F30;
	Mon,  4 Dec 2023 16:26:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6485F81F30
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2567D1BF387
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 01:45:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F120680BBF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 01:45:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F120680BBF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cf0Zc2yo4OR5 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Dec 2023 01:45:24 +0000 (UTC)
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn [124.126.103.232])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2AD4980BA8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 01:45:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2AD4980BA8
X-UUID: ee64416ed39e48bc895f2e239b83a94d-20231204
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.33, REQID:da4c46b1-07fa-4654-b582-41546c64ad46, IP:15,
 URL:0,TC:0,Content:-25,EDM:0,RT:0,SF:-15,FILE:0,BULK:0,RULE:Release_Ham,AC
 TION:release,TS:-25
X-CID-INFO: VERSION:1.1.33, REQID:da4c46b1-07fa-4654-b582-41546c64ad46, IP:15,
 UR
 L:0,TC:0,Content:-25,EDM:0,RT:0,SF:-15,FILE:0,BULK:0,RULE:Release_Ham,ACTI
 ON:release,TS:-25
X-CID-META: VersionHash:364b77b, CLOUDID:b2281a96-10ce-4e4b-85c2-c9b5229ff92b,
 B
 ulkID:231204094504NWR6GREY,BulkQuantity:0,Recheck:0,SF:44|66|38|24|17|19|1
 02,TC:nil,Content:0,EDM:-3,IP:-2,URL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,CO
 L:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_FSI,TF_CID_SPAM_SNR,TF_CID_SPAM_FAS,TF_CID_SPAM_FSD
X-UUID: ee64416ed39e48bc895f2e239b83a94d-20231204
X-User: chentao@kylinos.cn
Received: from vt.. [(116.128.244.169)] by mailgw
 (envelope-from <chentao@kylinos.cn>)
 (Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
 with ESMTP id 1135152479; Mon, 04 Dec 2023 09:45:01 +0800
From: Kunwu Chan <chentao@kylinos.cn>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, jeffrey.t.kirsher@intel.com, shannon.nelson@amd.com
Date: Mon,  4 Dec 2023 09:44:55 +0800
Message-Id: <20231204014455.2444734-1-chentao@kylinos.cn>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 04 Dec 2023 16:26:05 +0000
Subject: [Intel-wired-lan] [PATCH v3 iwl-next] i40e: Use correct buffer size
 in i40e_dbg_command_read
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
Cc: Kunwu Chan <chentao@kylinos.cn>, kunwu.chan@hotmail.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 intel-wired-lan@lists.osuosl.org, Simon Horman <horms@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The size of "i40e_dbg_command_buf" is 256, the size of "name"
depends on "IFNAMSIZ", plus a null character and format size,
the total size is more than 256.

Improve readability and maintainability by replacing a hardcoded string
allocation and formatting by the use of the kasprintf() helper.

Fixes: 02e9c290814c ("i40e: debugfs interface")
Signed-off-by: Kunwu Chan <chentao@kylinos.cn>
Suggested-by: Simon Horman <horms@kernel.org>
Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
v2
   - Update the size calculation with IFNAMSIZ and sizeof(i40e_dbg_command_buf)
v3
   - Use kasprintf to improve readability and maintainability
---
 drivers/net/ethernet/intel/i40e/i40e_debugfs.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
index 88240571721a..a176de89de9c 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
@@ -72,23 +72,22 @@ static ssize_t i40e_dbg_command_read(struct file *filp, char __user *buffer,
 {
 	struct i40e_pf *pf = filp->private_data;
 	int bytes_not_copied;
-	int buf_size = 256;
-	char *buf;
+	char *buf = NULL;
 	int len;
 
 	/* don't allow partial reads */
 	if (*ppos != 0)
 		return 0;
-	if (count < buf_size)
-		return -ENOSPC;
 
-	buf = kzalloc(buf_size, GFP_KERNEL);
+	buf = kasprintf(GFP_KERNEL, "%s: %s\n",
+			pf->vsi[pf->lan_vsi]->netdev->name,
+			i40e_dbg_command_buf);
 	if (!buf)
 		return -ENOSPC;
 
-	len = snprintf(buf, buf_size, "%s: %s\n",
-		       pf->vsi[pf->lan_vsi]->netdev->name,
-		       i40e_dbg_command_buf);
+	len = strlen(buf);
+	if (count < len)
+		return -ENOSPC;
 
 	bytes_not_copied = copy_to_user(buffer, buf, len);
 	kfree(buf);
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
