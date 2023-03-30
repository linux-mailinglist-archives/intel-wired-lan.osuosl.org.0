Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE8C6CFC90
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Mar 2023 09:18:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A187C41DFC;
	Thu, 30 Mar 2023 07:18:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A187C41DFC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680160691;
	bh=Tkh2YdOMcqUNdRx24Goe/9dXre34I2CiXpAtr27yBZ0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=FzBngJ1UY+QpCMQOe/J3ufQB11W827RG4ZvtJaxhlfZGdIBALV9hWVpdwQnZW/qnp
	 Ag2cmm2CsOPxBtcSDAvZi14mufbINvolz6OafT2xQENcdFcvskHec9EgFxRsxXOuxA
	 Vb2cp2WjIPJ7mt1ENbbJlG4dNew/QWHU+f0CfP8fj0NEOmScVvR4onZYrvxLD3yGyY
	 ntVlZAi9a2ZMb/b+lI1uHzoULNZLaUe9kGb0nqpZiKJkQLdeNUhgnWIkh3uS+NtuKV
	 KPUZWyPZJUkNJo8l3f3ZwX9LDp6CKwwEKAwdwFCg8pIX86YNbgnY2rE7Hb1ROtD1gx
	 1/dk7ssk3F/FA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3zqpqdL1ParA; Thu, 30 Mar 2023 07:18:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 84D7141DF8;
	Thu, 30 Mar 2023 07:18:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 84D7141DF8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5EDE91BF343
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 07:18:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3639F41DF2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 07:18:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3639F41DF2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AhsawH3PkJVv for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Mar 2023 07:18:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E2EBB401C2
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E2EBB401C2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 07:18:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="338587945"
X-IronPort-AV: E=Sophos;i="5.98,303,1673942400"; d="scan'208";a="338587945"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 00:18:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="684584261"
X-IronPort-AV: E=Sophos;i="5.98,303,1673942400"; d="scan'208";a="684584261"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orsmga002.jf.intel.com with ESMTP; 30 Mar 2023 00:18:02 -0700
From: Andrii Staikov <andrii.staikov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 30 Mar 2023 09:17:59 +0200
Message-Id: <20230330071759.3405263-1-andrii.staikov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680160683; x=1711696683;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=unLV8cvIGw4jH8rGJheX7ZHjM230VuvofAuU5MP/VVA=;
 b=Si6HKP1YBnK1v6FNBQ30eoThNCtGpMdjkW8QN5takw603Gq0cSInd05M
 Ha7srt8KuhnTFxXtiioMGRnqR88407CU6FYFaYBP33qEzI3qnsAgJns+/
 HRxRrn2xNXjeYuWwixNYwZh/NxglpUlmEJzQ42c0uUi3oaw1qRumPgLHg
 lZzTDX0XAWMDjSodM/XaDMkIiXIOfJ0pyOmig7uRPviLW4xyjdmzUPlYn
 98Fg9NM0b6RA+eKAmwnnxePVJKuVRcCf3khfg3cbkSfcMRH6rljcXMmBK
 QovR5gvsZYHZgD4A1cAgTyy66Ue57WsHnDi9FrSNoBN0rdvK03U1RbA5k
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Si6HKP1Y
Subject: [Intel-wired-lan] [PATCH net v1] i40e: fix PTP pins verification
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
Cc: Andrii Staikov <andrii.staikov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix PTP pins verification not to contain tainted arguments.
As a new PTP pins configuration is provided by a user, it
may contain tainted arguments that are out of bounds for the
list of possible values that can lead to a potential security threat.
Change pin's state name from 'invalid' to 'empty' for more
clarification.

Fixes: 1050713026a0 ("i40e: add support for PTP external synchronization clock")
Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_ptp.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
index c37abbb3cd06..78e7c705cd89 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
@@ -49,7 +49,7 @@ static struct ptp_pin_desc sdp_desc[] = {
 
 enum i40e_ptp_gpio_pin_state {
 	end = -2,
-	invalid,
+	empty,
 	off,
 	in_A,
 	in_B,
@@ -1078,11 +1078,19 @@ static int i40e_ptp_set_pins(struct i40e_pf *pf,
 	else if (pin_caps == CAN_DO_PINS)
 		return 0;
 
-	if (pins->sdp3_2 == invalid)
+	if ((pins->sdp3_2 < empty || pins->sdp3_2 > out_B) ||
+	    (pins->sdp3_3 < empty || pins->sdp3_3 > out_B) ||
+	    (pins->gpio_4 < empty || pins->gpio_4 > out_B)) {
+		dev_warn(&pf->pdev->dev,
+			 "The provided PTP configuration set contains meaningless values that may potentially pose a safety threat.\n");
+		return -EPERM;
+	}
+
+	if (pins->sdp3_2 == empty)
 		pins->sdp3_2 = pf->ptp_pins->sdp3_2;
-	if (pins->sdp3_3 == invalid)
+	if (pins->sdp3_3 == empty)
 		pins->sdp3_3 = pf->ptp_pins->sdp3_3;
-	if (pins->gpio_4 == invalid)
+	if (pins->gpio_4 == empty)
 		pins->gpio_4 = pf->ptp_pins->gpio_4;
 	while (i40e_ptp_pin_led_allowed_states[i].sdp3_2 != end) {
 		if (pins->sdp3_2 == i40e_ptp_pin_led_allowed_states[i].sdp3_2 &&
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
