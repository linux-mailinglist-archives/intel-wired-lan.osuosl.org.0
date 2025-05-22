Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C458AC109A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 18:02:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 81703613C7;
	Thu, 22 May 2025 16:01:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KB2FVEvTr1ZE; Thu, 22 May 2025 16:01:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 88F516141D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747929718;
	bh=HCdyytamiDualSDDAE79qrGYIVXycpbMr9beC6t8070=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=y2WIUSqweMNf8IBH3BT34H/foekZhcn34DsNuoXpMLuiViQt/BLvABVKKEuTU5qg9
	 RnOYRvTXNwUundt+Mw2N6/RoXRRKMg6T0Crn5/CqcClslBNC1PK9eai8SoIXNgdz7R
	 +aJJ6ydaGW+rnqZW4REyLPQbj1XvMqz9qNCU93MelNDCrWQi1OevdduMnGKJOK+WUb
	 +MnAKFIj5ntwxwrsG5T5Hf+ZQHPsw3/0jG012iEZtEoAW2hT1Ly+HPtMSvc5QwdCrj
	 4ouWRKdEbpJBqNdkk+J1Xi4cwlz5XzgCvWbWAcP9wI8yAxBi3szJ9NagOntBuj2G+N
	 ppRj6i6J+H6Iw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 88F516141D;
	Thu, 22 May 2025 16:01:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 615F7106
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 16:01:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 536D783C28
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 16:01:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YOfhQwfM_X_0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 May 2025 16:01:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 86DB783D47
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 86DB783D47
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 86DB783D47
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 16:01:55 +0000 (UTC)
X-CSE-ConnectionGUID: XS8cEtjWTBaaGquj24bclQ==
X-CSE-MsgGUID: cq4ZcsU7TziAQqAaRWtmew==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="52594056"
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="52594056"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 09:01:54 -0700
X-CSE-ConnectionGUID: XSF1DjQdQseStdKANLHp4A==
X-CSE-MsgGUID: yWDjprp6QaCDF9sm3tIq6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="171649469"
Received: from anguy11-upstream.jf.intel.com ([10.166.9.133])
 by fmviesa001.fm.intel.com with ESMTP; 22 May 2025 09:01:53 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com,
	Jacob Keller <jacob.e.keller@intel.com>
Date: Thu, 22 May 2025 09:01:37 -0700
Message-ID: <20250522160139.2662031-2-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250522160139.2662031-1-anthony.l.nguyen@intel.com>
References: <20250522160139.2662031-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747929715; x=1779465715;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LxjIf/LTdKNcgxPb2zLwegehEAN4weB/JgTaZhYfLRs=;
 b=M9VO6bixlS6yza5d1XKCmhEtHMa9lDK9QlXhoYc87LK6Hh+tFg+tWyIa
 y0zogDZCJXZl/JhjYjbuhdJ+fT6zZq33JiY79zskOyk4tffbn1tjInh6/
 bvaUQ3LN+ctmxs9ecv29JeSHqPcWlorRUKnaKcwRUiRkg/Tt9Y/9jeqjF
 w+8QiAAkUdmBTFVBaHQ8NHepYncfyIW56EyL0Tp62tQERnBM6aeHazM70
 8y3p5mApjurJhBgY04vgYtmDA0zz1TylEugko8PnNWL8MwgK3qslzb4Zz
 oWVxkheuHKbeKDpmVxhPzU1u4aZLA2fpuqpKrAHJ+Yk/HNbyHjyxeE79/
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=M9VO6bix
Subject: [Intel-wired-lan] [PATCH linux-firmware 1/3] ice: update package to
 1.3.43.0
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

Update package file to 1.3.43.0 which adds support for E825-C devices.

Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
---
 WHENCE                                        |   4 ++--
 .../{ice-1.3.41.0.pkg => ice-1.3.43.0.pkg}    | Bin 1352580 -> 1352580 bytes
 2 files changed, 2 insertions(+), 2 deletions(-)
 rename intel/ice/ddp/{ice-1.3.41.0.pkg => ice-1.3.43.0.pkg} (99%)

diff --git a/WHENCE b/WHENCE
index c56e8e660595..f63d1ecd0802 100644
--- a/WHENCE
+++ b/WHENCE
@@ -6920,8 +6920,8 @@ Licence: Redistributable. See LICENSE.amlogic_vdec for details.
 
 Driver: ice - Intel(R) Ethernet Connection E800 Series
 
-File: intel/ice/ddp/ice-1.3.41.0.pkg
-Link: intel/ice/ddp/ice.pkg -> ice-1.3.41.0.pkg
+File: intel/ice/ddp/ice-1.3.43.0.pkg
+Link: intel/ice/ddp/ice.pkg -> ice-1.3.43.0.pkg
 File: intel/ice/ddp-lag/ice_lag-1.3.1.0.pkg
 
 License: Redistributable. See LICENSE.ice for details
diff --git a/intel/ice/ddp/ice-1.3.41.0.pkg b/intel/ice/ddp/ice-1.3.43.0.pkg
similarity index 99%
rename from intel/ice/ddp/ice-1.3.41.0.pkg
rename to intel/ice/ddp/ice-1.3.43.0.pkg
index 71e75a5d78365ae4a23bef57776e835e5009bc29..8a9cf0577571121aace49873f0295a7e9ba3d3bf 100644
GIT binary patch
delta 2339
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
J$4h*a{R_4QQ*{6U

delta 2345
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
N@%@0HoT)Qt^cOU@Qknn&

-- 
2.47.1

