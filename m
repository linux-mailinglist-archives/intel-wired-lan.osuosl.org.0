Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E075603E3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Jun 2022 17:11:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AA0DB84102;
	Wed, 29 Jun 2022 15:11:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA0DB84102
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656515512;
	bh=uozNl6nSn7RIeAHDBmAgQYUdNvzM0nw/eyKty4GebSU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=H4Vol+S3MLLl78FiBOdjRh6fj/KKqP5SGIWKt62S0mxV6qTLTdLDmwcDBmoW6OY6R
	 bE7VMMs9+i4TR7n02gmMtr5sXCsb2ocXIuBXPC9lW/oQPXqBlPs4OQsGnLvdtZDCkX
	 cYbdvEHOxOhDM4+qqo6LlEtouGDszysttmpGz1GnZKb53OEsrUiS3/w/LA8saEBRH0
	 2su0jg+fQsQlnqq1kx2aamBtt0EPpMzR+ZphomY05eLMQjt+aeZoVx7qEV8KA38SOY
	 i//1GQw+yRuMqREobgfAOQ/eDO93V4r6BSKdp5TiFwPc+C+nChH1NiLSh0xmAko5hn
	 TZ+/biW8aoYzA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H216QHUqUv_0; Wed, 29 Jun 2022 15:11:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id ABE8281A23;
	Wed, 29 Jun 2022 15:11:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ABE8281A23
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2EC2C1BF28F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 14:09:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 07EEC60808
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 14:09:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 07EEC60808
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vO8z3TaLq96L for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Jun 2022 14:09:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D538060BB8
Received: from smtpbg.qq.com (biz-43-154-221-58.mail.qq.com [43.154.221.58])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D538060BB8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 14:09:04 +0000 (UTC)
X-QQ-mid: bizesmtp81t1656511724tmnezqd5
Received: from localhost.localdomain ( [182.148.13.66])
 by bizesmtp.qq.com (ESMTP) with 
 id ; Wed, 29 Jun 2022 22:08:41 +0800 (CST)
X-QQ-SSF: 0100000000200060C000C00A0000000
X-QQ-FEAT: y2OO40a4AzmIkPvMMO+8zp90V7tISQjlfMlK8bG+VXPAGbG+CmCTdIJtZ39e+
 BNrwSfITeV/DWkRTKp9r5mCteLOeiTIW4v5OxMfy0ggwa6vKkYwSLa/0YIcryEc1iRATj0R
 hxkbzXDekwzETCqRx41FsIv6Wc3upXmUC+tR+edTxo1kgZmtDiWXR/l282G1cW90GHUBniw
 x+poVA+T/sM6FADE50vvekN+b+M/7yrIX4++osPVzBEDs712stcqsrHJvCZR+I5PeBTU8hF
 59zfW5qHwPOhjh0fMlYZiuE82RexfcE9e8eZNgukkBv4FWmy4SGinHAkhYSGLxdwzW1HW05
 ENaN8De0tBUTkI2cBg=
X-QQ-GoodBg: 0
From: Jilin Yuan <yuanjilin@cdjrlc.com>
To: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Date: Wed, 29 Jun 2022 22:08:24 +0800
Message-Id: <20220629140824.6064-1-yuanjilin@cdjrlc.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:cdjrlc.com:qybglogicsvr:qybglogicsvr4
X-Mailman-Approved-At: Wed, 29 Jun 2022 15:11:26 +0000
Subject: [Intel-wired-lan] [PATCH] intel/ice:fix repeated words in comments
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

Delete the redundant word 'a'.

Signed-off-by: Jilin Yuan <yuanjilin@cdjrlc.com>
---
 drivers/net/ethernet/intel/ice/ice_flex_pipe.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index c73cdab44f70..ada5198b5b16 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -2639,7 +2639,7 @@ ice_ptg_remove_ptype(struct ice_hw *hw, enum ice_block blk, u16 ptype, u8 ptg)
  *
  * This function will either add or move a ptype to a particular PTG depending
  * on if the ptype is already part of another group. Note that using a
- * a destination PTG ID of ICE_DEFAULT_PTG (0) will move the ptype to the
+ * destination PTG ID of ICE_DEFAULT_PTG (0) will move the ptype to the
  * default PTG.
  */
 static int
-- 
2.36.1


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
