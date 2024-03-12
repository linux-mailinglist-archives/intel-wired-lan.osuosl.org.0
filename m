Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E45C878F9F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Mar 2024 09:23:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 75FE26077A;
	Tue, 12 Mar 2024 08:23:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yjgiYNZvXRL1; Tue, 12 Mar 2024 08:23:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BA2CF6083D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710231814;
	bh=rLbwQopA60a2ouu6IRXW8paHB3dw52iYl28tB5/kC0A=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=YeM6JX86ITV+JIH3zfS29aKDmHnpr/LweTLZEbi8rwauEz5Jon+PvPQn4+WPiDfS3
	 N74j3d+pf60W+O6TPT/TjA7CAIcNku2L4I+0CoyCm3De8tZ+uu+dlwkquRgIm3dSM+
	 BrRNQGFV7e3ExFcj2nRmbbqJf9UmxYq9ujkNgR+xTQOctkSuKrMaJgLWZNu2HkTpKZ
	 5QkOSvmx9u8OOt3y9qTR0JohkHFj3B9IHhT0lLBiSWn0PMrLgDzf4TVdNaA+kEWna1
	 AdvRwrVeeUWH2wjt9tU0+HEATWYpAsHEsFYlklzhG4/UyeiCOAJCYBCU3uj0/C+93D
	 OrwBvRWS3Ij6A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BA2CF6083D;
	Tue, 12 Mar 2024 08:23:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8A9721BF39E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 08:23:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7774C403B9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 08:23:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X3MkGK4K-enl for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Mar 2024 08:23:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 87EBF401B1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 87EBF401B1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 87EBF401B1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Mar 2024 08:23:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11010"; a="30367340"
X-IronPort-AV: E=Sophos;i="6.07,118,1708416000"; d="scan'208";a="30367340"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 01:23:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,118,1708416000"; d="scan'208";a="16035164"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa003.fm.intel.com with ESMTP; 12 Mar 2024 01:23:30 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Date: Tue, 12 Mar 2024 09:13:43 +0100
Message-Id: <20240312081343.24311-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710231812; x=1741767812;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=N0agS2sa4w8oMJCmaEjfN/D67p/n5OOOkOTO2lNG4k8=;
 b=ko3yvNCxUtuPkS2X3evqfmjGJKs77BdKnEn3aTTA+GtbbTrfegNqF6qb
 nCTyHEUFaIz+OG1YdA5a5HNMEruAG4gXCG4ob0tXnpIneVnZpv8HpVDd6
 CC7ComUsbcF3TXb6YaaDxw/6EBNgvkJG1EOB1CJhNB/X5vbi6CUTVMEf9
 jWwDAm+/5TBYD96XKLZ37y01dTLj7e53/6JkmG0bHZMJgSAXFtsUew4L7
 J/eZ9MfQf9Bh4KiZRI3tEQHKoCiC1hjwxXXjtYGZKE70vMhgQu737rQ8q
 beIxWd3W7k5U4Z5Ak/zzQBzMnkLSl0mLLyCnz8SYU2QQI1IVFzdZZnY1M
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ko3yvNCx
Subject: [Intel-wired-lan] [PATCH iwl-net] i40e: fix i40e_count_filters() to
 count only active/new filters
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
Cc: netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix counter to be bumped only for new or active filters.

Fixes: 621650cabee5 ("i40e: Refactoring VF MAC filters counting to make more reliable")
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 89a3401..6010a49 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -1257,8 +1257,11 @@ int i40e_count_filters(struct i40e_vsi *vsi)
 	int bkt;
 	int cnt = 0;
 
-	hash_for_each_safe(vsi->mac_filter_hash, bkt, h, f, hlist)
-		++cnt;
+	hash_for_each_safe(vsi->mac_filter_hash, bkt, h, f, hlist) {
+		if (f->state == I40E_FILTER_NEW ||
+		    f->state == I40E_FILTER_ACTIVE)
+			++cnt;
+	}
 
 	return cnt;
 }
-- 
2.25.1

