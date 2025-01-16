Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D9FA13B0D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jan 2025 14:43:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 752EB84B6F;
	Thu, 16 Jan 2025 13:43:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IkwnyBAyG11o; Thu, 16 Jan 2025 13:43:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C6A1E84B7A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737035001;
	bh=k1JWrQQnciW74Ra0gt9/ltCihTCHCIfKTtjQBn2cfLU=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=tPDdXxkQZ0ZF50BpiGQ9dbwUq3izAfz1w7NyLX9kJaTQ2UyB5cVLku2qCRY4Qb91F
	 Ll51Y2yjZoHLYbA2NO/nPQowDPawoTVpv+9HF7vcnxXbfs59SR93P5ZK4bMzTwh2AK
	 t2MLsbad641K2mOakliE4Rv27Hgm+xqMOtm2SgphDTCZDu+NZ+oHQcXncZK1UcLM/F
	 nXJfBz5joTTguyLX7e89Fvsym0ZiA5wVmw4YMGcy89A2I22mylsEgIKlLFIMNw9uu8
	 8IelYvnD+l9IBnyka21AwGPSaIGT12E4kVS/fXDzekj3HU07v8gDTFFDg4tEdHlhJ2
	 gfkoRGGHLSOhw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C6A1E84B7A;
	Thu, 16 Jan 2025 13:43:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4397EB8B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 13:43:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 216744018B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 13:43:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FOurjlb0Py4d for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jan 2025 13:43:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 45BD040187
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 45BD040187
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 45BD040187
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 13:43:17 +0000 (UTC)
X-CSE-ConnectionGUID: zcWwxuBkQVu1dgjYMWcrLw==
X-CSE-MsgGUID: 6r265Cf3Ql+fBIKiclRPJQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="48834680"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="48834680"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 05:43:17 -0800
X-CSE-ConnectionGUID: f0+D8YZ6RgqpYjvENTVZhg==
X-CSE-MsgGUID: su2RPnGyS7+9K+vwTCHPhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,209,1732608000"; d="scan'208";a="106082341"
Received: from spandruv-desk1.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.109.48])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 05:43:15 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Ahmed Zaki <ahmed.zaki@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>,
 Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
Date: Thu, 16 Jan 2025 06:42:57 -0700
Message-ID: <20250116134257.93643-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737034998; x=1768570998;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IZwr/CsfoMIuZdZy4cqtAyqJw+Xf7KaIKfQsIzcNrm0=;
 b=PAVikvRPdZ9w0hWro52TP2D/J6lLKXWGJmT1VqRX8scHR7ic/MOsU9Je
 MciPDCczx72ymjhewa1wS9cZeg5jWGmnW1DV/RFjKDmrOToyWUrIJJ9zx
 pwDu2XMEFORXoLVlTVcUQjJ1Nq7AN22kqlJgYHCuelMxumHuA5rPHpBKk
 KMZSLSeMqkwMuxe8UnHHHnk7sBtTKf6W+ls97GecCGY6mDKxu9xGQ3+Lo
 m9cSUyhdFwfvCOBud36LTzkXtROUm4w8Yj0zbQU2Gwr95uho1c8CCdV28
 5d5F+lQgnt/mMVUvtsKfgsG38Hyn/GzbK1YPXnyHemYztUdWiSTdqiFY6
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PAVikvRP
Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: synchronize pending IRQs
 after disable
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

Wait for pending IRQ handler after it is disabled. This will ensure the IRQ
is cleanly freed afterwards.

Fixes: d4d558718266 ("idpf: initialize interrupts and enable vport")
Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
Suggested-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 9be6a6b59c4e..8006bd9a95f6 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -3592,10 +3592,15 @@ static void idpf_vport_intr_rel_irq(struct idpf_vport *vport)
 static void idpf_vport_intr_dis_irq_all(struct idpf_vport *vport)
 {
 	struct idpf_q_vector *q_vector = vport->q_vectors;
-	int q_idx;
+	int q_idx, vidx, irq_num;
+
+	for (q_idx = 0; q_idx < vport->num_q_vectors; q_idx++) {
+		vidx = vport->q_vector_idxs[q_idx];
+		irq_num = vport->adapter->msix_entries[vidx].vector;
 
-	for (q_idx = 0; q_idx < vport->num_q_vectors; q_idx++)
 		writel(0, q_vector[q_idx].intr_reg.dyn_ctl);
+		synchronize_irq(irq_num);
+	}
 }
 
 /**
-- 
2.43.0

