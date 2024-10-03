Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6F198F13B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Oct 2024 16:19:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D0E4182042;
	Thu,  3 Oct 2024 14:19:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rn1viM116UrB; Thu,  3 Oct 2024 14:19:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3F23281F80
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727965155;
	bh=BCqvTZ/LEl7mGiOKdfu2qVXNBfZ8aoKGWtgmAca0QXQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nHTC8YTR815j7PPH/xPVlxMtPVkdvZeGKf2fmZad3pyBHaywRSgeIkFvtXLd0LLZY
	 euzGU5UENY4SoC+iVe/KP2k0HIu6lLM7sLu2Ah0Y9JpDTbFd2Al28sYohLVBg8XhIR
	 VvAq/BLzYfijwDGkEViOdaYLlF1IsUl/5Lnq2aHFVeo8XVcMNxXIR8gl8Hjk/OQBij
	 miU4z5tfyf5v9oLP5/v8fuo/hEP0bK/XwU+51K4cwRSsWyyhkCtHcWQSrqF9qUkEeo
	 ZyUl9I5av4icHoLmAqH3q/D4B4mIbNRqNyxJtpwv50O1vugGWBse8CHFMlob/G73cH
	 SALLWUPEi/fsQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3F23281F80;
	Thu,  3 Oct 2024 14:19:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5DC591BF285
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 14:19:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 59C96605C0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 14:19:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3HWCRmbuWnLi for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Oct 2024 14:19:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=piotr.kwapulinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A010960087
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A010960087
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A010960087
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2024 14:19:12 +0000 (UTC)
X-CSE-ConnectionGUID: waPln+ZGRPG65MnwyCeNdQ==
X-CSE-MsgGUID: MjqVCA65S96HmqsFZ1nC9A==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="52567237"
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="52567237"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 07:19:12 -0700
X-CSE-ConnectionGUID: edeZ1SSzSJK6n9EmlIq0+A==
X-CSE-MsgGUID: dNbjF/HZS8qmyWiFFGMyeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="74794017"
Received: from pkwapuli-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.245.117.83])
 by orviesa007.jf.intel.com with ESMTP; 03 Oct 2024 07:19:11 -0700
From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  3 Oct 2024 16:16:48 +0200
Message-ID: <20241003141650.16524-6-piotr.kwapulinski@intel.com>
X-Mailer: git-send-email 2.43.5
In-Reply-To: <20241003141650.16524-1-piotr.kwapulinski@intel.com>
References: <20241003141650.16524-1-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727965153; x=1759501153;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I3HHJCYyOawm3B2PrzYQZA6DulgXKucpF/TAE489InI=;
 b=FZPRdNF3OPPRj4Xusdp0I7xkkP5Zk4x7gQi8KfmYkIZ2NOTmkMU7aBNQ
 qr2rqt+A1ANy7x5Je3WP8ZYvs69ZrdevG02y4WTu7zGTpHPlooXytqQvJ
 q2sLmbCiPxbAwMaJREwsxbY+Bk3eMW0KZcZf7++bccQn+ggTeeS6PUi4M
 9a2THwcXN0hhagzpuuszVtaknnzpDgurnybxzPdrampK5W6UlEGz+aGHH
 50PgZ3a76HXHkxYmc2ZhU4LuAaCi9bWEFEFGAJMN4gHVSn8lrigI2WCE3
 0tIiFNzIZxBAiQ02UshQpU2O01g34ppOYmozS7/s6xvDnnpVCZ4y0Eg1U
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FZPRdNF3
Subject: [Intel-wired-lan] [PATCH iwl-next v9 5/7] ixgbe: Add ixgbe_x540
 multiple header inclusion protection
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
Cc: Piotr Kwapulinski <piotr.kwapulinski@intel.com>, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Required to adopt x540 specific functions by E610 device.

Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.h | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.h
index b69a680..6ed360c 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.h
@@ -1,5 +1,8 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright(c) 1999 - 2018 Intel Corporation. */
+/* Copyright(c) 1999 - 2024 Intel Corporation. */
+
+#ifndef _IXGBE_X540_H_
+#define _IXGBE_X540_H_
 
 #include "ixgbe_type.h"
 
@@ -17,3 +20,5 @@ int ixgbe_acquire_swfw_sync_X540(struct ixgbe_hw *hw, u32 mask);
 void ixgbe_release_swfw_sync_X540(struct ixgbe_hw *hw, u32 mask);
 void ixgbe_init_swfw_sync_X540(struct ixgbe_hw *hw);
 int ixgbe_init_eeprom_params_X540(struct ixgbe_hw *hw);
+
+#endif /* _IXGBE_X540_H_ */
-- 
2.43.0

