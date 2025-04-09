Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 706ADA81D12
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Apr 2025 08:29:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1DDEB81A50;
	Wed,  9 Apr 2025 06:29:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FZbbLXnBmu7W; Wed,  9 Apr 2025 06:29:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C20983A9E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744180196;
	bh=aZ08kisci3Gl0WdrSuVJbHpcidndzyjW8z6oFFgt/24=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=h3W8fNrRWxRvDoeKTkBLouUCgvYbqJAFvrWbin3aI2MFdO11DysZ7QsWTbmmdMjv6
	 5ct8LmfgCl3hXzsMbnhQJXktJaU7ySlCf303YLQM3rguD+HGVev136NFBIIPlnWKUK
	 4YP9cFAR9h/5BrHrvT+EgHHfnns9g/zwpVKLEVVmcoPVoMieXEU99eN42MctbEy/q+
	 IN1CDAN/QPCZj2taQ5pY5OHsxRQBeSLfEkaOmSZZ7oGv1TyVbzmkSNjKnj/FNQiIXs
	 BWKTDrGYYgedt1e7UH/MBtk4iXSQ+eaxfumQ3HYxG8H2/Ey/G1F7XYgNbjNg+78r/W
	 RPvMKfwWlr+5Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C20983A9E;
	Wed,  9 Apr 2025 06:29:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E7CA6108
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 06:29:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C475581A50
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 06:29:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ehcamlWj3618 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Apr 2025 06:29:54 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D892583A94
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D892583A94
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D892583A94
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 06:29:53 +0000 (UTC)
X-CSE-ConnectionGUID: zAsHFMvLS4C6/Vt/bhQ/+w==
X-CSE-MsgGUID: Chj5AoLXSWyKEy8b4kw2fQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="68117916"
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="68117916"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 23:29:50 -0700
X-CSE-ConnectionGUID: bgnxuz6AQtW5CquzZ9AqkQ==
X-CSE-MsgGUID: RpklP67JTsCw0bERkkquHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="159478568"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by orviesa002.jf.intel.com with ESMTP; 08 Apr 2025 23:29:48 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Date: Wed,  9 Apr 2025 08:29:45 +0200
Message-ID: <20250409062945.1764245-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744180194; x=1775716194;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=D9h/SvR+OD8whX99uCWdOOZoeOyHH8WRSCSyoddVY80=;
 b=XM4VntXFVtDdyEzM6f1lTn9Q1LxIW6r63iuFF3VtHatOhlcFGhGVmN53
 ARkwkuE9+fl59BQa2q7nZtXYnYGR4xMOfst8G4h+PXbdzbZQacub7vaE1
 Dqgajb/2QsCt4SoXHTuTci0WrV42DANgFeL2wC4MKs+GJvxC+lprpBv9E
 EsrFVlK+cv5vEiMRDYyZ34KDkAUtilfQmhMFT+kotOIJuGl1IGXE01unJ
 8zSpNuUuCAoNdwKBWTkenx2NlIJU04xE9eo3jxS4ZolUMhEbTqLWLjx0b
 YWKRT6b5E4nxYD/nsgMQFSkRCmnDCq7sL5dD0VA+jN6yEkLeIg1E754qj
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=XM4VntXF
Subject: [Intel-wired-lan] [PATCH iwl-next v1] idpf: remove unreachable code
 from setting mailbox
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

Remove code that isn't reached. There is no need to check for
adapter->req_vec_chunks, because if it isn't set idpf_set_mb_vec_id()
won't be called.

Only one path when idpf_set_mb_vec_id() is called:
idpf_intr_req()
 -> idpf_send_alloc_vectors_msg() -> adapter->req_vec_chunk is allocated
 here, otherwise an error is returned and idpf_intr_req() exits with an
 error.

The idpf_set_mb_vec_id() becomes one-linear and it is called only once.
Remove it and set mailbox vector index directly.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
Reviewed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_lib.c | 18 +-----------------
 1 file changed, 1 insertion(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 730a9c7a59f2..4c18c5fceb97 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -143,22 +143,6 @@ static int idpf_mb_intr_req_irq(struct idpf_adapter *adapter)
 	return 0;
 }
 
-/**
- * idpf_set_mb_vec_id - Set vector index for mailbox
- * @adapter: adapter structure to access the vector chunks
- *
- * The first vector id in the requested vector chunks from the CP is for
- * the mailbox
- */
-static void idpf_set_mb_vec_id(struct idpf_adapter *adapter)
-{
-	if (adapter->req_vec_chunks)
-		adapter->mb_vector.v_idx =
-			le16_to_cpu(adapter->caps.mailbox_vector_id);
-	else
-		adapter->mb_vector.v_idx = 0;
-}
-
 /**
  * idpf_mb_intr_init - Initialize the mailbox interrupt
  * @adapter: adapter structure to store the mailbox vector
@@ -349,7 +333,7 @@ int idpf_intr_req(struct idpf_adapter *adapter)
 		goto free_irq;
 	}
 
-	idpf_set_mb_vec_id(adapter);
+	adapter->mb_vector.v_idx = le16_to_cpu(adapter->caps.mailbox_vector_id);
 
 	vecids = kcalloc(total_vecs, sizeof(u16), GFP_KERNEL);
 	if (!vecids) {
-- 
2.42.0

