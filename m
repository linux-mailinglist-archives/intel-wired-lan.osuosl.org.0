Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5072F9BF5D7
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Nov 2024 19:59:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 100E460731;
	Wed,  6 Nov 2024 18:59:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qfl8QBrieiUS; Wed,  6 Nov 2024 18:59:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5216360832
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730919540;
	bh=vPgbhP+sTFecGHHfMVYh//GsyBYZYQ3SWViXniL9AtQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JSoaWDe9kTr1ZB7qZhYC8Y4cPWx9mtYZE+CNsXRJMpVyfVy7CXeJhU8haf4yGaRcU
	 Ko8WzW9tKYWCp/2OVXUYGYYonPX8lAu+dPNipEuc+bQ/xG7t7KraCYRILQAfMWIps4
	 bikY3ZcJzpkcGCIODz/Uo3a046f3VnogdfDQLAbK7eq0OeJ0XTOupIm9vISM2Hx7zq
	 kfAwxPx6GnvCbcWoZeHhj5FwUqP52mHnF+h1TQlohHMoySRipJdIIiG0f6OQRzoG1/
	 KlIluyLL8efRveJeyrN6voetE8N7fGvqtLIXT8An8vscbwY4ygMa0AYms5PCQhgO16
	 1uND2CXD7ttlw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5216360832;
	Wed,  6 Nov 2024 18:59:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 371B527D1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 18:58:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EC5AC6072E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 18:58:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WrYuk7qwu2Dn for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Nov 2024 18:58:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=christopher.s.hall@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 446DC60731
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 446DC60731
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 446DC60731
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2024 18:58:52 +0000 (UTC)
X-CSE-ConnectionGUID: QqAoXlVJQpiCVfm0gogOEA==
X-CSE-MsgGUID: IVsyCGcsSxG9HlyEd1UIZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="30959482"
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="30959482"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 10:58:52 -0800
X-CSE-ConnectionGUID: NcGtzS0ZRtqKpVJPyjXRZw==
X-CSE-MsgGUID: xwbyK6rVTWWRv2j2vxN6FQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="89813792"
Received: from timelab-spr11.ch.intel.com ([143.182.136.151])
 by orviesa004.jf.intel.com with ESMTP; 06 Nov 2024 10:56:40 -0800
From: Christopher S M Hall <christopher.s.hall@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: david.zage@intel.com, vinicius.gomes@intel.com, netdev@vger.kernel.org,
 rodrigo.cadore@l-acoustics.com, vinschen@redhat.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Mor Bar-Gabay <morx.bar.gabay@intel.com>,
 Avigail Dahan <avigailx.dahan@intel.com>
Date: Wed,  6 Nov 2024 18:47:18 +0000
Message-Id: <20241106184722.17230-3-christopher.s.hall@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241106184722.17230-1-christopher.s.hall@intel.com>
References: <20241106184722.17230-1-christopher.s.hall@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730919532; x=1762455532;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KM5P8kj4DwnOVzFxShC+OcUuG3ZeqIvS6h/aX2Ptt6A=;
 b=JweDPl6ZYQYJk1PgWow6uqFShF9BwozauQvgDU8Xs2+ktJbj9mKtcwui
 XH5DG1EEENpvCCbU0MXslM/QVfwYb90ax+qFw4sQuud09qmM51d1ssml0
 9FAtPiq0d94V+2LbcWP42/pd13xgf0M1275vYYM+BYngnEMNDZi2tzAl4
 LGBZOO0A+d1ZqXSZWgYJT5q6N+rYxwk5HrlYfZ4KB2vydYdsS+/Mu4WPD
 sxVAdFTRqYZSQdC+P1Qd5S6jtSFqHGSZvLBxftQ6P/8GW8BRYDRwK8/rt
 tHdVb4Egm/TyZTXSCT2emDydEF28Qre0ZlTA5LRlAG/6eNL2Mc75i9SR+
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JweDPl6Z
Subject: [Intel-wired-lan] [PATCH iwl-net v3 2/6] igc: Lengthen the hardware
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
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
Signed-off-by: Christopher S M Hall <christopher.s.hall@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 2ff292f5f63b..84521a4c35b4 100644
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

