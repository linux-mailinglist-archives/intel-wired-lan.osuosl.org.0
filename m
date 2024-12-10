Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A138E9EAA87
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Dec 2024 09:25:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EEF7D60808;
	Tue, 10 Dec 2024 08:25:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vw0KVvaxCov7; Tue, 10 Dec 2024 08:25:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 112D0607F0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733819106;
	bh=0f7FZi0EjGD5i1zHnu3B0PnZYqgAbAlOH7ZY2Ur7SwU=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=wR0jEUKK6RsVT0OmB04ZkuyqRxAkBWyrBGxCzaL3pJUByUNBkDDGWhs2epeMIB00r
	 3IkIBH26Reksrv7O1YW5EHazsakmbcp+9oOHfL6M2FHspdGs7k8orVjqdqKEJJ3nJJ
	 LuKcd2wR/zbP2n3oe9kIROh49lLUi1+WRY0imGXjNPH0BOYJ/hysqMGKIXuCywwGuT
	 /HIQLC0ErEuZvTftsImBDrGJyc+Up9PMBPXHl2deQXPuSkjxTQIqCsl4obFY/ujAL8
	 iDcXZGeLkBzs3Oa6OIL/j54gFSst2WkmcpsBetY+9i9DV0I/TNKOZRLsHN+QB6+fb0
	 bbXyRwRKAOJEg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 112D0607F0;
	Tue, 10 Dec 2024 08:25:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 695066F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 08:25:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6406E4058B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 08:25:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zcvY3aD4ysvY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Dec 2024 08:25:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=anton.nadezhdin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 56F6040136
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 56F6040136
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 56F6040136
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 08:25:02 +0000 (UTC)
X-CSE-ConnectionGUID: SlWrbCG6QHGHr+U/0c0OqA==
X-CSE-MsgGUID: x7+6kGoyQkS0pBVEVTQWIQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11281"; a="34398238"
X-IronPort-AV: E=Sophos;i="6.12,221,1728975600"; d="scan'208";a="34398238"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 00:25:02 -0800
X-CSE-ConnectionGUID: GikukbA1R5iupS4uLBVLPQ==
X-CSE-MsgGUID: IOBTeSDPTTq0EF2vbHtSdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,221,1728975600"; d="scan'208";a="99398098"
Received: from host61.igk.intel.com ([10.123.220.61])
 by fmviesa003.fm.intel.com with ESMTP; 10 Dec 2024 00:25:01 -0800
From: Anton Nadezhdin <anton.nadezhdin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, richardcochran@gmail.com,
 Anton Nadezhdin <anton.nadezhdin@intel.com>
Date: Tue, 10 Dec 2024 09:22:04 -0500
Message-ID: <20241210142333.320515-1-anton.nadezhdin@intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733819103; x=1765355103;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KQfHFQ/ZYKUlItWNvsZBVoWc70S6XVSP9gazTBBIOPc=;
 b=CBxkp7lOepiBS/4BoTkoegjD8/HkgTU8kiNV+4NbF+T6Q5mRdynLzFx/
 ed/MFEKJvo0LHstJgKrb8QR7Ju3g4MyWDT1+Uru/aj2mCJF7FqB4GBGlp
 Ked3gjJV5JeygNmOTlJnJcO4JMMvvi6DCD1xrzMtXRj+CYQFgZr+qHIu3
 FkxnPpp7e4IaSCxyTM337D0dY2mymifr/FFqsMH5JKpVg/09Nu/lJCkqr
 KCh+mTWLrdUQ//KwEyQdUddj2fFdlPkgd9vfb8mjrNQ/H1fzd56JgSdHK
 znbMcEkMhYyNstPMWPth42Rx6YzoFQ5uaFfaa2cW5kdYCLJL3PRbz6TV+
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CBxkp7lO
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/5] ice: implement low
 latency PHY timer updates
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

Programming the PHY registers in preparation for an increment value change
or a timer adjustment on E810 requires issuing Admin Queue commands for
each PHY register. It has been found that the firmware Admin Queue
processing occasionally has delays of tens or rarely up to hundreds of
milliseconds. This delay cascades to failures in the PTP applications which
depend on these updates being low latency.

Consider a standard PTP profile with a sync rate of 16 times per second.
This means there is ~62 milliseconds between sync messages. A complete
cycle of the PTP algorithm

1) Sync message (with Tx timestamp) from source
2) Follow-up message from source
3) Delay request (with Tx timestamp) from sink
4) Delay response (with Rx timestamp of request) from source
5) measure instantaneous clock offset
6) request time adjustment via CLOCK_ADJTIME systemcall

The Tx timestamps have a default maximum timeout of 10 milliseconds. If we
assume that the maximum possible time is used, this leaves us with ~42
milliseconds of processing time for a complete cycle.

The CLOCK_ADJTIME system call is synchronous and will block until the
driver completes its timer adjustment or frequency change.

If the writes to prepare the PHY timers get hit by a latency spike of 50
milliseconds, then the PTP application will be delayed past the point where
the next cycle should start. Packets from the next cycle may have already
arrived and are waiting on the socket.

In particular, LinuxPTP ptp4l may start complaining about missing an
announce message from the source, triggering a fault. In addition, the
clockcheck logic it uses may trigger. This clockcheck failure occurs
because the timestamp captured by hardware is compared against a reading of
CLOCK_MONOTONIC. It is assumed that the time when the Rx timestamp is
captured and the read from CLOCK_MONOTONIC are relatively close together.
This is not the case if there is a significant delay to processing the Rx
packet.

Newer firmware supports programming the PHY registers over a low latency
interface which bypasses the Admin Queue. Instead, software writes to the
REG_LL_PROXY_H and REG_LL_PROXY_L registers. Firmware reads these registers and
then programs the PHY timers.

Implement functions to use this interface when available to program the PHY
timers instead of using the Admin Queue. This avoids the Admin Queue
latency and ensures that adjustments happen within acceptable latency
bounds.

Jacob Keller (5):
  ice: use rd32_poll_timeout_atomic in ice_read_phy_tstamp_ll_e810
  ice: rename TS_LL_READ* macros to REG_LL_PROXY_H_*
  ice: add lock to protect low latency interface
  ice: check low latency PHY timer update firmware capability
  ice: implement low latency PHY timer updates

 drivers/net/ethernet/intel/ice/ice_common.c |   3 +
 drivers/net/ethernet/intel/ice/ice_osdep.h  |   3 +
 drivers/net/ethernet/intel/ice/ice_ptp.c    |  48 ++++--
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 155 +++++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  17 ++-
 drivers/net/ethernet/intel/ice/ice_type.h   |  12 ++
 6 files changed, 204 insertions(+), 34 deletions(-)


base-commit: 4376b34cf49c2f38e761beacd173d1dc15a255fd
-- 
2.42.0

