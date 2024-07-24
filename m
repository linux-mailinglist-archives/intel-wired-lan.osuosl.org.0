Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 95D2C93B88F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2024 23:31:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 41006406DB;
	Wed, 24 Jul 2024 21:31:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N8HcTf4rqASh; Wed, 24 Jul 2024 21:31:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2C05D406EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721856668;
	bh=sUKSBVr1slS6ij5tgcnbC9dJKTw2zGkWKcXS97vVX50=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=HN6GJ8QUNJOHX9zGXzlfFzj2ICsK6vk2am5zKbH0q9i8KfKc6CkWLrAqFbKpnC7Wt
	 JzZofxgmPDWu5KFICSXfYzwQdRzrrXrpkhbmFaDQGT5WnIVwcIiedTMZwCWgCYQL5J
	 dcKMtpR1lQzoMdbmWIq4mqyoL98fUCiJbjvTM/6BEAm3bbZ2NSkMwMGS/mmHc2inWs
	 3c0iTh22pL3s+2btJUO+7xSRHmqzJEkiuxJx3Jm486+D536hrO0DN5eVEGiDdqUKTf
	 4kmrvBW4BE9IHFZOh3jPKfqfB5Pyivc4NpIRpv7gTANWJtEKjHBwl5eY1wqmuVfGxb
	 6eRIlY0Ds6xsA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2C05D406EB;
	Wed, 24 Jul 2024 21:31:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 99ACF1BF277
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 21:31:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 88242608F9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 21:31:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TXDqV3EuvV9P for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2024 21:31:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C9D656078D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C9D656078D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C9D656078D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 21:31:05 +0000 (UTC)
X-CSE-ConnectionGUID: quY7wUnASl6wIcypIQY+FA==
X-CSE-MsgGUID: BTGjZ97qTYqRvXED+ezMCg==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="19710804"
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="19710804"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 14:30:15 -0700
X-CSE-ConnectionGUID: t/itLHBZS6aXLzllvbmB5Q==
X-CSE-MsgGUID: ipp3gdFxR66xCknCPQkbWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="57525302"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.24])
 by orviesa003.jf.intel.com with ESMTP; 24 Jul 2024 14:30:16 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 24 Jul 2024 14:29:40 -0700
Message-ID: <20240724212940.2819-1-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721856666; x=1753392666;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=arKiemINs89zPQYToz4puKo9Na44xVC1PNvuyupQ0+M=;
 b=I00vrtiFDYqMYIbAFLLAH91/6JoDPNhKr3OWfJO0P1i/VuAJzTg7r+zV
 ru3F6ega7+KkCdgLFO2/Lo8Czw2aoYOMHHYMAovT90Xh7Z7np+vIWb89l
 MNn2HXtQJtKnn2LJOSizlMH/Isy5tlrI7SU28lLUtMVQre2Hi2Ey3wAEX
 GpqI2D6kfVO6VmUbXSdj3gJuwMf6sTUV7YsTs8nvgtqjqdZfWDEh38k54
 xMOwrgWivTAaTwT/ZmjAD/vRK54spi9jWLqlqqG0Un6L3uX3brX5mfeFy
 s79Goss+K1iJ8s4zPXRdVxrFZS/BfXtNiDrnpOzZCobyY6KPtkxV6BXdf
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=I00vrtiF
Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: remove redundant
 'req_vec_chunks' NULL check
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
Cc: Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Dan Carpenter <dan.carpenter@linaro.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

'req_vec_chunks' is used to store the vector info received
from the device control plane. The memory for it is allocated
in idpf_send_alloc_vectors_msg and returns an error if the memory
allocation fails.

'req_vec_chunks' cannot be NULL in the later code flow. So remove
the conditional check to extract the vector ids received from
the device control plane.

Smatch static checker warning:

drivers/net/ethernet/intel/idpf/idpf_lib.c:417 idpf_intr_req()
error: we previously assumed 'adapter->req_vec_chunks'
could be null (see line 360)

Fixes: 4930fbf419a7 ("idpf: add core init and interrupt request")
Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
Reviewed-by: Dan Carpenter <dan.carpenter@linaro.org>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_lib.c | 23 +++++-----------------
 1 file changed, 5 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 5dbf2b4ba1b0..a56ea36fa8d5 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -357,24 +357,11 @@ int idpf_intr_req(struct idpf_adapter *adapter)
 		goto free_msix;
 	}
 
-	if (adapter->req_vec_chunks) {
-		struct virtchnl2_vector_chunks *vchunks;
-		struct virtchnl2_alloc_vectors *ac;
-
-		ac = adapter->req_vec_chunks;
-		vchunks = &ac->vchunks;
-
-		num_vec_ids = idpf_get_vec_ids(adapter, vecids, total_vecs,
-					       vchunks);
-		if (num_vec_ids < v_actual) {
-			err = -EINVAL;
-			goto free_vecids;
-		}
-	} else {
-		int i;
-
-		for (i = 0; i < v_actual; i++)
-			vecids[i] = i;
+	num_vec_ids = idpf_get_vec_ids(adapter, vecids, total_vecs,
+				       &adapter->req_vec_chunks->vchunks);
+	if (num_vec_ids < v_actual) {
+		err = -EINVAL;
+		goto free_vecids;
 	}
 
 	for (vector = 0; vector < v_actual; vector++) {
-- 
2.43.0

