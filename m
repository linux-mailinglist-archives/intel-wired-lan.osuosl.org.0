Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F28618B02
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Nov 2022 23:02:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 19DBC61058;
	Thu,  3 Nov 2022 22:02:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 19DBC61058
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667512926;
	bh=0idTVSlaiYUoshvY4nJ7LLffH+U2l+HM5QHRYrF8byU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=wZtWOsYs6jNaexwituVZQXm2o2xqmooN+E+onD9dn5NE44NL2kZR/dlPe78PdUVS8
	 71RG4FJ4n8iB6zMBxFTK4LwitxhDPWPRsZ53MwNOfdUfPiKcv4byxScoFGuLsLKfw2
	 +DluNdpSjAwaeygT7ZJcLKvDUEglM7VgOqlHbGoVXDk6hYiGRDsDzUA1C2Yb6V/huD
	 Z8wf5rFgnEZxRzxx59N72IgU3dNU8cac5l4BuXFlhas2C3/Feifo+NA0UWzCsYkTI7
	 p86bAdU3pXhWM2RKd4SbiEGimzn+R9isRfiJKVvht8Gt2sCd7CR3TxMTmsfzhDbDXW
	 is+ruaCkL1fow==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r8kcaRceCNvl; Thu,  3 Nov 2022 22:02:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F396D61038;
	Thu,  3 Nov 2022 22:02:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F396D61038
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4A0231BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 22:02:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2CD8681F6D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 22:02:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2CD8681F6D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hUSu427qsZ3f for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Nov 2022 22:01:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E49F581EDC
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E49F581EDC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 22:01:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="297278188"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="297278188"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 15:01:57 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="777480234"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="777480234"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.7])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 15:01:57 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Thu,  3 Nov 2022 15:01:30 -0700
Message-Id: <20221103220145.1851114-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.0.83.gd420dda05763
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667512918; x=1699048918;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pvO2XDOnCIdLKwScboAkJYhr6oa/M3oj4csZgVXqRGg=;
 b=WO2iT37ISi398t2PzBV4mkl2zv1kFVhCQ2FyO+8qZRPLvSh2jw81cEhZ
 kf92+F+OxxrJqNTfUJYHSDak6onDhR1qrYgNRXYevgGSz9yBP0TIHkPG8
 JrRiAF1hMDCmFVAi1iqUBXQnu32yJjxOMWxRfsj4xF9/miHkQLZmiMmc4
 HsuhUWvGwbES4TUkrcXfa/YRLNs9hoKv3Rm7+yOXnXZAKKSP7s9wLfetV
 ITlSAKzCC2Y7Ky++79A2anznDeWClANdplLbeGqNbigWMU3xpbdz1U3RN
 +MdFgIOYHY9OroRJhZSEsFo8MhmTRkv6joff0v1XvPtPNCNI76sFxpvYX
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WO2iT37I
Subject: [Intel-wired-lan] [PATCH net-next v2 00/15] ice: improve Tx
 timestamp corner cases
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series of patches primarily consists of changes to fix some corner
cases that can cause Tx timestamp failures. The issues were discovered and
reported by Siddaraju DH and primarily affect E822 hardware, though this
series also includes some improvements that affect E810 hardware as well.

The primary issue is regarding the way that E822 determines when to generate
timestamp interrupts. If the driver reads timestamp indexes which do not
have a valid timestamp, the E822 interrupt tracking logic can get stuck.
This is due to the way that E822 hardware tracks timestamp index reads
internally. I was previously unaware of this behavior as it is significantly
different in E810 hardware.

Most of the fixes target refactors to ensure that the ice driver does not
read timestamp indexes which are not valid on E822 hardware. This is done by
using the Tx timestamp ready bitmap register from the PHY. This register
indicates what timestamp indexes have outstanding timestamps waiting to be
captured.

Care must be taken in all cases where we read the timestamp registers, and
thus all flows which might have read these registers are refactored. The
ice_ptp_tx_tstamp function is modified to consolidate as much of the logic
relating to these registers as possible. It now handles discarding stale
timestamps which are old or which occurred after a PHC time update. This
replaces previously standalone thread functions like the periodic work
function and the ice_ptp_flush_tx_tracker function.

In addition, some minor cleanups noticed while writing these refactors are
included.

The remaining patches refactor the E822 implementation to remove the
"bypass" mode for timestamps. The E822 hardware has the ability to provide a
more precise timestamp by making use of measurements of the precise way that
packets flow through the hardware pipeline. These measurements are known as
"Vernier" calibration. The "bypass" mode disables many of these measurements
in favor of a faster start up time for Tx and Rx timestamping. Instead, once
these measurements were captured, the driver tries to reconfigure the PHY to
enable the vernier calibrations.

Unfortunately this recalibration does not work. Testing indicates that the
PHY simply remains in bypass mode without the increased timestamp precision.
Remove the attempt at recalibration and always use vernier mode. This has
one disadvantage that Tx and Rx timestamps cannot begin until after at least
one packet of that type goes through the hardware pipeline. Because of this,
further refactor the driver to separate Tx and Rx vernier calibration.
Complete the Tx and Rx independently, enabling the appropriate type of
timestamp as soon as the relevant packet has traversed the hardware
pipeline. This was reported by Milena Olech.

Note that although these might be considered "bug fixes", the required
changes in order to appropriately resolve these issues is large. Thus it
does not feel suitable to send this series to net.

Changes since v1:
* Dropped ETH56G reference
* Fixed commit messages which used e8<NN> instead of E8<NN> when describing
  device families
* Dropped an unnecessary else statement
* Switched an ice_is_e810 check to a flag in ice_ptp_tx
* Fixed checkpatch errors
* Fixed kdoc comments

Jacob Keller (10):
  ice: fix misuse of "link err" with "link status"
  ice: always call ice_ptp_link_change and make it void
  ice: handle discarding old Tx requests in ice_ptp_tx_tstamp
  ice: check Tx timestamp memory register for ready timestamps
  ice: protect init and calibrating fields with spinlock
  ice: return true if Tx tracker is uninitialized
  ice: disable Tx timestamps while link is down
  ice: cleanup allocations in ice_ptp_alloc_tx_tracker
  ice: handle flushing stale Tx timestamps in ice_ptp_tx_tstamp
  ice: only check set bits in ice_ptp_flush_tx_tracker
  ice: reschedule ice_ptp_wait_for_offset_valid during reset

Karol Kolacinski (1):
  ice: Reset TS memory for all quads

Milena Olech (1):
  ice: Remove the E822 vernier "bypass" logic

Sergey Temerkhanov (1):
  ice: Use more generic names for ice_ptp_tx fields

Siddaraju DH (1):
  ice: make Tx and Rx vernier offset calibration independent

 drivers/net/ethernet/intel/ice/ice_main.c   |   9 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c    | 584 ++++++++++----------
 drivers/net/ethernet/intel/ice/ice_ptp.h    |  41 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 336 ++++++-----
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |   8 +-
 5 files changed, 500 insertions(+), 478 deletions(-)


base-commit: 1516071e3b9d1f2ba59eabaa4ef49e077c5348d2
-- 
2.38.0.83.gd420dda05763

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
