Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C21B36D1FFD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Mar 2023 14:19:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E2A7D84604;
	Fri, 31 Mar 2023 12:19:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E2A7D84604
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680265188;
	bh=pcXAi9A/UOU0IQ3+fnOwEioaBiw9IqhNxktIiqkeu0M=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=yGrTnVZN/z/3qmFsihJdSexh5vmrqnAIkbwRJUddugKzKOCqcwzRfppRCexgu6tBh
	 0Yjz/9/KRtdf8dtHaUBepzG97bgYnKOb8D3xY7A370Ryn7wnEA/sPmbKhXnIr42uO/
	 ODxO1KfgZhRTEbScHtyEcffh4yjS9wyE4ru7H+aa9awN1GGzEdYX58gOCC3XfeyREz
	 xJOCdHgkZEYE7wS7e7DsCJuWquYPNFc/BKnvFyMW6XmRGiMOhJd5JehQvEF5oehbyt
	 3PLf5Ypqe9pWIevRiZhL5uEWWw7/Ye30QU1hkMsrCIEkuDi0Sx1uvASvFjbJ2XlSWz
	 s9gL19jbUOwag==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FfrrHmvokvM0; Fri, 31 Mar 2023 12:19:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D8323845E8;
	Fri, 31 Mar 2023 12:19:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D8323845E8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E1C771BF2FC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 12:19:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B815741F6E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 12:19:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B815741F6E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CR3onRMJP97C for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Mar 2023 12:19:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 37B3441F41
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 37B3441F41
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 12:19:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="406448842"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="406448842"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 05:19:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="859308122"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="859308122"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orsmga005.jf.intel.com with ESMTP; 31 Mar 2023 05:19:39 -0700
From: Andrii Staikov <andrii.staikov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 31 Mar 2023 14:19:37 +0200
Message-Id: <20230331121937.1016351-1-andrii.staikov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680265180; x=1711801180;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CXZbrCG+5gkLADjO/4ByPI62IUbY8+zRv3EppueX0x0=;
 b=jZaHDle3gLUQfwz2tADeFsr+aNpFzmcaZIVWAIJvOkxhyOoGBv1TAsf+
 vwjM01onhG4rjjjDO3xak844qqGPxbxUE18AqeV4j//6F0KDNrfrC/OJn
 gFvGFhDf0FRHHMI82aPv9bYpHkiZMW3IgDDkb+SPciDf1L7D8vXKvXveB
 GtzMJ+lN56bIxcqsPs8NeTrHzNy2XmfpHYLSTQ3vDXiaXAB9SqMizaVUf
 pbM00sTMoOV6UxxXHMUMiamlhtyD1OtucFUUjovUZ2UMkkdo/kwyTNssb
 dsPTF5CbR+7IgIylDkHs7ba+IA1fOi+++GayRxIGTwXvOspOlmT8xCqqc
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jZaHDle3
Subject: [Intel-wired-lan] [PATCH net v2] i40e: fix PTP pins verification
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

Fix PTP pins verification not to contain tainted arguments. As a new PTP
pins configuration is provided by a user, it may contain tainted
arguments that are out of bounds for the list of possible values that can
lead to a potential security threat. Change pin's state name from 'invalid'
to 'empty' for more clarification.

Fixes: 1050713026a0 ("i40e: add support for PTP external synchronization clock")
Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
---
v2: Updating the commit message to fit the 75 characters limit.
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
