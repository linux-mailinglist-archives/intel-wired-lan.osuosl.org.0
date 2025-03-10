Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D9DCDA59462
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Mar 2025 13:28:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0306C60A6B;
	Mon, 10 Mar 2025 12:28:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OAlcHCpq8pNV; Mon, 10 Mar 2025 12:28:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2D33160A8C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741609714;
	bh=ea2PodAiMPpSK1AzbzIJwd5Kd5xcujmBUhHxJEm7rs0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=P8O3AaRd/WIxXe2utplxb4baFe9OJL96qBk9AaCTPqvQ8C8rYHylVqpwEsPbobQx1
	 h7xMzNDig5yHX29XpTKcCbAIxXRjQIOkbHrOvVn/H/56L5Z4KahcfX6pblx1Rf7awZ
	 AoDMAoPvXwSJWzgxIu8S1Ctt+OVTOtrbWKEO6MwBhf/bx0Rr+ZY8fT+JpKwt3pMXdQ
	 yE42bVt4wpFR1/4+/21hcXavIFNAairNcOvn+QL5Dk2MAfzgILPblQtYUcQ4DD/p4U
	 iMctwd+O/89dedw1fy73SeiSdDjVOn4STU30+jcFjtTzMUTDGjd6smQ5KMwQ/knyT7
	 IXyJIYv1f4KEw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2D33160A8C;
	Mon, 10 Mar 2025 12:28:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E65B11C1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 12:28:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AC6D281FD0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 12:28:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7noOfjJ5uxar for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Mar 2025 12:28:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E05F281FCF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E05F281FCF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E05F281FCF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 12:28:30 +0000 (UTC)
X-CSE-ConnectionGUID: osOyHJLOQjOefdcBOlu4/A==
X-CSE-MsgGUID: ethj+YebQvSUqV1Et//wQQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="53981083"
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="53981083"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 05:28:29 -0700
X-CSE-ConnectionGUID: 1BNFu7ApStCZ81TK0l3thw==
X-CSE-MsgGUID: C3m5+/IpQfS4zwmopqke6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="119698177"
Received: from gklab-003-001.igk.intel.com ([10.211.3.1])
 by orviesa009.jf.intel.com with ESMTP; 10 Mar 2025 05:28:29 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 10 Mar 2025 13:24:36 +0100
Message-Id: <20250310122439.3327908-1-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741609711; x=1773145711;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5GH96/frAS9nSuB3pPuT1iTt5BPHU3MLmaqmyJLzUQk=;
 b=Nm9OIdmcXLekdWsXDKPjOE6fUJM5CaKkTAxf4/0bD4PMuNCioSdKQnSe
 vafJ2xYd9JG8KKnZgvRFlLNf09ZBBn28MhBpP2XTUSDCwDlUi1SQWZNTt
 PlbxN2c54VSuu1opkJNzQGPd2c0RgJKIxofSrXgevq+sPSzOEWL1R/1zb
 V0Fd/2af6gcZ/lTEjaAsz99Degy5Ln2+AXQwiZEfk8NfZ2gNCjrL+yLbi
 BXuhYV2iBpk7A4L5cpdVCbunHcu18D0B5gy9/TzECI0xtbGQFpKctODNs
 A4Khiah6ttgTa2U/j3/L7wfieCZ1qDr7l/8A30nRqhhWk8hgsWz54Ban9
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Nm9OIdmc
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/3] E825C timesync dual NAC
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
Cc: netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch series adds full support for timesync operations for E8225C
devices which are configured in so called 2xNAC mode (Network
Acceleration Complex). 2xNAC mode is the mode in which IO die
is housing two complexes and each of them has its own PHY connected
to it. The complex which controls time transmitter is referred as
primary complex.

The series solves known configuration issues in dual config mode:
- side-band queue (SBQ) addressing when configuring the ports on the PHY
  on secondary NAC
- access to timesync config from the second NAC as only one PF in
  primary NAC controls time transmitter clock

v1->v2:
- fixed ice_pf_src_tmr_owned function doc
- fixed type for lane_num field in ice_hw struct 

Karol Kolacinski (3):
  ice: remove SW side band access workaround for E825
  ice: refactor ice_sbq_msg_dev enum
  ice: enable timesync operation on 2xNAC E825 devices

 drivers/net/ethernet/intel/ice/ice.h         | 60 +++++++++++++-
 drivers/net/ethernet/intel/ice/ice_common.c  |  8 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c     | 49 +++++++++---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c  | 82 ++++++++++----------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h  |  5 --
 drivers/net/ethernet/intel/ice/ice_sbq_cmd.h | 11 +--
 drivers/net/ethernet/intel/ice/ice_type.h    |  1 +
 7 files changed, 149 insertions(+), 67 deletions(-)


base-commit: daa2036c311e81ee32f8cccc8257e3dfd4985f79
-- 
2.39.3

