Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E05EBA39A11
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Feb 2025 12:12:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 86583833DB;
	Tue, 18 Feb 2025 11:12:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e-hh7qYhu2pY; Tue, 18 Feb 2025 11:12:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DA446832C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739877135;
	bh=q2ok47Jt4X+E4/SuScU2mMCNR0LdTWnxROKj8iobnEY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RmWR7e4amtjSFjEFm1xYAawFs9i2CsYT/FfDdGCqs6fFvBjAzMX0N3072m96O3iWE
	 3UIryQdnO9f1pmRdRhNWQhxy2oIevDnksjyIrYpMgMG0JSXQBHHMI2BEnal61g6N7B
	 0NTw66znkj3as1gMg0oylpvFUVBlhvPwwfmGjiBmKqm1mOWc855CNU64CCsLTR9yNR
	 +AgHAhF497ueushh74QRYX6sxmdGMaPy2Fnsr79KBhQWIsAHpZLA0paJdvf5C7rvV9
	 Ofg3uIy6R0tyjgxko70s9gA3muoBi0AinuigzRYaEcgpyLZXkOuJK8K+l0+PTKMQ2x
	 btj0cjGn8VOjw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DA446832C9;
	Tue, 18 Feb 2025 11:12:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2A79AC8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 11:12:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 235DC40BEC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 11:12:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9Q9DRFsrv7Q5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Feb 2025 11:12:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 53F2D40340
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 53F2D40340
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 53F2D40340
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 11:12:13 +0000 (UTC)
X-CSE-ConnectionGUID: qpAq71V0R/GHxnR5NmP0dg==
X-CSE-MsgGUID: rtD8ANJdQR6JdnARTEMDig==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="51208307"
X-IronPort-AV: E=Sophos;i="6.13,295,1732608000"; d="scan'208";a="51208307"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 03:12:13 -0800
X-CSE-ConnectionGUID: cR29wDLgR4SeDV0DtzKc4Q==
X-CSE-MsgGUID: Wkpk2dCkTWWvw6oD1l3CQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="114234023"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.54])
 by orviesa010.jf.intel.com with ESMTP; 18 Feb 2025 03:12:11 -0800
From: Milena Olech <milena.olech@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>
Date: Tue, 18 Feb 2025 12:07:37 +0100
Message-Id: <20250218110724.2263357-11-milena.olech@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250218110724.2263357-1-milena.olech@intel.com>
References: <20250218110724.2263357-1-milena.olech@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739877133; x=1771413133;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=N77XQ5Q5mO4PoQ6m80+S+vewn+DOxv1GOBJVib08tpY=;
 b=oFLP61vbmdRwNS0SDyyXWGi0ZWzc1VgBtIHpmFNVvWxDvLWblzjNVFeG
 EJyC7+Vuj89MSJZ+Ng1kDH5Yvc/tvFEtrtkGIxK3Sjck1/u11dACEhCPj
 8WE1EtfZqJkphv0Yurbge+Rvg+VL5nVA0TUL2dEfsEzqBebxRk6Lfu7cZ
 hHg7dYK3AW9DHCqyr+BE5NTEHEFfXQl6bre6RFxmF+jGTOGc6OIUD90tx
 PtPnz79nSC/Kjcji0lzW91fshtinw+IWfa/LWJ8Y3nRUysZK/ss3o4pfa
 0JnPcH17yo62fDiKKMhgr0yoo4uUrvskdC1BuJs/Tzo4yPLFvJKVjdP8E
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=oFLP61vb
Subject: [Intel-wired-lan] [PATCH v6 iwl-next 10/10] idpf: change the method
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

