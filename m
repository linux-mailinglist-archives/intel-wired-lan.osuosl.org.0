Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E565844FBEE
	for <lists+intel-wired-lan@lfdr.de>; Sun, 14 Nov 2021 23:00:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6A79280D3E;
	Sun, 14 Nov 2021 22:00:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FV-ZXWJdfhwU; Sun, 14 Nov 2021 22:00:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 74F9380C69;
	Sun, 14 Nov 2021 22:00:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 037561BF2BE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Nov 2021 06:10:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E4F8F4016C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Nov 2021 06:10:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k3T93JSqyDma for <intel-wired-lan@lists.osuosl.org>;
 Sun, 14 Nov 2021 06:10:14 +0000 (UTC)
X-Greylist: delayed 00:07:24 by SQLgrey-1.8.0
Received: from smtpbg604.qq.com (smtpbg604.qq.com [59.36.128.82])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 93281400D1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Nov 2021 06:10:13 +0000 (UTC)
X-QQ-mid: bizesmtp43t1636869746t2squ0kq
Received: from localhost.localdomain (unknown [125.69.41.88])
 by esmtp6.qq.com (ESMTP) with 
 id ; Sun, 14 Nov 2021 14:02:24 +0800 (CST)
X-QQ-SSF: 01000000002000C0F000B00A0000000
X-QQ-FEAT: Mzskoac49OiIv0KUitNHgBb3kgXFZxiGEiqTBvjSiDqRqg3yXuxl3T342JbHl
 4g++JaVU0TN+1b89QYqwytK3N9VD2AwPd06cj/sJiTrh6+60krhMot3ZJ7ymCx6/+F1OQoW
 vg5EyYg3eJ7FmovozeHiTiDTeUwxOMz8fVLeCpAsAzCThmgiXgbQX7rvUZ4OnTE2zU74AWM
 fUyxv9ekDP9hjT0NxJLqDgA5fsGB60s6SWgr8FHYORSJqwr4YZQj1q66/FIX3kWuuoM/2tN
 7TxQFoFFI+szTmwDjybybDhSCrExiaOtrOKHym0pTan0iEhXewZPMiIzLqkQTaoOPCKC4vS
 ePvi43zoXYdPWJy5AFO16G6e9ICmkjWiOEvgBLl
X-QQ-GoodBg: 0
From: Jason Wang <wangborong@cdjrlc.com>
To: kuba@kernel.org
Date: Sun, 14 Nov 2021 14:02:22 +0800
Message-Id: <20211114060222.231075-1-wangborong@cdjrlc.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:cdjrlc.com:qybgspam:qybgspam4
X-Mailman-Approved-At: Sun, 14 Nov 2021 21:59:50 +0000
Subject: [Intel-wired-lan] [PATCH] igb: remove never changed variable
 `ret_val'
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jason Wang <wangborong@cdjrlc.com>, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The variable used for return status in `igb_write_xmdio_reg' function
is never changed  and this function is just need return 0. Thus, the
`ret_val' can be removed and return 0 at the end of the
`igb_write_xmdio_reg' function.

Signed-off-by: Jason Wang <wangborong@cdjrlc.com>
---
 drivers/net/ethernet/intel/igb/e1000_i210.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/e1000_i210.c b/drivers/net/ethernet/intel/igb/e1000_i210.c
index 9265901455cd..b9b9d35494d2 100644
--- a/drivers/net/ethernet/intel/igb/e1000_i210.c
+++ b/drivers/net/ethernet/intel/igb/e1000_i210.c
@@ -792,7 +792,6 @@ s32 igb_write_xmdio_reg(struct e1000_hw *hw, u16 addr, u8 dev_addr, u16 data)
  **/
 s32 igb_init_nvm_params_i210(struct e1000_hw *hw)
 {
-	s32 ret_val = 0;
 	struct e1000_nvm_info *nvm = &hw->nvm;
 
 	nvm->ops.acquire = igb_acquire_nvm_i210;
@@ -813,7 +812,7 @@ s32 igb_init_nvm_params_i210(struct e1000_hw *hw)
 		nvm->ops.validate = NULL;
 		nvm->ops.update   = NULL;
 	}
-	return ret_val;
+	return 0;
 }
 
 /**
-- 
2.33.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
