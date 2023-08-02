Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D976976C792
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Aug 2023 09:55:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7A08C80E72;
	Wed,  2 Aug 2023 07:55:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A08C80E72
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690962903;
	bh=9BxOM8X0/PMsIii9eA4Jxx2HSKS2ppGc/Iz6l0+B+JA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=wASw4Mal3cGQMhwshWtRfjMrZHfw2a6RxjktYvpwKh5GdaUTMemfS87JoSuX4GSqw
	 pQAOPjGUutxC2in+e0tf6p4nm86nrARfnYQyiXfFcMUsBkemoyfjJ6DBGjYk+63fwY
	 gCHD819w/TvT3S0UHkIYMzst6cxoNYOb4rONifcRtwnHZr58rWQw1NQSwCjUz/O34r
	 ZWIPN6LycIyAPvw5veJYn6Xn/vuR8BIl/Qgo1TU3dJuo5NEacDaNMhzrVfgKgZCmdu
	 wL1efDVaXeLfLewWEfs5Q630mQztASMBh+s1oMGtWmKI1OlLkjOqw6raD04gJPbwwR
	 6LpNR2eitAdDA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZQKqte2Y3Cxa; Wed,  2 Aug 2023 07:55:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C6D9180C18;
	Wed,  2 Aug 2023 07:55:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C6D9180C18
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 398231BF360
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 07:54:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0FDF4402C3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 07:54:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0FDF4402C3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ePEupAlSfwJr for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Aug 2023 07:54:45 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 02 Aug 2023 07:54:45 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 695E1401A4
Received: from mgamail.intel.com (unknown [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 695E1401A4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 07:54:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="368407495"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="368407495"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2023 00:47:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="872364690"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmsmga001.fm.intel.com with ESMTP; 02 Aug 2023 00:47:39 -0700
From: Andrii Staikov <andrii.staikov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  2 Aug 2023 09:47:32 +0200
Message-Id: <20230802074732.3648072-1-andrii.staikov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690962885; x=1722498885;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=irYR3+Iv6lcQI9Xx9HyLJE+7l6Hs7tt3YtyAzTGAUds=;
 b=kiVKg/PtXbMugYhb+QIk9pEM/irjYluVnJySayuJbyxQXa0KesydI9ay
 Ff72SE6xpaIfRIwREMKjrBr310f1eJFGvcuwzZNBCQ+0gD2wUyTJ/CWMn
 y96r/cIOAPl7U6i4cYwPklJNUR09v7WeKq+GuinwgTmP/LWW+vQdUD/KB
 3x30CCc00BcpIPaVZWRO42eoKCX/lewk+jFa+SYRACu5p5kluq1ko0JPw
 m0AiDDFCCbi7NTfAyUSnajMILohTwdmy8U9KjZb7VDIC/R+e6YIVQIwwU
 PJR2sssKfV0vmmKAS99FdiBHLFMu6OnE1k59Yq51nbAzGc0c5UEALPXi3
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kiVKg/Pt
Subject: [Intel-wired-lan] [PATCH iwl-next v1] i40e: fix misleading debug
 logs
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Andrii Staikov <andrii.staikov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Change "write" into the actual "read" word.
Change parameters description.

Fixes: 7073f46e443e ("i40e: Add AQ commands for NVM Update for X722")
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_nvm.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_nvm.c b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
index 9da0c87f0328..f99c1f7fec40 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_nvm.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
@@ -210,11 +210,11 @@ static int i40e_read_nvm_word_srctl(struct i40e_hw *hw, u16 offset,
  * @hw: pointer to the HW structure.
  * @module_pointer: module pointer location in words from the NVM beginning
  * @offset: offset in words from module start
- * @words: number of words to write
- * @data: buffer with words to write to the Shadow RAM
+ * @words: number of words to read
+ * @data: buffer with words to read to the Shadow RAM
  * @last_command: tells the AdminQ that this is the last command
  *
- * Writes a 16 bit words buffer to the Shadow RAM using the admin command.
+ * Reads a 16 bit words buffer to the Shadow RAM using the admin command.
  **/
 static int i40e_read_nvm_aq(struct i40e_hw *hw,
 			    u8 module_pointer, u32 offset,
@@ -234,18 +234,18 @@ static int i40e_read_nvm_aq(struct i40e_hw *hw,
 	 */
 	if ((offset + words) > hw->nvm.sr_size)
 		i40e_debug(hw, I40E_DEBUG_NVM,
-			   "NVM write error: offset %d beyond Shadow RAM limit %d\n",
+			   "NVM read error: offset %d beyond Shadow RAM limit %d\n",
 			   (offset + words), hw->nvm.sr_size);
 	else if (words > I40E_SR_SECTOR_SIZE_IN_WORDS)
-		/* We can write only up to 4KB (one sector), in one AQ write */
+		/* We can read only up to 4KB (one sector), in one AQ write */
 		i40e_debug(hw, I40E_DEBUG_NVM,
-			   "NVM write fail error: tried to write %d words, limit is %d.\n",
+			   "NVM read fail error: tried to read %d words, limit is %d.\n",
 			   words, I40E_SR_SECTOR_SIZE_IN_WORDS);
 	else if (((offset + (words - 1)) / I40E_SR_SECTOR_SIZE_IN_WORDS)
 		 != (offset / I40E_SR_SECTOR_SIZE_IN_WORDS))
-		/* A single write cannot spread over two sectors */
+		/* A single read cannot spread over two sectors */
 		i40e_debug(hw, I40E_DEBUG_NVM,
-			   "NVM write error: cannot spread over two sectors in a single write offset=%d words=%d\n",
+			   "NVM read error: cannot spread over two sectors in a single read offset=%d words=%d\n",
 			   offset, words);
 	else
 		ret_code = i40e_aq_read_nvm(hw, module_pointer,
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
