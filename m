Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 65622A971F3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Apr 2025 18:07:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9D48481EAE;
	Tue, 22 Apr 2025 16:07:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P9oUTN9WKK2e; Tue, 22 Apr 2025 16:07:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0AA7C81EB6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745338069;
	bh=pdQLuR2kweUz2cgnAgHZe170+D8kHm77N+yc39UAILY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LlnLMWXpVd1Ft4f3En0IuyZctX9s8RxflXP658sm7PN+HNtPvTDGPc236GZ40Ht0q
	 UnpCunpw5DSM0wlu7Hp8EOoZRO7YLTsEkY9o/vAT7/waLhG0dktnNzInIIaai+4pYc
	 pTyxQATNKuTaMaWIB2VZJZT7HMolaN4e2nHWG4IaCLyaGzZJK3wzmZjz0a4zrjCUay
	 3cIJ/Z6+QrGTuD+D7rA9r5q9iq4wEekoWcD8hQdLlasKyGIKmjN1kEQ1qyPU7yH/KO
	 x1nT1/PZTIzN4va+nFCe/sWidNvm2/Xs9iT1tJv1n3SPLGR18N3iHhAkAc/DHwVQF3
	 /MXRVm2+uDnGg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0AA7C81EB6;
	Tue, 22 Apr 2025 16:07:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id D5D4C1BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Apr 2025 16:07:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BC9D660BF2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Apr 2025 16:07:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jar0ILPDv_jL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Apr 2025 16:07:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6E08C60BEC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6E08C60BEC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6E08C60BEC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Apr 2025 16:07:45 +0000 (UTC)
X-CSE-ConnectionGUID: N0eyl7ZLTHqY2PTd+/KSYQ==
X-CSE-MsgGUID: q0QxWac5QBG27JpL70LfSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="50709029"
X-IronPort-AV: E=Sophos;i="6.15,231,1739865600"; d="scan'208";a="50709029"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 09:07:46 -0700
X-CSE-ConnectionGUID: TpDil5afQviMSHMAe+6D9A==
X-CSE-MsgGUID: 2+rcNoRNT+mXQL7PlJRKIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,231,1739865600"; d="scan'208";a="132592468"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa007.jf.intel.com with ESMTP; 22 Apr 2025 09:07:44 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 Milena Olech <milena.olech@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Tue, 22 Apr 2025 18:01:49 +0200
Message-Id: <20250422160149.1131069-4-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250422160149.1131069-1-arkadiusz.kubalewski@intel.com>
References: <20250422160149.1131069-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745338066; x=1776874066;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ucct7ug/sc59MUthipbdjNfLgEhVwF3WKl6PurlN2Ug=;
 b=KHY09NnGXr1LGJwsmqOqUkgkgBkJyddM48DmbDAWnXaB2Ikf5BslvLN7
 MNmyGT1DxvJgQg5is0F15mCpliuoDFA0ho9iv2rv7JmJJKjc7nRwVJCa9
 4/wypmsPaXqTCKGu+EsvZuLAZxgSFPqA6N83YU6oYk8My17NmHCzPTcxj
 1kOR+Q9Z1psuZId/H//16tnk2OM1QtKH9wjSSLRgJ6bwgDTJCjERnS+fM
 xgoz826/mNuxjwCRL7G364164gAzN5h7ugm1SM1zZY+qETYjiOYxO7vER
 vZYpjwnAdKYE4yCbEeL/D+Q2W9iTLkKjb8zZHQU+8DWbplU3mIjEXCcRM
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KHY09NnG
Subject: [Intel-wired-lan] [PATCH iwl-next v5 3/3] ice: add ice driver PTP
 pin documentation
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

From: Karol Kolacinski <karol.kolacinski@intel.com>

Add a description of PTP pins support by the adapters to ice driver
documentation.

Reviewed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
v5:
- no change.
---
 .../device_drivers/ethernet/intel/ice.rst           | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/networking/device_drivers/ethernet/intel/ice.rst b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
index 3c46a48d99ba..0bca293cf9cb 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/ice.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
@@ -927,6 +927,19 @@ To enable/disable UDP Segmentation Offload, issue the following command::
 
   # ethtool -K <ethX> tx-udp-segmentation [off|on]
 
+PTP pin interface
+-----------------
+All adapters support standard PTP pin interface. SDPs (Software Definable Pin)
+are single ended pins with both periodic output and external timestamp
+supported. There are also specific differential input/output pins (TIME_SYNC,
+1PPS) with only one of the functions supported.
+
+There are adapters with DPLL, where pins are connected to the DPLL instead of
+being exposed on the board. You have to be aware that in those configurations,
+only SDP pins are exposed and each pin has its own fixed direction.
+To see input signal on those PTP pins, you need to configure DPLL properly.
+Output signal is only visible on DPLL and to send it to the board SMA/U.FL pins,
+DPLL output pins have to be manually configured.
 
 GNSS module
 -----------
-- 
2.38.1

