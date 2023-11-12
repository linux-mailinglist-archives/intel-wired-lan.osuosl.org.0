Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8657EA127
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Nov 2023 17:19:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1F72C41193;
	Mon, 13 Nov 2023 16:19:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1F72C41193
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699892374;
	bh=K4vNBEfgCvaEuIyLOsIzM+e0qrRuufJwIeSfVutGieY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=dyDKag4oeH/MbmRVVLN6Shs3zV80uG3pVhLYJ+Qmg6G7RcIjNeCB20s77FK69QbaF
	 12aRMBPYHOApTOY9f9Grqz+H4g+0WI4UHiVwCKSGi7zy/N2vKphdmWCEKO5yeIbady
	 1ZfFbRhT89io2W0xz+SKEAJcBOyTT0cfvZ8LaqC6DmN2un6ht/ittzat75QAJa68/y
	 5pSvKElZcjgkyANYCAXG0tF51NOExna5Y+YNhu3uV4Xnyp0yRpT7EeR0Xxen0nKNcO
	 wni811I24heEU2s/kH2aUwf5i+tH44yKXNZZ6JXROBmT/dSGoBsVCTNddjgXpwWCAt
	 F2I4v433Me7JQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hbE49buqcFVX; Mon, 13 Nov 2023 16:19:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8A3E6404AF;
	Mon, 13 Nov 2023 16:19:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8A3E6404AF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 693D61BF2FE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Nov 2023 11:03:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 403BA82261
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Nov 2023 11:03:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 403BA82261
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Idq2q1rOuvny for <intel-wired-lan@lists.osuosl.org>;
 Sun, 12 Nov 2023 11:03:13 +0000 (UTC)
X-Greylist: delayed 305 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 12 Nov 2023 11:03:12 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1DEC7821E3
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn [124.126.103.232])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1DEC7821E3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 12 Nov 2023 11:03:11 +0000 (UTC)
X-UUID: 9eeb32bb3fb04d4ab49ba3f3031df80f-20231112
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.32, REQID:b31aca77-f427-4c47-b2b9-f3ea21d1e941, IP:15,
 URL:0,TC:0,Content:-5,EDM:0,RT:0,SF:-15,FILE:0,BULK:0,RULE:Release_Ham,ACT
 ION:release,TS:-5
X-CID-INFO: VERSION:1.1.32, REQID:b31aca77-f427-4c47-b2b9-f3ea21d1e941, IP:15,
 UR
 L:0,TC:0,Content:-5,EDM:0,RT:0,SF:-15,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
 N:release,TS:-5
X-CID-META: VersionHash:5f78ec9, CLOUDID:413d4b95-10ce-4e4b-85c2-c9b5229ff92b,
 B
 ulkID:231112183317SMX1J234,BulkQuantity:1,Recheck:0,SF:44|66|38|24|17|19|1
 02,TC:nil,Content:0,EDM:-3,IP:-2,URL:0,File:nil,Bulk:40,QS:nil,BEC:nil,COL
 :0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_FAS,TF_CID_SPAM_FSD,TF_CID_SPAM_FSI,TF_CID_SPAM_SNR
X-UUID: 9eeb32bb3fb04d4ab49ba3f3031df80f-20231112
X-User: chentao@kylinos.cn
Received: from vt.. [(116.128.244.169)] by mailgw
 (envelope-from <chentao@kylinos.cn>)
 (Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
 with ESMTP id 1214345310; Sun, 12 Nov 2023 18:57:41 +0800
From: Kunwu Chan <chentao@kylinos.cn>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, jeffrey.t.kirsher@intel.com, shannon.nelson@amd.com
Date: Sun, 12 Nov 2023 18:57:14 +0800
Message-Id: <20231112105714.3829869-1-chentao@kylinos.cn>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 13 Nov 2023 16:19:27 +0000
Subject: [Intel-wired-lan] [PATCH] i40e: Use correct buffer size
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, Kunwu Chan <chentao@kylinos.cn>,
 kunwu.chan@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The size of "i40e_dbg_command_buf" is 256, the size of "name" is
at most 256, plus a null character and the format size,
the total size should be 516.

Fixes: 02e9c290814c ("i40e: debugfs interface")
Signed-off-by: Kunwu Chan <chentao@kylinos.cn>
---
 drivers/net/ethernet/intel/i40e/i40e_debugfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
index 999c9708def5..d3f07cecfe57 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
@@ -72,7 +72,7 @@ static ssize_t i40e_dbg_command_read(struct file *filp, char __user *buffer,
 {
 	struct i40e_pf *pf = filp->private_data;
 	int bytes_not_copied;
-	int buf_size = 256;
+	int buf_size = 513;
 	char *buf;
 	int len;
 
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
