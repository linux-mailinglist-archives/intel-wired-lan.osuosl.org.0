Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D225C87FE67
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Mar 2024 14:14:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 87ED040709;
	Tue, 19 Mar 2024 13:14:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YnMfZwtaHTVd; Tue, 19 Mar 2024 13:14:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AB8AE40707
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710854057;
	bh=cv1lpDGOlJtPMI8kmqsIKcuLSVOH//YyBhXLAva2+rk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=q4XnVgmZ6ZSz+O8/VgSqXerZTpmueTZVMv8YU8gj9xT3INPAeltk1Oid0KYTN6S5L
	 CeZ1pSuQX5uCgxfAZIXl4J5WdF8mCv+j3WgpBDPZ5ItXCWpYnBBH4cY7JS4lzYCGJf
	 52xL50yv4wzssBuldzl/tQNL4fO3EGdyeITxOtCY7TlJEdrsKaueWlAK1GnIoyHk6q
	 31dBDOqKKQZNfgc3kbVcyzVZWZ1t7R0JovhB5/RCLaolIb5dLW15NidzNXtYgunEv+
	 KzrVE7Bp1BuHvFvOR+QYWpOCPgxzuG2OT3iKsAIh/+fvla4dDUL9yvSApNkE4eOV47
	 L0ROyircd+iHw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AB8AE40707;
	Tue, 19 Mar 2024 13:14:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A51181BF95F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 13:14:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9F7C6813E7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 13:14:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N37CgcyC9sZm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Mar 2024 13:14:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=lakshmi.sowjanya.d@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EF4B681363
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EF4B681363
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EF4B681363
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 13:14:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11017"; a="5843100"
X-IronPort-AV: E=Sophos;i="6.07,137,1708416000"; 
   d="scan'208";a="5843100"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 06:07:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,137,1708416000"; d="scan'208";a="44883261"
Received: from inlubt0316.iind.intel.com ([10.191.20.213])
 by fmviesa001.fm.intel.com with ESMTP; 19 Mar 2024 06:06:59 -0700
From: lakshmi.sowjanya.d@intel.com
To: tglx@linutronix.de, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
Date: Tue, 19 Mar 2024 18:35:46 +0530
Message-Id: <20240319130547.4195-11-lakshmi.sowjanya.d@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240319130547.4195-1-lakshmi.sowjanya.d@intel.com>
References: <20240319130547.4195-1-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710854054; x=1742390054;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6PS4+2Ywv1DMIM5u9+tNfbsYVKa0PISW1H4pAS3IZH0=;
 b=Adcix4rwovR2YtDSGXYjjyVY6KYuJh0cROEzN3PuJwKrcKCVaNBfutJ8
 eQ+PB09SB2wlFtyvp7dNSvUWRAhr7B/Qw0Qf/TDlSHBLtCF5r3yG0b+yI
 wml+95skWNs+mVFua6ksHsDEvBoT2o3iWf6mdLSq6Al0I0TtlJTyxSUVH
 om2dfRRLgXRKVog6QVPYWOV1Kff4MUmx3MxjRrsCBRCkDc7901xxRJq7G
 9ZSZyaPz925CeW1+Lt4OVB92HzSKkKz69PvyVg2QfldnMGCebVYehjwrl
 cstSlGatm+jOjl6DzaKQ1MmBsfntkqIK9mcGpuPovGs67fK1x7FSIqTP7
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Adcix4rw
Subject: [Intel-wired-lan] [PATCH v5 10/11] Documentation: driver-api: pps:
 Add Intel Timed I/O PPS generator
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
Cc: linux-doc@vger.kernel.org, mallikarjunappa.sangannavar@intel.com,
 alexandre.torgue@foss.st.com, perex@perex.cz, basavaraj.goudar@intel.com,
 thejesh.reddy.t.r@intel.com, christopher.s.hall@intel.com, x86@kernel.org,
 joabreu@synopsys.com, peter.hilber@opensynergy.com,
 intel-wired-lan@lists.osuosl.org, subramanian.mohan@intel.com,
 linux-sound@vger.kernel.org, lakshmi.sowjanya.d@intel.com,
 andriy.shevchenko@linux.intel.com, netdev@vger.kernel.org, pandith.n@intel.com,
 eddie.dong@intel.com, mcoquelin.stm32@gmail.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>

Add Intel Timed I/O PPS usage instructions.

Co-developed-by: Pandith N <pandith.n@intel.com>
Signed-off-by: Pandith N <pandith.n@intel.com>
Signed-off-by: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 Documentation/driver-api/pps.rst | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/Documentation/driver-api/pps.rst b/Documentation/driver-api/pps.rst
index 78dded03e5d8..52a6d5faf885 100644
--- a/Documentation/driver-api/pps.rst
+++ b/Documentation/driver-api/pps.rst
@@ -246,3 +246,25 @@ delay between assert and clear edge as small as possible to reduce system
 latencies. But if it is too small slave won't be able to capture clear edge
 transition. The default of 30us should be good enough in most situations.
 The delay can be selected using 'delay' pps_gen_parport module parameter.
+
+
+Intel Timed I/O PPS signal generator
+------------------------------------
+
+Intel Timed I/O is a high precision device, present on 2019 and newer Intel
+CPUs, that can generate PPS signals.
+
+Timed I/O and system time are both driven by same hardware clock. The signal
+is generated with a precision of ~20 nanoseconds. The generated PPS signal
+is used to synchronize an external device with system clock. For example,
+share your clock with a device that receives PPS signal, generated by
+Timed I/O device. There are dedicated Timed I/O pins to deliver the PPS signal
+to an external device.
+
+Usage of Intel Timed I/O as PPS generator:
+
+Start generating PPS signal::
+        $echo 1 > /sys/devices/platform/INTCxxxx\:00/enable
+
+Stop generating PPS signal::
+        $echo 0 > /sys/devices/platform/INTCxxxx\:00/enable
-- 
2.35.3

