Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2559AA9ABE7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Apr 2025 13:33:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D4DDA6F751;
	Thu, 24 Apr 2025 11:33:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pA0_4LtGOi84; Thu, 24 Apr 2025 11:33:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 18E6E6F7FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745494396;
	bh=PQMbJQ33Ls+RduVIBJRXW2vVqLwnm6c2/Jm0d90Qivg=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oEoVNTkZmw1YWmgXc1Sgv7uZ8iYWrOREAOsR0mc01pAQdImLFHLpc5MnWt4zoj4md
	 odsqXauWiKyb1K1/aqesN4b2purFtJ3WFeRLPlK0SoGBolGpKphHeYH0lbDLK7VeyB
	 UNWsHNurefKWIt5SyiXm6sVFFO0edzbQJBqAD8uGw1RLJvkWxZKN72nhzcATIntj/w
	 MTlAzkRHjXBITwG4e7JhEl7a+X18bRBpkcGuVmNa649BYrboEXlwNBblEQa+Or7jwK
	 G/nmoHIy0rl6E6vYH4171bi7DR7U69LfNqpqPKsKDN57R0z/VVygCk73kS7vKX/88d
	 mjNoZviKCyefQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 18E6E6F7FC;
	Thu, 24 Apr 2025 11:33:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4607A28C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 11:33:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2A98541133
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 11:33:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WnUkLihyfxRp for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Apr 2025 11:33:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 660A64112C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 660A64112C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 660A64112C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 11:33:13 +0000 (UTC)
X-CSE-ConnectionGUID: 7RdsYjM/S5qyoH0QjIZ9Nw==
X-CSE-MsgGUID: XqZkbSjvRh246SV445VTAw==
X-IronPort-AV: E=McAfee;i="6700,10204,11412"; a="57771246"
X-IronPort-AV: E=Sophos;i="6.15,235,1739865600"; d="scan'208";a="57771246"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 04:33:07 -0700
X-CSE-ConnectionGUID: //Ns4K0URxGdb2EuK4J7Yg==
X-CSE-MsgGUID: ODG1OBRSRiOn1biUZOXgkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,235,1739865600"; d="scan'208";a="137389422"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa005.fm.intel.com with ESMTP; 24 Apr 2025 04:33:01 -0700
Received: from mglak.igk.intel.com (mglak.igk.intel.com [10.237.112.146])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id D187533EA4;
 Thu, 24 Apr 2025 12:32:58 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jiri Pirko <jiri@resnulli.us>,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Lee Trager <lee@trager.us>, Madhavan Srinivasan <maddy@linux.ibm.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Ahmed Zaki <ahmed.zaki@intel.com>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>,
 Milena Olech <milena.olech@intel.com>, pavan.kumar.linga@intel.com,
 "Singhai, Anjali" <anjali.singhai@intel.com>
Date: Thu, 24 Apr 2025 13:32:30 +0200
Message-ID: <20250424113241.10061-8-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250424113241.10061-1-larysa.zaremba@intel.com>
References: <20250424113241.10061-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745494393; x=1777030393;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wThW0E9IeVuGP+kqjdmswdvx5kRIF7hbP2DVRW2rI0U=;
 b=iS4VrTV6OeSyyDdFnZ9XIzV/5fAw2QFkg86RiLkblH4aOaijr+QpjP7n
 1fZEcB0loWkh0TbblQWcAAgcq4NGv9W5/rFSAN8jy/yTwaHwc7U2Io+lk
 6175Ql0KVDwm+Fl/VxoofnxnrMGVbqjdQgeQLdUd2VhSeS7JAaYrI6dOZ
 TQR+rx3DHME0WvsGLnVmzPtcKMYG2aOAQZ8Dokyb5kV9m7M/Z2jWdQeLF
 e4fHXWuqtofnAfYu1zDLvaHY2haVhf1xKRo4UEUi4Y1NS2cVFiN+CDOgP
 vIYuUi93PS6Cbho6+nAiBokkbMUqT6upW0te3is5DEZRdwJ0+qGRLu8tb
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iS4VrTV6
Subject: [Intel-wired-lan] [PATCH iwl-next v2 07/14] idpf: remove
 'vport_params_reqd' field
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

From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>

While sending a create vport message to the device
control plane, a create vport virtchnl message is
prepared with all the required info to initialize
the vport. This info is stored in the adapter struct
but never used thereafter. So, remove the said field.

Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h        |  2 --
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |  2 --
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 31 ++++++-------------
 3 files changed, 10 insertions(+), 25 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index a46793d34827..b714746ccc90 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -535,7 +535,6 @@ struct idpf_vc_xn_manager;
  * @avail_queues: Device given queue limits
  * @vports: Array to store vports created by the driver
  * @netdevs: Associated Vport netdevs
