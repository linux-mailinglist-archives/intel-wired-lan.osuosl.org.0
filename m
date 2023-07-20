Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD83975A4E8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jul 2023 05:55:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0711A404AB;
	Thu, 20 Jul 2023 03:55:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0711A404AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689825309;
	bh=HKxgu9jVeAaFSMqCtAmhlTmbtqUTh1i9/rJTRrUZVws=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ylCwntswE3kh0Tai2sxcWs2IiQTI+hZolepAAtbnvGtGkf7jwbc4WTfyN7zbrPxZ3
	 b7o54GjbdSRulFKnPkYiB0PKCZWIzOLb8vzZwXefIQSQT19kx4+xqezeGHXkTcGUpO
	 1J233hsdlbtZMwSCW0Yq1raptXFgLg6z3pG6anxCKkP8fVRbL8uHSGJaAXrWzM7zjr
	 mYkxFJwf0BabHXo6fnxXjqv5yciJuRpznXgkULDvEAZeNDUM5Nahano5IIDg8N09Ua
	 s7lrg0foD13pRbE9nsssXgZHOVxKu04qD/Z8QQ8tOb7lYZxYhWjFQfcqF51MHKBQf6
	 VE+GsPimiftug==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H5C9hl0lm5RU; Thu, 20 Jul 2023 03:55:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B8793401DD;
	Thu, 20 Jul 2023 03:55:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B8793401DD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C204B1BF955
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jul 2023 03:55:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 903F44174E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jul 2023 03:55:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 903F44174E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fXTA9dCO2v-O for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jul 2023 03:55:01 +0000 (UTC)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BECDD41743
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jul 2023 03:55:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BECDD41743
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="369278841"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="369278841"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 20:54:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="759410562"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="759410562"
Received: from ccdrpls178.iil.intel.com ([143.185.160.206])
 by orsmga001.jf.intel.com with ESMTP; 19 Jul 2023 20:54:58 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 20 Jul 2023 06:48:35 +0300
Message-Id: <20230720034835.88372-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689825300; x=1721361300;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Tl1Ffxj80CVsJmaHiXdvTFIXBCOvuw2V8fyOucFakHU=;
 b=NEhu997liNScqVf5Tor+LlUGNCemYXz15eGgotfJOOOFKRGNCwzMvE5G
 GaVV1qaveHjK/O+MR5whUvIlZJqvtB+eOtJpLXilTxLtydJtIpOCIk401
 A8QJiMrUNQO239Xlmzhz4QT6OlFJgnzHL8/6hYIqOjgqeT1SfKCH1PlSB
 9oNKiHkgeyl3aqn8OgcfzJfJXoWNd3hOgPxmYNLI5wGRht+SytHfEWRbb
 QkKyC+uP8tmrA61mEVWwebBIJXrAC7FKXN2UQYhis7Yo+O0GYBNuoSD88
 t3i3QbZ/ywVO29KXuH3lcs8aEt0g84WogqBOeIU19NKfzcweaPEPeW/mV
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NEhu997l
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/1] igc: Decrease PTM short
 interval from 10 us to 1 us
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

With the 10us interval, we were seeing PTM transactions take around 12us.
Hardware team suggested this interval could be lowered to 1us which was
confirmed with PCIe sniffer. With the 1us interval, PTM dialogs took
around 2us.

Suggested-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
v1->v2: Fixed commit message
---
 drivers/net/ethernet/intel/igc/igc_defines.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 44a507029946..c3722f524ea7 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -549,7 +549,7 @@
 #define IGC_PTM_CTRL_SHRT_CYC(usec)	(((usec) & 0x2f) << 2)
 #define IGC_PTM_CTRL_PTM_TO(usec)	(((usec) & 0xff) << 8)
 
-#define IGC_PTM_SHORT_CYC_DEFAULT	10  /* Default Short/interrupted cycle interval */
+#define IGC_PTM_SHORT_CYC_DEFAULT	1   /* Default short cycle interval */
 #define IGC_PTM_CYC_TIME_DEFAULT	5   /* Default PTM cycle time */
 #define IGC_PTM_TIMEOUT_DEFAULT		255 /* Default timeout for PTM errors */
 
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
