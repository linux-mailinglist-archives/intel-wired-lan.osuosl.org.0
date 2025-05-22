Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE65AC109C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 18:02:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3387761448;
	Thu, 22 May 2025 16:02:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W8lw3qJ34chu; Thu, 22 May 2025 16:02:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 179E761486
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747929720;
	bh=DkpQzcpKuWkhqiBMqga01y9nH0S6tZpfLop2aNJOobo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9SsT7NTPbAHK48ZX1NzmjoP0+jL8frWiSZWx9GoURejKcoWDsuoKRxv8JgY3dYq63
	 DEWHWjUPI6Ju9WITJSSjRmb9WNUk7/IFE9FPKAyHOs5jmReAqnfFrqv/8mpzcxCR7g
	 zR/g1RRMcn9W+8L+CjpmtHT8qYppX/eG4z8dVXd5CRQv7bNoKq+4xuFERlDxa3ucDm
	 x43ojJQuRELPZPcAPrRT6OHIHEDZ+/pRD/VjbcSqqE+tXntdreYKfxmT+cCgGtUPcy
	 XTcSzp+UL8H+9UTjgS4MMsR6kJK4kvygMr5MTbwqdfI1EYh4W8TxyltozBOIGjOEE0
	 FQVkRTJFbWiuw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 179E761486;
	Thu, 22 May 2025 16:02:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id A3BC8106
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 16:01:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A3E2D83C28
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 16:01:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g41uaitir7ZP for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 May 2025 16:01:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CC22283D49
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CC22283D49
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CC22283D49
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 16:01:55 +0000 (UTC)
X-CSE-ConnectionGUID: WR4BcWAwSr+8OgMeTQoHRg==
X-CSE-MsgGUID: g1TYdmQLT+G804GtrOgFSQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="52594063"
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="52594063"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 09:01:55 -0700
X-CSE-ConnectionGUID: qJJ0GeTMRkq5RnMVSI5Awg==
X-CSE-MsgGUID: daLUJXYpRiGFc6ji5jMaVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="171649494"
Received: from anguy11-upstream.jf.intel.com ([10.166.9.133])
 by fmviesa001.fm.intel.com with ESMTP; 22 May 2025 09:01:54 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com,
	Jacob Keller <jacob.e.keller@intel.com>
Date: Thu, 22 May 2025 09:01:39 -0700
Message-ID: <20250522160139.2662031-4-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250522160139.2662031-1-anthony.l.nguyen@intel.com>
References: <20250522160139.2662031-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747929716; x=1779465716;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OjpLpdXaBcWyfFzHI8/tFx9qQZk8gy+WwEY+URkEAjk=;
 b=JR5uuUxqXljQXgAQpXEI1oR1PzNKokoVfDcys/u5pMduo1NrRVhUJ1Dk
 Xg7yLHFv1GDxHr35Xg19YEODZk5pDHNGiRqJzlS1Eq5xsSK0TmjVFwawd
 HJrfy+di2CsJ+WzTl+SsSIONJXbpJ/UcgN724P9rUm39j8tk5dSvtwHLR
 n7EGdyN3Ob9Fr/JAKqovQvBz/zev3mI2WtmBGub5W8hGbQUu8lZL9TsmG
 1dOQmOh1D8NwlI/rJKqH9O2KzMTE2sBJmjh+v/IX6PFBTBro9rd6MtAlA
 Hq8/E6P+hzb2W9MQaQnnubIjs1kf5oWcY9jkFjVmSYHV+LuX8/TKjYdtI
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JR5uuUxq
Subject: [Intel-wired-lan] [PATCH linux-firmware 3/3] ice: update
 wireless_edge package to 1.3.23.0
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

Update wireless_edge package to 1.3.23.0 which adds support for E825-C
devices.

Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
---
 WHENCE                                        |   2 +-
 ...0.0.pkg => ice_wireless_edge-1.3.23.0.pkg} | Bin 1442692 -> 1442692 bytes
 2 files changed, 1 insertion(+), 1 deletion(-)
 rename intel/ice/ddp-wireless_edge/{ice_wireless_edge-1.3.20.0.pkg => ice_wireless_edge-1.3.23.0.pkg} (99%)

diff --git a/WHENCE b/WHENCE
index f12b14a1e4a5..17fff7377ae6 100644
--- a/WHENCE
+++ b/WHENCE
@@ -6927,7 +6927,7 @@ File: intel/ice/ddp-lag/ice_lag-1.3.1.0.pkg
 License: Redistributable. See LICENSE.ice for details
 
 File: intel/ice/ddp-comms/ice_comms-1.3.55.0.pkg
-File: intel/ice/ddp-wireless_edge/ice_wireless_edge-1.3.20.0.pkg
+File: intel/ice/ddp-wireless_edge/ice_wireless_edge-1.3.23.0.pkg
 
 License: Redistributable. See LICENSE.ice_enhanced for details
 
diff --git a/intel/ice/ddp-wireless_edge/ice_wireless_edge-1.3.20.0.pkg b/intel/ice/ddp-wireless_edge/ice_wireless_edge-1.3.23.0.pkg
similarity index 99%
rename from intel/ice/ddp-wireless_edge/ice_wireless_edge-1.3.20.0.pkg
rename to intel/ice/ddp-wireless_edge/ice_wireless_edge-1.3.23.0.pkg
index 941f00bba70b019250c117f6083eb775d298354c..e4a89a88277c9cc9e295bcbc154c4f955ab9f428 100644
GIT binary patch
delta 2426
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
A^#A|>

delta 2417
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

-- 
2.47.1

