Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SOo1MOBORGq+sQoAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 01:18:56 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 370746E89F7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 01:18:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=FBWC2rMK;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5360E412E7;
	Tue, 30 Jun 2026 23:18:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UOYM0a2mPmNU; Tue, 30 Jun 2026 23:18:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 81D70412EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782861533;
	bh=3P/yus8Hn1X81vQTrcoMk7cN9FObxvMT8+8azdH2OLI=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=FBWC2rMK8qSgAwxPuhVdx9qQ4VsENq0JHUXuaBD9H3e9PVBbar8AXZb+1iMJO+39G
	 EM7y3gd1XMo2wYOoVdCAivXJwYj2e2X4pl+bjhaj5bR/SqougPpdfJZap1K8CFMSuP
	 ZOIa45wJCX+bqrAtkvJoURPwAn4cgkFrF/f1bOdV/hYAM1MbI7DT+k5nWQFdEJ3yO4
	 mTXENc8vnurEX1hWC599qHsh7yCyN4CUVaTR+979rUzV/HI2n+y6RwJFkj5yxPwtsM
	 4pyaXyHwHpbdtsiJiVXPKB1O4TYcHLtMoZqXWAwVP3bCNkROjB2LghDvKl7oWyav6I
	 dk62u8qCvLzgA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 81D70412EC;
	Tue, 30 Jun 2026 23:18:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 12244149
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2026 23:18:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 03E8560DC4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2026 23:18:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vaDRy-vHkert for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jun 2026 23:18:49 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2AA0760DC3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2AA0760DC3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2AA0760DC3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jun 2026 23:18:48 +0000 (UTC)
X-CSE-ConnectionGUID: 3XyRS5QNQnqH1XB8YOUE7Q==
X-CSE-MsgGUID: iPqRL7pXR6OhU0i77kA0wA==
X-IronPort-AV: E=McAfee;i="6800,10657,11833"; a="86135258"
X-IronPort-AV: E=Sophos;i="6.24,234,1774335600"; d="scan'208";a="86135258"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 16:18:47 -0700
X-CSE-ConnectionGUID: 64BaQv3RRWCocNHekXedBw==
X-CSE-MsgGUID: 8wDUs1oHQ5+ASvCYfZXpJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,234,1774335600"; d="scan'208";a="251972105"
Received: from estantil-desk.jf.intel.com ([10.166.241.24])
 by orviesa008.jf.intel.com with ESMTP; 30 Jun 2026 16:18:48 -0700
From: Emil Tantilov <emil.s.tantilov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, przemyslaw.kitszel@intel.com, jay.bhat@intel.com,
 ivan.d.barrera@intel.com, aleksandr.loktionov@intel.com,
 larysa.zaremba@intel.com, anthony.l.nguyen@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, aleksander.lobakin@intel.com,
 linux-pci@vger.kernel.org, madhu.chittim@intel.com, decot@google.com,
 willemb@google.com, sheenamo@google.com, lukas@wunner.de
