Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 47CBAB171AF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Jul 2025 15:02:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9E13984652;
	Thu, 31 Jul 2025 13:02:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TLS4NLsLIIfd; Thu, 31 Jul 2025 13:02:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E03C48464D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753966924;
	bh=YSzVnOeOXoq3EEdZZOXoJOyBcKmenM4bFa5+7lGSIpA=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=1NERbPziKSSy5leouwRet0Ho9HbQtdHwhSq9ozSc6RFNeLkYD1DLGJRWcXVwTICxO
	 cTD/dsf3t/T4KFpg2ndumrx9VSkVmb6C5Hco49qAou+wUI1dGExx8gFYUULAsUfJ0X
	 n6mn/GQAogEttMnfkTEqJ+6FJdGrKRyUrHIR4KcIjleLccbyRMS6ofjmqA3Z+FGlMv
	 h5KrjIZAyM0jwcGE2vJ2M5IBTMa691rbWQnRZ1OTR7U1lj28dwPu7pCxKS7sM/wF8T
	 RHsDhn3+qH+9ZXgVMw7D/I8wvaYY+gqgscEh2cXqijnkSWTo5600jsbRX3giRYix3n
	 scCLnPDyE+3qA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E03C48464D;
	Thu, 31 Jul 2025 13:02:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 58A7613D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 13:02:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4A56840F16
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 13:02:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iFBe7s338ia0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Jul 2025 13:02:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AB61F40BFF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB61F40BFF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AB61F40BFF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Jul 2025 13:02:02 +0000 (UTC)
X-CSE-ConnectionGUID: GswLjreBQwGRIJslKYgTyA==
X-CSE-MsgGUID: wbWIjXOhQGC1j4ZftalnwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="73747654"
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="73747654"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 06:02:03 -0700
X-CSE-ConnectionGUID: I62m967pRCmlj9rLsCYUFQ==
X-CSE-MsgGUID: ZHsetmaXTeq2oIeEZdLEmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="186940781"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa002.fm.intel.com with ESMTP; 31 Jul 2025 06:02:00 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Thu, 31 Jul 2025 14:45:33 +0200
Message-Id: <20250731124533.1683307-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753966923; x=1785502923;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LU7OIycQkBXRbFm7D7D3e62DNysA0g86zCh78MKoh6o=;
 b=BsuPH4fW9OsxjsnySHB4NGtyAAnE9avhDcwW8P/I/4Pk53Bj+jS6ENvO
 cYUX5pUzUQlY5XqsQhhwXoQO4uP5wuglJG448SDKh1Bq8ajHwV0osNLTf
 NT6jPMfKGtqFalpLhD9rrytNlre49My+Qo9yfs8BQDZG+Sht8TgOSYvr4
 Ef3OdBZ8ft/k7iwR72yRiEY64nynYPMiSj9m+isqwzHlFP2y/H49e8uG8
 VjYlXZ73uXYT3G4Ei8HcUQtT4tIo2Bt331L/vRzV/8jgqiqlUt4M+XcLQ
 qQmS60lISpCNtwnfjs1TNnDww/3aPiHkWgkwjyda/Qec6/SgUyMqe83lO
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BsuPH4fW
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ixgbe: fix
 ixgbe_orom_civd_info struct layout
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

The current layout of struct ixgbe_orom_civd_info causes incorrect data
storage due to compiler-inserted padding. This results in issues when
writing OROM data into the structure.

Add the __packed attribute to ensure the structure layout matches the
expected binary format without padding.

Fixes: 70db0788a262 ("ixgbe: read the OROM version information")
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
v2: use get_unaligned_le32() per Simon's suggestion
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c      | 2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index 71ea25de1bac..754c176fd4a7 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -3123,7 +3123,7 @@ static int ixgbe_get_orom_ver_info(struct ixgbe_hw *hw,
 	if (err)
 		return err;
 
-	combo_ver = le32_to_cpu(civd.combo_ver);
+	combo_ver = get_unaligned_le32(&civd.combo_ver);
 
 	orom->major = (u8)FIELD_GET(IXGBE_OROM_VER_MASK, combo_ver);
 	orom->patch = (u8)FIELD_GET(IXGBE_OROM_VER_PATCH_MASK, combo_ver);
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
index 09df67f03cf4..38a41d81de0f 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
@@ -1150,7 +1150,7 @@ struct ixgbe_orom_civd_info {
 	__le32 combo_ver;	/* Combo Image Version number */
 	u8 combo_name_len;	/* Length of the unicode combo image version string, max of 32 */
 	__le16 combo_name[32];	/* Unicode string representing the Combo Image version */
-};
+} __packed;
 
 /* Function specific capabilities */
 struct ixgbe_hw_func_caps {
-- 
2.31.1

