Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 52DFBA7FC3C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Apr 2025 12:36:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1BD2C60848;
	Tue,  8 Apr 2025 10:36:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2pVUAQFP2gbG; Tue,  8 Apr 2025 10:36:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7DFB8605A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744108616;
	bh=GY9zOczhFk6NtX3OWGQOPxK+ZgabmV0EZGZY7mtCEXk=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cyKxY8BuupWaTLV+wSgoc+Q+xcR5QjcR5DByDwmw86CsgJg1Xzm25kAYl02rG6qej
	 KuwraLDhky4reTfEXsE8AUuHg0DJ/qjfE+lB6Rp9vAepnMPF/T29jBpmDTY750fyJM
	 UBfPTD0n6RLqHnbCZQH9xhKNbtOetOQaCMhW51vnbH46pLHGMzJ41losYzxkAFq0p5
	 SglrZjVow3BeSb6au35iGm0V2FGTmyyB4B6hC/cswLzQp03PG/m6fG5mrxK+yzr7K3
	 WTE9/DSTmhomqZs4ZN9xa7PMbPDS4nWFXjWLHcws/Rdzm3d5zTs6YhozdSyrXGd2mM
	 ffMIjHOl4apNw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7DFB8605A3;
	Tue,  8 Apr 2025 10:36:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3188B1F1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 10:36:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 17EB182EBA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 10:36:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IlkejVU2QUjo for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Apr 2025 10:36:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6B59082F49
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B59082F49
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6B59082F49
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 10:36:53 +0000 (UTC)
X-CSE-ConnectionGUID: rSy43vUiRke+Vl3HzpklFw==
X-CSE-MsgGUID: gpVeTYYwSr6p7dGo+RT/XQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="56901640"
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="56901640"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 03:36:53 -0700
X-CSE-ConnectionGUID: lycLOXVGQ/6adLAyjvSAFg==
X-CSE-MsgGUID: mdZdqj0oT2Seat2FjCXRrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="128563539"
Received: from gklab-003-014.igk.intel.com ([10.211.116.96])
 by fmviesa008.fm.intel.com with ESMTP; 08 Apr 2025 03:36:51 -0700
From: Milena Olech <milena.olech@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Samuel Salin <Samuel.salin@intel.com>
Date: Tue,  8 Apr 2025 12:30:48 +0200
Message-ID: <20250408103240.30287-4-milena.olech@intel.com>
X-Mailer: git-send-email 2.43.5
In-Reply-To: <20250408103240.30287-2-milena.olech@intel.com>
References: <20250408103240.30287-2-milena.olech@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744108614; x=1775644614;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3Vx/ihRlbHMtnQNkzEUcCKuQ8DY+Ibh9PKfY7sUV+8w=;
 b=ckFnDD/icFkFs++oDO+HVzCBkRykvrEeFcMzsbpBfkRUqeDzsinEtxMO
 rjjEbLxXZMmPV0M3zJsM45pitXJl5Z0FkJhy4p9SetQOZZuw4MHdn97fn
 wHtOoGx2SVw5w4fRC66CSu/+g3tTbP3WW/+8HYTqSvE5JL54FjhLnaAwg
 FJ7b8UuUHTaKvz2OkFrXkn5Ux82+zp+cAflHM6smSTgkYQzUbuT92VnPv
 fCsKKnA4uxyTUrKsPHcn/jNVETXbGVXRXZXPP6wVJhVAEVR8WbETcAQO5
 9ufbXjY9QQ1gt5pUVP59sSyhEIVbW0/5Bdrr1CcqnBgqH9d+lD5nFW4D7
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ckFnDD/i
Subject: [Intel-wired-lan] [PATCH v10 iwl-next 01/11] idpf: change the
 method for mailbox workqueue allocation
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
Tested-by: Samuel Salin <Samuel.salin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_main.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
index bec4a02c5373..1284ab2adaf1 100644
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
2.43.5

