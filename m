Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DDCF5A3604C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Feb 2025 15:24:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 52D2B803D3;
	Fri, 14 Feb 2025 14:24:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZRSAf16tp2jq; Fri, 14 Feb 2025 14:24:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AB3C1805AF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739543068;
	bh=kQtIaSesI8H5i+Hsrrc2X28yTXmwyEQ714bvAStKuYM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ws9R5wrtkkpOMwWiib4b7tiNLhVOA3xn7QqzLbYOSQDuqDZaWVqyH/XrXvzTc5h9u
	 6/YibrgEPVQKncn4LKkugiazchHMmn64RM8HeIKGV1GoUFRf9zG0G60enRh9iHFy2e
	 /Yw0mB8PGzSe9/kxp4U5VYKEnh4orbp02GqfcyVAJMfjkrMDHEjrl4Lnnwa0sfbyng
	 U/pCciIkWnVihJcEbtT244ETKHAH6pgReOaXeDBTxheMepT5Bntx80yMHpH04+7e02
	 wFBzvpM20gXo4W5SJNMg8nBSTs9LNazDl5xZ1ZKNGGivtsijxA8t9NlebisGkCkurN
	 BzZyvINKgFnYA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB3C1805AF;
	Fri, 14 Feb 2025 14:24:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 33A431E3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 14:24:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9E84040C09
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 14:24:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AdFaxLZz9uXO for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Feb 2025 14:24:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D9D1D40BF4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D9D1D40BF4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D9D1D40BF4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 14:24:20 +0000 (UTC)
X-CSE-ConnectionGUID: qAWCAq3ETsekEW1CWJa44g==
X-CSE-MsgGUID: snguJVVaRQ+CE9vdq9tnng==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="40154930"
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="40154930"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 06:24:20 -0800
X-CSE-ConnectionGUID: QRKRF6ChT+WyVul8tyFtnQ==
X-CSE-MsgGUID: 5ddJ4IguTvKn0WqUETqWmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118093373"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmviesa005.fm.intel.com with ESMTP; 14 Feb 2025 06:24:19 -0800
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
	Karol Kolacinski <karol.kolacinski@intel.com>
Date: Fri, 14 Feb 2025 15:18:36 +0100
Message-Id: <20250214141836.597747-4-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250214141836.597747-1-arkadiusz.kubalewski@intel.com>
References: <20250214141836.597747-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739543061; x=1771079061;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PbgmwF6e2fnA/7tL35h6OZILzogHTu+bacTrdHsmx8o=;
 b=cYjqkBwlQOnthSdkBeQshLMG0CiJwPi8/IEuj3yFsTut845+YvQ3fqQw
 ndSRubT3F/2Dd4U19J7MH/a/uWnqdYGnXEOenHtKB+fGQLz6AOJZMSBc9
 MzWv0UYwJvmcwOauL+Q+bVyDdjZMIJrT8Nhhp/HBEcewzQOg6RSgOq3sW
 xOM5x3dSqftZciSaW9yEheRzH1sc2Wbh8dCNJ3jrrcDb0QN/Aqi8hzUIX
 oyPfAE1ypSwJEE0+gMiytQsQ4zVo33NWMpMfAVs0ey0YyK27W06JHQlOu
 rflcxvgAW0c0jLY8HnmIsAS4ScIVcYraKCxGrNoNTVEwk9HxdqwVQQUDk
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cYjqkBwl
Subject: [Intel-wired-lan] [PATCH iwl-next v2 3/3] ice: add ice driver PTP
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

Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
v2:
- no change, updated series
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

