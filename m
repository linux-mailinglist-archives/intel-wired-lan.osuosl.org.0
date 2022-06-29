Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A695603DE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Jun 2022 17:11:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3D6A241168;
	Wed, 29 Jun 2022 15:11:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3D6A241168
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656515492;
	bh=zMOkokf5Vsz8mTq7Q8KnxxPGI0kdOCrpiLE3lTyTTXI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=dSMsbiDuVPziWPITOAWftHme7/hijH4VEYXwyS3dBSps03FDyVNBxxdM22k4M7VI0
	 Y+Ejli16gaRZhXSa34qfVjh4MzSv1+4kEJ9yjP1frBLDJvuLJst6ysPRoOvp+XUgo/
	 Sl8W9XUpcAH09KtZPjKQ4W6xYmqRoa1Wl6h/0bvtB4EgL3Rv6npfA2qBitYokxpGjT
	 cUpRnPC+RRcBcmlKDr309wCByhcO6gxnex8+NUG7InwL9mWirFyjvNsEAyiPwuXaT6
	 l4kej+/wzFxj+Tv7HNcSNDeRDaaldESzXkk9PkW8eEh21yTN2fVKLqM2N1AiK1hNwm
	 u6AXZ6Tbm+c+g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S85urcT3JOWN; Wed, 29 Jun 2022 15:11:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 146CA408D7;
	Wed, 29 Jun 2022 15:11:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 146CA408D7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B65161BF325
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 13:38:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 900B7612EF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 13:38:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 900B7612EF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KhuimXTWQAYa for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Jun 2022 13:38:43 +0000 (UTC)
X-Greylist: delayed 00:06:00 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 296FF61306
Received: from smtpbg.qq.com (biz-43-154-221-58.mail.qq.com [43.154.221.58])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 296FF61306
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 13:38:42 +0000 (UTC)
X-QQ-mid: bizesmtp81t1656509824tvs0y8f4
Received: from localhost.localdomain ( [182.148.13.66])
 by bizesmtp.qq.com (ESMTP) with 
 id ; Wed, 29 Jun 2022 21:37:00 +0800 (CST)
X-QQ-SSF: 0100000000200060C000C00A0000000
X-QQ-FEAT: 3uawQE1sH+3ZQG+P4dpIlTThLsViaVNLrg63S+DmjqidZwD1nNStyHd9TKyYQ
 yy9OBnVc9ztDf1IC9Xnu6b6p/Z0Q8gSdTDc/AyPJkrCZFOPRGvbjwGFa1nb/ahHvfFmmPDa
 k8PAw1glZTverFLoXbQKeS+wwBLDCs7M4qwbx+mmzcE6vT7IxVXWngW5+R2QprxQeHEUPWP
 9gmaSiQQJZH5n4eLQUZQYTnlD+OR4sDWkgOLIbDSTquiFwDpO5630upvOo0rz6wCl46YJ1u
 0lGEmYYf3v3+udaH4Xfx788uKTzN5uD05D3+75gW3ZKtuj2wtd6+FPvXLOX0nIGWB85QASV
 5oa1UdD
X-QQ-GoodBg: 0
From: Jilin Yuan <yuanjilin@cdjrlc.com>
To: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Date: Wed, 29 Jun 2022 21:36:54 +0800
Message-Id: <20220629133654.42134-1-yuanjilin@cdjrlc.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:cdjrlc.com:qybglogicsvr:qybglogicsvr4
X-Mailman-Approved-At: Wed, 29 Jun 2022 15:11:26 +0000
Subject: [Intel-wired-lan] [PATCH] intel/fm10k:fix repeated words in comments
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

Delete the redundant word 'the'.
Delete the redundant word 'by'.
Delete the redundant word 'a'.

Signed-off-by: Jilin Yuan <yuanjilin@cdjrlc.com>
---
 drivers/net/ethernet/intel/fm10k/fm10k_mbx.c | 2 +-
 drivers/net/ethernet/intel/fm10k/fm10k_tlv.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_mbx.c b/drivers/net/ethernet/intel/fm10k/fm10k_mbx.c
index 30ca9ee1900b..c499b62b49b1 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_mbx.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_mbx.c
@@ -809,7 +809,7 @@ static s32 fm10k_mbx_read(struct fm10k_hw *hw, struct fm10k_mbx_info *mbx)
  *  @hw: pointer to hardware structure
  *  @mbx: pointer to mailbox
  *
- *  This function copies the message from the the message array to mbmem
+ *  This function copies the message from the message array to mbmem
  **/
 static void fm10k_mbx_write(struct fm10k_hw *hw, struct fm10k_mbx_info *mbx)
 {
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_tlv.c b/drivers/net/ethernet/intel/fm10k/fm10k_tlv.c
index f6d56867f857..75cbdf2dbbe3 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_tlv.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_tlv.c
@@ -78,7 +78,7 @@ static s32 fm10k_tlv_attr_put_null_string(u32 *msg, u16 attr_id,
  *  @string: Pointer to location of destination string
  *
  *  This function pulls the string back out of the attribute and will place
- *  it in the array pointed by by string.  It will return success if provided
+ *  it in the array pointed by string.  It will return success if provided
  *  with a valid pointers.
  **/
 static s32 fm10k_tlv_attr_get_null_string(u32 *attr, unsigned char *string)
@@ -584,7 +584,7 @@ s32 fm10k_tlv_msg_parse(struct fm10k_hw *hw, u32 *msg,
  *  @mbx: Unused mailbox pointer
  *
  *  This function is a default handler for unrecognized messages.  At a
- *  a minimum it just indicates that the message requested was
+ *  minimum it just indicates that the message requested was
  *  unimplemented.
  **/
 s32 fm10k_tlv_msg_error(struct fm10k_hw __always_unused *hw,
-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
