Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9FCAD4EB4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Jun 2025 10:46:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8379C41798;
	Wed, 11 Jun 2025 08:46:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lRLVz4doYufU; Wed, 11 Jun 2025 08:46:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EDEA3417A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749631575;
	bh=RTRqZCA3uzrD9DGZL1q4NZ5R5uEiUmvqYP2tQvsob/k=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0CVWNa0Rvy8hcqOE9XptG1yfSw1BtG3mfKmZo1Qgc33sqI8NY3ZQ6KKp++ej/RDJT
	 0Tvg8GL90cBaNrdjIt6xLCf9RGvktw2416+OXfouBv0CYLWPivyYtJcI2/g1MmDlr3
	 lgPMi2mE3BBNmdSjwiYUkM72UEF+8enBg0EXf8hSA2dCFbJXtqAdvLX7Chkik1UDy4
	 MMeyiPFRxP5UXrPOihsIPeuRamonrPnYiPrOk7wA8E4+nLkjoSug4hHKKG6qik8ojJ
	 G8xF9yWNOpRaaeWXRWdHITVx13hPPayu15YMPxt4crMPqSM+fNuUxTuC8lCU9Nx6mG
	 5CeLJ5bYLbk6A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EDEA3417A3;
	Wed, 11 Jun 2025 08:46:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 39A6C237
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jun 2025 08:46:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 372D6403BD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jun 2025 08:46:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gq2Qhkb0ugUr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Jun 2025 08:46:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=konrad.knitter@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E27A9403D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E27A9403D5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E27A9403D5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jun 2025 08:46:10 +0000 (UTC)
X-CSE-ConnectionGUID: WH1iaB6/QTOy6ZSQ0MBw0w==
X-CSE-MsgGUID: 1WfDNOO6QdCdDfUdQhMF7g==
X-IronPort-AV: E=McAfee;i="6800,10657,11460"; a="62046153"
X-IronPort-AV: E=Sophos;i="6.16,227,1744095600"; d="scan'208";a="62046153"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 01:46:11 -0700
X-CSE-ConnectionGUID: 2rNX7uIhR72Ef4PSnjgtxA==
X-CSE-MsgGUID: 2iB52CDzS4OYqj8Uc4mvrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,227,1744095600"; d="scan'208";a="152298376"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa004.fm.intel.com with ESMTP; 11 Jun 2025 01:46:09 -0700
Received: from kord.igk.intel.com (kord.igk.intel.com [10.123.220.9])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 79BC5332AE;
 Wed, 11 Jun 2025 09:46:08 +0100 (IST)
From: Konrad Knitter <konrad.knitter@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Konrad Knitter <konrad.knitter@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Wed, 11 Jun 2025 11:01:20 +0200
Message-Id: <20250611090122.4312-2-konrad.knitter@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250611090122.4312-1-konrad.knitter@intel.com>
References: <20250611090122.4312-1-konrad.knitter@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749631571; x=1781167571;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lefHV1vQLDgNtGs4h7hH9bY2WDelV3RUOmHc9mMdkE0=;
 b=BDWIflgrv9LjZksvI1JC+F5QftFpPQs4AB3tJSrZ3NwFHngsIm37NqQQ
 HTxLn4bj7SaRF3MteITkf+gAi5OVgvQQP9/1l7OoM9pGPDLbf9LXYO4OE
 dxqxvzWJ1948Y1FaPpOPGa/kCyoHaaUeAwVBLc4xdRcv6Xby208sgfqEc
 rvZYpUEpm2Iyn+Cel2po2n+Z94W73TjgRMwdr5S95jPTQ6AsZFHtol/KS
 l+oIQGh9EzxrUdlVmHOZ1cPNCLp01TlvGo509y9aECUlnLD3oT+hR48Co
 pzhl16T/NpS2Szc/JS3jvHvi0d9GNHeKGTWCbtnKp49OGDDvHZWiD11yG
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BDWIflgr
Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/3] devlink: add overwrite
 mask from factory settings
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

Certain sections of the device flash, containing settings or device
identifying information, may be set by the OEM.

This patch introduce the ability for users to decide whether these
sections should be overwritten with data from the image or retained
from the factory settings.

The new option, DEVLINK_FLASH_OVERWRITE_FROM_FACTORY_SETTINGS, is
intended to be used alongside DEVLINK_FLASH_OVERWRITE_IDENTIFIERS
and/or DEVLINK_FLASH_OVERWRITE_SETTINGS.

This combination allows restoration of data such as MAC addresses set
by the OEM manufacturer, rather than using those found in the image.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Konrad Knitter <konrad.knitter@intel.com>
---
 Documentation/networking/devlink/devlink-flash.rst | 3 +++
 include/uapi/linux/devlink.h                       | 2 ++
 2 files changed, 5 insertions(+)

diff --git a/Documentation/networking/devlink/devlink-flash.rst b/Documentation/networking/devlink/devlink-flash.rst
index 603e732f00cc..7b04fcb95279 100644
--- a/Documentation/networking/devlink/devlink-flash.rst
+++ b/Documentation/networking/devlink/devlink-flash.rst
@@ -36,6 +36,9 @@ This mask indicates the set of sections which are allowed to be overwritten.
        components being updated with the identifiers found in the provided
        image. This includes MAC addresses, serial IDs, and similar device
        identifiers.
+   * - ``DEVLINK_FLASH_OVERWRITE_FROM_FACTORY_SETTINGS``
+     - Indicates that device shall overwrite settings and identifiers from
+       factory settings section instead of provided image.
 
 Multiple overwrite bits may be combined and requested together. If no bits
 are provided, it is expected that the device only update firmware binaries
diff --git a/include/uapi/linux/devlink.h b/include/uapi/linux/devlink.h
index a5ee0f13740a..b7c4b367df64 100644
--- a/include/uapi/linux/devlink.h
+++ b/include/uapi/linux/devlink.h
@@ -270,6 +270,7 @@ enum {
 enum devlink_flash_overwrite {
 	DEVLINK_FLASH_OVERWRITE_SETTINGS_BIT,
 	DEVLINK_FLASH_OVERWRITE_IDENTIFIERS_BIT,
+	DEVLINK_FLASH_OVERWRITE_FROM_FACTORY_SETTINGS_BIT,
 
 	__DEVLINK_FLASH_OVERWRITE_MAX_BIT,
 	DEVLINK_FLASH_OVERWRITE_MAX_BIT = __DEVLINK_FLASH_OVERWRITE_MAX_BIT - 1
@@ -277,6 +278,7 @@ enum devlink_flash_overwrite {
 
 #define DEVLINK_FLASH_OVERWRITE_SETTINGS _BITUL(DEVLINK_FLASH_OVERWRITE_SETTINGS_BIT)
 #define DEVLINK_FLASH_OVERWRITE_IDENTIFIERS _BITUL(DEVLINK_FLASH_OVERWRITE_IDENTIFIERS_BIT)
+#define DEVLINK_FLASH_OVERWRITE_FROM_FACTORY_SETTINGS _BITUL(DEVLINK_FLASH_OVERWRITE_FROM_FACTORY_SETTINGS_BIT)
 
 #define DEVLINK_SUPPORTED_FLASH_OVERWRITE_SECTIONS \
 	(_BITUL(__DEVLINK_FLASH_OVERWRITE_MAX_BIT) - 1)
-- 
2.38.1

