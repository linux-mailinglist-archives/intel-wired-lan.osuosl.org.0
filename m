Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB47454F3B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Nov 2021 22:21:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A05DB405BB;
	Wed, 17 Nov 2021 21:21:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gRWxmycQGHAB; Wed, 17 Nov 2021 21:21:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id ABB1840508;
	Wed, 17 Nov 2021 21:21:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 54FF21BF307
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Nov 2021 21:21:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4294040569
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Nov 2021 21:21:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LR5BFzsckgmR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Nov 2021 21:21:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from smtp.smtpout.orange.fr (smtp09.smtpout.orange.fr
 [80.12.242.131])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 16F1040508
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Nov 2021 21:21:25 +0000 (UTC)
Received: from pop-os.home ([86.243.171.122]) by smtp.orange.fr with ESMTPA
 id nSMqmk6KTf6fnnSMrmnmUR; Wed, 17 Nov 2021 22:21:23 +0100
X-ME-Helo: pop-os.home
X-ME-Auth: YWZlNiIxYWMyZDliZWIzOTcwYTEyYzlhMmU3ZiQ1M2U2MzfzZDfyZTMxZTBkMTYyNDBjNDJlZmQ3ZQ==
X-ME-Date: Wed, 17 Nov 2021 22:21:23 +0100
X-ME-IP: 86.243.171.122
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, kuba@kernel.org
Date: Wed, 17 Nov 2021 22:21:19 +0100
Message-Id: <dc5cd04eed7dd3100f5860acaa995efa40ddecc8.1637183999.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] ice: Slightly simply
 ice_find_free_recp_res_idx
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
Cc: netdev@vger.kernel.org, kernel-janitors@vger.kernel.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The 'possible_idx' bitmap is set just after it is zeroed, so we can save
the first step.

The 'free_idx' bitmap is used only at the end of the function as the
result of a bitmap xor operation. So there is no need to explicitly
zero it before.

So, slightly simply the code and remove 2 useless 'bitmap_zero()' call

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
I don't think it will make any differences in RL. ICE_MAX_FV_WORDS is
just 48 (bits), so 1 or 2 longs
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 793f4a9fc2cd..78bfb9fd318d 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -4071,10 +4071,8 @@ ice_find_free_recp_res_idx(struct ice_hw *hw, const unsigned long *profiles,
 	DECLARE_BITMAP(used_idx, ICE_MAX_FV_WORDS);
 	u16 bit;
 
-	bitmap_zero(possible_idx, ICE_MAX_FV_WORDS);
 	bitmap_zero(recipes, ICE_MAX_NUM_RECIPES);
 	bitmap_zero(used_idx, ICE_MAX_FV_WORDS);
-	bitmap_zero(free_idx, ICE_MAX_FV_WORDS);
 
 	bitmap_set(possible_idx, 0, ICE_MAX_FV_WORDS);
 
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
