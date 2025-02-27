Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D9778A47EAF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Feb 2025 14:15:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 70337412EB;
	Thu, 27 Feb 2025 13:15:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 51FXyHVwTzV3; Thu, 27 Feb 2025 13:15:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 78979412E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740662120;
	bh=N766aRBllvwuF3VxUeTKUsyM2MGs8IQ/DGRm6+/BS9Q=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ID03SdTLA0KdDEnPLfsYs+lzoYy7yT9f521Vs8KN+qHIfeiCd6FuZ+2d0y8n8rjYN
	 3iidp4tXEB6IRBUPgpDNVeUSd/S1Jrm3VcD9uBP8NbywWLtS543IRla35wABzF6F6l
	 ZThB9RBUATkJVhURyS9B8qYpdatOgtM5gK6fGhH7p6FYS4USEI7M/qCZngVnLlStFc
	 KnvLPUZRAbS3x4KFdMBweZuXWp0F828p4K75Y3NdFm7BMmbz77R8Rwx3Vg4qJxuLBo
	 QyOtZ40fov8ka28KGFXhEDRf2DCwxz/1jZWqMiadwC3b1i+VVGeEXLUE3dAUYo9dmU
	 DHGEhvvnXt7Wg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 78979412E0;
	Thu, 27 Feb 2025 13:15:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9FE7F711
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 13:15:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 76E208204A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 13:15:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NRpQiJ_dY_9i for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Feb 2025 13:15:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A489982037
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A489982037
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A489982037
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Feb 2025 13:15:17 +0000 (UTC)
X-CSE-ConnectionGUID: hNfSfxzZS+y+SRbQyk8LPQ==
X-CSE-MsgGUID: 0ks6IDn1RayrltvdG+z5Zg==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="41252369"
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="41252369"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 05:15:17 -0800
X-CSE-ConnectionGUID: 83PCWzx8Tl2906/NYu4sEQ==
X-CSE-MsgGUID: 0ZPASwQNQdqlG2850UQQWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121151181"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.54])
 by fmviesa003.fm.intel.com with ESMTP; 27 Feb 2025 05:15:15 -0800
From: Milena Olech <milena.olech@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>
Date: Thu, 27 Feb 2025 14:13:05 +0100
Message-Id: <20250227131314.2317200-1-milena.olech@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740662118; x=1772198118;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=s860Du55vdObPgQPSK3IIXZ2HDzc/N+qbJ7m2encM04=;
 b=ctuIZHuk26OWql9+5H4WkgEylSveCDd48D/WrLbZyrf4/CRHQdjdOd02
 61L0LCY2+gtAuuMLT+wqYlQwML4at6eM2Jt9nE5ZkLe2Pt9ISuP8AGKSs
 zJf+vy9Ugu5lB+/E78qgWwmon+OPZ8xHqtM/br0n+ZzN8hDLM1XtGzKN/
 mi2j9zioe45+/+/lpZ5w9ZZ0sdFD8UK7yF6AzjRbzNHquSAxl7ZHym8+k
 YxQNxPwl4fX3miVKWbzO+C7Qt0uS9TdQTlcEfJtHOZY1sO7MrRIkk6WvY
 /adZSM2fUeND8HiszQEcF4jYTzeEEltpHiCoNf9lcmZIsW7q49WEMKCpB
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ctuIZHuk
Subject: [Intel-wired-lan] [PATCH v8 iwl-next 00/10] idpf: add initial PTP
 support
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

This patch series introduces support for Precision Time Protocol (PTP) to
Intel(R) Infrastructure Data Path Function (IDPF) driver. PTP feature is
supported when the PTP capability is negotiated with the Control
Plane (CP). IDPF creates a PTP clock and sets a set of supported
functions.

During the PTP initialization, IDPF requests a set of PTP capabilities
and receives a writeback from the CP with the set of supported options.
These options are:
- get time of the PTP clock
- get cross timestamp
- set the time of the PTP clock
- adjust the PTP clock
- Tx timestamping

Each feature is considered to have direct access, where the operations
on PCIe BAR registers are allowed, or the mailbox access, where the
virtchnl messages are used to perform any PTP action. Mailbox access
means that PTP requests are sent to the CP through dedicated secondary
mailbox and the CP reads/writes/modifies desired resource - PTP Clock
or Tx timestamp registers.

Tx timestamp capabilities are negotiated only for vports that have
UPLINK_VPORT flag set by the CP. Capabilities provide information about
the number of available Tx timestamp latches, their indexes and size of
the Tx timestamp value. IDPF requests Tx timestamp by setting the
TSYN bit and the requested timestamp index in the context descriptor for
the PTP packets. When the completion tag for that packet is received,
IDPF schedules a worker to read the Tx timestamp value.

v7 -> v8: split Tx and Rx timestamping enablement, refactor
idpf_for_each_vport
v6 -> v7: remove section about Tx timestamp limitation from cover letter
since it has been fixed, change preparing flow descriptor method
v5 -> v6: change locking mechanism in get_ts_info, clean timestamp
fields when preparing flow descriptor, add Rx filter
v4 -> v5: fix spin unlock when Tx timestamp index is requested
v3 -> v4: change timestamp filters dependent on Tx timestamp cap,
rewrite function that extends Tx timestamp value, minor fixes
v2 -> v3: fix minor issues, revert idpf_for_each_vport changes,
extend idpf_ptp_set_rx_tstamp, split tstamp statistics
v1 -> v2: add stats for timestamping, use ndo_hwtamp_get/set,
fix minor spelling issues

Milena Olech (10):
  idpf: add initial PTP support
  virtchnl: add PTP virtchnl definitions
  idpf: move virtchnl structures to the header file
  idpf: negotiate PTP capabilities and get PTP clock
  idpf: add mailbox access to read PTP clock time
  idpf: add PTP clock configuration
  idpf: add Tx timestamp capabilities negotiation
  idpf: add Tx timestamp flows
  idpf: add support for Rx timestamping
  idpf: change the method for mailbox workqueue allocation

 drivers/net/ethernet/intel/idpf/Kconfig       |   1 +
 drivers/net/ethernet/intel/idpf/Makefile      |   3 +
 drivers/net/ethernet/intel/idpf/idpf.h        |  35 +
 .../ethernet/intel/idpf/idpf_controlq_api.h   |   3 +
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |  14 +
 .../net/ethernet/intel/idpf/idpf_ethtool.c    |  75 +-
 .../ethernet/intel/idpf/idpf_lan_pf_regs.h    |   4 +
 .../net/ethernet/intel/idpf/idpf_lan_txrx.h   |  13 +-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |  47 +
 drivers/net/ethernet/intel/idpf/idpf_main.c   |   9 +-
 drivers/net/ethernet/intel/idpf/idpf_ptp.c    | 992 ++++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_ptp.h    | 370 +++++++
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 171 ++-
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  18 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 160 ++-
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |  84 ++
 .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   | 677 ++++++++++++
 drivers/net/ethernet/intel/idpf/virtchnl2.h   | 314 +++++-
 18 files changed, 2887 insertions(+), 103 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_ptp.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_ptp.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c


base-commit: 35a24e73c80b5582d74341af1e6ce310d209587b
-- 
2.31.1

