Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7151C961975
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Aug 2024 23:52:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9515240672;
	Tue, 27 Aug 2024 21:52:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RMQTrrY4Wjjq; Tue, 27 Aug 2024 21:52:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B1DB240692
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724795572;
	bh=cI8lwju7amlqfA7RTJCv82vuSiQR8D5TZiIZQExFmDE=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4VuCUctsitlZJ+zGQ7vXnVM3IZTBVwS0r3Yyop31b28OonwLBZ51bYKwsS1wq1v+Q
	 fL0LnGR9KZbZCKJAC9zV8WV9yRApF6r3a83XlEZsICvJKZfrvZufczTL3ZMuFT//f1
	 2gYhArAK29bRatw3sUyaqORPEhbb4lEzaN2bvoT1Oji89Jz1X2/oGdEZnGQBw80IlG
	 LppBH2hboCtNkENRVvn6FQQQ92deDc4VsR0FIABj4zIzL9SfJE34yx1U/SjDe4ujNN
	 PcAOVV1PhI9KJH74ariX9oAebWBMKIOVSpWtilO0RZD+r5HYQA9ktI9lh2ZPdBpi5L
	 Am/d2UBb6ghuA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B1DB240692;
	Tue, 27 Aug 2024 21:52:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 07CE01BF27E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 21:52:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1C37F80FC6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 21:52:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5m2TkT3x8Uxb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Aug 2024 21:52:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3173D810D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3173D810D8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3173D810D8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 21:52:49 +0000 (UTC)
X-CSE-ConnectionGUID: mktoXI4oQPiYf3QF8FMlWQ==
X-CSE-MsgGUID: S1NWIdVjRnmLeMNez7gvJw==
X-IronPort-AV: E=McAfee;i="6700,10204,11177"; a="27068818"
X-IronPort-AV: E=Sophos;i="6.10,181,1719903600"; d="scan'208";a="27068818"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 14:52:44 -0700
X-CSE-ConnectionGUID: pA21DZrsT9i21/oL6pLTCQ==
X-CSE-MsgGUID: poFYYZ1fR+Cm1AsDsW6WrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,181,1719903600"; d="scan'208";a="63189475"
Received: from jekeller-desk.jf.intel.com ([10.166.241.20])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 14:52:44 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Tue, 27 Aug 2024 14:52:04 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240827-e810-live-migration-jk-prep-ctx-functions-v1-1-0442e2e42d32@intel.com>
References: <20240827-e810-live-migration-jk-prep-ctx-functions-v1-0-0442e2e42d32@intel.com>
In-Reply-To: <20240827-e810-live-migration-jk-prep-ctx-functions-v1-0-0442e2e42d32@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 Vladimir Oltean <olteanv@gmail.com>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 "netdev netdev"@vger.kernel.org
X-Mailer: b4 0.14.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724795570; x=1756331570;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=6kQrbIE4kr5T8eFDQTblirQ915WMJmra1Rfj0RlaOK8=;
 b=DpAn1yGy+46GVs6VaYzXUTKtW6XzzPc5JHMJes71lkcxbvfgl4ERKNbh
 QvdjQU2Zi2EeqO2qPU3yqqDsdRrItoUlT6jBONEiTs6s02KQjIwiNf2KC
 fqPc29Gk0vgbTGcHJuZKq4HN3qwxy0erPFL6AnmcgelCrX40bJ9KUsqW+
 G2o9e4XukXrey2ZNYlaRGKEC6PU8QCJC2uWr+/i8KRylUyeFCmMaiqRFh
 F9pnqJvNGKTRkaTCS61IL6BlllvmNQ0f3FuqaP43TDY5ipe9GkfuBqEbI
 RKR3KDuQyMB2Q/RdzxRMdGC85F7txcb8hqdJDmMK14BYSuvlEixv+xeWL
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DpAn1yGy
Subject: [Intel-wired-lan] [PATCH iwl-next 01/13] lib: packing: refuse
 operating on bit indices which exceed size of buffer
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Vladimir Oltean <vladimir.oltean@nxp.com>

While reworking the implementation, it became apparent that this check
does not exist.

There is no functional issue yet, because at call sites, "startbit" and
"endbit" are always hardcoded to correct values, and never come from the
user.

Even with the upcoming support of arbitrary buffer lengths, the
"startbit >= 8 * pbuflen" check will remain correct. This is because
we intend to always interpret the packed buffer in a way that avoids
discontinuities in the available bit indices.

Fixes: 554aae35007e ("lib: Add support for generic packing operations")
Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
Tested-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 lib/packing.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/lib/packing.c b/lib/packing.c
index 3f656167c17e..439125286d2b 100644
--- a/lib/packing.c
+++ b/lib/packing.c
@@ -86,8 +86,10 @@ int packing(void *pbuf, u64 *uval, int startbit, int endbit, size_t pbuflen,
 	 */
 	int plogical_first_u8, plogical_last_u8, box;
 
-	/* startbit is expected to be larger than endbit */
-	if (startbit < endbit)
+	/* startbit is expected to be larger than endbit, and both are
+	 * expected to be within the logically addressable range of the buffer.
+	 */
+	if (unlikely(startbit < endbit || startbit >= 8 * pbuflen || endbit < 0))
 		/* Invalid function call */
 		return -EINVAL;
 

-- 
2.46.0.124.g2dc1a81c8933

