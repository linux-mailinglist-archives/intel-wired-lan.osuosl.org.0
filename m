Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EJCiK+A2pmlmMgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Mar 2026 02:18:24 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B5ACB1E79C6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Mar 2026 02:18:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 346A041963;
	Tue,  3 Mar 2026 01:18:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ozfdh5jBoefW; Tue,  3 Mar 2026 01:18:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A167A41975
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772500700;
	bh=WZ8e7Xak0ZBcO99hGC51nMf3+uY6CrxdyTmG5FFQVFc=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=N2iLYAiSCV8BdtR31iacy2MkvhSdarxf/ck1OYijuVtyU3oHM5RDqdUM/P39ijL0O
	 YodpxsSD1oikIINHBC8vvyVic8l2xSDa7pAn+x628fxn3gKN5L5KHmIgycWEDG7yPX
	 jz3xdYTGOcyUC6T2OR1WLSchPIOflNVJcS4PI3QLGiTlk3ESzAioXp2tTRayelBfIx
	 pXESQJe+7z+vm0BphYGFsm5eOb98E0X8eWzarqmMF2axFe/3pzkLCqwPyAsmPBjWV2
	 EleFKrfgChAO6x21aouvwHiRDOx19QMst+1LtT7qk0mnmgmYwRPpTydagh3I7C8aCH
	 /tRh0Be/cY9Nw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A167A41975;
	Tue,  3 Mar 2026 01:18:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id A6C3D25B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 01:18:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8CDA781DF7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 01:18:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gFIgP98tY103 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Mar 2026 01:18:18 +0000 (UTC)
