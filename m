Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9496FC48810
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Nov 2025 19:15:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BE6D180D4F;
	Mon, 10 Nov 2025 18:15:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id slIzBbso__1E; Mon, 10 Nov 2025 18:15:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 074BB80D77
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762798525;
	bh=xn21CNlGg4ArJW9fILUI5rbcU0o+4/kSwM+LdUH00as=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GWDIevdplV2WxVAfOxWAhf6bbIrPztJ93XSYaWKuckpTQAJdGI0CtqQPk0ndTqX3/
	 cn0DHhOgV1nfvBXNFKRIorAhrDzyyEE3k0SqEx9VNwVsi94QlaYNLMgJINEhegtvn6
	 ro/Z0K96uc2RMZHGbljINo9/169uonjD1tc5TWBvTKhPia2CzMoFgefa0ZZdf5Tp8v
	 YFb+4qMWlRebv1MMN3GfuZoYnx9ay3kj4eVMaEkF8Vbo8IIbNvW2jBH7PfLlhfULz8
	 IqsXTwefPtpIp4nFozxFhacTY7zyc8kUM+g5v8Wp8O7GokgD738Wd6KSTzmz7Tr3Dj
	 9aCf7U++Lt6Sw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 074BB80D77;
	Mon, 10 Nov 2025 18:15:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 12C481CC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 18:15:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2861040672
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 18:15:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MJqHgXrH1kqK for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Nov 2025 18:15:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 638D4400F8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 638D4400F8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 638D4400F8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Nov 2025 18:15:21 +0000 (UTC)
X-CSE-ConnectionGUID: m05Dw3ipRImcIOnPESoodw==
X-CSE-MsgGUID: YTa9JIr/SCaMywFoL8e2bg==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="68497105"
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="68497105"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 10:15:20 -0800
X-CSE-ConnectionGUID: FRIphoFLRwu6bN73Sr2y6Q==
X-CSE-MsgGUID: 9AaKzJS4Rxmi/pl1+ip5fQ==
X-ExtLoop1: 1
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by fmviesa003.fm.intel.com with ESMTP; 10 Nov 2025 10:15:20 -0800
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Aleksandr.Loktionov@intel.com,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, decot@google.com, willemb@google.com,
 joshua.a.hay@intel.com, madhu.chittim@intel.com,
 aleksander.lobakin@intel.com, larysa.zaremba@intel.com,
 iamvivekkumar@google.com
Date: Mon, 10 Nov 2025 10:08:20 -0800
Message-Id: <20251110180823.18008-2-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
In-Reply-To: <20251110180823.18008-1-emil.s.tantilov@intel.com>
References: <20251110180823.18008-1-emil.s.tantilov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762798521; x=1794334521;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=wLTUmV+ApT/9ZBDzo80caj17Ob/F6zvbzNLQMrOPOYY=;
 b=GY9ckh2qHAeFVdKklfRnHO55LC42xl9SqWwl+xCC1USxGldZDwDCQ/MQ
 379f/0cr4X/Achk4ApcCuMj7p9yUWOCyj+Hcf8mwRKaZxjuSsxo0e7Boa
 1hKDL7K8YXXzTN023aHYNwNVDs+8XczYdoy+3x7E8UohIns1Jz+Dc3qVI
 n3I8OdDTzBBF6f0Y7Fgt3g0CFYAHVvRZgaWiS2H5XSwQ8GM/raN8CcNfq
 HjJJKxpm/vHYi4NUyksJqx4KO6G0HiseEjvpiaTcwppuMFgQ6wr5uas7q
 y/EHEu+FYGfyz3UxQY0y4uYC7RwkUxm/p9JjHgXlYaBu0Vba+fLiUdf+5
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GY9ckh2q
Subject: [Intel-wired-lan] [PATCH iwl-net 1/4] idpf: keep the netdev when a
 reset fails
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

During a successful reset the driver would re-allocate vport resources
while keeping the netdevs intact. However, in case of an error in the
init task, the netdev of the failing vport will be unregistered,
effectively removing the network interface:

[  121.211076] idpf 0000:83:00.0: enabling device (0100 -> 0102)
[  121.221976] idpf 0000:83:00.0: Device HW Reset initiated
[  124.161229] idpf 0000:83:00.0 ens801f0: renamed from eth0
[  124.163364] idpf 0000:83:00.0 ens801f0d1: renamed from eth1
[  125.934656] idpf 0000:83:00.0 ens801f0d2: renamed from eth2
[  128.218429] idpf 0000:83:00.0 ens801f0d3: renamed from eth3

ip -br a
ens801f0         UP
ens801f0d1       UP
ens801f0d2       UP
ens801f0d3       UP
echo 1 > /sys/class/net/ens801f0/device/reset

[  145.885537] idpf 0000:83:00.0: resetting
[  145.990280] idpf 0000:83:00.0: reset done
[  146.284766] idpf 0000:83:00.0: HW reset detected
[  146.296610] idpf 0000:83:00.0: Device HW Reset initiated
[  211.556719] idpf 0000:83:00.0: Transaction timed-out (op:526 cookie:7700 vc_op:526 salt:77 timeout:60000ms)
[  272.996705] idpf 0000:83:00.0: Transaction timed-out (op:502 cookie:7800 vc_op:502 salt:78 timeout:60000ms)

ip -br a
ens801f0d1       DOWN
ens801f0d2       DOWN
ens801f0d3       DOWN

Re-shuffle the logic in the error path of the init task to make sure the
netdevs remain intact. This will allow the driver to attempt recovery via
subsequent resets, provided the FW is still functional.

The main change is to make sure that idpf_decfg_netdev() is not called
should the init task fail during a reset. The error handling is
consolidated under unwind_vports, as the removed labels had the same
cleanup logic split depending on the point of failure.

Fixes: ce1b75d0635c ("idpf: add ptypes and MAC filter support")
Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_lib.c | 17 ++++++-----------
 1 file changed, 6 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index bd38ecc7872c..2a53f3d504d2 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1604,6 +1604,10 @@ void idpf_init_task(struct work_struct *work)
 		goto unwind_vports;
 	}
 
+	err = idpf_send_get_rx_ptype_msg(vport);
+	if (err)
+		goto unwind_vports;
+
 	index = vport->idx;
 	vport_config = adapter->vport_config[index];
 
@@ -1616,15 +1620,11 @@ void idpf_init_task(struct work_struct *work)
 	err = idpf_check_supported_desc_ids(vport);
 	if (err) {
 		dev_err(&pdev->dev, "failed to get required descriptor ids\n");
-		goto cfg_netdev_err;
+		goto unwind_vports;
 	}
 
 	if (idpf_cfg_netdev(vport))
-		goto cfg_netdev_err;
-
-	err = idpf_send_get_rx_ptype_msg(vport);
-	if (err)
-		goto handle_err;
+		goto unwind_vports;
 
 	/* Once state is put into DOWN, driver is ready for dev_open */
 	np = netdev_priv(vport->netdev);
@@ -1671,11 +1671,6 @@ void idpf_init_task(struct work_struct *work)
 
 	return;
 
-handle_err:
-	idpf_decfg_netdev(vport);
-cfg_netdev_err:
-	idpf_vport_rel(vport);
-	adapter->vports[index] = NULL;
 unwind_vports:
 	if (default_vport) {
 		for (index = 0; index < adapter->max_vports; index++) {
-- 
2.37.3

