Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BF9FC9C789C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Nov 2024 17:21:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EAB03406A7;
	Wed, 13 Nov 2024 16:21:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hM9nd3a486vk; Wed, 13 Nov 2024 16:21:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EEA4240690
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731514880;
	bh=YA2InbNEDBYg43/Qvw2xe3zbDRZsu4NZGyu6UlhCcaQ=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=eOAGmv2JVJp/CyNVY2l+TpXerlHy2ePW1bftsqGTMvzsGhvHxKgQlXXGqPlkL7I7N
	 3B1aiXxWRjSeoRrMrsEUwP1kjEtflnxKpDCL9pUjAeX2SLdn5lpOsI3Axa6W6Hp6Un
	 XB6w4sgv9mXkE1Jmo1MoBaXGEF6ybFWPfLs8FUL1E9WMi3iZdtWdIYsX5b5ZPhkdwb
	 8WZPoxINkSyOeUkMz+MhktiRnPIxN5dc5Srr1dDFYgS8LFKPX2H6IEMWHMjnrJo9H/
	 O+3JQl7EILxTxyTtcnByb7c5oiaQMzkromf6yN7Upx+VhXBUbU0mKo1GGGRnAKCWaH
	 VokZtp9GhCvdA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EEA4240690;
	Wed, 13 Nov 2024 16:21:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4F23FE2E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Nov 2024 15:48:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3B151400F6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Nov 2024 15:48:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rUkGKYGY1le0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Nov 2024 15:48:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=milena.olech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6FCD34022B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6FCD34022B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6FCD34022B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Nov 2024 15:48:14 +0000 (UTC)
X-CSE-ConnectionGUID: xtZJy7guQL2BLRa2yslbcQ==
X-CSE-MsgGUID: kadRHDn0TJWkYPZFApT9LA==
X-IronPort-AV: E=McAfee;i="6700,10204,11254"; a="48918965"
X-IronPort-AV: E=Sophos;i="6.12,151,1728975600"; d="scan'208";a="48918965"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2024 07:48:13 -0800
X-CSE-ConnectionGUID: Xg9wFP+qSO27UZWkqjkqIA==
X-CSE-MsgGUID: 0+ovJoaTRQuBKy5FeAZQGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,151,1728975600"; d="scan'208";a="92869217"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.22.54])
 by orviesa005.jf.intel.com with ESMTP; 13 Nov 2024 07:48:12 -0800
From: Milena Olech <milena.olech@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>
Date: Wed, 13 Nov 2024 16:46:07 +0100
Message-Id: <20241113154616.2493297-1-milena.olech@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 13 Nov 2024 16:21:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731512896; x=1763048896;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qHG84sX6f3ufA/50flHWraVatdJwVZN4tNgkvWeT4mo=;
 b=D2eDt7ESDeaJaxYNgnxyLotxcXdeYrk+2h9y/IO+pPKGS50ClPoNe3Dc
 LbJ2LE6pAyZRDFWTzw3xiiiaT6S9lKYN/67QCU3g9cF+3c8sHRNrStnWt
 V1fR4ZfNxUbEBwGAQTTF9kPvRmgESee42ssPg8vRJPdbN1iL1YJ1oWlGv
 Vd2z7UL9HxZvq160sEeCSoQeA12p42GiLFdtJLxtcYzJOPMi0kw5kOK08
 ZpOKRAzmeG7J4UmVNYMlQ7zxPeXfH6zqDUZ4NmahOfSxWfYRvzD2sZb1B
 PyWgePoudYOjvRim0mEl5KujXalIGdDfkmC1nbu7/ZzPXCthh3rGzFMCD
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=D2eDt7ES
Subject: [Intel-wired-lan] [PATCH iwl-net 00/10] initial PTP support
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

Milena Olech (10):
  idpf: initial PTP support
  virtchnl: add PTP virtchnl definitions
  idpf: move virtchnl structures to the header file
  idpf: negotiate PTP capabilies and get PTP clock
  idpf: add mailbox access to read PTP clock time
  idpf: add PTP clock configuration
  idpf: add Tx timestamp capabilities negotiation
  idpf: add Tx timestamp flows
  idpf: add support for Rx timestamping
  idpf: change the method for mailbox workqueue allocation

 drivers/net/ethernet/intel/idpf/Kconfig       |    1 +
 drivers/net/ethernet/intel/idpf/Makefile      |    3 +
 drivers/net/ethernet/intel/idpf/idpf.h        |   18 +
 .../ethernet/intel/idpf/idpf_controlq_api.h   |    3 +
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |   14 +
 .../net/ethernet/intel/idpf/idpf_ethtool.c    |   63 ++
 .../ethernet/intel/idpf/idpf_lan_pf_regs.h    |    4 +
 .../net/ethernet/intel/idpf/idpf_lan_txrx.h   |   13 +-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |   40 +
 drivers/net/ethernet/intel/idpf/idpf_main.c   |    8 +-
 drivers/net/ethernet/intel/idpf/idpf_ptp.c    | 1006 +++++++++++++++++
 drivers/net/ethernet/intel/idpf/idpf_ptp.h    |  352 ++++++
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  166 ++-
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |   17 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  160 ++-
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   84 ++
 .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   |  674 +++++++++++
 drivers/net/ethernet/intel/idpf/virtchnl2.h   |  312 ++++-
 18 files changed, 2839 insertions(+), 99 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_ptp.c
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_ptp.h
 create mode 100644 drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c


base-commit: 6d0dbb3dae5273e8efd6fd25deb00404ff5a8f38
-- 
2.31.1

