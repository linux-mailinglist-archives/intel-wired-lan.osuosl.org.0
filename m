Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B5C84C4B6
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Feb 2024 07:10:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 562376137C;
	Wed,  7 Feb 2024 06:10:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NAuet1exgNro; Wed,  7 Feb 2024 06:10:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BB9C360FF2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707286220;
	bh=r33J9aMWrdxvj7yikEyIW3ieQ3ddYEOcqyiZA1P6kTw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VvVt54NDLEk/KOnrAfIHm6vno15vL1qkuh6+/G8dzeEQr90x2ml56k9MajGaM0+/6
	 mV32w7FbYAGQsL1HH1S0Mz2+XR6A5o0DcXj1qf5K7vqOKIPIvcZxmRHYU+f5xeo/aN
	 wfXr3KiB68xZPa4cu6cgV+58FZEUcABB7KV/YHWoBnNIuTWlR6F3UgzNkRHrr2Xj2x
	 bJGWeR3g7JfgBrQvnLypiwmz+J2Q4Y0vU2EsO+WsoAVySgTBLTSuFQjPXLZGBFCQuT
	 OnFWIQZLzjxe2wJ25NsisyejvWinWk8/MeEDfPlOBDjJB/NgZymPFQN+bOoe4nUSMm
	 BfjQ0oLWiZDGA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BB9C360FF2;
	Wed,  7 Feb 2024 06:10:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 549C11BF95D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 06:10:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 401344031F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 06:10:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MPqd4r3e6Kbe for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Feb 2024 06:10:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.55.52.88;
 helo=mgamail.intel.com; envelope-from=lakshmi.sowjanya.d@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5B76F402E8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5B76F402E8
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5B76F402E8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Feb 2024 06:10:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="436054122"
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; d="scan'208";a="436054122"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 22:10:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; 
   d="scan'208";a="5849952"
Received: from inlubt0316.iind.intel.com ([10.191.20.213])
 by fmviesa004.fm.intel.com with ESMTP; 06 Feb 2024 22:10:10 -0800
From: lakshmi.sowjanya.d@intel.com
To: tglx@linutronix.de, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
Date: Wed,  7 Feb 2024 11:38:54 +0530
Message-Id: <20240207060854.6524-12-lakshmi.sowjanya.d@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240207060854.6524-1-lakshmi.sowjanya.d@intel.com>
References: <20240207060854.6524-1-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707286217; x=1738822217;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=h5RpRwAivJEkMgOQGPSE31O4QbdHWmr5WM+YPfbxP60=;
 b=R/QGJuhJeH6vyZzDlQ586EVPCWAifHvtjB3ViCDvQdJvr+nE3UZGUEbg
 /wXJhUxDRc7esyM9g+VUimKnfkL7SCywKNshUe5/1NElsmWQQmWri3nkp
 ItR+N7NyRrCWz4rxR+9QZgWgJjEG/I/dJeX51OLSUk5ihR/SUI3M7MNVh
 5A/ex+jxK3XMKOyFs/0G2uGb/zJkn2MoZloonIkXAyjTR78zz0xrtoaYz
 NK7ABAdpHNJnK/6Fyv/ElElJ2o1gUr3DEi1nUtEokBvhmUaU5YJUhqgFy
 Hg+3RQtmJv+550p8TnFkrkKZ71hEI6CfvGjuy7WoD+J5lKVYYZ5MWNbIk
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=R/QGJuhJ
Subject: [Intel-wired-lan] [PATCH v4 11/11] ABI: pps: Add ABI documentation
 for Intel TIO
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
Cc: christopher.s.hall@intel.com, subramanian.mohan@intel.com,
 lakshmi.sowjanya.d@intel.com, linux-doc@vger.kernel.org,
 netdev@vger.kernel.org, pandith.n@intel.com, x86@kernel.org,
 eddie.dong@intel.com, jesse.brandeburg@intel.com, linux-sound@vger.kernel.org,
 alexandre.torgue@foss.st.com, peter.hilber@opensynergy.com,
 mallikarjunappa.sangannavar@intel.com, joabreu@synopsys.com,
 intel-wired-lan@lists.osuosl.org, mcoquelin.stm32@gmail.com,
 thejesh.reddy.t.r@intel.com, perex@perex.cz, anthony.l.nguyen@intel.com,
 andriy.shevchenko@linux.intel.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>

Document sysfs interface for Intel Timed I/O PPS driver.

Signed-off-by: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
---
 Documentation/ABI/testing/sysfs-platform-pps-tio | 7 +++++++
 1 file changed, 7 insertions(+)
 create mode 100644 Documentation/ABI/testing/sysfs-platform-pps-tio

diff --git a/Documentation/ABI/testing/sysfs-platform-pps-tio b/Documentation/ABI/testing/sysfs-platform-pps-tio
new file mode 100644
index 000000000000..b9b8c97a7840
--- /dev/null
+++ b/Documentation/ABI/testing/sysfs-platform-pps-tio
@@ -0,0 +1,7 @@
+What:		/sys/devices/platform/INTCxxxx/enable
+Date:		March 2024
+KernelVersion	6.9
+Contact:	Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
+Description:
+		(RW) Enable or disable PPS TIO generator output, read to
+		see the status of hardware (Enabled/Disabled).
-- 
2.35.3

