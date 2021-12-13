Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AD1DF4731CB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Dec 2021 17:28:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4F9EA85AFF;
	Mon, 13 Dec 2021 16:28:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CzC8D6HrdUXv; Mon, 13 Dec 2021 16:28:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5AE2B85AF6;
	Mon, 13 Dec 2021 16:28:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 506861BF39C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 03:11:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 49E7D403CF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 03:11:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UEOccaICRlWA for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Dec 2021 03:11:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from out30-43.freemail.mail.aliyun.com
 (out30-43.freemail.mail.aliyun.com [115.124.30.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7F7D0400D2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Dec 2021 03:11:13 +0000 (UTC)
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R691e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04407; MF=yang.lee@linux.alibaba.com;
 NM=1; PH=DS; RN=12; SR=0; TI=SMTPD_---0V-MsODL_1639365069; 
Received: from localhost(mailfrom:yang.lee@linux.alibaba.com
 fp:SMTPD_---0V-MsODL_1639365069) by smtp.aliyun-inc.com(127.0.0.1);
 Mon, 13 Dec 2021 11:11:10 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: davem@davemloft.net
Date: Mon, 13 Dec 2021 11:11:07 +0800
Message-Id: <20211213031107.52438-1-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 2.20.1.7.g153144c
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 13 Dec 2021 16:27:34 +0000
Subject: [Intel-wired-lan] [PATCH -next] i40e: remove variables set but not
 used
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
Cc: Yang Li <yang.lee@linux.alibaba.com>, netdev@vger.kernel.org,
 llvm@lists.linux.dev, ndesaulniers@google.com, linux-kernel@vger.kernel.org,
 nathan@kernel.org, Abaci Robot <abaci@linux.alibaba.com>, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The code that uses variables pe_cntx_size and pe_filt_size 
has been removed, so they should be removed as well.

Eliminate the following clang warnings:
drivers/net/ethernet/intel/i40e/i40e_common.c:4139:20:
warning: variable 'pe_filt_size' set but not used.
drivers/net/ethernet/intel/i40e/i40e_common.c:4139:6:
warning: variable 'pe_cntx_size' set but not used.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Fixes: 467d729abb72 ("i40e/i40evf: Fix code to accommodate i40e_register.h changes")
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 drivers/net/ethernet/intel/i40e/i40e_common.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index b4d3fed0d2f2..a775e55ae8bc 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -4136,7 +4136,6 @@ static i40e_status i40e_validate_filter_settings(struct i40e_hw *hw,
 				struct i40e_filter_control_settings *settings)
 {
 	u32 fcoe_cntx_size, fcoe_filt_size;
-	u32 pe_cntx_size, pe_filt_size;
 	u32 fcoe_fmax;
 	u32 val;
 
@@ -4180,8 +4179,6 @@ static i40e_status i40e_validate_filter_settings(struct i40e_hw *hw,
 	case I40E_HASH_FILTER_SIZE_256K:
 	case I40E_HASH_FILTER_SIZE_512K:
 	case I40E_HASH_FILTER_SIZE_1M:
-		pe_filt_size = I40E_HASH_FILTER_BASE_SIZE;
-		pe_filt_size <<= (u32)settings->pe_filt_num;
 		break;
 	default:
 		return I40E_ERR_PARAM;
@@ -4198,8 +4195,6 @@ static i40e_status i40e_validate_filter_settings(struct i40e_hw *hw,
 	case I40E_DMA_CNTX_SIZE_64K:
 	case I40E_DMA_CNTX_SIZE_128K:
 	case I40E_DMA_CNTX_SIZE_256K:
-		pe_cntx_size = I40E_DMA_CNTX_BASE_SIZE;
-		pe_cntx_size <<= (u32)settings->pe_cntx_num;
 		break;
 	default:
 		return I40E_ERR_PARAM;
-- 
2.20.1.7.g153144c

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
