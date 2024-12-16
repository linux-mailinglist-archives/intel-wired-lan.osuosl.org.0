Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D74F49F2C67
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Dec 2024 09:56:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 44E6360A8D;
	Mon, 16 Dec 2024 08:56:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cgC1qyWVDsfR; Mon, 16 Dec 2024 08:56:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 81CA860A51
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734339391;
	bh=I1dA9YiM4qOZVEXo2BXnLQ2f2wGESTWv7skgNun6BMA=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Wea/gyWRn5sVclwl1oqz0NcuKAS9AvStHRArAbKz9qkOg9vmTIcc62uwRsgZd8JH9
	 mOJln3PVD9xPpnWY92tXqLXL4ajav/mkLjwVKOwRA6GThhdkbA7Vu+dBJ9Et7jrScW
	 zGC4vOdsy7t33aLSZQFA+YyPG9RwBFfHkuofl3065YlgWFzc+Uvfbd6ojjQwuXMDxx
	 OZ6fHX8uYUWI3nGYhMRdCbyr6nTHHPjgj28qKdapgfxltO+IlTX4zWwTGgqu/R1dX7
	 oLa+zOfjagjU8fmj9kjcrGrOt1G32epjcq3F+0hi2gUeC400UdkcNrXPW1wwFmKzTK
	 mNbo+hVkZc1wQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 81CA860A51;
	Mon, 16 Dec 2024 08:56:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id B5CAAC5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 08:56:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 965E48149C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 08:56:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Dqpv_PcBJqYy for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Dec 2024 08:56:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=anton.nadezhdin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EB7F78149B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EB7F78149B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EB7F78149B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 08:56:27 +0000 (UTC)
X-CSE-ConnectionGUID: +yV7wrJgSIa69XdPIRlthQ==
X-CSE-MsgGUID: w+iOoq7jT7md6YHodyDHcw==
X-IronPort-AV: E=McAfee;i="6700,10204,11287"; a="34942387"
X-IronPort-AV: E=Sophos;i="6.12,238,1728975600"; d="scan'208";a="34942387"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 00:56:27 -0800
X-CSE-ConnectionGUID: /YVEv/+YT7KRxsj0lZ3guQ==
X-CSE-MsgGUID: 8lgb95+dSRC4R5tHO7ejeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="102117140"
Received: from host61.igk.intel.com ([10.123.220.61])
 by orviesa005.jf.intel.com with ESMTP; 16 Dec 2024 00:56:24 -0800
From: Anton Nadezhdin <anton.nadezhdin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, richardcochran@gmail.com,
 Anton Nadezhdin <anton.nadezhdin@intel.com>
Date: Mon, 16 Dec 2024 09:53:27 -0500
Message-ID: <20241216145453.333745-1-anton.nadezhdin@intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734339389; x=1765875389;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=r2hR/ZHSKVaxwEoJHYXj1YqdVNCMbvBl9B8S+1faMYs=;
 b=dEPoa+KgyYMd1OjLHsFozFj4sox7qcFNiErQq8Qb0ZWqAd21ww3fqYPR
 6Dgg2PXRTsRVo7PV50GKhtud5I/NE679zEsMTOroVegwefnnkThKfz3sA
 At3vdickQif0Vj0ODzYDFkpJsd2m9ghp22NCueu+qHZj6kkJOHt0ExQwv
 ShwCA5Og5+dtZy3Ix+8G1RHe+iXNxS5mMLnzJIhn1Akx+eweSbInqUKan
 m5Shv2fvqaJUO2bPvtaPS7XckpXx0BRQDhl8ExfaGL1egT93O8EJMdaJ4
 vpmAiOd8XgHhzmUk2sZvDBFY8UEAceCPQGp83tdYW3fiOZPIlq78vCutm
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dEPoa+Kg
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
---
v1->v2: Change type for err variable

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


base-commit: 46773e40fb01b6d76ab63618d1ebf6a7a79682c6
-- 
2.42.0

