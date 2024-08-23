Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C35E995D983
	for <lists+intel-wired-lan@lfdr.de>; Sat, 24 Aug 2024 01:09:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ED47B81EF8;
	Fri, 23 Aug 2024 23:09:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uISbd5D-ksqN; Fri, 23 Aug 2024 23:09:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D9BF481F2F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724454544;
	bh=emRWDYkZptCZkFkZEKIsWZnOL10nWfjzBJPkHDVV95k=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=4HuGOngdv11e1KQDZA/1VN3rvwdqUQTDaXCwHsOmOJMuAix1qxme7ddiKPoLw2SWG
	 iMIw24OaYlGVjUS4u7fVi5F3hLZKFXqSZOexUReQyY0NvC/LDp07z8qoBDJfy7pZ1d
	 5M8zZcHl7dti+bx3PM2bR3YYrfqV9JwSSlwfEdI95QY1lqpVROvygRqRrpcd7xzJqk
	 5poxt/DDlstn1hcIp4F27zOp8luNvAQRmT84W1OyWAF+Yp3hqh07+ucec2DtjYagMK
	 58oHg2ufoDC1kJo+51abkBmzeMom9szFHSco9GxH+fU65OSVg+aqlkjF6Wxm0YoCcx
	 X/hgQZtverIww==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D9BF481F2F;
	Fri, 23 Aug 2024 23:09:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 998A61BF3BF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 23:09:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8506281EF8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 23:09:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nlLCAr0Ada9n for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Aug 2024 23:09:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6E15881EF3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E15881EF3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6E15881EF3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 23:09:00 +0000 (UTC)
X-CSE-ConnectionGUID: owzINBfRQp+nCtmwk+2aTQ==
X-CSE-MsgGUID: vBs1+XZQQjOZrlT4N+CR1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11173"; a="34328197"
X-IronPort-AV: E=Sophos;i="6.10,171,1719903600"; d="scan'208";a="34328197"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2024 16:09:00 -0700
X-CSE-ConnectionGUID: J+Dk7xicTjGKOc7uy2vl9g==
X-CSE-MsgGUID: rAn+wO9ER3OzUTOg3LdLvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,171,1719903600"; d="scan'208";a="66645429"
Received: from ijarvine-desk1.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.245.245.61])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2024 16:08:56 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 23 Aug 2024 17:08:47 -0600
Message-ID: <20240823230847.172295-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724454542; x=1755990542;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DE4XclcZJuZ2qs2RFFW756SFgli3BXr1tg6Jm+coOMw=;
 b=ZZTYKJIfKyh4DmCnmnqKTf+8QkkZRICcrSVEhr3rTwI9Q/b8gYD+PS5I
 ekDbfyJcXdSPoc6n+McCLSIMYhXtX1b2r9AP0jTzVJKtXYhkMjkYDAKgo
 s66O7oT4pWzG6S5t7SF+DUG5/EUa7dPvbHrrekCAmsdCmDjC09yKS5UEY
 UVZhZ/ZFZID9GwrFmiUBtd9/YTp9C6P3vSLWvqA4tsHNX8II5udLKerPK
 eSZMZp1pSFsY5wYXFKkn6O3Dlb6toSlzI8ilPgmlic+cuMjB7IjDYfUXF
 y0+AmkE7iOgWv4QMrcru3kf370YNZBMJ5qG08FfBk+Xjw4cPnP1xC1v2R
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZZTYKJIf
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: fix BST key index in
 ice_bst_key_init()
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Ahmed Zaki <ahmed.zaki@intel.com>, Dan Carpenter <dan.carpenter@linaro.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Index of the BST keys was wrongly initialized to a larger value, a
possible buffer overflow.

Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
Closes: https://lore.kernel.org/intel-wired-lan/b1fb6ff9-b69e-4026-9988-3c783d86c2e0@stanley.mountain/
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Fixes: 9a4c07aaa0f5 ("ice: add parser execution main loop")
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_parser_rt.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_parser_rt.c b/drivers/net/ethernet/intel/ice/ice_parser_rt.c
index d5bcc266b01e..c24e651ccf9d 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser_rt.c
+++ b/drivers/net/ethernet/intel/ice/ice_parser_rt.c
@@ -119,13 +119,13 @@ static void ice_bst_key_init(struct ice_parser_rt *rt,
 	u8 *key = rt->bst_key;
 	int idd, i;
 
-	idd = ICE_BST_TCAM_KEY_SIZE - 1;
+	idd = ICE_BST_KEY_SIZE - 1;
 	if (imem->b_kb.tsr_ctrl)
 		key[idd] = tsr;
 	else
 		key[idd] = imem->b_kb.prio;
 
-	idd = ICE_BST_KEY_TCAM_SIZE - 1;
+	idd = ICE_BST_KEY_SIZE - 1;
 	for (i = idd; i >= 0; i--) {
 		int j;
 
-- 
2.43.0

