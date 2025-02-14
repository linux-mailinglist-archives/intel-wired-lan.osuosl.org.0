Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB91A36069
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Feb 2025 15:29:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F02006FC41;
	Fri, 14 Feb 2025 14:29:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MMxNphlzlH82; Fri, 14 Feb 2025 14:29:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4B14F6F804
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739543360;
	bh=YaT1BuVEcaxwPckunJj5G6/NDpd/kBgXpPedMjBTNDE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=j46kKwCRq98dgolqKfsmETZ3gaS5CjINIuqG4xQ224NRytfNStDFhgu56duLXLn84
	 xYSOx1XPhw39wfTvhK+caFHmBPirkk4LvQJjNyNqyqyJeCnTg0Dx6oKXTnvJUXlCGw
	 ABpUnTDH7vYD9Cg58cfCWNqUvGrTT1Cmung+FrMRnTaqAmDIxUOFcDQIfY0aYheGPq
	 0Zf7hyIR56bDdq6GR1+l2W5+1L3gpqVE8C3JQJJJPVVQCQfYDiFGo8BItnb0oSlnAr
	 gngpbYZomQXVZO5lS5ORx/mfnLVyif1+Ys7ORFa+Lx04GbCZ5BNBiLP0hwnCH23iAv
	 r5aluN8nx8zVA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4B14F6F804;
	Fri, 14 Feb 2025 14:29:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1C43EC2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 14:29:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 015BE836F1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 14:29:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i0Q-Ec4ELglR for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Feb 2025 14:29:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 569B8822B9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 569B8822B9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 569B8822B9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 14:29:17 +0000 (UTC)
X-CSE-ConnectionGUID: 4Pcn9QtDTZ6o5siuM3Ld2w==
X-CSE-MsgGUID: 0L3rOP2LS02n4Xq8CKTUJQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="50936630"
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="50936630"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 06:29:17 -0800
X-CSE-ConnectionGUID: AYUaJxWKSUWE4iTqjmPWDA==
X-CSE-MsgGUID: e6LHuMCpRmmbBq0tBgEA5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="118503746"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa004.jf.intel.com with ESMTP; 14 Feb 2025 06:29:15 -0800
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 Milena Olech <milena.olech@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Fri, 14 Feb 2025 15:23:32 +0100
Message-Id: <20250214142332.600124-4-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250214142332.600124-1-arkadiusz.kubalewski@intel.com>
References: <20250214142332.600124-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739543357; x=1771079357;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ToeXWe3IP3qc2T8aXJTUctf7wVvrNLEhK64L+14DMqw=;
 b=THybl9/eOWp37b6vbuH9DT49VIQ1NzDgSLIc6tsmcE0iOHLXB+a89ofO
 nSqSlTyrz8piZMoDjV5A8YN2OL7vAQ+NnA4r84A5PvK13j+tCM/5cF7Qp
 tHKweXw9cmt1jNd/KIJA7Apodfiorl5yHF8Pcrc5I20tMRw6BM87Exkpw
 cf5XbrcklliVfZR0ogC7jrUZ9k9qZYWu2K5jQMuPMyELuIzYJ0rlykTTS
 +FsLEKSMCdf8LJOxrb64jzg2IvWuk9Mk3CeUQGE74sDC61h0wWU7cwOir
 kMhXqG8SqpWk3q4xBGZFOya9NI1fxoJ+VXs0se8FC2bFxEEy5qck37DG4
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=THybl9/e
Subject: [Intel-wired-lan] [PATCH iwl-next v3 3/3] ice: add ice driver PTP
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
v3:
- add missing reviewed-by and signed-off-by
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

