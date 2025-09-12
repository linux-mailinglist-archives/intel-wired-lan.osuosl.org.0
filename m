Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF9FB5445C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Sep 2025 10:02:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2465B80C76;
	Fri, 12 Sep 2025 08:02:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XHJaQbua5z0q; Fri, 12 Sep 2025 08:02:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8EEB980C78
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757664137;
	bh=Fa9IhJua/mv505yJ3ilsZa6flSBXyBw6GnXwUBiw50U=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=zkVahQL5pDyuknvcivOJJOBAMiY5Y3fHxjxc03kVAh82b1I/hKZN5ciJzme2hqRhT
	 x+Rlf+Vybyb6/8gnrWYiASylrBmfBSmTDScZ2wOQOuqTzRpCm1DA5TVjJkHaGMaSKX
	 84GskjEC1SDPQ2g26SG2W16Vqc7+JDKZ8gvphdDgwkValFceB6AfA5lxt2KnSiddOP
	 FoY3Oxxz7mZpp719Ix+bpdHcNuKIegd7rbKCt4bUKargpBBIyTbwwtJuhZ697dBCPR
	 yY0T6FH7AEdvpLnXn2CEEpnE0I++rHNAlnhV2uXzT2bLcO6e0X3EI3Puu3g98vYlFj
	 97Gucxl/wn6Hw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8EEB980C78;
	Fri, 12 Sep 2025 08:02:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id AA54E92E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 08:02:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9070060B18
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 08:02:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o1-W6kQKUX-X for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Sep 2025 08:02:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C72CD60B21
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C72CD60B21
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C72CD60B21
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 08:02:14 +0000 (UTC)
X-CSE-ConnectionGUID: a7ceP6vdRYmHfHkisG8SSg==
X-CSE-MsgGUID: +hQYRoGgTciSeE3sqFkZBA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60069065"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60069065"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 01:02:11 -0700
X-CSE-ConnectionGUID: V9PCujxnReiNIBnTwgQGKg==
X-CSE-MsgGUID: YZgxGvOYTo6joEItNJ7Ecg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="211060316"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa001.jf.intel.com with ESMTP; 12 Sep 2025 01:02:10 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Fri, 12 Sep 2025 08:02:08 +0000
Message-ID: <20250912080208.1048019-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757664135; x=1789200135;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NY1dbSZxO/GwHQrfJwBU/bjMhe+uXEvezSrhBtjVNNk=;
 b=HKdPRG0zxGFYL9no+WIzAiGuTRazJaEozsbhIYWgOj01EsPAqXiZWrWa
 rlDx2VoFOrIBEi/3x6HL/t4HZAdKGlhrbnZTl/7XBg3OUyP+QBFY8wvE/
 fKWAQZeN1jkAReLv4Cexrh4GK83HOzggGWoNRxkYdIH/q9ncykrg1pBKT
 JU2//cgyHFeiEELclMvEcki9r39c08oJWEAFxAwPk2o+fG/0Asu9QIWWN
 SBc69Me+1EcKMK2hMDeefZc/UMN0/RV6TTlypmP/bk+hzme/gQfWdhAyY
 IV9qxB/lwO6YfyQCL8FS21LbXfw6kWGDu7Ov+D/+deV+byLM5DuyKFexM
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HKdPRG0z
Subject: [Intel-wired-lan] [PATCH iwl-next v1] iavf: fix proper type for
 error code in iavf_resume()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The variable 'err' in iavf_resume() is used to store the return value
of different functions, which return an int. Currently, 'err' is
declared as u32, which is semantically incorrect and misleading.

In the Linux kernel, u32 is typically reserved for fixed-width data
used in hardware interfaces or protocol structures. Using it for a
generic error code may confuse reviewers or developers into thinking
the value is hardware-related or size-constrained.

Replace u32 with int to reflect the actual usage and improve code
clarity and semantic correctness.

No functional change.

Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 69054af..c2fbe44 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -5491,7 +5491,7 @@ static int iavf_resume(struct device *dev_d)
 {
 	struct pci_dev *pdev = to_pci_dev(dev_d);
 	struct iavf_adapter *adapter;
-	u32 err;
+	int err;
 
 	adapter = iavf_pdev_to_adapter(pdev);
 
-- 
2.49.0

