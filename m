Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 931AC9F78D9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Dec 2024 10:48:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3EADC84993;
	Thu, 19 Dec 2024 09:48:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WXavQrGCLANe; Thu, 19 Dec 2024 09:48:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A2C5F845DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734601726;
	bh=/MtKPmqy23tc+LJYjQptMQaqrkmEtOgYDuowUcJpVb4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=es6pXEVbh1ncPFqhrhGmnaj3Lr47e58d2szThgJEA20POFIKec6fmciVIfPLBLEe/
	 vKfEDfBDz94yd3Q+G4jkeW0Injx9RnPCtj19QJEElftCh8uCSkankVZYtUyhFvT5wR
	 EyG661SwOx5h3JzKqdiGiavYg3NA4mI19vJ+H4fr29JNNnvyOzlUBji8PsTPDbESpb
	 CFI5b/C1u/54ngWXx2wC3KaoTfgyP8VGUX8rSF+cUIapMhJl8hHKzHUo6+ANCZ5wkZ
	 vfVaKHLTGTm1XqN0wxyf8/kjbMcf7zNtLXqFZg3aIv+UsQT1SWfpcCGaXGLBPtGkMW
	 hRNTP2yMSv44A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A2C5F845DB;
	Thu, 19 Dec 2024 09:48:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id A1287C0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Dec 2024 09:48:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8E734404CF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Dec 2024 09:48:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JOUh2yc29TLj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Dec 2024 09:48:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1B94940FE7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1B94940FE7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1B94940FE7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Dec 2024 09:48:42 +0000 (UTC)
X-CSE-ConnectionGUID: bq/4y8weSBCoqSq3DQPvVw==
X-CSE-MsgGUID: cVeoMSkVQYWMKEhktZSYGQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="45702752"
X-IronPort-AV: E=Sophos;i="6.12,247,1728975600"; d="scan'208";a="45702752"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 01:48:36 -0800
X-CSE-ConnectionGUID: 1Vz41/1YQMicjP3Jg0B2qA==
X-CSE-MsgGUID: VZq6iG+NReWgVHGEsKnSZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,247,1728975600"; d="scan'208";a="98207316"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.54])
 by orviesa006.jf.intel.com with ESMTP; 19 Dec 2024 01:48:34 -0800
From: Milena Olech <milena.olech@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>
Date: Thu, 19 Dec 2024 10:44:22 +0100
Message-Id: <20241219094411.110082-11-milena.olech@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20241219094411.110082-1-milena.olech@intel.com>
References: <20241219094411.110082-1-milena.olech@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734601722; x=1766137722;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zof4/IAQexPAqzjLnsif5OGnaWtERuR/MyIlBNTSjK8=;
 b=HxwD8/x7+rRU6a2S1o1mGTjLzTLrsCO8cQqPLLzjeUeO/7h63pg+HgxE
 il//y130PPcCtDhU8HX3zSQfGd5YIh2eWjWi9o+HRa3hWh/pvWJulRCIi
 bm9OlKQ7sW4UeBsYCSRHF+kl2Q5sREqqTdEXHSClv4dO3hbSgdCOpp0/R
 u5WC6kSyvAz8pf+Xah5iihoqXH1vqpPXf7OoXYX+VoyYAE5zfB+XDMc/w
 bm7b5hX452vneL9Pk+mLj4IE2tf2tSsUxzGPFI24Az2k72YkvRiQIxQHu
 3b2PEVZWLtbKEatS3VMxfSbTpJPzKDDhbyE2Dm+5FUqJQ8HtJbHPUyoMR
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HxwD8/x7
Subject: [Intel-wired-lan] [PATCH v3 iwl-next 10/10] idpf: change the method
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
 drivers/net/ethernet/intel/idpf/idpf_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
index cbfc8e7fb547..bb3bddf074f0 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_main.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
@@ -220,8 +220,8 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		goto err_serv_wq_alloc;
 	}
 
-	adapter->mbx_wq = alloc_workqueue("%s-%s-mbx", 0, 0,
-					  dev_driver_string(dev),
+	adapter->mbx_wq = alloc_workqueue("%s-%s-mbx", WQ_UNBOUND | WQ_HIGHPRI,
+					  0, dev_driver_string(dev),
 					  dev_name(dev));
 	if (!adapter->mbx_wq) {
 		dev_err(dev, "Failed to allocate mailbox workqueue\n");
-- 
2.31.1