Date: Tue, 30 Jun 2026 16:18:52 -0700
Message-Id: <20260630231854.11536-1-emil.s.tantilov@intel.com>
X-Mailer: git-send-email 2.17.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782861529; x=1814397529;
 h=from:to:cc:subject:date:message-id;
 bh=+eQ6M0K+eMeEG4XsANC9glVnlOlhJrlgi8sTZLZhzh4=;
 b=ZQCAWZ+JFqHY7XuXfliRQJ3soYuvLPpgWNSE0aVzV0wS8WGZvLH4TWuO
 vyeYGwJ5DWMDoNI4Vip49Ji+KbNwLMI1f+4wFUv2TcWx7f3lr/C5Me/fx
 tznzUPzHm5M7VxWvLkX05CpgXDiToEiuEqBPSdROTvPbKh82+HldX+DBj
 jYdyGBeCXpm5n4bOQFJ3Vsp9NKDiW7Ch/zPYeZ0tFsTNKQwyN1OaI631J
 kKTMajZZIVGt+0g3QKqvCY355HPJrq/HPWoDrDZifYYWkTBfoir/0m50e
 Lz/VmcMnm+fU5bkkO0ZrqjkB0RYJMh4tn0aU1UVGwY0Dn6NS2CUhX185f
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZQCAWZ+J
Subject: [Intel-wired-lan] [PATCH iwl-next v3 0/2] Introduce IDPF PCI
 callbacks
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[emil.s.tantilov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ALIAS_RESOLVED(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:from_mime,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 370746E89F7

This series implements PCI callbacks for the purpose of handling FLR and
PCI errors in the IDPF driver.

The first patch removes the conditional deinitialization of the mailbox in
the idpf_vc_core_deinit() function. Aside from being redundant, due to the
shutdown of the mailbox after a reset is detected, the check was also
preventing the driver from sending messages to stop and disable the vports
and queues on FW side, which is needed for the prepare phase of the FLR
handling.

The second patch implements the PCI callbacks. The logic here follows
the reset handling done in idpf_init_hard_reset(), but is split in
prepare and resume phases, where idpf_reset_prepare() stops all driver
operations and the resume callback attempt to recover following the
reset or the PCI error event.

NOTE: These changes depend on, and apply on top of the IXD series:
https://lore.kernel.org/netdev/20260608144127.2751230-1-larysa.zaremba@intel.com/

Testing hints:
1. FLR via sysfs:
echo 1 > /sys/class/net/<ifname>/device/reset

Previously this would have been handled by idpf_init_hard_reset() as the
driver detects the reset. Now it will be done by the PCI err callbacks,
so this is the easiest way to test the reset_prepare/resume path.

2. PCI errors can be tested with aer-inject:
./aer-inject -s 83:00.0 examples/<error_type>

3. Stress testing can be done by combining various callbacks with the
reset from step 1:
echo 1 > /sys/class/net/<if>/device/reset& ethtool -L <if> combined 8
ethtool -L <if> combined 16& echo 1 > /sys/class/net/<if>/device/reset

Changelog:
v2->v3:
1/2:
- Added call to libie_ctlq_xn_shutdown() in idpf_shutdown() to avoid
possible regression when shutting down while FW is not responsive,
causing long delays.
- Fixed typo in the title s/conditonal/conditional/

2/2:
- Improved the logic in idpf_reset_prepare() to make sure the
  RESET_IN_PROG bit is set after the init task.
- Renamed the err parameter in idpf_pci_err_detected() with state
  and updated the description to match.
- Added check for adapter->xnm before calling libie_ctlq_xn_shutdown()
  in idpf_pci_err_detected().
- Corrected a comment to add some context on the reasoning behind
  the reset triggered on resume, following a PCI error.
- Corrected the description for slot_reset callback by removing
  the mention of AER as it is not the only trigger for the reset.
- Use PCI_POSSIBLE_ERROR() macro when checking RSTAT value.
- Add vport_ctrl_lock when calling idpf_vc_core_deinit() in 
  idpf_reset_prepare().

v1->v2:
- Removed the call to pci_save_state() from idpf_pci_err_slot_reset(),
  as it is no longer needed after pci_restore_state(). Suggested by
  Lukas Wunner.

v1:
https://lore.kernel.org/netdev/20260411003959.30959-1-emil.s.tantilov@intel.com/

Emil Tantilov (2):
  idpf: remove conditional MBX deinit from idpf_vc_core_deinit()
  idpf: implement pci error handlers

 drivers/net/ethernet/intel/idpf/idpf.h        |   3 +
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |  13 +-
 drivers/net/ethernet/intel/idpf/idpf_main.c   | 124 ++++++++++++++++++
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  10 +-
 4 files changed, 139 insertions(+), 11 deletions(-)

-- 
2.37.3