Received-SPF: Temperror (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C00C281DF1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C00C281DF1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C00C281DF1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 01:17:57 +0000 (UTC)
X-CSE-ConnectionGUID: 6zepvtHCRCCmQy8ahvaZBA==
X-CSE-MsgGUID: HtwLIKtOSCG0Mr6U42mFNw==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="96137599"
X-IronPort-AV: E=Sophos;i="6.21,321,1763452800"; d="scan'208";a="96137599"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 17:17:57 -0800
X-CSE-ConnectionGUID: 7B/3Sl81TgG4P9UlbQocbg==
X-CSE-MsgGUID: r7+fbmdWQ/+ld7cGDSSWwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,321,1763452800"; d="scan'208";a="217064310"
Received: from dcskidmo-m40.jf.intel.com ([10.166.241.14])
 by orviesa010.jf.intel.com with ESMTP; 02 Mar 2026 17:17:57 -0800
From: Joshua Hay <joshua.a.hay@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Joshua Hay <joshua.a.hay@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Mon,  2 Mar 2026 17:28:31 -0800
Message-Id: <20260303012831.662492-1-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772500698; x=1804036698;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YyV/2W+rzuQDsuStd2bW++jjatn642X5DiNInwOahgE=;
 b=Ugz8z3V+5WgU9/1CmX8dJgdMdJw+AqR8SBIEVFYYVAhv1LcwMoDvcP2F
 lvI/hoszDKbq9pcB//TZoMgm8urR7vP/KCHqJSU1raDpy+QYi4DI0DIvg
 P1C0Xc/eDPIsLipZifgC+S2sPZwYxyUXv/ZvrsGv6IAyAWJQALZx7u1Dd
 K+d4nuHgKRtD2oNeyuR4MsmNnU8hQHys4PcS5PfJYvg2QZQiRliLV10tw
 9b0BDbMck2Bxxrf4tyKs+BBsOibbDfxQAIwsDVLsdDO/DfC83Cl4XNW9k
 0VvjcIVSGYIvz0WEHDvbqhsP52Ml8OFNhELlSR7MajCyMqInn4BCz4PHD
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ugz8z3V+
Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: clear stale cdev_info ptr
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
X-Rspamd-Queue-Id: B5ACB1E79C6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	FROM_NEQ_ENVFROM(0.00)[joshua.a.hay@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Deinit calls idpf_idc_deinit_core_aux_device to free the cdev_info
memory, but leaves the adapter->cdev_info field with a stale pointer
value. This will bypass subsequent "if (!cdev_info)" checks if cdev_info
is not reallocated. For example, if idc_init fails after a reset,
cdev_info will already have been freed during the reset handling, but it
will not have been reallocated. The next reset or rmmod will result in a
crash.

[  +0.000008] BUG: kernel NULL pointer dereference, address: 00000000000000d0
[  +0.000033] #PF: supervisor read access in kernel mode
[  +0.000020] #PF: error_code(0x0000) - not-present page
[  +0.000017] PGD 2097dfa067 P4D 0
[  +0.000017] Oops: Oops: 0000 [#1] SMP NOPTI
...
[  +0.000018] RIP: 0010:device_del+0x3e/0x3d0
[  +0.000010] Call Trace:
[  +0.000010]  <TASK>
[  +0.000012]  idpf_idc_deinit_core_aux_device+0x36/0x70 [idpf]
[  +0.000034]  idpf_vc_core_deinit+0x3e/0x180 [idpf]
[  +0.000035]  idpf_remove+0x40/0x1d0 [idpf]
[  +0.000035]  pci_device_remove+0x42/0xb0
[  +0.000020]  device_release_driver_internal+0x19c/0x200
[  +0.000024]  driver_detach+0x48/0x90
[  +0.000018]  bus_remove_driver+0x6d/0x100
[  +0.000023]  pci_unregister_driver+0x2e/0xb0
[  +0.000022]  __do_sys_delete_module.isra.0+0x18c/0x2b0
[  +0.000025]  ? kmem_cache_free+0x2c2/0x390
[  +0.000023]  do_syscall_64+0x107/0x7d0
[  +0.000023]  entry_SYSCALL_64_after_hwframe+0x76/0x7e

Pass the adapter struct into idpf_idc_deinit_core_aux_device instead and
clear the cdev_info ptr.

Fixes: f4312e6bfa2a ("idpf: implement core RDMA auxiliary dev create, init, and destroy")
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf.h          | 2 +-
 drivers/net/ethernet/intel/idpf/idpf_idc.c      | 6 ++++--
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 2 +-
 3 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
index b206fba092c8..ec1b75f039bb 100644
--- a/drivers/net/ethernet/intel/idpf/idpf.h
+++ b/drivers/net/ethernet/intel/idpf/idpf.h
@@ -1066,7 +1066,7 @@ bool idpf_vport_set_hsplit(const struct idpf_vport *vport, u8 val);
 int idpf_idc_init(struct idpf_adapter *adapter);
 int idpf_idc_init_aux_core_dev(struct idpf_adapter *adapter,
 			       enum iidc_function_type ftype);
-void idpf_idc_deinit_core_aux_device(struct iidc_rdma_core_dev_info *cdev_info);
+void idpf_idc_deinit_core_aux_device(struct idpf_adapter *adapter);
 void idpf_idc_deinit_vport_aux_device(struct iidc_rdma_vport_dev_info *vdev_info);
 void idpf_idc_issue_reset_event(struct iidc_rdma_core_dev_info *cdev_info);
 void idpf_idc_vdev_mtu_event(struct iidc_rdma_vport_dev_info *vdev_info,
diff --git a/drivers/net/ethernet/intel/idpf/idpf_idc.c b/drivers/net/ethernet/intel/idpf/idpf_idc.c
index bd4785fb8d3e..7e4f4ac92653 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_idc.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_idc.c
@@ -470,10 +470,11 @@ int idpf_idc_init_aux_core_dev(struct idpf_adapter *adapter,
 
 /**
  * idpf_idc_deinit_core_aux_device - de-initialize Auxiliary Device(s)
- * @cdev_info: IDC core device info pointer
+ * @adapter: driver private data structure
  */
-void idpf_idc_deinit_core_aux_device(struct iidc_rdma_core_dev_info *cdev_info)
+void idpf_idc_deinit_core_aux_device(struct idpf_adapter *adapter)
 {
+	struct iidc_rdma_core_dev_info *cdev_info = adapter->cdev_info;
 	struct iidc_rdma_priv_dev_info *privd;
 
 	if (!cdev_info)
@@ -485,6 +486,7 @@ void idpf_idc_deinit_core_aux_device(struct iidc_rdma_core_dev_info *cdev_info)
 	kfree(privd->mapped_mem_regions);
 	kfree(privd);
 	kfree(cdev_info);
+	adapter->cdev_info = NULL;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index d5a877e1fef8..113ecfc16dd7 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -3668,7 +3668,7 @@ void idpf_vc_core_deinit(struct idpf_adapter *adapter)
 
 	idpf_ptp_release(adapter);
 	idpf_deinit_task(adapter);
-	idpf_idc_deinit_core_aux_device(adapter->cdev_info);
+	idpf_idc_deinit_core_aux_device(adapter);
 	idpf_rel_rx_pt_lkup(adapter);
 	idpf_intr_rel(adapter);
 
-- 
2.39.2

