Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B93512D8B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Apr 2022 09:59:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9C40E60AEC;
	Thu, 28 Apr 2022 07:59:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vkmgpntFNIE0; Thu, 28 Apr 2022 07:59:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 938E360B04;
	Thu, 28 Apr 2022 07:59:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 551CB1BF275
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Apr 2022 07:59:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4702341945
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Apr 2022 07:59:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7h1h5FWHkrN4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Apr 2022 07:59:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 64C7541918
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Apr 2022 07:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651132748; x=1682668748;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=E+pwb8o+5SVJ7nWd5XLuDSq8KRFyB2HAcXu/y9I+KKk=;
 b=JbztjLYCLn8ed76pKk5wIoxgnu3Y+8OxGYD+d6vYVjKEmRR21ACRKG4q
 UG5VLSniAddCLBwYceIZjcA4difQlyatq1JCt1DhqWbQ6kzQz/ELNQ+sw
 08s0gBOnDjCE06YIgX/xEfg3+ZiYzyHVkDxJn93F8YatPBBL6Z/N08Lb3
 g1G8J2UtJmGOozJE4XiqO7m0C3ZICXpSyThZEM7s5mMV+y9xxE6EOfl4H
 5/UIiqxIFpfILHWOiyDtUAoGCaoNYqxNFw+j32L7S1ylBLYOIG9f5H7Wk
 gyxfw6g92KkENd204Sz/6STiatM6WDnGIuKqXu6lfmA7wRJNckBILOJfe Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10330"; a="329141125"
X-IronPort-AV: E=Sophos;i="5.90,295,1643702400"; d="scan'208";a="329141125"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2022 00:59:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,295,1643702400"; d="scan'208";a="731270111"
Received: from amlin-018-218.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.218])
 by orsmga005.jf.intel.com with ESMTP; 28 Apr 2022 00:59:06 -0700
From: Jedzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 28 Apr 2022 09:57:35 +0200
Message-Id: <20220428075735.926715-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix adding ADq filter to TC0
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

Procedure of configure tc flower filters erroneously allow to create
filters on TC0 where unfiltered packets are also directed by default.
Issue was caused by insufficient checks of hw_tc parameter specify
a hardware traffic class to pass matching packets on to.
Fix checking hw_tc parameter which blocks creation of filters on TC0.
Previously it was possible to create tc flower filters on TC0.

Fixes: 2f4b411a3d67 ("i40e: Enable cloud filters via tc-flower")
Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
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
