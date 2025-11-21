Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 94588C76B9C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Nov 2025 01:19:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 12BD2612E9;
	Fri, 21 Nov 2025 00:19:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 36x4NMb1ZrXG; Fri, 21 Nov 2025 00:19:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5633E6F5A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763684358;
	bh=Cnm7bpflH2V3W2Awpm65xT90EoX5MioFjBT8WWPwtyI=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=DnsinG7ieMNpv/KAzXqMABiUgKnrUjOU2Ibuo/+nj4JHXzlMEJOZ0JnNwMB7vmVoA
	 nTzmBEHJMHrbbs1b/iHb246Edj97S9fPARRljLhm1p6/i25NATSr+AXwb4rg6syW3D
	 uFsjSQLhnvmoZLKCghd7AJQNfmUvb9FL4zTscGmBy/1Pzz4jf3zRIzMj3c7NYWyYl1
	 QE/vqgGpGeQTmDBa/IEn30Am2SCGfkthoOBtf+fEeJyQl1wpYihedE6v3sW6itwJn0
	 UfohNtTup/7Iu07/bWvJWXGE/bjbfUgJb9vNJxLlzVvXlxS2XLXm0IcQNDMARMIwUd
	 28WeWv6Q3+f1A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5633E6F5A4;
	Fri, 21 Nov 2025 00:19:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1431F158
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 00:19:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EF4606F4D6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 00:19:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VbdHciyTw99W for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Nov 2025 00:19:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C5F1C60DC7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C5F1C60DC7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C5F1C60DC7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Nov 2025 00:19:15 +0000 (UTC)
X-CSE-ConnectionGUID: om7iovdwTAabIoKjGRfatA==
X-CSE-MsgGUID: VwIlqJxATzKs/gv7rlY7Ug==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="65704046"
X-IronPort-AV: E=Sophos;i="6.20,214,1758610800"; d="scan'208";a="65704046"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 16:19:15 -0800
X-CSE-ConnectionGUID: 4ULaXcr7SmqKbg1VjSd0Xg==
X-CSE-MsgGUID: LM2ocbsPQ6iPtkKTGsRe/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,214,1758610800"; d="scan'208";a="190815165"
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by orviesa010.jf.intel.com with ESMTP; 20 Nov 2025 16:19:14 -0800
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Aleksandr.Loktionov@intel.com,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, decot@google.com, willemb@google.com,
 joshua.a.hay@intel.com, madhu.chittim@intel.com,
 aleksander.lobakin@intel.com, larysa.zaremba@intel.com,
 iamvivekkumar@google.com
Date: Thu, 20 Nov 2025 16:12:13 -0800
Message-Id: <20251121001218.4565-1-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763684356; x=1795220356;
 h=from:to:cc:subject:date:message-id;
 bh=qWROP2XSUucL+gmsULmuhI3tNKQmpDMqCa8m6+MfTHA=;
 b=NSiXejnWrTWGLQfpIm2BVzVAzzezO5oZxdKfOGk6djFX9YkLFPuZoo/4
 SbmkJApWj0tEHc936qln6jN6ivjxV0nTD0tL+b1HVttZa62BVKzLwJiiq
 DlfG1y61+N4hYSnYpIZtZq+0hxYKEtBCSUCwgogkqTW/d7f3zzQ0uN/1x
 gMDPM0Hb+XakyQ6Jq2DSmDV4YMsHlBcEBw9iTIzTit/1wmMG+RWA47vl7
 RSDdDcIv3aYEUeGWVOTIHO6IiaFAestZZ4nqBFLgfaIEFlwRhxkMF8yXb
 aW8M3sWpDez4o9RQOaFCRt+xjI+C7hkBr5hn0Tx1iJEGouopq2OeHXogZ
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NSiXejnW
Subject: [Intel-wired-lan] [PATCH iwl-net v2 0/5] idpf: fix issues in the
 reset handling path
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

Resolve multiple issues in the error path during reset handling of the
IDPF driver:
- Mailbox timeouts in the init task during a reset lead to the netdevs
  being unregistered.
- Reset times out and leaves the netdevs exposed to callbacks with the
  vport resources already freed.
- Simultaneous reset and soft reset calls will result in the loss of the
  vport state, leaving the netdev in DOWN state.
- Memory leak in idpf_vport_rel() where vport->rx_ptype_lkup was not
  freed during a reset.
- Memory leak in idpf_vc_core_deinit(), where kfree() was missing for
  hw->lan_regs.
- Crash on reset following a failed init on load, due to the service
  tasks still running in the background and attempting to handle the
  reset while resources are not initialized.

Changelog:
v2:
 - Patch 1 - No change.
 - Patch 2 - Changed the check for vport being NULL by accessing it via the
   adapter struct instead of idpf_netdev_priv. This avoids potential NULL
   pointer in the case where the init task failed on driver load.
   Updated comments to clarify vports can be NULL before the call to
   idpf_attach_and_open().
 - Patch 3 - No change.
 - Patch 4 - No change.
 - Patch 5 - New to the series, to fix a crash, following a failed driver
   load due to an error in the init task.

v1: https://lore.kernel.org/intel-wired-lan/20251110180823.18008-1-emil.s.tantilov@intel.com/

Emil Tantilov (5):
  idpf: keep the netdev when a reset fails
  idpf: detach and close netdevs while handling a reset
  idpf: fix memory leak in idpf_vport_rel()
  idpf: fix memory leak in idpf_vc_core_deinit()
  idpf: fix error handling in the init_task on load

 drivers/net/ethernet/intel/idpf/idpf_lib.c    | 156 +++++++++++-------
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   |   4 +
 2 files changed, 96 insertions(+), 64 deletions(-)

-- 
2.37.3

