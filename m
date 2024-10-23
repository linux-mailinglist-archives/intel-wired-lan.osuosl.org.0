Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4310A9ABBA6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Oct 2024 04:40:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 79854607D8;
	Wed, 23 Oct 2024 02:40:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w__265rejXf6; Wed, 23 Oct 2024 02:39:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CBB60607E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729651199;
	bh=Q/54MazoZUQRmPtRAMZ4CVYR0nMRwNjuGH1RKwpMEX0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=S39KYGsccDkdk5ADtVPczVnXABgWslEtM4uvRJb5m8Qg+4Udjr2DDw+SKVEcetMep
	 AA0DCsnG15foX97pwNUjw9GlHRVgjxSk5W09ZrdMmCKwNm9r7PfxIhnvmKr/sFxz78
	 VAydeY5NxUepTaGz8Y/ZWOindreH6BFGeTphh2YTdjSDKRuvHnIPOIB7hx7LzLDpLr
	 lhE5Aij2gACUJwmCbO66imBRGzl5nvHK3DyFustsgjkValvgo3zx8juj/0giQDa4z/
	 yjLuPS+3f4FvCRkofnXb/6+/4RSS5ZMR92A4FHHzLNTe6bPrFmztygwtam3ciqLdeR
	 J3dRciPEpJrdg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CBB60607E0;
	Wed, 23 Oct 2024 02:39:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id AFFC859BA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 02:39:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AC0B080F45
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 02:39:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id McrlLAg7H6Y0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Oct 2024 02:39:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=christopher.s.hall@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0EFFC80F41
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0EFFC80F41
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0EFFC80F41
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 02:39:54 +0000 (UTC)
X-CSE-ConnectionGUID: zKREzfJ0SxKwL9oQ1jqFKw==
X-CSE-MsgGUID: hnE5sJs4QYKTI0xkCic3sA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="32918040"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="32918040"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 19:39:54 -0700
X-CSE-ConnectionGUID: 178n4kDHTlecO+Y+6Bf3MQ==
X-CSE-MsgGUID: ijpos2Q9RJiVY2cKDXSdoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="80396825"
Received: from timelab-spr11.ch.intel.com ([143.182.136.151])
 by fmviesa010.fm.intel.com with ESMTP; 22 Oct 2024 19:39:53 -0700
From: Chris H <christopher.s.hall@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: david.zage@intel.com, vinicius.gomes@intel.com, netdev@vger.kernel.org,
 rodrigo.cadore@l-acoustics.com, vinschen@redhat.com,
 Christopher S M Hall <christopher.s.hall@intel.com>
Date: Wed, 23 Oct 2024 02:30:38 +0000
Message-Id: <20241023023040.111429-3-christopher.s.hall@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241023023040.111429-1-christopher.s.hall@intel.com>
References: <20241023023040.111429-1-christopher.s.hall@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729651195; x=1761187195;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=luSz0wR9ae3qc/NRPPLb5F51Oam8ok0QnTKVp56Q2/k=;
 b=CvnDydxQv5uR+FdoBPZELqsW994if5Oe/0qN853KQjkX/f5Mwm7X2wjN
 F3ksMwF2w7idGIlyLngqXo4+aqiq5j4tJa2kv2BdvausLk0hRZW/5A4TQ
 hlONJ+xO2R0xjPt9c8VmT94wJr9jkQXIw5m72HurHFZoVCj7IwDFhuVGn
 xEyKbhygX0ErIAGx+aJ/7OPm7SpLlB+YnX0CDj3oQwykDDNJhLswCx9v4
 E5tBni3M2luOpqG5HPwnfaE/pKZpgTI7YYwallT+J0K6t4Bi4Sb1D6R7k
 QOb+13hd5kFQXA7pNAL9RFfshzMdaArJVDLj/cKNR/LKdj9Wmkrnr8ziW
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CvnDydxQ
Subject: [Intel-wired-lan] [PATCH iwl-net v2 2/4] igc: Lengthen the hardware
 retry time to prevent timeouts
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
index afd0512dc9f8..58bd9dbbdf43 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -574,7 +574,7 @@
 #define IGC_PTM_CTRL_SHRT_CYC(usec)	(((usec) & 0x3f) << 2)
 #define IGC_PTM_CTRL_PTM_TO(usec)	(((usec) & 0xff) << 8)
 
-#define IGC_PTM_SHORT_CYC_DEFAULT	1   /* Default short cycle interval */
+#define IGC_PTM_SHORT_CYC_DEFAULT	4   /* Default short cycle interval */
 #define IGC_PTM_CYC_TIME_DEFAULT	5   /* Default PTM cycle time */
 #define IGC_PTM_TIMEOUT_DEFAULT		255 /* Default timeout for PTM errors */
 
-- 
2.34.1

