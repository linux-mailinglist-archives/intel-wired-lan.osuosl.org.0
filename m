Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B15A87DF4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Apr 2025 12:48:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DDFA0812B2;
	Mon, 14 Apr 2025 10:48:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EQWWysiC-A1Q; Mon, 14 Apr 2025 10:48:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 60CDD8169A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744627710;
	bh=YyKP6eQmIfeoCfoKo/3rZDkWFbn0ufgMLMFWqIYrf7I=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1r5pSWWgvXeum2KyunSVqqBIEceZPtU7LNvfWXSSxx7g/j3yI5nraozwJ8qnnxkTd
	 jPetZP5heS5aSn7URe46RnWLN7NDA1958SrDLbEfPUd3oEEDsKXUciDE7P4JuvTbjs
	 rtxbtyXb3Xys1HE029lwn1J4pugxCXGAlQDrBf/dHEyFkcFs7zjsYbnVsEMnkzkP6x
	 E09R48kiiv5jQZwmP2zneO1vXyJTXi1axNFJmBUZtgphiwX8nuswN7wW6oFoTMfn/H
	 bd3G8AF94UpQPSN7u0jgzdXWSpkOzQDuwSAPqb3j5xKkICfHjnBtYnUUs8nOu9HrLu
	 UBqFlBVoafXDA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 60CDD8169A;
	Mon, 14 Apr 2025 10:48:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 52332108
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 10:48:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4386261284
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 10:48:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KeO2JQjM_a8t for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Apr 2025 10:48:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9C84261169
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C84261169
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9C84261169
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 10:48:27 +0000 (UTC)
X-CSE-ConnectionGUID: n072vbpITZmWQRLfkUGHLg==
X-CSE-MsgGUID: o8R/7LyzTkqkBqEtJ7zpRA==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="71478049"
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="71478049"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 03:48:26 -0700
X-CSE-ConnectionGUID: YIeEAv/kQ8GnErhcsDF3+A==
X-CSE-MsgGUID: LfwY9bZkRQS7RzzfXtWmnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="160739772"
Received: from gklab-003-014.igk.intel.com ([10.211.116.96])
 by orviesa002.jf.intel.com with ESMTP; 14 Apr 2025 03:48:25 -0700
From: Milena Olech <milena.olech@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 14 Apr 2025 12:45:07 +0200
Message-ID: <20250414104658.14706-3-milena.olech@intel.com>
X-Mailer: git-send-email 2.43.5
In-Reply-To: <20250414104658.14706-1-milena.olech@intel.com>
References: <20250414104658.14706-1-milena.olech@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744627707; x=1776163707;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9IwVWgo5udn4b2yOTlk4DNHB+R6yGbvF8aZSC4ElHzo=;
 b=KQD17jslLAu1S39IZIJT9bIUf/SjptakfuNm0i+xSh7aBRO+XP8+t/7W
 obCe7t5zEIge0hYRUvtqHhMNhIZqM7QOR1UXxMveY2EfPDDQe04ftD+//
 U34u1XZqJKL0OjU6jeWq7eKp1gNHoTJaW5fjTN4E+t0Nie7X7nnUhE5+Y
 /vKN6aClXhrZ0pNK13Tn/Tr/nYx9zK/aiVkTFz0K2W9dwFBEF+15+aTzQ
 02VI59c3IMGdty5Xe8HsOCrh6MTOYPq5o2gtwtaPCE1nAHMF6bmCkdAQb
 70Wf21aY+I/EIDRt6AmetPN2p/WN+BIcCO/KNDHgnEt3gZ0BcinPipDso
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KQD17jsl
Subject: [Intel-wired-lan] [PATCH v11 iwl-next 01/11] idpf: change the
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
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Milena Olech <milena.olech@intel.com>
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

