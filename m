Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F875A1066A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jan 2025 13:16:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CE4CF81225;
	Tue, 14 Jan 2025 12:16:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n31moVRBcdan; Tue, 14 Jan 2025 12:16:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3356B80F2A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736856968;
	bh=jyiDB1dtVHWdD8q7jofahZZfXZwpboz70mcNuADjzMM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=j68fLhc7JIEa3+FBRGmQ926E110QlWZttfRNVibgyrt8fTzgh3wjOafOZv/vKpv6R
	 /T6iBDUN/PUrsKSGq0XlYHMKGAkjtKrnWE14dL24+5jAcYFDZ/Bpj16wByaBftQlCI
	 zR2PHB3ivgfFlm1Xu5n2UNu39019TTKhza9FRwwFUQQ2C6FXrljhXUpcB4t0+t7NXy
	 oeKzsF1Y+jc7tnXGiBaGmjFFGr59cbwM2pIEBTgJtRRC15nHWtuL0sqKPvKzGf3p8l
	 KDKIAuYYuetLh1hrI1gnO1QCYyoYkeIQOmvBUl4AG5qAs6CIJfkhvlqIqHphnhdmo0
	 6PC2ILoOXh45Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3356B80F2A;
	Tue, 14 Jan 2025 12:16:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 32367B89
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 12:16:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 209A540353
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 12:16:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G5tHH8EbQ5WS for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jan 2025 12:16:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 311AE41253
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 311AE41253
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 311AE41253
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jan 2025 12:16:05 +0000 (UTC)
X-CSE-ConnectionGUID: W8gUQ7gpSvOuD1X8VjmZJw==
X-CSE-MsgGUID: xraCHCIeToC1c9V+zHOOdw==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="59632213"
X-IronPort-AV: E=Sophos;i="6.12,314,1728975600"; d="scan'208";a="59632213"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2025 04:16:02 -0800
X-CSE-ConnectionGUID: GeZJJfpZRpqFfjmUHvCfFw==
X-CSE-MsgGUID: EPpvYxebRi2DdBngBUzTwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="104642148"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.54])
 by orviesa010.jf.intel.com with ESMTP; 14 Jan 2025 04:15:59 -0800
From: Milena Olech <milena.olech@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>
Date: Tue, 14 Jan 2025 13:11:17 +0100
Message-Id: <20250114121103.605288-11-milena.olech@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250114121103.605288-1-milena.olech@intel.com>
References: <20250114121103.605288-1-milena.olech@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736856966; x=1768392966;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lO44xu74L9hP8teUnj4QEYpRhlSZ+ynqWFZz1/lGBeM=;
 b=gbNYOxxXeka+YiKROrwoQLkogW1ebx3sJneTplnLE0GR2jZg818A/9I+
 fxhK2yYI5scJ8PlXZhuOV7CQHoBGBPr3r3KyUXTl97li7eidzTK3wZIG1
 RtK6ouaktn6JtpdEK2j8oookNfjigddkahIy16uh8tIdkUtTRTbJ1NGS0
 8XAKmx2MDirmZtYMqokxzUScm3UDgATLTOtRTEWuLYnJ29ROthqdn4T++
 k5u2aoaYU3crrZVzUsolEDFMSs2JYCh34bwp04/rqT23WafJ/GW1k6Dj7
 DBYJGwMkiVLyDuFaypgmAhReWle3MeS4s3xTuLYboJloYSeJJPiNRIs2Y
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gbNYOxxX
Subject: [Intel-wired-lan] [PATCH v4 iwl-next 10/10] idpf: change the method
 for mailbox workqueue allocation
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

Since workqueues are created per CPU, the works scheduled to this
workqueues are run on the CPU they were assigned. It may result in
overloaded CPU that is not able to handle virtchnl messages in
relatively short time. Allocating workqueue with WQ_UNBOUND and
WQ_HIGHPRI flags allows scheduler to queue virtchl messages on less loaded
CPUs, what eliminates delays.

Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Signed-off-by: Milena Olech <milena.olech@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_main.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
index 85c65c2145f7..66f9e4633e3a 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_main.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
@@ -222,9 +222,8 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		goto err_serv_wq_alloc;
 	}
 
-	adapter->mbx_wq = alloc_workqueue("%s-%s-mbx",
-					  WQ_UNBOUND | WQ_MEM_RECLAIM, 0,
-					  dev_driver_string(dev),
+	adapter->mbx_wq = alloc_workqueue("%s-%s-mbx", WQ_UNBOUND | WQ_HIGHPRI,
+					  0, dev_driver_string(dev),
 					  dev_name(dev));
 	if (!adapter->mbx_wq) {
 		dev_err(dev, "Failed to allocate mailbox workqueue\n");
-- 
2.31.1

