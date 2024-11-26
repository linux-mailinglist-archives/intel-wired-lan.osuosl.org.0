Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A669D969B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Nov 2024 12:53:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 43BA3610A9;
	Tue, 26 Nov 2024 11:53:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4esVwdUDUpl0; Tue, 26 Nov 2024 11:53:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 74AE76006A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732622025;
	bh=FwVkdHD5of1uhPo1vNLZhkBCJ3vuJJzeV+N4anDU7JI=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=beNCkJS1ho5+M4yglu60ZbeVfLOTz4j6BPBMIscRIkb9UHAuT8NQwz/oQ8jxDcpHD
	 AfuSsE+QS85O+rdV/MEVWJXJJDGgZvyMqf9zwjw0N5TqXJB/5BDD5VjakvayEkjQWH
	 5X0FMpMy0IiO8ywBU/1rQd6QMdZS/BOx8PlbKPIKANYtqXAfAyveAF8tX0tC5dqfFG
	 Ul9P08d2OHTrsPjcvAbM9gM/Hmxdl6GSxZaA0vhxP2iPcL5RVLVs3ltCqahDvueTw4
	 uRKpHTpwNAa3dTCWLtP6Ikt8prnWqZzURMgIeur2XqKmTWfYoyFMZtpa4TIcskDY5k
	 5bsWgyuPW79dg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 74AE76006A;
	Tue, 26 Nov 2024 11:53:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 75AF54961
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2024 11:53:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 633F2846CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2024 11:53:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Mh31pldxaiLn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Nov 2024 11:53:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5E15784630
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5E15784630
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5E15784630
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2024 11:53:41 +0000 (UTC)
X-CSE-ConnectionGUID: yjluNsaTQHW5Hn1wQWg9JQ==
X-CSE-MsgGUID: iWkGdX8DRdavN0sfm3ObAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11267"; a="55276298"
X-IronPort-AV: E=Sophos;i="6.12,185,1728975600"; d="scan'208";a="55276298"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 03:53:41 -0800
X-CSE-ConnectionGUID: PMHGf35iTfO0ZYoCTw/LaA==
X-CSE-MsgGUID: 00XMoP9RQKmUnILe4YZwGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,185,1728975600"; d="scan'208";a="91766664"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.54])
 by fmviesa008.fm.intel.com with ESMTP; 26 Nov 2024 03:53:39 -0800
From: Milena Olech <milena.olech@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>
Date: Tue, 26 Nov 2024 04:58:40 +0100
Message-Id: <20241126035849.6441-1-milena.olech@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732622022; x=1764158022;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EIB3FtSRL8oTaqHLdbdcfjWMyd088jPawrHgcuTBnjM=;
 b=n9zxyTCTmRhM6BUWSj5L2WnvFeurVELS5ivQkuSzQk9QhhJpVExp27/L
 /z+Bu+RaoRMeeNm0p0l2iuKYNaHflxADu0pYv1B0H87rhKHS/xHNyGqDW
 l+6jii1ZyTeN/MrfHK6LrXnlvD0UEYtth3zvEP94UZ52zWs7nPtjEDskQ
 kuiCx1we6h31dMb6IoEDhvGKvRogroxY/JJslZZs4JYiy9CfK5rc1kQZH
 mKWQgVgqE0/ZA/9xjbCs9yz2MQMbSITs/yi+F1PrnPALbphY8rrFVAV9O
 1S1Sb9MkeHAfUluThT70ayPPCG9eu7bBT13Ka4tcALpQoFzS7Uj6n5gDv
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=n9zxyTCT
Subject: [Intel-wired-lan] [PATCH v2 iwl-next 00/10] add initial PTP support
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
 drivers/net/ethernet/intel/idpf/idpf.h        |  30 +
 .../ethernet/intel/idpf/idpf_controlq_api.h   |   3 +
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |  14 +
 .../net/ethernet/intel/idpf/idpf_ethtool.c    |  65 ++
 .../ethernet/intel/idpf/idpf_lan_pf_regs.h    |   4 +
 .../net/ethernet/intel/idpf/idpf_lan_txrx.h   |  13 +-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |  47 +
 drivers/net/ethernet/intel/idpf/idpf_main.c   |   8 +-
 drivers/net/ethernet/intel/idpf/idpf_ptp.c    | 976 ++++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_ptp.h    | 351 +++++++
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 168 ++-
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  17 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 160 ++-
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |  84 ++
 .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   | 676 ++++++++++++
 drivers/net/ethernet/intel/idpf/virtchnl2.h   | 312 +++++-
 18 files changed, 2833 insertions(+), 99 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_ptp.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_ptp.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c


base-commit: be9bc5f29544142931d3958e972623a1db595af4
-- 
2.31.1

