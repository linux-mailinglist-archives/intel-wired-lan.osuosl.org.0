Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F40D794EE96
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Aug 2024 15:46:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7914380F0D;
	Mon, 12 Aug 2024 13:46:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eownosCfdofN; Mon, 12 Aug 2024 13:46:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3180C80F3E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723470387;
	bh=sCfz0oUg1wGHeunPXw5ZYa1399yZxgv9wSQ8uaE0v9c=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=NoDV0+501v7YWnDP+hcsjtL01Td9LySFVkaGKgoFAZCpH2Yc61Pou8ZxKBpprr08I
	 6djbFYYuDt1T0AK8fCuM45u+3fY2DvnybJ0lERfRbBy0azPw6Sh+ttx+tX82lKo036
	 SLF0+ZEGAUuiUdZyGuX5j8dtWKEzYA6o/XMej2A5Gun68vRih2HEfGeqX5Qm2P7g4O
	 sciAP6TYqSZTa1srOd3T/hjArh47cVzx3gJ9F0FN2v0aiRekOpfubeQcz+VmRvcLrm
	 a7Yi6JJQGV07qTtJLdC7hHUnX2xZODCaIdjGnYQInzg9y+lApuPQ7j8LaeUnqIiBPC
	 RwqBVFK5GJstQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3180C80F3E;
	Mon, 12 Aug 2024 13:46:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1054B1BF951
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 13:46:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F0CFB60771
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 13:46:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HaLGdfDcdR_v for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Aug 2024 13:46:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org ED463605FA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED463605FA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ED463605FA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 13:46:23 +0000 (UTC)
X-CSE-ConnectionGUID: O02L05N/QRWvJE+tye//UA==
X-CSE-MsgGUID: agiXmpvJSO671xUrddZehg==
X-IronPort-AV: E=McAfee;i="6700,10204,11162"; a="21439217"
X-IronPort-AV: E=Sophos;i="6.09,283,1716274800"; d="scan'208";a="21439217"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 06:46:22 -0700
X-CSE-ConnectionGUID: 8glDbEsrSvKWCJ8T2p/bRQ==
X-CSE-MsgGUID: hWsnEHY6T0ShmeznxdUgsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,283,1716274800"; d="scan'208";a="62404963"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa003.fm.intel.com with ESMTP; 12 Aug 2024 06:46:18 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: stable@vger.kernel.org
Date: Mon, 12 Aug 2024 15:44:55 +0200
Message-ID: <20240812134455.2298021-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723470384; x=1755006384;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RZbrLVmBjMhLipuy8GpOq0fJf7VHPNsfLcYAn3sksuw=;
 b=Smd5BzuwePkMKEJ4znZrIIIEOx/Ikp3aamz2dxPoAxWKnv5NfxP04HNx
 BP1DqFwG7YzT/UtLQwSB+bUr6o+rIAuY6QoPNTyg6mte+w9Oa/wQaktNw
 ScaV49qCCIF1d29WSH6huc5xeL73vsGm32gTEbfnwxx1jIhJvUonqKQEU
 tDen+yzwqn6MwdZHWLHW/f2GGIOJaJPuI3DrSwd2fBpSOvfP+VMEVZH0u
 sX9qCZUXFqojsZt6OpwgLryhdk589MFFYzsJcpDMd3w2M792xqtBLB7qC
 oQrS9EhFOwSUaQEY/BjnOu4cnEnqmpZHlYCbuRkb6wYdYO2dq5c/Liq0y
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Smd5Bzuw
Subject: [Intel-wired-lan] [PATCH 6.10.y] idpf: fix memleak in vport
 interrupt configuration
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
Cc: Pavan Kumar Linga <pavan.kumar.linga@intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Kubiak <michal.kubiak@intel.com>

commit 3cc88e8405b8d55e0ff035e31971aadd6baee2b6 upstream.

The initialization of vport interrupt consists of two functions:
 1) idpf_vport_intr_init() where a generic configuration is done
 2) idpf_vport_intr_req_irq() where the irq for each q_vector is
   requested.

The first function used to create a base name for each interrupt using
"kasprintf()" call. Unfortunately, although that call allocated memory
for a text buffer, that memory was never released.

Fix this by removing creating the interrupt base name in 1).
Instead, always create a full interrupt name in the function 2), because
there is no need to create a base name separately, considering that the
function 2) is never called out of idpf_vport_intr_init() context.

Fixes: d4d558718266 ("idpf: initialize interrupts and enable vport")
Cc: stable@vger.kernel.org # 6.7
Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
Reviewed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Tested-by: Krishneil Singh <krishneil.k.singh@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Link: https://patch.msgid.link/20240806220923.3359860-3-anthony.l.nguyen@intel.com
Signed-off-by: Jakub Kicinski <kuba@kernel.org>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 19 ++++++++-----------
 1 file changed, 8 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index b023704bbbda..ed68c7baefa3 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -3636,13 +3636,15 @@ void idpf_vport_intr_update_itr_ena_irq(struct idpf_q_vector *q_vector)
 /**
  * idpf_vport_intr_req_irq - get MSI-X vectors from the OS for the vport
  * @vport: main vport structure
- * @basename: name for the vector
  */
-static int idpf_vport_intr_req_irq(struct idpf_vport *vport, char *basename)
+static int idpf_vport_intr_req_irq(struct idpf_vport *vport)
 {
 	struct idpf_adapter *adapter = vport->adapter;
+	const char *drv_name, *if_name, *vec_name;
 	int vector, err, irq_num, vidx;
-	const char *vec_name;
+
+	drv_name = dev_driver_string(&adapter->pdev->dev);
+	if_name = netdev_name(vport->netdev);
 
 	for (vector = 0; vector < vport->num_q_vectors; vector++) {
 		struct idpf_q_vector *q_vector = &vport->q_vectors[vector];
@@ -3659,8 +3661,8 @@ static int idpf_vport_intr_req_irq(struct idpf_vport *vport, char *basename)
 		else
 			continue;
 
-		q_vector->name = kasprintf(GFP_KERNEL, "%s-%s-%d",
-					   basename, vec_name, vidx);
+		q_vector->name = kasprintf(GFP_KERNEL, "%s-%s-%s-%d", drv_name,
+					   if_name, vec_name, vidx);
 
 		err = request_irq(irq_num, idpf_vport_intr_clean_queues, 0,
 				  q_vector->name, q_vector);
@@ -4170,7 +4172,6 @@ int idpf_vport_intr_alloc(struct idpf_vport *vport)
  */
 int idpf_vport_intr_init(struct idpf_vport *vport)
 {
-	char *int_name;
 	int err;
 
 	err = idpf_vport_intr_init_vec_idx(vport);
@@ -4184,11 +4185,7 @@ int idpf_vport_intr_init(struct idpf_vport *vport)
 	if (err)
 		goto unroll_vectors_alloc;
 
-	int_name = kasprintf(GFP_KERNEL, "%s-%s",
-			     dev_driver_string(&vport->adapter->pdev->dev),
-			     vport->netdev->name);
-
-	err = idpf_vport_intr_req_irq(vport, int_name);
+	err = idpf_vport_intr_req_irq(vport);
 	if (err)
 		goto unroll_vectors_alloc;
 
-- 
2.46.0

