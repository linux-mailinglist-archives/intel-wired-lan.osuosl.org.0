Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FCD084D743
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Feb 2024 01:43:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 126116F60C;
	Thu,  8 Feb 2024 00:43:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5m8i2gqQUoEW; Thu,  8 Feb 2024 00:43:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E816E61AEB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707352983;
	bh=YWbfHZ75EjGpuxKSU6jm8JK1qlYWl747kDGWMN02g2M=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=o3f1q4mpiH6+uBSH1jCdCpM4unuOsoVJnp2k20tdrAR+5frfeXPQT6Hcw7Mzp1F0I
	 JyzVnA5BbG2Ta1jhoxb85XkSvKLHxCYstlEtBD9aMUrjM0ey0YLorj7IL6LBGuqELp
	 tQJiV8yLnaAJM9EQmzFoQRuigjgWTgQQjKKN9fH4Zs4S9mlKOOcpO4pz0Ht7OzWtWR
	 c5pWJs3j7uBVh8Dy7SSM2M5IyEXSpLzxnTPjVYVwdxhQ8cqKKlqO1KdwFgSzy+HkBg
	 hLMLGV14/fhp0MBpxnpKu0XoeSBmdEtuM30Hv7i5LELEN8cywgMiaMfG2gOR2lFJFG
	 Nwkr1LXwbcVLA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E816E61AEB;
	Thu,  8 Feb 2024 00:43:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AC3331BF28A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 00:43:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A42308510A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 00:43:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R1O2RXMu2hq5 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Feb 2024 00:43:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=alan.brady@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D1D7485099
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D1D7485099
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D1D7485099
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 00:42:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10977"; a="12470118"
X-IronPort-AV: E=Sophos;i="6.05,252,1701158400"; d="scan'208";a="12470118"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2024 16:42:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10977"; a="910168063"
X-IronPort-AV: E=Sophos;i="6.05,252,1701158400"; d="scan'208";a="910168063"
Received: from dev1-atbrady.jf.intel.com ([10.166.241.35])
 by fmsmga002.fm.intel.com with ESMTP; 07 Feb 2024 16:42:58 -0800
From: Alan Brady <alan.brady@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  7 Feb 2024 16:42:43 -0800
Message-ID: <20240208004243.1762223-1-alan.brady@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707352980; x=1738888980;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jEyCQpqCsP+w6uiCCI1xLzXp4P9t7xwd5YUEwCWLgTs=;
 b=WAhUUPo35tF1tvnvQ7+A2Dac0BS7A6B2U3kAG+s/RvO+RIsdhka4k/4r
 6EQnXn2xtaQZoihYWeDjVPT/cSugF/hWKDHSHf7rgmZ/Oe98bi/xkJ1mB
 73krHB0B9vLCsvermWOmW5dF5R4542pIZdA6gYvzARI44c3rNMVAAsv/X
 8sVkZQxPNoPz9E8ntcycxSe+VCA4bGoW1PVGcU14DK4FZWwxXzvy7RJc3
 fkhHGPvzGxq7K/7WC8OWBMtDc6P7AEApD7w6ZqokIM+EIVCCe3dda73Xh
 TzPkwrU3RtGvVqEdwRMf+Qt5udUj+q+Ul4THwFsfs2OevVoDs19EY+KnV
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WAhUUPo3
Subject: [Intel-wired-lan] [PATCH 1/1 iwl-net] idpf: disable local BH when
 scheduling napi for marker packets
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, netdev@vger.kernel.org,
 Emil Tantilov <emil.s.tantilov@intel.com>, Alan Brady <alan.brady@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Emil Tantilov <emil.s.tantilov@intel.com>

Fix softirq's not being handled during napi_schedule() call when
receiving marker packets for queue disable by disabling local bottom
half.

The issue can be seen on ifdown:
NOHZ tick-stop error: Non-RCU local softirq work is pending, handler #08!!!

Using ftrace to catch the failing scenario:
ifconfig   [003] d.... 22739.830624: softirq_raise: vec=3 [action=NET_RX]
<idle>-0   [003] ..s.. 22739.831357: softirq_entry: vec=3 [action=NET_RX]

No interrupt and CPU is idle.

After the patch, with BH locks:
ifconfig   [003] d.... 22993.928336: softirq_raise: vec=3 [action=NET_RX]
ifconfig   [003] ..s1. 22993.928337: softirq_entry: vec=3 [action=NET_RX]

Fixes: c2d548cad150 ("idpf: add TX splitq napi poll support")
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
Signed-off-by: Alan Brady <alan.brady@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index d0cdd63b3d5b..390977a76de2 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -2087,8 +2087,10 @@ int idpf_send_disable_queues_msg(struct idpf_vport *vport)
 		set_bit(__IDPF_Q_POLL_MODE, vport->txqs[i]->flags);
 
 	/* schedule the napi to receive all the marker packets */
+	local_bh_disable();
 	for (i = 0; i < vport->num_q_vectors; i++)
 		napi_schedule(&vport->q_vectors[i].napi);
+	local_bh_enable();
 
 	return idpf_wait_for_marker_event(vport);
 }
-- 
2.43.0

