Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 379007EC852
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Nov 2023 17:20:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 476664221B;
	Wed, 15 Nov 2023 16:20:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 476664221B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700065210;
	bh=MRD5zLYs+2BfmkiXJJ0osG9vr8h6UqFMK7gwCHSiH+M=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TDB25xf2ysdyr5IlFO4onc1Yf1PQEQcHhzFkTJjhaXRNZMf/95Ic1yr1IUzKB4ywf
	 7CN8jZFH5NS/Vk09M2tyvEQ5wo/MU/U/JQW1lyolJJ0MufRzb398N1MzQSw9PM2835
	 jmj76lcWAbA/PJr9p8BEdkF3S5mmgg2c2CaVgoXPuZcIykMsP0bxshG2//J9VBjcM8
	 ryRgwFSN+Z+PEk9I7PfyGkBNQsHOy392yVUf9IuTsYSdHR+yd0T/DA7xR7kgjXenpu
	 EbBUp/DovKTQ9S7EsFaBe26vYxz0CvNAlmTzATRUf97R1mDXpWeAgtWHjbNU5v4DOs
	 B2jq4/w3VPX/Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9r4FWYhFyMlP; Wed, 15 Nov 2023 16:20:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3EAB5410E6;
	Wed, 15 Nov 2023 16:20:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3EAB5410E6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BDDA91BF295
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 03:15:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 954104148F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 03:15:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 954104148F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ha9xabTZRq47 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Nov 2023 03:15:08 +0000 (UTC)
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn [124.126.103.232])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 52340414A2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 03:15:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 52340414A2
X-UUID: ed5a0a20a55e490aa9171fb72141b083-20231115
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.32, REQID:2cfcccbc-ff1f-499a-af7d-84216c47cfff, IP:15,
 URL:0,TC:0,Content:-5,EDM:25,RT:0,SF:-15,FILE:0,BULK:0,RULE:Release_Ham,AC
 TION:release,TS:20
X-CID-INFO: VERSION:1.1.32, REQID:2cfcccbc-ff1f-499a-af7d-84216c47cfff, IP:15,
 UR
 L:0,TC:0,Content:-5,EDM:25,RT:0,SF:-15,FILE:0,BULK:0,RULE:Release_Ham,ACTI
 ON:release,TS:20
X-CID-META: VersionHash:5f78ec9, CLOUDID:98c3a972-1bd3-4f48-b671-ada88705968c,
 B
 ulkID:2311151114581JDKGIG5,BulkQuantity:0,Recheck:0,SF:19|44|66|24|17|102,
 TC:nil,Content:0,EDM:5,IP:-2,URL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,
 OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_FAS,TF_CID_SPAM_FSD,TF_CID_SPAM_FSI
X-UUID: ed5a0a20a55e490aa9171fb72141b083-20231115
X-User: chentao@kylinos.cn
Received: from vt.. [(116.128.244.169)] by mailgw
 (envelope-from <chentao@kylinos.cn>)
 (Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
 with ESMTP id 1282692015; Wed, 15 Nov 2023 11:14:55 +0800
From: Kunwu Chan <chentao@kylinos.cn>
To: horms@kernel.org
Date: Wed, 15 Nov 2023 11:14:44 +0800
Message-Id: <20231115031444.33381-1-chentao@kylinos.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231113093112.GL705326@kernel.org>
References: <20231113093112.GL705326@kernel.org>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 15 Nov 2023 16:19:59 +0000
Subject: [Intel-wired-lan] [PATCH iwl-next] i40e: Use correct buffer size
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
Cc: chentao@kylinos.cn, kunwu.chan@hotmail.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, jeffrey.t.kirsher@intel.com, kuba@kernel.org,
 anthony.l.nguyen@intel.com, pabeni@redhat.com, davem@davemloft.net,
 shannon.nelson@amd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The size of "i40e_dbg_command_buf" is 256, the size of "name"
depends on "IFNAMSIZ", plus a null character and format size,
the total size is more than 256, fix it.

Signed-off-by: Kunwu Chan <chentao@kylinos.cn>
Suggested-by: Simon Horman <horms@kernel.org>
---
 drivers/net/ethernet/intel/i40e/i40e_debugfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
index 999c9708def5..e3b939c67cfe 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
@@ -72,7 +72,7 @@ static ssize_t i40e_dbg_command_read(struct file *filp, char __user *buffer,
 {
 	struct i40e_pf *pf = filp->private_data;
 	int bytes_not_copied;
-	int buf_size = 256;
+	int buf_size = IFNAMSIZ + sizeof(i40e_dbg_command_buf) + 4;
 	char *buf;
 	int len;
 
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
