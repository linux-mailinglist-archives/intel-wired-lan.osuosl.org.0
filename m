Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4963593B1C5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2024 15:40:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 61FF4608DD;
	Wed, 24 Jul 2024 13:40:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RVIu0r8SlUfD; Wed, 24 Jul 2024 13:40:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C09D608DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721828452;
	bh=/dc8dEj3Li6H6wA71GiEyuCv+umhwPY9SADa1+DMALM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IUIQ6kbvfIYq0/wZtDFJsXq/FgWz61/lUOpoFVgKsKGCg62SBMXJjiDGFvpL7qKF/
	 eqV+HabIwman64ErVXWpu8tbA4lAdfVRYV/dbViW7IBxfgNthkr//vbiZkSRbz6q/Q
	 1g/4DiCu8wA2CmrUgmmwmaNDRK61TKygSjfmnBGVlqJIVwU708FYD/WlG1cTHbmVjE
	 Tbpjwl4YWrcWzCqie8iD9NhfeWODysbLylW3tmPSL7szpa4GEQFs/URhm1xtL7o/XH
	 bOxIDy96Gl2hN3CIUJqd5Aqa6BzmWx+PKAAsvcUJ9XIAHIGTYytjmRNT6gW4MGYEA2
	 eopwK6Aem7dUQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9C09D608DF;
	Wed, 24 Jul 2024 13:40:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9BA431BF97D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 13:40:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 91F6B81322
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 13:40:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g-2shwumZsBq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2024 13:40:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 90E3081312
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 90E3081312
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 90E3081312
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 13:40:49 +0000 (UTC)
X-CSE-ConnectionGUID: c+HFRguPT5eYWddvLgSvjA==
X-CSE-MsgGUID: 3xcp3essS/OwpUTZ8C3Yig==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="19469386"
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="19469386"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 06:40:49 -0700
X-CSE-ConnectionGUID: 2NzF0bjiSgq5iPU+HC6tig==
X-CSE-MsgGUID: qsjIHC3ARWOd1OteqyrtJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="52615658"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa009.jf.intel.com with ESMTP; 24 Jul 2024 06:40:46 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 24 Jul 2024 15:40:23 +0200
Message-ID: <20240724134024.2182959-3-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240724134024.2182959-1-aleksander.lobakin@intel.com>
References: <20240724134024.2182959-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721828449; x=1753364449;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=b8603IpDxvRUw2uI3q3aaa2Xvr94xBPfO4s7yfhoXoE=;
 b=PxjYGJm+ImFK93nyx/5Jb/yP+gA6emOU6SSzzvTxg/1k4YhOUabUQ5t6
 TwOwu8U7O9P7kcF19Gf+PC1wzq/dk1mHAD+J3aXVt9vC701WCMAmLNGiT
 MI3c/wUkYvxMBMiFebNv7K/EVL8ce87xI9AvPrE23lkO+XClvdxJPkllO
 MMz/0pM77eDQDpGlc4aNWKcLbVZbCjDJ1ndwdT37u/c8IqIOycpsxH8gc
 HqnRY6wHI7+3ljylHedr6s1GCUuVlhWEwmqGVrF6iRROIp1rcd45pEsMS
 9cdB6K/dYpoJjCcC02nvVzY3Mkg+6QXDIGJAj+coSwoE8+DiTW8YrITor
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PxjYGJm+
Subject: [Intel-wired-lan] [PATCH iwl-net 2/3] idpf: fix memleak in vport
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
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Kubiak <michal.kubiak@intel.com>

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
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 19 ++++++++-----------
 1 file changed, 8 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index af2879f03b8d..a2f9f252694a 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -3780,13 +3780,15 @@ void idpf_vport_intr_update_itr_ena_irq(struct idpf_q_vector *q_vector)
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
@@ -3804,8 +3806,8 @@ static int idpf_vport_intr_req_irq(struct idpf_vport *vport, char *basename)
 		else
 			continue;
 
-		name = kasprintf(GFP_KERNEL, "%s-%s-%d", basename, vec_name,
-				 vidx);
+		name = kasprintf(GFP_KERNEL, "%s-%s-%s-%d", drv_name, if_name,
+				 vec_name, vidx);
 
 		err = request_irq(irq_num, idpf_vport_intr_clean_queues, 0,
 				  name, q_vector);
@@ -4326,7 +4328,6 @@ int idpf_vport_intr_alloc(struct idpf_vport *vport)
  */
 int idpf_vport_intr_init(struct idpf_vport *vport)
 {
-	char *int_name;
 	int err;
 
 	err = idpf_vport_intr_init_vec_idx(vport);
@@ -4340,11 +4341,7 @@ int idpf_vport_intr_init(struct idpf_vport *vport)
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
2.45.2

