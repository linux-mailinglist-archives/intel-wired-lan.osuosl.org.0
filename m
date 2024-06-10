Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A6C901DFA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jun 2024 11:21:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 486C44063D;
	Mon, 10 Jun 2024 09:20:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TOiThsEwt4o5; Mon, 10 Jun 2024 09:20:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A8330405FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718011257;
	bh=NycO+OLcKbYRMUkJkc0plT8dp1u6tjxzSK3Ux/qcZmU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=sT1x445433cF5JNIm2mpwhkQ1LqQoYjwqzyDQbc47TSlIglhzWosI5d15wra1VQJH
	 X9sxueMwH6QGfh648X56eN2/oBdRORxnViDk1VcAw4zrXO1qQvI/rYpXqzDudVDRWl
	 vHOE9M5xL1W7QXC8mc5h4p+zILLqc0pJt2d1nfMuWKJRp52smB/KuYMBNFGGzugREF
	 XGj2GDusPTILsMKGsYyxIBZcafgLiXIkNCIh6j+Z+lPpuBrLbEAZUVaMTcqK8NYtSL
	 lOERcFWKq9OPdFmLwPW8uY2ryhkS7hM4sJFrl0cBSwGlMoDrtL2summ3K6C1ccpjnb
	 5hiaZntNLZCzQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A8330405FD;
	Mon, 10 Jun 2024 09:20:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D374F1BF3C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 09:20:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CAF0E4038B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 09:20:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lYAE5pN93u2w for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jun 2024 09:20:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D2E6F40364
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D2E6F40364
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D2E6F40364
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 09:20:54 +0000 (UTC)
X-CSE-ConnectionGUID: X/pn5i58TryQT0HG8So6ug==
X-CSE-MsgGUID: RyXUgIE0Q1K2h21eppYwBQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11098"; a="14393358"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="14393358"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 02:20:54 -0700
X-CSE-ConnectionGUID: +S6XmkOvRLiDzAjtbsD9pQ==
X-CSE-MsgGUID: pBEmnid1SZ2X7/dejh3tTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="38835258"
Received: from unknown (HELO amlin-019-225.igk.intel.com) ([10.102.19.225])
 by fmviesa007.fm.intel.com with ESMTP; 10 Jun 2024 02:20:52 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Date: Mon, 10 Jun 2024 11:20:51 +0200
Message-Id: <20240610092051.2030587-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718011255; x=1749547255;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bDTvNB9fOQLsPNiAhGc0YuMpaJwu7W5qy+IM0gYMbSA=;
 b=n7NdQu7nBAXqVkr8RZf+nFW9h0X5cfMCouK3lpP3yqXI2ig99T4Bnmrf
 uufAOqRJM5F63PzHht518Ma1mVVxe4b2VLgJMd+5O48/9zOr7qtlybK7/
 X/mE/rjETmzKd55EeM1vXTHkSB2X1Q18kHlQE/0Ta7BV/0ETzTY10/Ums
 2IaTj9CWCAJevtF27pcqlakufO2uIXbFJIkXW75v/rIpQmXDUMcQ/9Ypr
 nHIIFWDLxq3OXlNqOCcUEVcgFFsRYrhzUV7DAWXyJxMBbDcC9sPX9t2Zl
 Ovz5ib5BpZKptVhkn2YN3q19ZmuXB1isPydqwFycDYmepudKwxGcx6xbR
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=n7NdQu7n
Subject: [Intel-wired-lan] [PATCH iwl-net] i40e: fix hot issue NVM content
 is corrupted after nvmupdate
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
Cc: netdev@vger.kernel.org, Kelvin Kang <kelvin.kang@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

After 230f3d53a547 patch all I/O errors are being converted into EAGAIN
which leads to retries until timeout so nvmupdate sometimes fails after
more than 20 minutes!

Remove misleading EIO to EGAIN conversion and pass all errors as is.

Fixes: 230f3d53a547 ("i40e: remove i40e_status")
Co-developed-by: Kelvin Kang <kelvin.kang@intel.com>
Signed-off-by: Kelvin Kang <kelvin.kang@intel.com>
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_adminq.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.h b/drivers/net/ethernet/intel/i40e/i40e_adminq.h
index ee86d2c..55b5bb8 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.h
@@ -109,10 +109,6 @@ static inline int i40e_aq_rc_to_posix(int aq_ret, int aq_rc)
 		-EFBIG,      /* I40E_AQ_RC_EFBIG */
 	};
 
-	/* aq_rc is invalid if AQ timed out */
-	if (aq_ret == -EIO)
-		return -EAGAIN;
-
 	if (!((u32)aq_rc < (sizeof(aq_to_posix) / sizeof((aq_to_posix)[0]))))
 		return -ERANGE;
 
-- 
2.25.1

