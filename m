Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 895F05603E1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Jun 2022 17:11:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BDA5641A69;
	Wed, 29 Jun 2022 15:11:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BDA5641A69
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656515504;
	bh=NJAfOqFTk5FjlusRvhBgtWkT/U4uaalii+kucywNRwI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=UkyVy+xwhdZlQbwtkYT40BlNWeDykn9/fAwzvOQkahDkIVA9WOouzdVmL6S66SRUS
	 O/JjtlSX60lwd1WE9lumEng3MkF7MF8btbtwlx4CPT+wtP1bBN1i6uZAOYZuX3L4sx
	 IAt0KoDXW0H9xiPNWTfqiWJ+7s7Fs4HUeTD92rInghPI92utpJXa8D8+tzfruFy2/y
	 mnQvwhKuEjzpNMW3Jb0PziIfr7JA3AmXkx3ZwNCkLPVfHPUwMZI+oFzMNBfHOs2qsX
	 FIwUgFY7F64KaLMXcvhlhKBSkeVutjTTallb5Hfyg8BuLfw+X2lb6uwk/hGD1h3vDf
	 bl3rq4akmMKoA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hlz8TmDTF-WK; Wed, 29 Jun 2022 15:11:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7077E41A5F;
	Wed, 29 Jun 2022 15:11:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7077E41A5F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9570A1BF325
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 13:43:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6EDE740734
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 13:43:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6EDE740734
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g0RMCwSQoC0T for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Jun 2022 13:43:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 49C34409EF
Received: from smtpbg.qq.com (biz-43-154-54-12.mail.qq.com [43.154.54.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 49C34409EF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 13:43:24 +0000 (UTC)
X-QQ-mid: bizesmtp79t1656509476tvvsidqs
Received: from localhost.localdomain ( [182.148.13.66])
 by bizesmtp.qq.com (ESMTP) with 
 id ; Wed, 29 Jun 2022 21:31:14 +0800 (CST)
X-QQ-SSF: 0100000000200060C000B00A0000000
X-QQ-FEAT: 1XNERxhHvDkrposPQr1R9uI+G46sLpNhx7g2/nAcD2JgwXoFIB6qmrUCtgDBK
 bSSrDdzaR7ncxD9lnDnRIKtbRR1AoCWlULtBM//uuIV0cEJB46Yi1w6aVCPSYP23T+C2Zb/
 TKQt+W3oMnZfY5ERe13/7O8rB2dR8SNgxk/Tf+Gcu7bccOpJZKFG7LrXTejybK8Xx8ZlAy+
 lqoeytznuYD2y0vKTfZ6N/KylLcr4dwm+ERycsEpDDO3MElhhro7nFsaa5AyPaG5tgYnLAe
 XPCmGr8Lj1dBfa7/dr7naKJoYvai2U9ICBv1X8uEaa0udpGlm3kyfRLeTposrbDwPpwK5/t
 SSuXLOh
X-QQ-GoodBg: 0
From: Jilin Yuan <yuanjilin@cdjrlc.com>
To: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Date: Wed, 29 Jun 2022 21:31:07 +0800
Message-Id: <20220629133107.36642-1-yuanjilin@cdjrlc.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:cdjrlc.com:qybglogicsvr:qybglogicsvr4
X-Mailman-Approved-At: Wed, 29 Jun 2022 15:11:26 +0000
Subject: [Intel-wired-lan] [PATCH] intel/e1000e:fix repeated words in
 comments
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
Cc: Jilin Yuan <yuanjilin@cdjrlc.com>, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Delete the redundant word 'frames'.

Signed-off-by: Jilin Yuan <yuanjilin@cdjrlc.com>
---
 drivers/net/ethernet/intel/e1000e/mac.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/mac.c b/drivers/net/ethernet/intel/e1000e/mac.c
index 51512a73fdd0..5df7ad93f3d7 100644
--- a/drivers/net/ethernet/intel/e1000e/mac.c
+++ b/drivers/net/ethernet/intel/e1000e/mac.c
@@ -957,7 +957,7 @@ s32 e1000e_force_mac_fc(struct e1000_hw *hw)
 	 *      1:  Rx flow control is enabled (we can receive pause
 	 *          frames but not send pause frames).
 	 *      2:  Tx flow control is enabled (we can send pause frames
-	 *          frames but we do not receive pause frames).
+	 *          but we do not receive pause frames).
 	 *      3:  Both Rx and Tx flow control (symmetric) is enabled.
 	 *  other:  No other values should be possible at this point.
 	 */
-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
