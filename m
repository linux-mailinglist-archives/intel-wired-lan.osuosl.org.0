Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D7CA47ED1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Feb 2025 14:18:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 71B6560B06;
	Thu, 27 Feb 2025 13:18:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3HLSzQeBNvkX; Thu, 27 Feb 2025 13:18:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D3AFF610D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740662299;
	bh=q2ok47Jt4X+E4/SuScU2mMCNR0LdTWnxROKj8iobnEY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kU/mZyhsIKFKbdgsQjkux87N1zmiQfHDmEsDoON5iRGlGaKDso2b/Xh93EHQsMgL/
	 i9HUBYERgOUGBaEQ2SV0anbIFYfov2H6pV9wmvj0n4sugpoRXeQ9xYd+CyXWpN3pup
	 u9gr1SqtrlbAv1UaCNcSUhBjaRVNamRvzBqZM5fjlRhR7dlNgm3Sq7HOr+x67ysX1d
	 LeOq9roV9XluMmzxuEpzoE3bB9qDD/HvcDv8q866Mo52mQ8Jd1S0A8uwtmsiibUby9
	 ItFPjwHWfjx/ITt1RTJi95I4DCu2aiK/oqZR79K+51RQlR9KmVqsg528FP1jeKw5lN
	 Rvtkr3btQiHPg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D3AFF610D6;
	Thu, 27 Feb 2025 13:18:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id ABA9168
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 13:18:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8CC1083696
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 13:18:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PavE0cU0Mf0P for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Feb 2025 13:18:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 48A43836FE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 48A43836FE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 48A43836FE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 13:18:14 +0000 (UTC)
X-CSE-ConnectionGUID: GennxfOjSCCUVq2KHGJlZA==
X-CSE-MsgGUID: TI+PPnzBRtG8Tt5fuTCnxQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="41252606"
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="41252606"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 05:18:14 -0800
X-CSE-ConnectionGUID: uDNp9EBWQLutvTz48CWxxw==
X-CSE-MsgGUID: IotC7fy7T3SwPH8jtWSFbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121151333"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.54])
 by fmviesa003.fm.intel.com with ESMTP; 27 Feb 2025 05:18:11 -0800
From: Milena Olech <milena.olech@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>
Date: Thu, 27 Feb 2025 14:13:27 +0100
Message-Id: <20250227131314.2317200-11-milena.olech@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250227131314.2317200-1-milena.olech@intel.com>
References: <20250227131314.2317200-1-milena.olech@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740662295; x=1772198295;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=N77XQ5Q5mO4PoQ6m80+S+vewn+DOxv1GOBJVib08tpY=;
 b=K7brORrgjRHEkif7M1AHNy2AnPJ//zN9kGKI5yCoeuWpc8pEJv8ejSx2
 2DMq+kBHFKZ+CaiqMC2794/mE0C840e3KPV1zMvc+ByyES9WuNWvMsB4H
 wXV/LPY/3Tb3MhMcpJFP3bH/4Z2TRkhppeEy4rthuSSEF1rOu5k1/RqXc
 AKrIcu+sq9FqLxZikK6ljP+4pPHE1rdET2upYOcWduJiPwLsF3HBPL00O
 mVau383Lp6eVXzIw2D16osgO1xzU2py81fKS5jy+kgadNQpG2aAY5eaeR
 94iiDcfHkPfPz+k4JRGa4zsJ9YV8zbGx3LBrBAi4eKF4B/x2pcAO67+LC
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=K7brORrg
Subject: [Intel-wired-lan] [PATCH v8 iwl-next 10/10] idpf: change the method
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

