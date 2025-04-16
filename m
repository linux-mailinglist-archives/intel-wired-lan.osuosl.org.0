Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1025CA8B8CD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Apr 2025 14:23:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B72816FC7B;
	Wed, 16 Apr 2025 12:23:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H54Y8MCmyPoD; Wed, 16 Apr 2025 12:23:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C97096FC7C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744806182;
	bh=/XSyDSz01/rwNpjWcjpVtXeWExU7GF1jffAkfARCWws=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=TBulUUcmCqICkA+n1kbmiAJC/eAK6aa7iQycY41xUvZ1QeDn6lunxXFCI1kD2i56Y
	 t3uhi2s3/WdOaUnSA8heG+L3VrFzKJrt9wAeRVQSaUM0NTvcPseUKWF99DD6/Fhhwa
	 uh0BFQb+S7lm4P4Puj6vSHY4NwGQ+4oeSqhyF6whpZl14F0A8ih7SKzUcXzIJ55F5D
	 FN/+f/h/uxfzcMxlWpwbSwD0lUu7qxx7XbWYGomk3kjDfrRGytVWOWEkpwaKTJk1Cx
	 sMcp16WnjCE5bj2ddihadV8tUQQwduJVArfCp5cfR+2fSrIrxooN4JyK4bCjkT3s9m
	 b0rrFfDnFLV5w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C97096FC7C;
	Wed, 16 Apr 2025 12:23:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id E18A6DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 12:23:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C7A3F41F44
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 12:23:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E50IUCogvDj2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Apr 2025 12:22:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C8F0A41F49
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C8F0A41F49
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C8F0A41F49
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 12:22:58 +0000 (UTC)
X-CSE-ConnectionGUID: LQ8tJet5RDaw4szg7JlyWg==
X-CSE-MsgGUID: iXsVmqG8QmWK8qqRfoNLAA==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="63888910"
X-IronPort-AV: E=Sophos;i="6.15,216,1739865600"; d="scan'208";a="63888910"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 05:22:36 -0700
X-CSE-ConnectionGUID: 4eTuMUCKQECIJie+NFtlqw==
X-CSE-MsgGUID: XgSqlmdmSaaa3yxFLJ0kwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,216,1739865600"; d="scan'208";a="130477168"
Received: from gklab-003-014.igk.intel.com ([10.211.116.96])
 by fmviesa007.fm.intel.com with ESMTP; 16 Apr 2025 05:22:35 -0700
From: Milena Olech <milena.olech@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>
Date: Wed, 16 Apr 2025 14:18:58 +0200
Message-ID: <20250416122142.86176-2-milena.olech@intel.com>
X-Mailer: git-send-email 2.43.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744806179; x=1776342179;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=O7ppKADWcPNedSeoi8dWIZcBDs/KP37bDVC2WFQKRlo=;
 b=m0Fsj0OdLdfaPu04tzWxkx2LNXNpc3uJ4HahCGavO52t2R2cW20PBKgB
 DoLnFJuPDmvtZqeNXyjCGNmQHZHx2ltAH/ogUSqwBoxjfe9X6DHEv2xQm
 x+FsoD9Es1iFzGl0iW315i1CE5lJc8LtkCj3UzuC1l2eMGFocuCZM3zxJ
 slbp9nJejh31VJqc3edKwZKtzS/PN11B6ElOlhvyjiW2nXXLo8A+9ZtOB
 Pz5ciOHkJpggH6oStqRYVKHaBKGYczP6JXVOYZfRzsQH5lzkbQc90qDMS
 W7kwIQTAYOhyvf9bRxfDg7ub2ob2pfxlcIKTxbe7KQF74EDvu6A7dLMOA
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=m0Fsj0Od
Subject: [Intel-wired-lan] [PATCH v12 iwl-next 00/11] idpf: add initial PTP
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

v11 -> v12: restore missing v9 changes - fix Rx filters upscaling,
check if the link is up in idpf_hwtstamp_get/set 
v10 -> v11: change timestamp extension algorithm, use one lock for
latches lists, allocate each index latch separately during caps
negotiation, fix virtchnl comment
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
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |   57 +
 drivers/net/ethernet/intel/idpf/idpf_main.c   |    9 +-
 drivers/net/ethernet/intel/idpf/idpf_ptp.c    | 1019 +++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_ptp.h    |  379 ++++++
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  171 ++-
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |   18 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  160 ++-
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   84 ++
 .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   |  673 +++++++++++
 drivers/net/ethernet/intel/idpf/virtchnl2.h   |  314 ++++-
 18 files changed, 2929 insertions(+), 103 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_ptp.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_ptp.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c


base-commit: ea9052a7d46c1d95f5af10b9ab907e5c5fa8a4f8
-- 
2.43.5

