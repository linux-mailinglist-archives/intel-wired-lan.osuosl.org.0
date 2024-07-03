Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB4092617F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jul 2024 15:12:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EB73160EDA;
	Wed,  3 Jul 2024 13:12:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F0pbbAArPNzZ; Wed,  3 Jul 2024 13:12:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 410B360EDC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720012362;
	bh=TWjBqTTfDQv6xZ2pHCHSAM94F5ILQ2BT1cMsxXjwNC0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KWVR0n8+GrFmgOTTRX+ZLi4RUA+CUBpxFng3ECKfNcas4TaL5Ilw3AodYe6I7qLxU
	 OxRhKg3F+dip5lB2DXl4E5WMS9SVwh9wwl0vq7i0iY2wjoihFfYqlF7XW4jiNp+5ON
	 goqp8Sw6+GTKT8CspteICJ9bULI7o8kB85fgY+TMraYIvQTD1pjdk+fJNjZs7NqH7L
	 2BRl7jbeDgdy+WtchHBOWrqjeu31o+3J60sbQiaL8HhKMAp1GzuGBPbQkoEwJRj1Sn
	 /zlMxrPXx/W5KkBsc3xYk8LB3dpTyRH4Hax0bSEEOijId01HUoRYhzPjfT0jWYOS06
	 PRkwWqZOP78gw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 410B360EDC;
	Wed,  3 Jul 2024 13:12:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B64E41BF31B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 13:12:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A23AB40500
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 13:12:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fZB3edLsDmx0 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jul 2024 13:12:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 84E8B40359
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 84E8B40359
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 84E8B40359
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 13:12:39 +0000 (UTC)
X-CSE-ConnectionGUID: 6WRHDhmMTEmvGJ/R8zdI1w==
X-CSE-MsgGUID: sOYTGsjpRJ6qs0uj3p09yQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11121"; a="27857087"
X-IronPort-AV: E=Sophos;i="6.09,182,1716274800"; d="scan'208";a="27857087"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2024 06:12:27 -0700
X-CSE-ConnectionGUID: sQdj08F3R1OxeWP/o6BN0w==
X-CSE-MsgGUID: Dl8G0ZMOTm2121fFamINmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,182,1716274800"; d="scan'208";a="46321548"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa010.fm.intel.com with ESMTP; 03 Jul 2024 06:12:24 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 04DDB28778;
 Wed,  3 Jul 2024 14:12:22 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  3 Jul 2024 08:59:17 -0400
Message-Id: <20240703125922.5625-2-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240703125922.5625-1-mateusz.polchlopek@intel.com>
References: <20240703125922.5625-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720012360; x=1751548360;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yQu9fQgGjxdEvUh1kA9hqCIosvig4Bw04UCcKOaSYv0=;
 b=OTDmxDgZKLYxrJNaewv/Wmh0hPxRg7m88aFEichBVBCzG2ejSkayviZS
 4cGkxUSXALIm0MY8SOqPZLtlnTEc+q9OYcHKJAMeQTzDQWSakSHUVKJW8
 eJHfNcbJLcwUsjZicbyTMKAG1G+2BC5iz1/y4GjecHA52LBX3NVAuPSoh
 MbDc4IjGtT6zv00NiE6Q3scDTDuT84dS0wTqcC/Mk4T23lYkJAAAxVilQ
 Ao32ndU3ECWDCS4a22QHQGnmSc73KA6YOGmWKQIM7UsH2U20V5PzdchiM
 o2V4iHvCiNapPRBHI8V5cmol/Uc3rrosS/1SUPdj0l+8fmaXsxImoYG08
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OTDmxDgZ
Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/6] checkpatch: don't
 complain on _Generic() use
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
Cc: willemb@google.com, Wojciech Drewek <wojciech.drewek@intel.com>,
 dwaipayanray1@gmail.com, Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 linux-kernel@vger.kernel.org, joe@perches.com, edumazet@google.com,
 netdev@vger.kernel.org, apw@canonical.com, lukas.bulwahn@gmail.com,
 akpm@linux-foundation.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Improve CamelCase recognition logic to avoid reporting on
 _Generic() use.

Other C keywords, such as _Bool, are intentionally omitted, as those
should be rather avoided in new source code.

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 scripts/checkpatch.pl | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index 2b812210b412..c4a087d325d4 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -5840,6 +5840,8 @@ sub process {
 #CamelCase
 			if ($var !~ /^$Constant$/ &&
 			    $var =~ /[A-Z][a-z]|[a-z][A-Z]/ &&
+#Ignore C keywords
+			    $var !~ /^_Generic$/ &&
 #Ignore some autogenerated defines and enum values
 			    $var !~ /^(?:[A-Z]+_){1,5}[A-Z]{1,3}[a-z]/ &&
 #Ignore Page<foo> variants
-- 
2.38.1

