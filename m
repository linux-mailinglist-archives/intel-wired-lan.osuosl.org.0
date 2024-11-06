Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 022BA9BF5CF
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Nov 2024 19:58:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6E9B4608EF;
	Wed,  6 Nov 2024 18:58:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MEDg6pOOEaMF; Wed,  6 Nov 2024 18:58:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF71560753
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730919533;
	bh=jN/PCCq0wU9LpJ7QpjzxSSU8sGVAw73+KTKyescbLYo=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=G8vGPhVG+zamBc6fLWj8XbZLARp+BWG3Et/RDEf22ia4RiRmqL4j7Oq6cwB0gzAP0
	 ABp12RAdBSUoH+X5RmpRqQSv7IzLYBh+Uu5MegbWpWaGnE4IQNN0N/HvWw0GqPbx/i
	 uMJG/5PzhsgRdiO+tY0Ry1GjkGP157whyKwSxYmLsrcUdsUuTDD1886QISk+na5+Ng
	 kxId0WAcIeLIlahUI4w8dPociJglyB7f3gXmdvMPbI/LzD/uK4+XbI4rM3HlNipn4Z
	 mwr9wUrUptjFpm0A+LqprsPTE75g1hwHM8lw+N9E44T0WePFIX8ZylbIO+UjnHsw4P
	 J/9VWTm4h6L5g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF71560753;
	Wed,  6 Nov 2024 18:58:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 13E3427D1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 18:58:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E59F060731
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 18:58:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qPtpWJ3Wk_aQ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Nov 2024 18:58:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=christopher.s.hall@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3132D6072E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3132D6072E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3132D6072E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 18:58:50 +0000 (UTC)
X-CSE-ConnectionGUID: MJAIRcrJRt2xKs5a0Ibs6A==
X-CSE-MsgGUID: FOOHTkWkTQqniONZEluB1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="30959458"
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="30959458"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 10:58:50 -0800
X-CSE-ConnectionGUID: Ph0lnBW0T2eTSVFoAPMMTQ==
X-CSE-MsgGUID: HVxW13hSRaykkM1ysO4ItA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="89813788"
Received: from timelab-spr11.ch.intel.com ([143.182.136.151])
 by orviesa004.jf.intel.com with ESMTP; 06 Nov 2024 10:56:39 -0800
From: Christopher S M Hall <christopher.s.hall@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: david.zage@intel.com, vinicius.gomes@intel.com, netdev@vger.kernel.org,
 rodrigo.cadore@l-acoustics.com, vinschen@redhat.com
Date: Wed,  6 Nov 2024 18:47:16 +0000
Message-Id: <20241106184722.17230-1-christopher.s.hall@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730919531; x=1762455531;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SDI/0rzwiJm+GJEizqtwZHkTsAwZppo4C3xkG2bUSXM=;
 b=iau+yy8UbafMNtOG/q2zowJeV55gKRNM5O0svFBJrgHk/DjRBJkwGHtZ
 UQWfalT7ydduDNfqxlrTdxdczVVKIk83C8Xk3+u6J+xwwThRIjMhMsXw1
 oTk6bxXYWFfG74F1IWQB0bu3OwKrjoDXXs1Zj0Y03Dnjs5lShsDGiN6hq
 H5F8iYRO9LQ2Q+wimt5LOSrqbwTts3t6szKg2Zsl4Owb09FiMIyQlxiT8
 h67khtFyBeGf1KZ3kamh2y2rDsvICxl2IN+G2rPRUCzSTbiTV+haVHC6h
 h4usHNqWxXk3OXyIFV3SaNLcL089yOGyXA4tKNd8dt9Um1D1STRxDT1eM
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iau+yy8U
Subject: [Intel-wired-lan] [PATCH iwl-net v3 0/6] igc: Fix PTM timeout
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

There have been sporadic reports of PTM timeouts using i225/i226 devices

These timeouts have been root caused to:

1) Manipulating the PTM status register while PTM is enabled and triggered
2) The hardware retrying too quickly when an inappropriate response is
   received from the upstream device

The issue can be reproduced with the following:

$ sudo phc2sys -R 1000 -O 0 -i tsn0 -m

Note: 1000 Hz (-R 1000) is unrealistically large, but provides a way to
quickly reproduce the issue.

PHC2SYS exits with:

"ioctl PTP_OFFSET_PRECISE: Connection timed out" when the PTM transaction
  fails

Additional problem description tested by:
Corinna Vinschen <vinschen@redhat.com>

  This patch also fixes a hang in igc_probe() when loading the igc
  driver in the kdump kernel on systems supporting PTM.

  The igc driver running in the base kernel enables PTM trigger in
  igc_probe().  Therefore the driver is always in PTM trigger mode,
  except in brief periods when manually triggering a PTM cycle.

  When a crash occurs, the NIC is reset while PTM trigger is enabled.
  Due to a hardware problem, the NIC is subsequently in a bad busmaster
  state and doesn't handle register reads/writes.  When running
  igc_probe() in the kdump kernel, the first register access to a NIC
  register hangs driver probing and ultimately breaks kdump.

  With this patch, igc has PTM trigger disabled most of the time,
  and the trigger is only enabled for very brief (10 - 100 us) periods
  when manually triggering a PTM cycle.  Chances that a crash occurs
  during a PTM trigger are not zero, but extremly reduced.


Changelog:

v1 -> v2: -Removed patch modifying PTM retry loop count
      	  -Moved PTM mutex initialization from igc_reset() to igc_ptp_init()
	   called once in igc_probe()
v2 -> v3: -Added mutex_destroy() to clean up PTM lock
	  -Added missing checks for PTP enabled flag called from igc_main.c
	  -Cleanup PTP module if probe fails
	  -Wrap all access to PTM registers with PTM lock/unlock

Christopher S M Hall (6):
  igc: Ensure the PTM cycle is reliably triggered
  igc: Lengthen the hardware retry time to prevent timeouts
  igc: Move ktime snapshot into PTM retry loop
  igc: Handle the IGC_PTP_ENABLED flag correctly
  igc: Cleanup PTP module if probe fails
  igc: Add lock preventing multiple simultaneous PTM transactions

 drivers/net/ethernet/intel/igc/igc.h         |   1 +
 drivers/net/ethernet/intel/igc/igc_defines.h |   3 +-
 drivers/net/ethernet/intel/igc/igc_main.c    |   1 +
 drivers/net/ethernet/intel/igc/igc_ptp.c     | 113 ++++++++++++-------
 4 files changed, 78 insertions(+), 40 deletions(-)

-- 
2.34.1

