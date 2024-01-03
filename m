Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84CE1823121
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jan 2024 17:18:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 13BBD419EE;
	Wed,  3 Jan 2024 16:18:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 13BBD419EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704298729;
	bh=n74uyh1hgyzrSR0ZX3C64lsP4BVPxioetmd+G+ygx/c=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iL8sf8HLFZJY5Ob0W+q6WjbxuowVCr+Z3q7iJ6dpnguXK33FPYKgVB7OzNu5kikEg
	 wkA13IshNqyLvj/QJAueB9Ssa7Ibm0Ceh2gBHTtQiOeKSX2XqWEfgM8KrbfuLOutsa
	 nSUKcBWr7EaLHmqCDdOzJOXm6sngKK9Cj2th5WRc5pDjc1KWSAK3GzpwM/CJqAvk9V
	 3X2xAEpgyFgcJsMz2sQs2i0y5Eyn9a+LsqFQ1Odxyqk6Bo49xIMcWCc6j4Vsg36T1A
	 qeDBxXldXC0ykhcYbz9ReVzrlJlYfnjbE5zLlTYxQXWVeWCOnfAa2I1GqnX0kY+h7D
	 rzAwSHH+IWc6Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DRRwsgtyssrg; Wed,  3 Jan 2024 16:18:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D36CC419B2;
	Wed,  3 Jan 2024 16:18:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D36CC419B2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5EFBE1BF2AF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 11:57:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 43393417BD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 11:57:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 43393417BD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n07IUCzwKtIQ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jan 2024 11:57:14 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A0FBB417B4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 11:57:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A0FBB417B4
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="428169624"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="428169624"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 03:57:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="1111348139"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="1111348139"
Received: from inlubt0316.iind.intel.com ([10.191.20.213])
 by fmsmga005.fm.intel.com with ESMTP; 03 Jan 2024 03:57:07 -0800
From: lakshmi.sowjanya.d@intel.com
To: tglx@linutronix.de, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
Date: Wed,  3 Jan 2024 17:26:01 +0530
Message-Id: <20240103115602.19044-11-lakshmi.sowjanya.d@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240103115602.19044-1-lakshmi.sowjanya.d@intel.com>
References: <20240103115602.19044-1-lakshmi.sowjanya.d@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 03 Jan 2024 16:17:34 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704283034; x=1735819034;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M7wCBVGLoY9FqwR8B4e75uBEBjNx5OX2ShepOLnPD5U=;
 b=Pz75pFelc2mRnYThS2GGs684lGasXz3Uf19CZvKZPkD3NL4eg9ZCc2bo
 q2MyVzqvlmADUmefP1cO4p26F30WnEcsLId/jngSXb+75W4JqqHRfxykw
 eZpUTSs4+j8Ye/qXPVe1OwRm0wCwRdIf8fe1Rm4rFnSkCpp2E571FRPge
 GevduDB40XsqYV4V3MUsbNIu1+txGgaKb/FAeDunf6B1KcWnDiECfJ5uS
 vQ+48et6KrwdLeT5vyT5R3f63/aGdmpsYjZkLhHDcNLWjr2Pq2nLhYT1L
 fp9e9KQrsvYf4qSveMh46x1b8ZzFxIDp3e6a03NRTLGQC8JXrZliynspk
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Pz75pFel
Subject: [Intel-wired-lan] [RFC PATCH v3 10/11] Documentation: driver-api:
 pps: Add Intel Timed I/O PPS generator
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
Cc: christopher.s.hall@intel.com, lakshmi.sowjanya.d@intel.com,
 linux-doc@vger.kernel.org, netdev@vger.kernel.org, pandith.n@intel.com,
 x86@kernel.org, eddie.dong@intel.com, jesse.brandeburg@intel.com,
 linux-sound@vger.kernel.org, alexandre.torgue@foss.st.com,
 mallikarjunappa.sangannavar@intel.com, joabreu@synopsys.com,
 intel-wired-lan@lists.osuosl.org, mcoquelin.stm32@gmail.com,
 thejesh.reddy.t.r@intel.com, perex@perex.cz, anthony.l.nguyen@intel.com,
 andriy.shevchenko@linux.intel.com, davem@davemloft.net
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
index 78dded03e5d8..cb1e4d814d37 100644
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
+CPUs, that can generate PPS signal.
+
+Timed I/O and system time are both driven by same hardware clock, The signal
+generated with a precision of ~20 nanoseconds. The generated PPS signal
+is used to synchronize an external device with system clock. For example,
+Share your clock with a device that receives PPS signal, generated by
+Timed I/O device. There are dedicated Timed I/O pins to deliver PPS signal
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

