Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB989F78B7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Dec 2024 10:45:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A09E6844E2;
	Thu, 19 Dec 2024 09:45:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IhKtLsE9iHva; Thu, 19 Dec 2024 09:45:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D259A845B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734601514;
	bh=IqDHmhZ0z3V6usyWfFFWw976UFxSpKjwg4XY9hWbo8w=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=VchbRLRvQfWHbVWIGaqk4MA34UUmHoJu4tymz+xzysA995QRh/k5okDPLpYwgoxTI
	 yObf76iYc4WUgdm/kVK7JRTHhh40pjqQ4cc+LFAStRComlKbb5jQhekTIbiWKH5l2B
	 h8ic4DL8NyIwcZ+bXPRXB7ryU37nttGO5MVmoCbsBsc3DE47hWhc6vPBPgLPVAQzHn
	 BYQE7lahG2Afk+kYxblxK1/R38YYbRVUYTkaHYkxh4ezhSGwOXd/6LmW5d1G6V4WxI
	 2m6ysRsdjywmW6Z0Sl6zoIZvQP6mpGda38JhnogDj5r7zhtC0CIeBjySEwdmCjcBqm
	 7q+vTtX4ej7AQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D259A845B9;
	Thu, 19 Dec 2024 09:45:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0AA766C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Dec 2024 09:45:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E460084605
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Dec 2024 09:45:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fLtmyp-Noama for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Dec 2024 09:45:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4C188845D3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C188845D3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4C188845D3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Dec 2024 09:45:08 +0000 (UTC)
X-CSE-ConnectionGUID: LZHQVpjkRhq9KpGJ2oAGBA==
X-CSE-MsgGUID: y8JHT12SSHaGwx/HqTbOXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="45702375"
X-IronPort-AV: E=Sophos;i="6.12,247,1728975600"; d="scan'208";a="45702375"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 01:45:08 -0800
X-CSE-ConnectionGUID: G8U2usm0TdCUttNmPADPdA==
X-CSE-MsgGUID: S8Ls4NAYQS6+osVTQr8ptA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,247,1728975600"; d="scan'208";a="98206455"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.54])
 by orviesa006.jf.intel.com with ESMTP; 19 Dec 2024 01:45:06 -0800
From: Milena Olech <milena.olech@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>
Date: Thu, 19 Dec 2024 10:44:02 +0100
Message-Id: <20241219094411.110082-1-milena.olech@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734601509; x=1766137509;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OnSysRNRDBcDQ6Qn1zB9z0uy94irNy8/o0/Qw3+wCH4=;
 b=RPGTuuzK6NbMk4g/N3mnNPfE0oruUE4eUkJAP4cPp6uLxtbj70vvVzl/
 Vg5r+5e7M20g0y0+OfYCDvQXB0BlxiSPSJJ/FCxc1NC9IPzEYBLhUcNY3
 qfsqBVSyPWg+WQTRGdWovZcVaqWTt6UnjVOCYHGorExhK6+rWRW6Lhtff
 ZSM6zw8xCyprELpcua4/Y57egVnd2CgdFSy6PkgCj9hkgygdCBQ8UkKbG
 JtV+cyjwTP0LP6vG5trC7zn4hfWG1DrzSKCAhlPDl2K6K8X7kdqTSRp+W
 V4s9UT6Ze8AY1YIsMCh7HkWprgtvgOWplbqvenam0baRyzhYlhvxVptQa
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RPGTuuzK
Subject: [Intel-wired-lan] [PATCH v3 iwl-next 00/10] idpf: add initial PTP
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

Current implementation of the IDPF driver does not allow to get stable
Tx timestamping, when more than 1 request per 1 second is sent to the
driver. Debug is in progress, however PTP feature seems to be affected by
the IDPF transmit flow, as the Tx timestamping relies on the completion
tag.

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
 drivers/net/ethernet/intel/idpf/idpf.h        |  34 +
 .../ethernet/intel/idpf/idpf_controlq_api.h   |   3 +
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |  14 +
 .../net/ethernet/intel/idpf/idpf_ethtool.c    |  69 +-
 .../ethernet/intel/idpf/idpf_lan_pf_regs.h    |   4 +
 .../net/ethernet/intel/idpf/idpf_lan_txrx.h   |  13 +-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |  47 +
 drivers/net/ethernet/intel/idpf/idpf_main.c   |   8 +-
 drivers/net/ethernet/intel/idpf/idpf_ptp.c    | 989 ++++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_ptp.h    | 351 +++++++
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 169 ++-
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  18 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 160 ++-
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |  84 ++
 .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   | 677 ++++++++++++
 drivers/net/ethernet/intel/idpf/virtchnl2.h   | 314 +++++-
 18 files changed, 2857 insertions(+), 101 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_ptp.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_ptp.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c


base-commit: 925d17a63a913ff2061aae2632d6f08ab6b07afc
-- 
2.31.1

