Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 00534A14F65
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Jan 2025 13:42:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5EFAA423F3;
	Fri, 17 Jan 2025 12:42:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QpHloEp2gbeA; Fri, 17 Jan 2025 12:42:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8339E423E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737117746;
	bh=6mW18lEfkUFcCOawJP08oMxWXMH8eBytmziz7alkFog=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=F6Qtf0evbODRjYq2RVtX5giRecLv08afX5gfl9uGN1SJJpbhGI6sht8fcpw4CMa4c
	 UyxsDLKYUZpOKxst/p60DFbJKaR5y+KmGtRxCEntZ6h5AyEcO8Mg9gYi+g0xgbnsX6
	 plJlLq3pruaYZqS66zygzEe4vV//if3gXfsEQ/YJBkSYE6SkIvo5WudIavzCfOA0fh
	 08GxsAHOss1IUKM23JND/o9cZzSFwQyickDLTjtP02EoE5LhJnWFl1jA1RrVwc8d7A
	 Yy+5Ys3CnhgUvHojScy0NFgLEIZnjkTK+bLrgLL19HGD6/sNSCkhBKi0DO5LAHivMV
	 UMG03heWjJgxA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8339E423E8;
	Fri, 17 Jan 2025 12:42:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id C362D31
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2025 12:42:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8C87F4062A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2025 12:42:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kzqM7q7aEsg5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Jan 2025 12:42:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7460F405EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7460F405EC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7460F405EC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jan 2025 12:42:23 +0000 (UTC)
X-CSE-ConnectionGUID: pA6uSi1jTe6isgNRcgd2gw==
X-CSE-MsgGUID: nWFVew5iQFOG8nzE1SX0lw==
X-IronPort-AV: E=McAfee;i="6700,10204,11318"; a="37430929"
X-IronPort-AV: E=Sophos;i="6.13,212,1732608000"; d="scan'208";a="37430929"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 04:42:23 -0800
X-CSE-ConnectionGUID: g24tjWpmQ4mwlfD6lZrQ8g==
X-CSE-MsgGUID: EoBwWQxhTqSLZ6l+hAmUFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="136681530"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.54])
 by fmviesa001.fm.intel.com with ESMTP; 17 Jan 2025 04:42:21 -0800
From: Milena Olech <milena.olech@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>
Date: Fri, 17 Jan 2025 13:41:00 +0100
Message-Id: <20250117124109.967889-1-milena.olech@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737117743; x=1768653743;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wq61j8uUwmlJp5Xq4SPbQ95DzEmoe4TnRBUEI+x/yvQ=;
 b=g+4+of2DjLChA9HkNUpzYs2EXbSMQmWIXD4ligB6vNn0dWIWGiwwBxX2
 LObtXsReEFBNUPL2fv+6nRTxqaKlhSmLCtA+GG1PwedOjq143DCu42n1N
 eS55rc8gasukyWuh9ziOdg9wu13GMkPOTxN4rOX2gakz0/j9pHNG3v3N6
 zdruXJ0fDyaniOkZohJMVPy/TrxrYMle2WA4VglBvlnZaden3aA+cZmWt
 eypHwA5BIB47lcPlMf66/BC1WtwWW7wn+6eGZGba9pAUAB0bUXCM5ODBg
 bTMnBETMh+GJDDyv3QD/j/vPW9RZTW9jUT5VbViFCbpE7UFm8qiV7Z/ZI
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=g+4+of2D
Subject: [Intel-wired-lan] [PATCH v5 iwl-next 00/10] idpf: add initial PTP
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
 .../net/ethernet/intel/idpf/idpf_ethtool.c    |  70 +-
 .../ethernet/intel/idpf/idpf_lan_pf_regs.h    |   4 +
 .../net/ethernet/intel/idpf/idpf_lan_txrx.h   |  13 +-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |  47 +
 drivers/net/ethernet/intel/idpf/idpf_main.c   |   9 +-
 drivers/net/ethernet/intel/idpf/idpf_ptp.c    | 983 ++++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_ptp.h    | 351 +++++++
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 169 ++-
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  18 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 160 ++-
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |  84 ++
 .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   | 677 ++++++++++++
 drivers/net/ethernet/intel/idpf/virtchnl2.h   | 314 +++++-
 18 files changed, 2852 insertions(+), 102 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_ptp.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_ptp.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c


base-commit: e1e8afea623cb80941623188a8190d3ca80a6e08
-- 
2.31.1

