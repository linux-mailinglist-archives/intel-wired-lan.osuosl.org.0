Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E82A2A7FC31
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Apr 2025 12:36:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 29F7383026;
	Tue,  8 Apr 2025 10:36:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0yu3NmsyFcce; Tue,  8 Apr 2025 10:36:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 763A882BFD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744108568;
	bh=0eq4iqQHahBmKzl7Px25JnjiSBWhUkdmEzR7vo7NHCU=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=LF7yEKfxXa30zOGs3CM7yIpJvgBrbDqeI1CjQ8vs4j1Lk5ZWjOkKCoC5egAJRmlgE
	 cKOIno71RsIJEeT5Vi6SlQmYM6tXGt48ngMHmBiX5Iiy24FV0qV23MfvfC6qFBkd1f
	 toKyDKOIFdr6BdeUARTfA/wMFmXg1b5lQxafgLg3FU+VspN8zRZxh+YMmX1GPpbcN9
	 xCxLt0s7sa1ay2aFXl2A2QS8hiFjkoC5hwzAwkeyT5MW5ViLEGPd2LBwYJ1X1592/F
	 A2wrlFiTTs/q8Wd/+rRbHPv2Ddox+AlmWikzN+xVkLy0yKfF03Um7Np2168BBoNFLY
	 wNggrtq3N7tPw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 763A882BFD;
	Tue,  8 Apr 2025 10:36:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 36FA41DE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 10:36:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1CF3D419EF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 10:36:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F37QN2UnHYrF for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Apr 2025 10:36:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4B56041929
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4B56041929
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4B56041929
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 10:36:04 +0000 (UTC)
X-CSE-ConnectionGUID: 8bYvsCzoT/2AdhCUrB3cPA==
X-CSE-MsgGUID: EZOBUentQtSPUPrCKWwb6w==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="56901526"
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="56901526"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 03:36:04 -0700
X-CSE-ConnectionGUID: eClOOnPbSpeCK3kDo7iing==
X-CSE-MsgGUID: Sa7bU7ImTaiH6sfIpLg93A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="128563290"
Received: from gklab-003-014.igk.intel.com ([10.211.116.96])
 by fmviesa008.fm.intel.com with ESMTP; 08 Apr 2025 03:36:02 -0700
From: Milena Olech <milena.olech@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>
Date: Tue,  8 Apr 2025 12:30:46 +0200
Message-ID: <20250408103240.30287-2-milena.olech@intel.com>
X-Mailer: git-send-email 2.43.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744108566; x=1775644566;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tK6Xks0c2WknuphTYgbiGOCxS/2t+Bd42VyxJgPmQcc=;
 b=BD5xoYUbIY6RV6orACZzE4J4LSYXkIp0+ABAntJXmLqMHeW+XFPw+8TK
 L/zbZu42kW1NBV2Xk+OpyUHV6dY8iHh6pY0vIjM5zznqR5dX6fXsFQYm9
 NiY5+h6hhW2zc4B6BOCT7fuDZUnGGAKexs+ifLBbgQDTuIeQV47R1/h0n
 ueAH5LBWcPX0qCMTbXGapItak9Z3ar871YULOimVZNzgLVrat6oJyICsX
 qYyha5evKwuyE6GkGdnbq6wFm3Z+HyUjGu+ZhvAHsmrZti+W1SM5dHZRD
 TE7CHvxkc5cRWTXnDuqwMYBhFDB73TdvgQoh9UEsfImJnHa7TR2PRHxub
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BD5xoYUb
Subject: [Intel-wired-lan] [PATCH v10 iwl-next 00/11] idpf: add initial PTP
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

v9 -> v10: create a separate patch for cross timestamping, change the
order, improve get device clock time latch mechanism
v8 -> v9: fix Rx filters upscaling, check if the link is up in
idpf_hwtstamp_get/set, fix typo
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

Milena Olech (11):
  idpf: change the method for mailbox workqueue allocation
  idpf: add initial PTP support
  virtchnl: add PTP virtchnl definitions
  idpf: move virtchnl structures to the header file
  idpf: negotiate PTP capabilities and get PTP clock
  idpf: add mailbox access to read PTP clock time
  idpf: add cross timestamping
  idpf: add PTP clock configuration
  idpf: add Tx timestamp capabilities negotiation
  idpf: add Tx timestamp flows
  idpf: add support for Rx timestamping

 drivers/net/ethernet/intel/idpf/Kconfig       |    1 +
 drivers/net/ethernet/intel/idpf/Makefile      |    3 +
 drivers/net/ethernet/intel/idpf/idpf.h        |   35 +
 .../ethernet/intel/idpf/idpf_controlq_api.h   |    3 +
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |   14 +
 .../net/ethernet/intel/idpf/idpf_ethtool.c    |   75 +-
 .../ethernet/intel/idpf/idpf_lan_pf_regs.h    |    4 +
 .../net/ethernet/intel/idpf/idpf_lan_txrx.h   |   13 +-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |   47 +
 drivers/net/ethernet/intel/idpf/idpf_main.c   |    9 +-
 drivers/net/ethernet/intel/idpf/idpf_ptp.c    | 1005 +++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_ptp.h    |  381 +++++++
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  171 ++-
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |   18 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  160 ++-
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   84 ++
 .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   |  678 +++++++++++
 drivers/net/ethernet/intel/idpf/virtchnl2.h   |  314 ++++-
 18 files changed, 2912 insertions(+), 103 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_ptp.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_ptp.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c


base-commit: edf956e8bd7d4c7ac8a7643ed74a36227db1fa27
-- 
2.43.5

