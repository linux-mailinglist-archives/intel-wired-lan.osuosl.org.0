Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D70999B9B16
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Nov 2024 00:05:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1FE8F406E2;
	Fri,  1 Nov 2024 23:05:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HMdfffKNRUXx; Fri,  1 Nov 2024 23:05:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 27F004072F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730502356;
	bh=we759onRYqrJBaa9xFnkymrVkARcZi84qIwMPXG7eXQ=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=5+PMv/tpc6uRJdykLcrptoTCb/AwNP7HZHoasxcJCK6TCszeMgj7BDhdGm6YEXs+p
	 tB9TUVmxl1ztqKrW+kSechdMTqIf1ZRcOb2ggFv8zZM7+qHB0bRWcBC8vD3c91wd5u
	 Kq6O0Thlf2Ss4AriMEqrqzT4zuiGynzd3FnhV4OtGJuAtgUNSoJ7i6PtSXatTcpINB
	 Zw7tKnNSx+cKDHBF4KrOxk1jANkeOF2k2Y9AZIkbPxJ4BetkC0oNHuBUwjD+9plFoz
	 GRpRnSRyQjzFjeyHyVUtC/xLGAKzqHH9ZUXH2yozsisbLzACTm8x8uebOygmoHEB8v
	 bFkH+N22/6oPA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 27F004072F;
	Fri,  1 Nov 2024 23:05:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9902627E1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Nov 2024 23:05:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6697940574
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Nov 2024 23:05:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IXpFoigMXbSf for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Nov 2024 23:05:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 45B414053E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 45B414053E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 45B414053E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Nov 2024 23:05:52 +0000 (UTC)
X-CSE-ConnectionGUID: ZpRk+dGoToq2YykdQRjZyQ==
X-CSE-MsgGUID: tQqTfuLBQ/WoNwSLXD7zHA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30437320"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30437320"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2024 16:05:52 -0700
X-CSE-ConnectionGUID: uuJuyrOVRSqWPAch9WbNEQ==
X-CSE-MsgGUID: LN4QUsqpRN2BtHVVdfo5RQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,251,1725346800"; d="scan'208";a="82775606"
Received: from jekeller-desk.jf.intel.com ([10.166.241.20])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2024 16:05:51 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Fri, 01 Nov 2024 16:05:41 -0700
Message-Id: <20241101-jk-ixgbevf-mailbox-v1-5-fixes-v1-0-f556dc9a66ed@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMZeJWcC/42NQQ6CMBBFr2Jm7ZgWKVpX3sOwoHSAUWhNSyqGc
 HcbTuDuv7zk/RUiBaYIt8MKgRJH9i6DPB6gHRrXE7LNDIUoSimKKz5fyEtvKHU4NTwav2CSqLD
 jhSIaTVZV1eVMWkNuvAPtIicewJ8RHc1QZzFwnH347r9J7vrPizwFGqGNsrKypaI7u5nGU+snq
 Ldt+wH79b4S0wAAAA==
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Cc: Jacob Keller <jacob.e.keller@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Yifei Liu <yifei.l.liu@oracle.com>
X-Mailer: b4 0.14.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730502353; x=1762038353;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=kpRVThCQFhqu27UHLkQArXyPlGCoqlAlxqNu/pPsECY=;
 b=jq7ZrAKzeJtIQeodX6qhmKVny7Y9hzDAQoqsdhtY1tN/Tx1hXU4chTLm
 vdP2IK7yB1BKeg2rtuumAQeS0ZlE+PV0Ax7O7SyGDKDvvpUGOvXpeDtKK
 dM5F5rVFTrpBmCg+r1xlIV+PsbWBLKEHbhIrCHqGrlvjTnqs8Wqr7xauw
 ERT8o+8HGEtuT8oCp3B3tN3zJIR29Pq0S+dkz0MzsWbAhL+i+6Mzb4BOu
 9NoOe47fsViMHaCjzHMVSIC7rcSTBjLH3dIYzf2i8ke9oIhoJzgxn9J6l
 uzYA4VUFshiS74/KreAfA+9QObhCLzboy1T1lVi6vixHPqelP1Xd77vup
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jq7ZrAKz
Subject: [Intel-wired-lan] [PATCH iwl-net 0/2] ixgbe: fix incompatibility
 with Mailbox API v1.5
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

The ixgbevf driver gained support for the v1.5 API of the PF to VF mailbox
communication API in commit 339f28964147 ("ixgbevf: Add support for new
mailbox communication between PF and VF")

This commit accidentally enabled IPSEC offload for the v1.5 API, which is
incorrect as the API is only supported by the v1.4 API.

Other hosts including the VMWare ESX PF have implemented the v1.5 API, but
no Linux PF has.

As far as I can tell after digging, the v1.4 API is only supported by the
in-kernel ixgbe PF as the way of supporting IPSEC offload. Other hosts do
not appear to have implemented this API. In particular, the hosts
implementing v1.5 of the API do not have the IPSEC offload support.

The current situation results in two issues:

1) The ixgbevf attempts to enable IPSEC offload support for PFs operating
   on the v1.5 Mailbox API. This will not work as the PF will not support
   it. As far as I can tell, this results in all calls to
   ixgbevf_ipsec_set_pf_sa failing with an error, preventing IPSEC
   functionality from working.

2) When the in-kernel ixgbevf driver is loaded on an in-kernel ixgbe host,
   the driver logs a warning about an invalid API:

     VF 0 requested invalid api version 6

   This message confuses system administrators, as it implies that the VF
   is doing something wrong.

This series fixes the two issues, first by disabling IPSEC offload for any
API version other than v1.4. Second, the e_info message is downgraded into
a debug message to avoid logging it by default.

I do not yet fully understand the improvements of the v1.5 API, but
currently no Linux PF has implemented it fully. The Intel out-of-tree
releases appear to have some code to support v1.5, but it is incomplete,
and the v1.5 API is not advertised or accepted during negotiation.

If we ever plan to upstream the v1.5 improvements, then something will need
to be done to resolve the IPSEC negotiation -- existing v1.5 hosts do not
support IPSEC. It is not great to have to dedicate entire API versions just
to support IPSEC offload. I believe a proper solution should introduce an
API which can check if IPSEC is supported, and which all hosts can
implement to report whether IPSEC should be enabled. This is more flexible
than having a mailbox API which is not supported by all hosts.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Jacob Keller (2):
      ixgbevf: stop attempting IPSEC offload on Mailbox API 1.5
      ixgbe: downgrade logging of unsupported VF API version to debug

 drivers/net/ethernet/intel/ixgbe/ixgbe_common.h | 2 ++
 drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c  | 2 +-
 drivers/net/ethernet/intel/ixgbevf/ipsec.c      | 1 -
 3 files changed, 3 insertions(+), 2 deletions(-)
---
base-commit: 0144c06c5890d1ad0eea65df074cffaf4eea5a3c
change-id: 20241028-jk-ixgbevf-mailbox-v1-5-fixes-b9ed56673e99

Best regards,
-- 
Jacob Keller <jacob.e.keller@intel.com>

