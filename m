Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C24DFA14F8C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Jan 2025 13:45:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7DA0A42462;
	Fri, 17 Jan 2025 12:45:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OY8-EC58Lh8E; Fri, 17 Jan 2025 12:45:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7ED984245D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737117945;
	bh=jyiDB1dtVHWdD8q7jofahZZfXZwpboz70mcNuADjzMM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wP/aOwlPyuSCUlCEm/aK0zKQjRtws3QlG9rQecLmp9srXfEGhZebPV4W6sKzZ8dJy
	 Iz322RyUUFza2PS0/lfAmDILnQVxK8kAwcWGzTaOXa8Wk/IwUlbG8g+JMQL6cPrcOK
	 r2z+ls3iaKgyEoYQ8JPNbtlleByQBB4dR0afhBveaVmAf9oB95ZNyFCT2ZbG6B2aHv
	 LaHeVDrLiAl2c2iFQQ+mcWpwtAJq8dc8L41nVKFYOmCG3DYa2eV7Ax5yEjHt/+39yT
	 jxbLjBT3FVq9CGoDUR2FGonuX6xaGMqjpf0LuCb0AMn9EZavNZZWBPMbWfdHZiDEgx
	 wLIipdvdcQK/Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7ED984245D;
	Fri, 17 Jan 2025 12:45:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7FEFE31
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2025 12:45:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6E7D4408D0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2025 12:45:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tT1o6_M_R5UR for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Jan 2025 12:45:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7F53840945
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F53840945
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7F53840945
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2025 12:45:42 +0000 (UTC)
X-CSE-ConnectionGUID: 5pc44/kJRNmq4cQpPb0T2w==
X-CSE-MsgGUID: K5xCcUYIRyy22XU//JuMgg==
X-IronPort-AV: E=McAfee;i="6700,10204,11318"; a="37431253"
X-IronPort-AV: E=Sophos;i="6.13,212,1732608000"; d="scan'208";a="37431253"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 04:45:42 -0800
X-CSE-ConnectionGUID: w5ahOcPVSbO3p87VkUzOOA==
X-CSE-MsgGUID: PxT6/IYlSLyKp6OTF/7L1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="136681921"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.54])
 by fmviesa001.fm.intel.com with ESMTP; 17 Jan 2025 04:45:40 -0800
From: Milena Olech <milena.olech@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>
Date: Fri, 17 Jan 2025 13:41:21 +0100
Message-Id: <20250117124109.967889-11-milena.olech@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250117124109.967889-1-milena.olech@intel.com>
References: <20250117124109.967889-1-milena.olech@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737117942; x=1768653942;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lO44xu74L9hP8teUnj4QEYpRhlSZ+ynqWFZz1/lGBeM=;
 b=U35uVHrKdTnAORZEbq3AghWfzgJgh4n+BdYjidVW0GsoZ2k6gvS6CplM
 ag7YOKGEqex5UMRkTDyOjwMLuJtBBkL/DNnf/ePkLirfSIJzg0VVWSKK+
 mkOD00rKbZ9z4i0TVEONWqUOx6BwXlpLxiuz1DuhCXdL4tQhyayDhaSBq
 YzKoQ1wTsTPDSo02/T9yuHy727q56we8oasyrUgAYqkN7BPfSwtxtSUqs
 LDcuQhTsJXoo0DqZ1ee6pRYgyLwXsXKZF8+QkfTssudslyyH20U/RFsCa
 0NbjdoFYbgzPQKZSmGYLn2mdUpU8S0a8EnW9fGoQ20zblRSHuoXLtxDYs
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U35uVHrK
Subject: [Intel-wired-lan] [PATCH v5 iwl-next 10/10] idpf: change the method
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

