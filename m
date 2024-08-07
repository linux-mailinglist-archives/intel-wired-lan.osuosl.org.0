Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0489E949D0C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Aug 2024 02:37:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD43640528;
	Wed,  7 Aug 2024 00:36:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NdkHTGKLsiev; Wed,  7 Aug 2024 00:36:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B482240538
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722991016;
	bh=TGPTm7K1uqC1v5r15/AFlaxuMm3+m96kxjdBLIRKjt8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=H2XxwU4zb1cx9l8z7TD/q3I1noNRUAJ44svvJo0RU4T/yzg3ZVRlwqpkFYQA8gbuJ
	 BOYqj9x+egWJT+wrqHVhZYJHNAqGktqjB91jK8cpq/xYO8UBPAoUc35kk+CSoKeGAK
	 Pp2YyCyMMxM/g/shkV3WwxPWg+uwxU0ADZbiXozqrAlpKizxTFMdfWDux5TIymtSbU
	 XdZ61Mx61/HeeKZMVk5A3BvFPEEN0AT/v5j6Mp+nx5bi9kMcL70GKfCdf3YldOMhHt
	 z6YEM8k2MTxVLSmOTQ6UdVNj4jSy+198Yc4g5Ur0QR1e5qAFXh5QAlahcTcyv2n9dE
	 oPj8g6XRb5U+w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B482240538;
	Wed,  7 Aug 2024 00:36:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8D4271BF969
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 00:36:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7B064606C2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 00:36:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PdaKiAIGiQEq for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Aug 2024 00:36:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=christopher.s.hall@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B4DCB60668
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B4DCB60668
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B4DCB60668
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 00:36:53 +0000 (UTC)
X-CSE-ConnectionGUID: 9UC7D5nBT02K7LYGD/HpfA==
X-CSE-MsgGUID: PJya+OWISQ2Ni8BAGh3Vhw==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="31669751"
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="31669751"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 17:36:54 -0700
X-CSE-ConnectionGUID: ufmNvA3cQD+TL9MvJz8adw==
X-CSE-MsgGUID: 2tU1vrmWRxydCuKp3Ln+4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="61497010"
Received: from timelab-spr09.ch.intel.com (HELO timelab-spr09.sc.intel.com)
 ([143.182.136.138])
 by orviesa003.jf.intel.com with ESMTP; 06 Aug 2024 17:36:52 -0700
From: christopher.s.hall@intel.com
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  6 Aug 2024 17:30:29 -0700
Message-Id: <20240807003032.10300-3-christopher.s.hall@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240807003032.10300-1-christopher.s.hall@intel.com>
References: <20240807003032.10300-1-christopher.s.hall@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722991014; x=1754527014;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8IGk7nHl0AUnnVWG/KooB+heOx9cbDf+RxJNRQCnw/Y=;
 b=oJGXCJVMRv9VypdWNHYjbTvNooauPPCMp185pAewnPkLLTQzDWc4CNir
 UxUTjq1BNRZN/e127EP7lwTiESrTtqWpRlXzPwpAF/XUDKoQsA52EH3hP
 H0VDDTwYlxnab8wrUQ2I6Z+QV4z4qPyOOSdRXvWqpxlVWp7GRUMb4Lfju
 EqhJmWT0myFBk78QQJj60BMUHQHhoQdGiaX8fVNZcoZHOaeg6c7vTJS4T
 gAJAnHux9vikYX77APBKQ9nHcg7i8W8m3sF89ZH1fwQabqkkBtOBtvCFV
 wCGzZRx9TtCdhx8Hlf2kTBQRlYg26Be25p0Lj+c70FJK3/e1d7eTP0XqB
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=oJGXCJVM
Subject: [Intel-wired-lan] [PATCH iwl-net v1 2/5] igc: Lengthen the hardware
 retry time to prevent timeouts
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
Cc: Christopher S M Hall <christopher.s.hall@intel.com>, david.zage@intel.com,
 vinschen@redhat.com, vinicius.gomes@intel.com, netdev@vger.kernel.org,
 rodrigo.cadore@l-acoustics.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Christopher S M Hall <christopher.s.hall@intel.com>

Lengthen the hardware retry timer to four microseconds.

The i225/i226 hardware retries if it receives an inappropriate response
from the upstream device. If the device retries too quickly, the root
port does not respond.

The issue can be reproduced with the following:

$ sudo phc2sys -R 1000 -O 0 -i tsn0 -m

Note: 1000 Hz (-R 1000) is unrealistically large, but provides a way to
quickly reproduce the issue.

PHC2SYS exits with:

"ioctl PTP_OFFSET_PRECISE: Connection timed out" when the PTM transaction
  fails

Fixes: 6b8aa753a9f9 ("igc: Decrease PTM short interval from 10 us to 1 us")
Signed-off-by: Christopher S M Hall <christopher.s.hall@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index ec191d26c650..253327c23903 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -564,7 +564,7 @@
 #define IGC_PTM_CTRL_SHRT_CYC(usec)	(((usec) & 0x3f) << 2)
 #define IGC_PTM_CTRL_PTM_TO(usec)	(((usec) & 0xff) << 8)
 
-#define IGC_PTM_SHORT_CYC_DEFAULT	1   /* Default short cycle interval */
+#define IGC_PTM_SHORT_CYC_DEFAULT	4   /* Default short cycle interval */
 #define IGC_PTM_CYC_TIME_DEFAULT	5   /* Default PTM cycle time */
 #define IGC_PTM_TIMEOUT_DEFAULT		255 /* Default timeout for PTM errors */
 
-- 
2.34.1

