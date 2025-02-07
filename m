Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D4BA2CADD
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 19:08:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F2C9442775;
	Fri,  7 Feb 2025 18:08:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pe_HO8HixYji; Fri,  7 Feb 2025 18:08:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A34E42C86
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738951730;
	bh=y7PBbFzKshuChQacTTIzPKdK5LqlpXQ/DDWlRHA7qHo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ni6u3qljUk834ICfMtZOUHxjeCZhPcTTcxNGHw2fysyLFPr5Ma6u/vqInN9bhkrt9
	 7ROh0llZaaGZyf4ugjADIZPT5KhTXKC3tRItLvY4+v5Xn1Lxk9R9dM6hsNUPwk6Ciz
	 41TWvPSdvacPmq+AgpTRe/UIu0bZgreG38eGbFcz1fwCOb6TKzZGmHCIcKeBElcvye
	 JVerYsBQvlhmkFU3DZ/4d2RWWBFN++fMPmgg4jYRpMf5vggu1vs4KF+Bfyc9xXIidB
	 GH7TS8hTP0GmIUKGKtduVa7UsmbE7TASjfc0l1Go2ygMoylU4MhoPiWS+PSCXG9eA5
	 uknGaW2D3a54g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4A34E42C86;
	Fri,  7 Feb 2025 18:08:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 377DBCF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 18:08:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 26ABF40017
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 18:08:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6TzLkwOsZVhq for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2025 18:08:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3367040012
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3367040012
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3367040012
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 18:08:45 +0000 (UTC)
X-CSE-ConnectionGUID: NHGhe4JySKWaw0sBgmPStg==
X-CSE-MsgGUID: CtkBe17GRlyGhgAJ9pWemQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="39865649"
X-IronPort-AV: E=Sophos;i="6.13,267,1732608000"; d="scan'208";a="39865649"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 10:08:45 -0800
X-CSE-ConnectionGUID: 6HpPUwweRoKRq/W/kqZNRQ==
X-CSE-MsgGUID: 8ejoJ07lRWyI5tBXEw359A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="112486357"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa008.jf.intel.com with ESMTP; 07 Feb 2025 10:08:43 -0800
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 Milena Olech <milena.olech@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Fri,  7 Feb 2025 19:02:54 +0100
Message-Id: <20250207180254.549314-4-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250207180254.549314-1-arkadiusz.kubalewski@intel.com>
References: <20250207180254.549314-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738951725; x=1770487725;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JmLUFYDPwT7u2KV7YeR7SA4sCZrBbwSvJkqJzO6hgjE=;
 b=gGc8kr+z6SWAP8Vd9x4hvjO4zn+IlEB88T9dJ2EQp47h+Qif6xpZMMKU
 GXQnCiQRH4PhGBzh/kYRWAsa1K2mHMiFw0MtuxWqRUqNs3qMmumpW0ZOa
 CoSfhDf0MecBd9JGZGGgJ5cInFc7tPEJyIuM2ZPhgYgTaFug6KsDmPr/I
 vgXboiwTMZ049PaJnrwUJGWLFIzSFxF+FFjru5UegQWzF9vohDZLzi//j
 RBG2nVe16ncAcu0s9KB0DzhgquMJm6NWjqxG/WYzj18IdBcAkQFgYqXfG
 M1+C5mAqwPZHkb3URQx+c0yF0gT9WPL8Kq0I/3xWyicUoV6z02xZFUkOE
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gGc8kr+z
Subject: [Intel-wired-lan] [PATCH iwl-next 3/3] ice: add ice driver PTP pin
 documentation
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

