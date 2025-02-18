Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EB575A399E6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Feb 2025 12:08:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0CE538328E;
	Tue, 18 Feb 2025 11:08:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4l4knu0Am1VX; Tue, 18 Feb 2025 11:08:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 23E98832D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739876936;
	bh=dntu/JC3rYdOE1/oC2ZK4LQrxfs+R7MrFK8xqiQGHZc=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=hexJvmdZ15EU35GtVaqAOOCgH/YYDzYXUOIQPEjZHL2AWYn9TICMC+g2T4hQsw22M
	 8j4Cky+zhWdW0NmD72Up+MsmEwG/ILZcv0QyidaU95twZIZqUOusEFzH8AqLco9fnO
	 hQ6ntOvLhSzrjRT1B/YSJYZNRpNDOr/VYkdMQXuWVLCd3bV2xCzPcHhoISusL35DRf
	 rICjJVTtvHEbLfm99MvP0dbXkL6eC/XPl8MuwlGEWVlaMKJA0LADcMYd994igUwEq+
	 KrQtd3pBWKU/x0KxS1aBnCBcwkmcFB+0IAT9AODqUy1qHPLFADDy6DNJzb6goTOBGz
	 bbP1MEomDuG7A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 23E98832D9;
	Tue, 18 Feb 2025 11:08:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id AAA1DC8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 11:08:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8F3F6411C6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 11:08:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ktb1NauV4wQ0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Feb 2025 11:08:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7AE2E40CBE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7AE2E40CBE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7AE2E40CBE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 11:08:53 +0000 (UTC)
X-CSE-ConnectionGUID: ethGqHTzRkOTHumMT21rMA==
X-CSE-MsgGUID: MO5EVBjOReWmGf4T0ZVflw==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="51208030"
X-IronPort-AV: E=Sophos;i="6.13,295,1732608000"; d="scan'208";a="51208030"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 03:08:53 -0800
X-CSE-ConnectionGUID: 4ASgDcxRQv2Wk3+vP3rqbQ==
X-CSE-MsgGUID: 48W7XPZuRBmBPnf3Gvj7cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="114233289"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.54])
 by orviesa010.jf.intel.com with ESMTP; 18 Feb 2025 03:08:51 -0800
From: Milena Olech <milena.olech@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>
Date: Tue, 18 Feb 2025 12:07:15 +0100
Message-Id: <20250218110724.2263357-1-milena.olech@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739876933; x=1771412933;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3X2dgPpJyZyTnQWOE8WE4baPq7cvRLGJ4s/o352Q8fY=;
 b=URJ3vlD8SSiM/+bqKZ4CqZaM9AYE0ABUC37lq6iY3uwHopwH+0jMu7dw
 OdG/c93zP2XybQZ/cL8VqaVf3bp7QtigPH7Cef2F8mor7lJb2NZlJ7kmK
 4imOOcx0RR4HCXI41ZY32wIa2M5szOpw6jo0M634VjpHw3ABS8YX0aeJc
 1g7OcEGMMgxlaIYBVM4E4QSWWqoEoIuR8tF+9aXcOXH+VDDBBTC6p6lis
 VRD/PJqs+7W5nw6MwbCkpGhHwJNUCtIPLA6HbESTAtV8EQt94gEW7ZA78
 M+VazUJzAzDoQbR++1Rfd2y9DvgqZidPklRtbsfF8zH/AGa1ip+D6BfAk
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=URJ3vlD8
Subject: [Intel-wired-lan] [PATCH v6 iwl-next 00/10] idpf: add initial PTP
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
 drivers/net/ethernet/intel/idpf/idpf.h        |  34 +
 .../ethernet/intel/idpf/idpf_controlq_api.h   |   3 +
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |  14 +
 .../net/ethernet/intel/idpf/idpf_ethtool.c    |  74 +-
 .../ethernet/intel/idpf/idpf_lan_pf_regs.h    |   4 +
 .../net/ethernet/intel/idpf/idpf_lan_txrx.h   |  13 +-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |  45 +
 drivers/net/ethernet/intel/idpf/idpf_main.c   |   9 +-
 drivers/net/ethernet/intel/idpf/idpf_ptp.c    | 983 ++++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_ptp.h    | 350 +++++++
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 174 +++-
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  18 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 160 ++-
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |  84 ++
 .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   | 677 ++++++++++++
 drivers/net/ethernet/intel/idpf/virtchnl2.h   | 314 +++++-
 18 files changed, 2858 insertions(+), 102 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_ptp.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_ptp.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c


base-commit: d142eb657bb0367effe3c1a43f170dda379176b2
-- 
2.31.1

