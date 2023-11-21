Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 124857F3806
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Nov 2023 22:19:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 624AD81C11;
	Tue, 21 Nov 2023 21:19:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 624AD81C11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700601588;
	bh=mFQbl/bhHaRJY47JpoAVY7dFAvui/sISSXEJIPH0TF0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=r0X7M6HQgeQVHU+2GlVu62ndPLp69uX4Eay6B6Om8vPIc8WEHHmt5lS7egd2cZ/4R
	 J4mnsPRM6bHuZa3ASlALhqHgFZfrNPkXp5hV3PWBMvhMIwTj3645ebfBg8qdKBvTHU
	 DH8EzTq7UdMEDpQj3TI6G9ICwbrg/qjt8IV9KNzEQvimXYoPRcq8mJThPq9RjJVJW1
	 W7fNhTptyKtl8tB15YnCoUA+sQJu26/ieP7LYLWAxFXsQQRM778Z0/7Tar2/Vlzy/h
	 I7twCXgpi/w2Tc3w4KFxj/BPxiU/Ow0CYupPtVPhGVOMPYTGx/tlmTlv3gLLyt5ujr
	 wKxccGoPAi4qA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zB8ZFZi6DgkF; Tue, 21 Nov 2023 21:19:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 293A8813E4;
	Tue, 21 Nov 2023 21:19:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 293A8813E4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 91AAE1BF3F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 21:19:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 689D740E46
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 21:19:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 689D740E46
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SkPS1jG68NwI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Nov 2023 21:19:41 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4DD4640978
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 21:19:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4DD4640978
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="423022066"
X-IronPort-AV: E=Sophos;i="6.04,216,1695711600"; d="scan'208";a="423022066"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 13:19:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="716630531"
X-IronPort-AV: E=Sophos;i="6.04,216,1695711600"; d="scan'208";a="716630531"
Received: from jbrandeb-spr1.jf.intel.com ([10.166.28.233])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 13:19:37 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 21 Nov 2023 13:19:09 -0800
Message-Id: <20231121211921.19834-2-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20231121211921.19834-1-jesse.brandeburg@intel.com>
References: <20231121211921.19834-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700601581; x=1732137581;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bssGAbRo6EZ7uH9j8e/gpjKd/Bpnhc8jnprKFrUZrJs=;
 b=lwioLlmVkw+TpQMRlU7pTn+sOhl+M+43leKfjqFocz84wSLiDtoLwqPF
 YcYjWax0y7/XVoFlEZgHMTccBtvhwhpdTMdwyZlKUTzp9bpUuJyjQHy7S
 8MuqOXg0GuaTKkCauh5ABZXPTSSUPhqyWWTK1G1BDu3o5rJN0FZbC+KiU
 H/ETfgLjlfoQ4C2bmjRAlXDUYlSNQNLjjczKoDIN87IX7AKYsj9mH5b0b
 RnNeL4x0IONUXBH30js/q42ddUtrSmhkZv3IPJk+OhWgTQGzRZCK/tWzD
 yC4Umted0MyKw+Ez2S2t8IZuEx3gAe5elnoeZYScE3ceEjiJArjM0fKx/
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lwioLlmV
Subject: [Intel-wired-lan] [PATCH iwl-next v1 01/13] e1000e: make lost bits
 explicit
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
Cc: netdev@vger.kernel.org, Marcin Szycik <marcin.szycik@linux.intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

For more than 15 years this code has passed in a request for a page and
masked off that page when read/writing. This code has been here forever,
but FIELD_PREP finds the bug when converted to use it. Change the code
to do exactly the same thing but allow the conversion to FIELD_PREP in a
later patch. To make it clear what we lost when making this change I
left a comment, but there is no point to change the code to generate a
correct sequence at this point.

This is not a Fixes tagged patch on purpose because it doesn't change
the binary output.

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/e1000e/80003es2lan.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/80003es2lan.c b/drivers/net/ethernet/intel/e1000e/80003es2lan.c
index be9c695dde12..74671201208e 100644
--- a/drivers/net/ethernet/intel/e1000e/80003es2lan.c
+++ b/drivers/net/ethernet/intel/e1000e/80003es2lan.c
@@ -1035,17 +1035,18 @@ static s32 e1000_setup_copper_link_80003es2lan(struct e1000_hw *hw)
 	 * iteration and increase the max iterations when
 	 * polling the phy; this fixes erroneous timeouts at 10Mbps.
 	 */
-	ret_val = e1000_write_kmrn_reg_80003es2lan(hw, GG82563_REG(0x34, 4),
-						   0xFFFF);
+	/* these next three accesses were always meant to use page 0x34 using
+	 * GG82563_REG(0x34, N) but never did, so we've just corrected the call
+	 * to not drop bits
+	 */
+	ret_val = e1000_write_kmrn_reg_80003es2lan(hw, 4, 0xFFFF);
 	if (ret_val)
 		return ret_val;
-	ret_val = e1000_read_kmrn_reg_80003es2lan(hw, GG82563_REG(0x34, 9),
-						  &reg_data);
+	ret_val = e1000_read_kmrn_reg_80003es2lan(hw, 9, &reg_data);
 	if (ret_val)
 		return ret_val;
 	reg_data |= 0x3F;
-	ret_val = e1000_write_kmrn_reg_80003es2lan(hw, GG82563_REG(0x34, 9),
-						   reg_data);
+	ret_val = e1000_write_kmrn_reg_80003es2lan(hw, 9, reg_data);
 	if (ret_val)
 		return ret_val;
 	ret_val =
-- 
2.39.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
