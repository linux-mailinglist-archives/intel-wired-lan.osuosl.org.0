Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7F6A8B8D3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Apr 2025 14:23:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5175641D76;
	Wed, 16 Apr 2025 12:23:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sAVOTQQmobHD; Wed, 16 Apr 2025 12:23:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A49BB41D7E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744806203;
	bh=jr00BJiNJnTtREjlUXrXSE6qctAC3298lv9u5yFc3Y0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dVbvFrmbPylQQriSLDwQgaXdWFh+PMxJ8up0GLeF+II5ooJ1Hn2fKQyKrTmI16gHs
	 hqxAF2RI07nNHNwFDtSuwQHeVeIcD88Fu9Cqp+YYIU6U1QVqlOiID/WLCZkOsZS61r
	 4nPJiKsX9vN22HdDE42e7U5IxI4cVZQyosXyVDD5zM0KTfajNj6otcY+tbKyy1fQCD
	 N2CFdWX/zyq0rrS8mrlP8CuGyPt676yr4yXd9fSGHqaO+LDr9+ipxiIJ8fGtuLrLJB
	 cXhgzHDlxffWQhlA1D1T9UB3bvFSA7Ep53CWA+AUYExGTsNQqb11/mFyV0h5qzfCYc
	 WASsy3Khw2t9g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A49BB41D7E;
	Wed, 16 Apr 2025 12:23:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id F0B22E83
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 12:23:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E23D18204E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 12:23:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I1GXI4mfYEBk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Apr 2025 12:23:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2E50B8113C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E50B8113C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2E50B8113C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 12:23:22 +0000 (UTC)
X-CSE-ConnectionGUID: /FqAUYUySuafmWJ9XmLuDg==
X-CSE-MsgGUID: ilLINP6eRiGhBalJtzuEnQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="63889118"
X-IronPort-AV: E=Sophos;i="6.15,216,1739865600"; d="scan'208";a="63889118"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 05:23:10 -0700
X-CSE-ConnectionGUID: 7n1YVcR0TlygIe+yKQsN+A==
X-CSE-MsgGUID: zP28kbLQRaef8VO3hw1aFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,216,1739865600"; d="scan'208";a="130477287"
Received: from gklab-003-014.igk.intel.com ([10.211.116.96])
 by fmviesa007.fm.intel.com with ESMTP; 16 Apr 2025 05:23:08 -0700
From: Milena Olech <milena.olech@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 16 Apr 2025 14:19:00 +0200
Message-ID: <20250416122142.86176-4-milena.olech@intel.com>
X-Mailer: git-send-email 2.43.5
In-Reply-To: <20250416122142.86176-2-milena.olech@intel.com>
References: <20250416122142.86176-2-milena.olech@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744806202; x=1776342202;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UfUZTnpkqFarf9gI4qKjcYq2OtTQz2Q8GNh6+FeVHRY=;
 b=jHnIgd+WvBVKtH35Dv1iBqwvkUkgv8mWqKJ8wB4atj+7UZhC2c/YYuQ1
 VLePanaKk6s7TkfoW/yboAdRizxJzeX/1tz9/AW+7GYk6DFWmp+KVnxhP
 dIMyrLx7qG4Vi4uMbEnALY+UL/irV/idAux4CySHuRb1dUD+1sY+hxTFk
 xlc7TM5mxVug2KHt1w2CtLU/nBuFsX0bhUfLoih9TsBDCc0Q5affg0+6G
 nZp91VLHr2wnCSxNqRuTE+NeiGJQ6+hVW9fK7GA7b/OJrepEMNh23CssQ
 boQbNEFYQoq5Pp5djqRzqiz955iIZ+cnGQXU0L9B1ENar4hefV8+hKgyD
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jHnIgd+W
Subject: [Intel-wired-lan] [PATCH v12 iwl-next 01/11] idpf: change the
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
index b35713036a54..ae7066b506e6 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_main.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
@@ -199,9 +199,8 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
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

