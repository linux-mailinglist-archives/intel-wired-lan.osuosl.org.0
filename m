Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AD7EEC76BAB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Nov 2025 01:19:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0B279613B7;
	Fri, 21 Nov 2025 00:19:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id esIf2yo6SeGF; Fri, 21 Nov 2025 00:19:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E0616F5B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763684362;
	bh=YxQB6pSNYnVyKsNbzTc5maXDK292/qTdUT4ZjuUCYAA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xhBw2BYU5KJ/puqtB6tUj+xgr5NMtrYHnh/q7aiFHRnYoRMJD4AxKZOuIFHCJTkE8
	 /sO0fvYhLcrRFg+V6fkSy7SH71swvloIdkFrOm4yzgXbvma5R9E+ps4yqPaZGbKxgJ
	 8kKDdJawS04fWUAFekpHTrLn4g/fars/VFuo0xj+rRI01Hi2tjP1TBIK8FXFblcX8v
	 +JDob5YVTv2G7h8K6Y9l5nloQfngHT4jWIreR+7+QtjC7hPveJj2Pg3GYFwA5cWkaP
	 yAQXXd4seov5DSvh/ZMc7s5wSS6sCq8hTsaPlUkNXlRTDIOo1RmdMNOmjptVU9HWIP
	 mxb/ZicTyJBoA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E0616F5B9;
	Fri, 21 Nov 2025 00:19:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 18472117
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 00:19:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AB1986F5AA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 00:19:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kblKqpHvF6SG for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Nov 2025 00:19:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 016A760DC7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 016A760DC7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 016A760DC7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 00:19:16 +0000 (UTC)
X-CSE-ConnectionGUID: 3G0RtSGUR3SNfo1jBWF21g==
X-CSE-MsgGUID: M/tZ7t+qQSSbDpnyjGHxvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="65704077"
X-IronPort-AV: E=Sophos;i="6.20,214,1758610800"; d="scan'208";a="65704077"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 16:19:15 -0800
X-CSE-ConnectionGUID: /CmWmNz9QuCSvdbjCtO1qA==
X-CSE-MsgGUID: sSB9nbthTMSxOdfdOtvxiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,214,1758610800"; d="scan'208";a="190815182"
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by orviesa010.jf.intel.com with ESMTP; 20 Nov 2025 16:19:15 -0800
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Aleksandr.Loktionov@intel.com,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, decot@google.com, willemb@google.com,
 joshua.a.hay@intel.com, madhu.chittim@intel.com,
 aleksander.lobakin@intel.com, larysa.zaremba@intel.com,
 iamvivekkumar@google.com
Date: Thu, 20 Nov 2025 16:12:17 -0800
Message-Id: <20251121001218.4565-5-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20251121001218.4565-1-emil.s.tantilov@intel.com>
References: <20251121001218.4565-1-emil.s.tantilov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763684357; x=1795220357;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=Sh6c7b6Hi90RoX/bOeWbivnnXi5ySOfBIpzuddrreJs=;
 b=mr0/BS6rP+/5KylnHXfdFY4T5TiExmlX9adf9auKuxYSmoA8WzoZiiIb
 97Z0qOPBf7nflHsC3DKj3FYJbNtiDI6ySwhU7U+peSzJIhKRifW6M/nGd
 7ROY+g0PuHLJsYIev1yubP0kt3jLCUsjoiSgwd8Ppsje6jFDhErxrkuif
 y6/si7DQsOg48JyDYAkYHaiQXbe+QbahPaGqRwO1gqxDQXHLE0j/92SBf
 dZbmDn3DQl4XJ+fx7CTtnOKvR+eKz64TtND0Td8Rfkz8o1vPOcAPod2tF
 ijOCY8/yJ9VMgC493F26Gi1Q/jxVzg5NyfYsljDHbuz9EKNCnuputpExj
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mr0/BS6r
Subject: [Intel-wired-lan] [PATCH iwl-net v2 4/5] idpf: fix memory leak in
 idpf_vc_core_deinit()
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

Make sure to free hw->lan_regs. Reported by kmemleak during reset:

unreferenced object 0xff1b913d02a936c0 (size 96):
  comm "kworker/u258:14", pid 2174, jiffies 4294958305
  hex dump (first 32 bytes):
    00 00 00 c0 a8 ba 2d ff 00 00 00 00 00 00 00 00  ......-.........
    00 00 40 08 00 00 00 00 00 00 25 b3 a8 ba 2d ff  ..@.......%...-.
  backtrace (crc 36063c4f):
    __kmalloc_noprof+0x48f/0x890
    idpf_vc_core_init+0x6ce/0x9b0 [idpf]
    idpf_vc_event_task+0x1fb/0x350 [idpf]
    process_one_work+0x226/0x6d0
    worker_thread+0x19e/0x340
    kthread+0x10f/0x250
    ret_from_fork+0x251/0x2b0
    ret_from_fork_asm+0x1a/0x30

Fixes: 6aa53e861c1a ("idpf: implement get LAN MMIO memory regions")
Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Joshua Hay <joshua.a.hay@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index fc03d55bc9b9..ca302df9ff40 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -3570,6 +3570,7 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
  */
 void idpf_vc_core_deinit(struct idpf_adapter *adapter)
 {
+	struct idpf_hw *hw = &adapter->hw;
 	bool remove_in_prog;
 
 	if (!test_bit(IDPF_VC_CORE_INIT, adapter->flags))
@@ -3593,6 +3594,9 @@ void idpf_vc_core_deinit(struct idpf_adapter *adapter)
 
 	idpf_vport_params_buf_rel(adapter);
 
+	kfree(hw->lan_regs);
+	hw->lan_regs = NULL;
+
 	kfree(adapter->vports);
 	adapter->vports = NULL;
 
-- 
2.37.3

