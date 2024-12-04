Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2A79E3F37
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Dec 2024 17:08:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E732560757;
	Wed,  4 Dec 2024 16:08:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HLQPD3Wz9lCu; Wed,  4 Dec 2024 16:08:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 22ACE607A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733328511;
	bh=0f7FZi0EjGD5i1zHnu3B0PnZYqgAbAlOH7ZY2Ur7SwU=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=x8Nvn4++87lp+tT/y6bzufbnM4LAWNMlvy62iswyyu9XzbLCAsSmdpeDVHIe85NdQ
	 PJnax1aOHxSHonqyZ4PAoRUf1r4fQ91YI/FLswTqAryenxHoqlMUFASAeMg77WEgcW
	 dHzBMCVQmNniUXXHrRHEvCo3fWQ1azEA/hCN9KdEflKjTnwRmZCYwLlFMz1I0Geb01
	 euFeWeyGA0relZVw1aLdsgK6/AUP6cfWWaMI1wjH8Ti67XDuS3okEjL0Eszp2rChzT
	 koFaI0bI+oimGzqeAQr413ipc48BZqsIt0kcRIhwuB9hU3QkZfzsu8Uo33YpZ8AtqD
	 oOm6oXTgFMm3A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 22ACE607A0;
	Wed,  4 Dec 2024 16:08:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id ED9C21DD1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 12:09:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DA2274004A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 12:09:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e1z-5-97_Tij for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Dec 2024 12:09:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=anton.nadezhdin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 88E0B400D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 88E0B400D2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 88E0B400D2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 12:09:10 +0000 (UTC)
X-CSE-ConnectionGUID: lCdHuIC/TeGZq4Xl1Uip8A==
X-CSE-MsgGUID: +csehdkhRe68Y203LSET2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="32918420"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="32918420"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 04:09:10 -0800
X-CSE-ConnectionGUID: RJyuXgfkQo2ZP1iYoQfWvg==
X-CSE-MsgGUID: nD4U9YSqRYCe2haYPR+6xQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="116994549"
Received: from host61.igk.intel.com ([10.123.220.61])
 by fmviesa002.fm.intel.com with ESMTP; 04 Dec 2024 04:09:08 -0800
From: Anton Nadezhdin <anton.nadezhdin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, richardcochran@gmail.com,
 Anton Nadezhdin <anton.nadezhdin@intel.com>
Date: Wed,  4 Dec 2024 13:03:43 -0500
Message-ID: <20241204180709.307607-1-anton.nadezhdin@intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 04 Dec 2024 16:08:28 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733314151; x=1764850151;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KQfHFQ/ZYKUlItWNvsZBVoWc70S6XVSP9gazTBBIOPc=;
 b=WycEyLsSj5yyO3WPxNHE5fr45vYwZX7iamIprnqyWDPVcvpGveHqPNk4
 hU2E/lY2ZrFteBR9+ccs0ilv+Baz4Q9L0FKYavari82gdWBq62nZGmR91
 uHIb81/TOpM6wcBr2jBY3WADoyxJIMRxLehQLM93qJxSP+KbMw6pLJIeg
 r39Up71C71u/YKY8PF3itz8sKNWOCngauQkd4HYjVoAJOcfCtDaw7wFhG
 GUDNZTk5Y/nWwhlwW8s8YqTEiXPEZ2p2osOfIX1lDpM31pKwAHjTvNgAa
 md3CRs3iH3Git0yoQ1Hqs6a7zlbx6NDsVMjL+QR/MgZiaixZtDWpWPXnw
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WycEyLsS
Subject: [Intel-wired-lan] [PATCH iwl-next 0/5] ice: implement low latency
 PHY timer updates
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

