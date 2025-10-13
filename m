Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A64BD4120
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Oct 2025 17:22:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0DD54828AA;
	Mon, 13 Oct 2025 15:22:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NHTPPTk7q2lT; Mon, 13 Oct 2025 15:22:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A48E8223F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760368950;
	bh=zoOVxqSLzBu0n7MI6GsZkHy+FoSIZuUAxG9wS7o+f78=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=bOlNTMYxpKfUXEwjiz91sxEgSRO26RoMVbahhvrSCWmNshZRRVBD6AqjoGMbjlKw3
	 sE01+f7rpdehpRqr8OQUfWTfCz+WyRosaVnAlWVymNKKLGLJINFqkY4YJH00x+Z4Op
	 bqfW/g31QeGKWk12A2Z6lCFwvwwKJSFCRV5LBdcjZsbJAJxTfZh0qkPVvBNBn5/tZE
	 FKZUtPnED6pNC3+g7bsHNW2fq3X1T2OTEEFpYiP1TBgk2+cmOZnq/qCKrjLXDAN413
	 SkanWqaxawNY9UGzcCP0+SqZoYiewcf6MQ9gpuRF1noHXiriPwWfpnBlIqyJJkHgdH
	 SzbT3q6pmNz4Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7A48E8223F;
	Mon, 13 Oct 2025 15:22:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id A317812B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Oct 2025 15:22:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9501F401C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Oct 2025 15:22:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OMwbsRbY5ASY for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Oct 2025 15:22:29 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 13 Oct 2025 15:22:28 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9F0B440059
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9F0B440059
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9F0B440059
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Oct 2025 15:22:28 +0000 (UTC)
X-CSE-ConnectionGUID: rIXVKPRSRb22iABkkq80XA==
X-CSE-MsgGUID: 7m02YUqcQ76+Bqil4Z/QTg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62443347"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62443347"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 08:15:20 -0700
X-CSE-ConnectionGUID: KUykYF+DS+m5apxPfOqdrw==
X-CSE-MsgGUID: 6PMpYbLYRMaGGMZ/nd3AAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="181632216"
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by orviesa008.jf.intel.com with ESMTP; 13 Oct 2025 08:15:20 -0700
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, przemyslaw.kitszel@intel.com,
 anthony.l.nguyen@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, decot@google.com,
 willemb@google.com, joshua.a.hay@intel.com, madhu.chittim@intel.com,
 horms@kernel.org
Date: Mon, 13 Oct 2025 08:08:24 -0700
Message-Id: <20251013150824.28705-1-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760368949; x=1791904949;
 h=from:to:cc:subject:date:message-id;
 bh=c4rS93Rby4lVufqazjHfnme806G3DSAkw+yIkKx5apk=;
 b=PUKS63U/ip+PlgsT6LdCc0qqUGul788D/C9cgusoD7swpy/vXzrS+wMS
 ewtgrH9ldWrWwjZlOPsI0Ufs6gfAlO6UKuogQoIoA8WOdk5uI3FNCZjZP
 RZOLuFalOF5H0qPtiwM4qcDEagRUA79SnaLKd03z8lppgyTl3maUrRPff
 Awg9P7kLcVvGBCq75PXZsqzEOxjLT65TCCgJklUBfMy5/zNrQQ96Pfibq
 kNpJZwlYtqO1UgFwWp+T/amlbP/lUlrV8T7KqwXUMJKUIJvVuEVzEgw7K
 HlylHkww+1J9wVvvX8BG5UQNUeuuVtsqWK3b4vKi3AtcwGB+2UtPiP3Y+
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PUKS63U/
Subject: [Intel-wired-lan] [PATCH iwl-net] idpf: fix possible vport_config
 NULL pointer deref in remove
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

Attempting to remove the driver will cause a crash in cases where
the vport failed to initialize. Following trace is from an instance where
the driver failed during an attempt to create a VF:
[ 1661.543624] idpf 0000:84:00.7: Device HW Reset initiated
[ 1722.923726] idpf 0000:84:00.7: Transaction timed-out (op:1 cookie:2900 vc_op:1 salt:29 timeout:60000ms)
[ 1723.353263] BUG: kernel NULL pointer dereference, address: 0000000000000028
...
[ 1723.358472] RIP: 0010:idpf_remove+0x11c/0x200 [idpf]
...
[ 1723.364973] Call Trace:
[ 1723.365475]  <TASK>
[ 1723.365972]  pci_device_remove+0x42/0xb0
[ 1723.366481]  device_release_driver_internal+0x1a9/0x210
[ 1723.366987]  pci_stop_bus_device+0x6d/0x90
[ 1723.367488]  pci_stop_and_remove_bus_device+0x12/0x20
[ 1723.367971]  pci_iov_remove_virtfn+0xbd/0x120
[ 1723.368309]  sriov_disable+0x34/0xe0
[ 1723.368643]  idpf_sriov_configure+0x58/0x140 [idpf]
[ 1723.368982]  sriov_numvfs_store+0xda/0x1c0

Avoid the NULL pointer dereference by adding NULL pointer check for
vport_config[i], before freeing user_config.q_coalesce.

Fixes: e1e3fec3e34b ("idpf: preserve coalescing settings across resets")
Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
Reviewed-by: Chittim Madhu <madhu.chittim@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_main.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
index 8c46481d2e1f..8cf4ff697572 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_main.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
@@ -63,6 +63,8 @@ static void idpf_remove(struct pci_dev *pdev)
 	destroy_workqueue(adapter->vc_event_wq);
 
 	for (i = 0; i < adapter->max_vports; i++) {
+		if (!adapter->vport_config[i])
+			continue;
 		kfree(adapter->vport_config[i]->user_config.q_coalesce);
 		kfree(adapter->vport_config[i]);
 		adapter->vport_config[i] = NULL;
-- 
2.37.3

