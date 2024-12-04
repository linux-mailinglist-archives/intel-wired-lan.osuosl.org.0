Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A4B9E3D91
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Dec 2024 16:02:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E9595841D2;
	Wed,  4 Dec 2024 15:02:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Pe6A-PfP_Zrj; Wed,  4 Dec 2024 15:02:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2FF7481F13
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733324574;
	bh=0HX6LKRWCWF8pigsy66Miyj5J4is6eKt7vzE2LW/iWc=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=xfMNfzBuk2LXYo28syzy3Odw2FwTUdUT8qaSHk2ecNjsHCnvzog05M8RI+Gd+P3VL
	 /ySJePyPRNxBSFNKv3pScYwxB+LYgOvXeJd4m9FLE3RrxDJB6/xjCk4gnUO19wRWeY
	 vJH9BfWwpuOrfPGVwTGPrQ4UBblryqITQaNEe2h7X+QVuANJqKSHLzjHCuDSXvjUfO
	 3bX7cDZhlzWaI+A64iw0RKEzM5pCsSbS9I95OzDG3fVYIk8ISyjHGYVz/7i0lmII/f
	 VWMy5hiGI0C1Wc2SOJuSJh3x6ZEreGuv9Ad9WhZz9E6t4A5uZmRpXaS5j6Hcf5gJZH
	 l1OWNZWZW3MxQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2FF7481F13;
	Wed,  4 Dec 2024 15:02:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id CA8A01DC8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 15:02:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B7DD660743
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 15:02:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YLfsd1annEqs for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Dec 2024 15:02:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E7BB26075E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E7BB26075E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E7BB26075E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 15:02:49 +0000 (UTC)
X-CSE-ConnectionGUID: JTKyiTFMSc+x/lZv15fBSQ==
X-CSE-MsgGUID: q9wSpzqfR1KmYvPmwZvVAw==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="33744988"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="33744988"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 07:02:49 -0800
X-CSE-ConnectionGUID: 49Oq1a6dQ4SC7Fuo0L+eSw==
X-CSE-MsgGUID: Xh+pDiX4RuClpW/yC/3wwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="117037570"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa002.fm.intel.com with ESMTP; 04 Dec 2024 07:02:40 -0800
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 96D8E32C80;
 Wed,  4 Dec 2024 15:02:39 +0000 (GMT)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>
Date: Wed,  4 Dec 2024 16:02:24 +0100
Message-Id: <20241204150224.346606-1-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733324571; x=1764860571;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=En4Y/eXJHek4wbV9HkyLZxuRmozrYukh92bXSpkWI1Q=;
 b=BP4zo2L42HFTYBaYH0Rbv3sgkWRA5DPTOJQj+rCTFslyFac9pi4EF9gd
 aneIpQfUttBOQuyzOR9xquSUthsMwqG8kvO2kTGd0vR8umPOCLHC5PqUq
 zShFvGv4dIB/jGfQnhsKjpXFVhBqKKvGIO/XwX3NiBEk196LV4Uo3/yUE
 6daESfVVwKubopOpKGQx+Tef8X1fsMSvhgBZXvENqKHVH4FvJ0o8yk0KL
 gwdC4X2817vTXhbYwDuSdxkw1ACTJTyzB9oTQprQt+1xrRtxfsVdzRx9N
 HZjIsAOd1SZhkUYNVhXVmLYC6lL+JHfkp0BCSyXJjJAr6pbBsqdWzG5vt
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BP4zo2L4
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: move static_assert to
 declaration section
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

static_assert() needs to be placed in the declaration section,
so move it there in ice_cfg_tx_topo() function.

Current code causes following warnings on some gcc versions:
error: ISO C90 forbids mixed declarations and code
[-Werror=declaration-after-statement]

Fixes: c188afdc3611 ("ice: fix memleak in ice_init_tx_topology()")
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ddp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
index 69d5b1a28491..e885f84520ba 100644
--- a/drivers/net/ethernet/intel/ice/ice_ddp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
@@ -2388,6 +2388,8 @@ int ice_cfg_tx_topo(struct ice_hw *hw, const void *buf, u32 len)
 	int status;
 	u8 flags;
 
+	static_assert(ICE_PKG_BUF_SIZE == ICE_AQ_MAX_BUF_LEN);
+
 	if (!buf || !len)
 		return -EINVAL;
 
@@ -2482,7 +2484,6 @@ int ice_cfg_tx_topo(struct ice_hw *hw, const void *buf, u32 len)
 	}
 
 	/* Get the new topology buffer, reuse current topo copy mem */
-	static_assert(ICE_PKG_BUF_SIZE == ICE_AQ_MAX_BUF_LEN);
 	new_topo = topo;
 	memcpy(new_topo, (u8 *)section + offset, size);
 
-- 
2.38.1

