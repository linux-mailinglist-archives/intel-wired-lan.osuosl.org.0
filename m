Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 31485A3A499
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Feb 2025 18:47:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6870A40822;
	Tue, 18 Feb 2025 17:47:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HKzR2kC1SCGl; Tue, 18 Feb 2025 17:47:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7B50D407BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739900851;
	bh=q2ok47Jt4X+E4/SuScU2mMCNR0LdTWnxROKj8iobnEY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XX5yqohdidZ1kN1P9gKsA5xRH+VpW199pFMOkVgiJkTlfOtxGpH3f1rcUpignKMbi
	 2nUFNnjL2DiU4WQ8ojSpd36ie1/ozlogqu8DRr0lqg8yCURJSuGR50a7gkSGWAeibm
	 V25qwzkG7iMZslJTMYeTe37+raVTXotO1/9sjdW9PAJ8Ww4WgO/5fMhr57uux08XxC
	 T+6rQC4G6dRYhQurTvvqWS13HelDeNM/j1oTJddCF1Rtp9QU6XwSrkJy08yfct1A7n
	 CmyrekIxLIX5CPDad26EyUE80x4KnFECB03d23BVZ0hJTT4q4lApcTOQlBsf83wOAk
	 ScjKgSO0PZsDg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7B50D407BA;
	Tue, 18 Feb 2025 17:47:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 53219C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 17:47:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 37B4B60A3C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 17:47:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3-ZFg-jQh_Ex for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Feb 2025 17:47:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6E62460AF2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6E62460AF2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6E62460AF2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 17:47:28 +0000 (UTC)
X-CSE-ConnectionGUID: zxSJtAuuSLGHaCvV+waSVQ==
X-CSE-MsgGUID: meukVBk2T3eXIzYqNdHCnQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="44368503"
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="44368503"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 09:47:28 -0800
X-CSE-ConnectionGUID: bI+yRe0sRZ6TvppdCpo8kw==
X-CSE-MsgGUID: ahusy2nzQMGJcZQP9+ekJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="119396148"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.54])
 by orviesa003.jf.intel.com with ESMTP; 18 Feb 2025 09:47:26 -0800
From: Milena Olech <milena.olech@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>
Date: Tue, 18 Feb 2025 18:42:37 +0100
Message-Id: <20250218174221.2291673-11-milena.olech@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250218174221.2291673-1-milena.olech@intel.com>
References: <20250218174221.2291673-1-milena.olech@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739900849; x=1771436849;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=N77XQ5Q5mO4PoQ6m80+S+vewn+DOxv1GOBJVib08tpY=;
 b=hWbWrTpT5HFSK6wwLNHqLXB6H0kPyg7+0IMC7xuozsuIRUkAcLI4Qgq7
 RuoBW8IeIS90SeC8kv8jFKtTbeEwMGzFHxIq2ugGVuE1fnWwXKV+NUCzQ
 VS+gM4iKSPr4DeUbBnRVCPGAWrNJDQnNItiCoglH9Jv6+J4ot06/rn0S1
 UxBv6gRyTCFjvYlaisUuYnvnHDZ7Q0hHkv/AQHhA/TD7avW2CjZygRO9Z
 NAEBp0uuleWKM9nQe9DAeYP8g67u3DlXhQkyC9SrxWfH0ngOonhjS97WV
 Md2pfM2ibbsN0MmkjZEOKFiynYrrUiUD2SCBwNiFJEUJr/Qkj7nrN4hXl
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hWbWrTpT
Subject: [Intel-wired-lan] [PATCH v7 iwl-next 10/10] idpf: change the method
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
index 60bae3081035..022645f4fa9c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_main.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
@@ -198,9 +198,8 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
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

