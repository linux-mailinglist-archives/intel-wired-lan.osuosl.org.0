Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C9559D96B3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Nov 2024 12:54:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B627E6F4A8;
	Tue, 26 Nov 2024 11:54:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O3vxzkJxiLaf; Tue, 26 Nov 2024 11:54:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 216D1615E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732622087;
	bh=s/BArTQxharmTmgge/ca5R3xI+diEeg3PUGjm7Vfdyk=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BFhD4uL1JKldsqOrbB+7NGlJ1bkniCpFsrS/dcssAAschCBqPGMky/VC33vj463pH
	 sYjACT7nHVS5solxVJHT+wA1ILMpGn53uj1Pew66GszxMwxAvxJXxMnAC/RJTezXG2
	 Ar3RQtUKTaJNnXfiRPQflmWXcYBKO4ReiK/48TBibzwgoYCN6uCQwnRwPFQRKB1LUU
	 dQChNg72XWSmaOvg0fFyLa+4IyO9TkP14uNVXlU3HQAL3zQDH0eT+BiGZRzVYFIHE0
	 xU2BmAMlj5AMpWfBwRIchHJJ+jtEi4mZfOXE16jex+3OtAQXqYD41tcu09V52Gpu+R
	 3xrx6bM0tltZg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 216D1615E6;
	Tue, 26 Nov 2024 11:54:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id B3E46DB3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2024 11:54:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9524D80B88
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2024 11:54:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 08C8P1T9MnH3 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Nov 2024 11:54:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CA6B180BA4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA6B180BA4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CA6B180BA4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2024 11:54:42 +0000 (UTC)
X-CSE-ConnectionGUID: IcNmCvkbTUyn4U71qTjrbg==
X-CSE-MsgGUID: tMjFDil1RqipE9lucVb9Jg==
X-IronPort-AV: E=McAfee;i="6700,10204,11267"; a="55276400"
X-IronPort-AV: E=Sophos;i="6.12,185,1728975600"; d="scan'208";a="55276400"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 03:54:43 -0800
X-CSE-ConnectionGUID: cEbS0UvKRwi+BuQ2VGO12g==
X-CSE-MsgGUID: anQH9psJTseFYL7bJ1++pA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,185,1728975600"; d="scan'208";a="91767003"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.54])
 by fmviesa008.fm.intel.com with ESMTP; 26 Nov 2024 03:54:41 -0800
From: Milena Olech <milena.olech@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>
Date: Tue, 26 Nov 2024 04:58:57 +0100
Message-Id: <20241126035849.6441-11-milena.olech@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20241126035849.6441-1-milena.olech@intel.com>
References: <20241126035849.6441-1-milena.olech@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732622083; x=1764158083;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PKo26T3bgOqQbV1j/M6VA+TVNn/UhXn4giGR66NQrSo=;
 b=G/ApH4XCNR1VVY4dmgelUDlD0v5pJOCKDJUUsSzjH1M79T343WVjt4qu
 uG/KOl7P0u2aCNCuYhXBy7NQ2jmfwU/mKEylbDky9yNpGoVTi8dXU6z9+
 xaEmFBMlaZ90pPrmYwKe4hGkp+2S6OlLz2sDdFa0mvN9rwOzBlwl0rG3U
 WHnah+dZekyjfBICJi4lmWJgrx8r0lwCPax7lJqusOJNWl484ZIrnKOeg
 XYcxgP63T+Ik28fBiYQIfmKX9FqD4dqR6EN9LFs9rqWQaLkUU9/L1KE6j
 lNsBmgk5K8+SV+k3u2il8FQRZRfyK8mqCrsuOrWh28mybsbW/XJ3XuY2n
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G/ApH4XC
Subject: [Intel-wired-lan] [PATCH v2 iwl-next 10/10] idpf: change the method
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
index 9fe0940f81b0..afc39e894cd2 100644
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

