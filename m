Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E6851494D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Apr 2022 14:28:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 405D184037;
	Fri, 29 Apr 2022 12:28:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d70AD32K85lk; Fri, 29 Apr 2022 12:28:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 470DB84039;
	Fri, 29 Apr 2022 12:28:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 28EFA1BF2CF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Apr 2022 12:28:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 20F64402E1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Apr 2022 12:28:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2OAhCS_7snJl for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Apr 2022 12:28:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 212DD4011B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Apr 2022 12:28:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651235326; x=1682771326;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EUjpcwidFr2SCT4J+3BYYAxCXOUwnl7K9/qVnj/44XI=;
 b=Kwqccuisy59BSesXxphggS3YO0G7cawArBJx26BCuIMZWf5+yVMeg6eT
 ny8zjwtE+aT0vx4NJwDIYzV5u554u3vc3o0znGFUuMjqVAQBMw4lKLIHp
 pDBBQgSqFmYecyjdw5etGpLdTy4Ici43rrthwVSg4i410cj2Fkj/9p1J2
 PY23jFZYn6L5vgmYmsdNjgsWBUiH25pkC5/eMd90f/+IUpFrz6l5Q0QTD
 rk6UFGZkUmGeI3D++5zI7nTg4IjDmJ56CvRMuGY9domCOTT7pj+fPsR+8
 uLmX6efrDQoPjMuLGRt9igMdVL/QI9NqnhMEEGyp/PI9J3aCzmlrkU8tK w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10331"; a="247189833"
X-IronPort-AV: E=Sophos;i="5.91,185,1647327600"; d="scan'208";a="247189833"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2022 05:28:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,185,1647327600"; d="scan'208";a="684746593"
Received: from amlin-018-218.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.218])
 by orsmga004.jf.intel.com with ESMTP; 29 Apr 2022 05:28:44 -0700
From: Jedzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 29 Apr 2022 14:27:08 +0200
Message-Id: <20220429122708.978369-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v2] i40e: Fix adding ADq filter to TC0
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
Cc: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>

Procedure of configure tc flower filters erroneously allows to create
filters on TC0 where unfiltered packets are also directed by default.
Issue was caused by insufficient checks of hw_tc parameter specifying
the hardware traffic class to pass matching packets to.

Fix checking hw_tc parameter which blocks creation of filters on TC0.

Fixes: 2f4b411a3d67 ("i40e: Enable cloud filters via tc-flower")
Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
v2: fix commit msg
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 1e074a6462d4..a0d5d696cdc1 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -8537,6 +8537,11 @@ static int i40e_configure_clsflower(struct i40e_vsi *vsi,
 		return -EOPNOTSUPP;
 	}
 
+	if (!tc) {
+		dev_err(&pf->pdev->dev, "Unable to add filter because of invalid destination");
+		return -EINVAL;
+	}
+
 	if (test_bit(__I40E_RESET_RECOVERY_PENDING, pf->state) ||
 	    test_bit(__I40E_RESET_INTR_RECEIVED, pf->state))
 		return -EBUSY;
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