- * @vport_params_reqd: Vport params requested
  * @vport_params_recvd: Vport params received
  * @vport_ids: Array of device given vport identifiers
  * @vport_config: Vport config parameters
@@ -590,7 +589,6 @@ struct idpf_adapter {
 	struct idpf_avail_queue_info avail_queues;
 	struct idpf_vport **vports;
 	struct net_device **netdevs;
-	struct virtchnl2_create_vport **vport_params_reqd;
 	struct virtchnl2_create_vport **vport_params_recvd;
 	u32 *vport_ids;
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index bab12ecb2df5..34a6a26410a6 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -951,8 +951,6 @@ static void idpf_vport_rel(struct idpf_vport *vport)
 
 	kfree(adapter->vport_params_recvd[idx]);
 	adapter->vport_params_recvd[idx] = NULL;
-	kfree(adapter->vport_params_reqd[idx]);
-	adapter->vport_params_reqd[idx] = NULL;
 	if (adapter->vport_config[idx]) {
 		kfree(adapter->vport_config[idx]->req_qs_chunks);
 		adapter->vport_config[idx]->req_qs_chunks = NULL;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index f1f6b63bfeb0..ced129f6477e 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -1223,14 +1223,10 @@ int idpf_send_create_vport_msg(struct idpf_adapter *adapter,
 	ssize_t reply_sz;
 
 	buf_size = sizeof(struct virtchnl2_create_vport);
-	if (!adapter->vport_params_reqd[idx]) {
-		adapter->vport_params_reqd[idx] = kzalloc(buf_size,
-							  GFP_KERNEL);
-		if (!adapter->vport_params_reqd[idx])
-			return -ENOMEM;
-	}
+	vport_msg = kzalloc(buf_size, GFP_KERNEL);
+	if (!vport_msg)
+		return -ENOMEM;
 
-	vport_msg = adapter->vport_params_reqd[idx];
 	vport_msg->vport_type = cpu_to_le16(VIRTCHNL2_VPORT_TYPE_DEFAULT);
 	vport_msg->vport_index = cpu_to_le16(idx);
 
@@ -1247,8 +1243,7 @@ int idpf_send_create_vport_msg(struct idpf_adapter *adapter,
 	err = idpf_vport_calc_total_qs(adapter, idx, vport_msg, max_q);
 	if (err) {
 		dev_err(&adapter->pdev->dev, "Enough queues are not available");
-
-		return err;
+		goto rel_buf;
 	}
 
 	if (!adapter->vport_params_recvd[idx]) {
@@ -1256,7 +1251,7 @@ int idpf_send_create_vport_msg(struct idpf_adapter *adapter,
 							   GFP_KERNEL);
 		if (!adapter->vport_params_recvd[idx]) {
 			err = -ENOMEM;
-			goto free_vport_params;
+			goto rel_buf;
 		}
 	}
 
@@ -1272,13 +1267,15 @@ int idpf_send_create_vport_msg(struct idpf_adapter *adapter,
 		goto free_vport_params;
 	}
 
+	kfree(vport_msg);
+
 	return 0;
 
 free_vport_params:
 	kfree(adapter->vport_params_recvd[idx]);
 	adapter->vport_params_recvd[idx] = NULL;
-	kfree(adapter->vport_params_reqd[idx]);
-	adapter->vport_params_reqd[idx] = NULL;
+rel_buf:
+	kfree(vport_msg);
 
 	return err;
 }
@@ -2847,8 +2844,6 @@ static void idpf_vport_params_buf_rel(struct idpf_adapter *adapter)
 {
 	kfree(adapter->vport_params_recvd);
 	adapter->vport_params_recvd = NULL;
-	kfree(adapter->vport_params_reqd);
-	adapter->vport_params_reqd = NULL;
 	kfree(adapter->vport_ids);
 	adapter->vport_ids = NULL;
 }
@@ -2863,17 +2858,11 @@ static int idpf_vport_params_buf_alloc(struct idpf_adapter *adapter)
 {
 	u16 num_max_vports = idpf_get_max_vports(adapter);
 
-	adapter->vport_params_reqd = kcalloc(num_max_vports,
-					     sizeof(*adapter->vport_params_reqd),
-					     GFP_KERNEL);
-	if (!adapter->vport_params_reqd)
-		return -ENOMEM;
-
 	adapter->vport_params_recvd = kcalloc(num_max_vports,
 					      sizeof(*adapter->vport_params_recvd),
 					      GFP_KERNEL);
 	if (!adapter->vport_params_recvd)
-		goto err_mem;
+		return -ENOMEM;
 
 	adapter->vport_ids = kcalloc(num_max_vports, sizeof(u32), GFP_KERNEL);
 	if (!adapter->vport_ids)
-- 
2.47.0

