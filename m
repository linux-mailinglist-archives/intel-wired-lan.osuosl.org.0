Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F75878ECF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Mar 2024 07:24:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 96DC281499;
	Tue, 12 Mar 2024 06:24:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R7LK3QjH-Egx; Tue, 12 Mar 2024 06:24:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E01C48144F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710224654;
	bh=eWoz4yrJKAC2chq97WkzQK8MME9QCrjkBIJ0ltk8dlE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ZXYC942q+ADQaC1jKVwO5QtkmKHjzS9ziO/12s+pbEwevpw1ox7Dtaxj/KrFjWrEM
	 /TVVG1xZIbmbZbppptW2pEmLBfOJB/DWsDQBU2IXm+NMs4wwJp6s1vUYA1WwCG1XWG
	 QmRJRBq/QwuxgDm/5Ucp7Ec3CBBHBeRlRKVfasr/CS2UwGCBysY258xp93uVDfS6hP
	 WYCoroTBEwiCtTfvUKDjNW+xwoD5S+ti8UKbPyecKN2p7zuv2dc2Ig5nb0l6SUdDkZ
	 qfgxQ501HHVcheVx9ig6PLhnci286V0getz/F9026KJhQ5llbM1cLqoFvQdnn2aCLB
	 Z1Vbu7SmCSuRg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E01C48144F;
	Tue, 12 Mar 2024 06:24:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0A6C51BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 06:24:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EB7C3400F9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 06:24:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dK6FqcWPmu7u for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Mar 2024 06:24:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=yanjun.zhu@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 01B9940131
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 01B9940131
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 01B9940131
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 06:24:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11010"; a="4775878"
X-IronPort-AV: E=Sophos;i="6.07,118,1708416000"; 
   d="scan'208";a="4775878"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 23:24:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,118,1708416000"; d="scan'208";a="48875249"
Received: from unknown (HELO intel-71.bj.intel.com) ([10.238.154.71])
 by orviesa001.jf.intel.com with ESMTP; 11 Mar 2024 23:24:07 -0700
From: Zhu Yanjun <yanjun.zhu@intel.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Date: Tue, 12 Mar 2024 14:15:20 +0800
Message-Id: <20240312061520.4112782-1-yanjun.zhu@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710224651; x=1741760651;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HFmYdtht2S1tq2WRFLbKiPgUuAdBrRBdc/C9kSsUF10=;
 b=FhtkNqeftLVKEgcEO8ocayfJ2kZXZq92pwYw2VatdXxLlTx0BQbu8ppj
 omEaFVMYe6IybTsX/I8Tf4kfwwJP08P3OlenSE9HHHZ5Z0HrVmWoN6W+p
 z/GAIsbif1uldvIJRA7UMOQ9SYScLXqWNfeWSHLhBJ9lumgW72ESHoy8C
 WJj29KjM6bB0PaGmrakdu/jga73cACFiucSERDhCWBVYsNV4KPgyx0GN1
 5zkBW9Zr7CXCbTDgYKDj6nhCXtgikav7raXEKIMuSpPmSA9vxRoYoo5e6
 zHzQdXR3+/C3IjRSXCI1TPvTPuzMUtT94Psi7vJOs24+Y3MJOL/U4IX9h
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FhtkNqef
Subject: [Intel-wired-lan] [PATCH 1/1] idpf: Clean up the vmvf_type for
 ctlq_recv functions
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Zhu Yanjun <yanjun.zhu@linux.dev>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Zhu Yanjun <yanjun.zhu@linux.dev>

In the original source code, add vmvf_type to ctrl_msg for ctlq_recv
functions. These new types will be implemented and used. But currently
these types are not used. So remove them.

Signed-off-by: Zhu Yanjun <yanjun.zhu@linux.dev>
---
 drivers/net/ethernet/intel/idpf/idpf_controlq_api.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_controlq_api.h b/drivers/net/ethernet/intel/idpf/idpf_controlq_api.h
index 8dee098bbfb0..e1b6ee87ad95 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_controlq_api.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_controlq_api.h
@@ -37,9 +37,6 @@ struct idpf_ctlq_reg {
 /* Generic queue msg structure */
 struct idpf_ctlq_msg {
 	u8 vmvf_type; /* represents the source of the message on recv */
-#define IDPF_VMVF_TYPE_VF 0
-#define IDPF_VMVF_TYPE_VM 1
-#define IDPF_VMVF_TYPE_PF 2
 	u8 host_id;
 	/* 3b field used only when sending a message to CP - to be used in
 	 * combination with target func_id to route the message
-- 
2.39.2

