Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A6EF82A542
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jan 2024 01:39:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7A48F43797;
	Thu, 11 Jan 2024 00:39:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7A48F43797
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704933582;
	bh=3Pf/n0ZVo3KZTWzUGpHU/F5fO228d0y08Ct8ISTr/A8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=QR2lIDAIFzyJbsbZSmGxjb3/8xZbYx921oqc+7hBLmaPEMRGKdP0YOz9oCo1LYLTH
	 Cxx7WhoSbkIOOtDpl/Gi8aE7sftRUAR4XT85lR8bOeUAQO6FMaqGy/XHBxmfNgiVJ/
	 HmNvpbGuhCLuSBaREB6rPEdQcta75eADwnismmK73bV9ZPKu1ICLlWAYm5PVu936kJ
	 zG2W3utgurvA6Y4i40K3c0mtQDmAOG+pvuZSUrLn2/LyeJVoWeJRm4o8s5WMwJiVsJ
	 Efc7293TN8FbAb2zugxSl5tqD04D/nr/kpLEFhzwEKDlLyl34dm4ogbchM8MrJErDH
	 x/DSiaCVGn6hg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ptc0ZYmIAb5D; Thu, 11 Jan 2024 00:39:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 16B8743770;
	Thu, 11 Jan 2024 00:39:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 16B8743770
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 660021BF966
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jan 2024 00:39:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 468D182675
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jan 2024 00:39:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 468D182675
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LMRH3sbNLtwV for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Jan 2024 00:39:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 480D48266C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jan 2024 00:39:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 480D48266C
X-IronPort-AV: E=McAfee;i="6600,9927,10949"; a="398390878"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="398390878"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 16:39:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10949"; a="905739364"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="905739364"
Received: from anguy11-upstream.jf.intel.com ([10.166.9.133])
 by orsmga004.jf.intel.com with ESMTP; 10 Jan 2024 16:39:33 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 10 Jan 2024 16:39:25 -0800
Message-ID: <20240111003927.2362752-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704933575; x=1736469575;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Y/k+h6lnl1bMRJ1SN6oCoe9x96SxlH6BTXelJNumA84=;
 b=hdBKpyPbwrBxk9UqTzVAmW7FQy4dxPuoKxbsDpsSCYcUrSHv33rMqoP2
 JgjJmGiIFJZKvfO5xOmceHN7IbeQp9nq+8V9lnSUaR/jQ4264KJaEcv34
 Y7nhYR1IC8KrvFTeB8coCkViXf9u5BiLo6wVvCpToiK2gbjY1JkPg1ZqV
 5Z2QFUaUAaJRtRuGmnz1jLKbmnhJXT4CUj/1EGMerVAyj6rmhk07f16wY
 PzFvZne1TNTII+zBwrsvZRjbWRdosVj02CzDqUI53udqHmie88mFI+ylj
 ySqQRXjgzB9KDjwd7c1gXZxZo3NEsZNOREJjlzIY/ek1x7DOqdYzqG9tr
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hdBKpyPb
Subject: [Intel-wired-lan] [PATCH iwl-net] i40e: Include types.h to some
 headers
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
Cc: ivecera@redhat.com, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Martin Zaharinov <micron10@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit 56df345917c0 ("i40e: Remove circular header dependencies and fix
headers") redistributed a number of includes from one large header file
to the locations they were needed. In some environments, types.h is not
included and causing compile issues. The driver should not rely on
implicit inclusion from other locations; explicitly include it to these
files.

Snippet of issue. Entire log can be seen through the Closes: link.

In file included from drivers/net/ethernet/intel/i40e/i40e_diag.h:7,
                 from drivers/net/ethernet/intel/i40e/i40e_diag.c:4:
drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h:33:9: error: unknown type name '__le16'
   33 |         __le16 flags;
      |         ^~~~~~
drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h:34:9: error: unknown type name '__le16'
   34 |         __le16 opcode;
      |         ^~~~~~
...
drivers/net/ethernet/intel/i40e/i40e_diag.h:22:9: error: unknown type name 'u32'
   22 |         u32 elements;   /* number of elements if array */
      |         ^~~
drivers/net/ethernet/intel/i40e/i40e_diag.h:23:9: error: unknown type name 'u32'
   23 |         u32 stride;     /* bytes between each element */

Reported-by: Martin Zaharinov <micron10@gmail.com>
Closes: https://lore.kernel.org/netdev/21BBD62A-F874-4E42-B347-93087EEA8126@gmail.com/
Fixes: 56df345917c0 ("i40e: Remove circular header dependencies and fix headers")
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h | 1 +
 drivers/net/ethernet/intel/i40e/i40e_diag.h       | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h b/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
index 18a1c3b6d72c..c8f35d4de271 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
@@ -5,6 +5,7 @@
 #define _I40E_ADMINQ_CMD_H_
 
 #include <linux/bits.h>
+#include <linux/types.h>
 
 /* This header file defines the i40e Admin Queue commands and is shared between
  * i40e Firmware and Software.
diff --git a/drivers/net/ethernet/intel/i40e/i40e_diag.h b/drivers/net/ethernet/intel/i40e/i40e_diag.h
index ece3a6b9a5c6..ab20202a3da3 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_diag.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_diag.h
@@ -4,6 +4,7 @@
 #ifndef _I40E_DIAG_H_
 #define _I40E_DIAG_H_
 
+#include <linux/types.h>
 #include "i40e_adminq_cmd.h"
 
 /* forward-declare the HW struct for the compiler */
-- 
2.41.0

