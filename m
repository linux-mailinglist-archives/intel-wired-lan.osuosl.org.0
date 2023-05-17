Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA5C707192
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 May 2023 21:11:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7FED0840A4;
	Wed, 17 May 2023 19:11:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7FED0840A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684350673;
	bh=SM4c0ZhJFjafYe/zcx5hLMDw6mMCxod4mu9/ZCTfNCE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Rb0D4Uv3ZKDjmhR2rlm+WrdgDtbFXbsGr20zXF9nD6vfrgrOfTzdAOPk6IEc9GSFW
	 lrw+iP4Vb1WAaF76/JgkienXcfMUa5hnnuzD1HkH6vpqOSulSph+CtqwTq2zvIxjaI
	 1BI+kkkL7wXp7jd1W3aF8taMClV8kSIzetNGA9hUa+tMxCXIaS63Ur4QCTGhPJLFT1
	 jj/Nm6klrOvfrf0TxNo2/fn9tKfpPrTgwkY+BWir3dfxwWBlWuHm6q4FBqlp/RzrU4
	 OodbM1qqnkzeHNKA8y99xmpB+aH3cA55QzWGRIRDr6V7PZF9f2vWF80TRcbLh1Sd2W
	 Emf1u45aw3g2w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i2FT2mSqsGei; Wed, 17 May 2023 19:11:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4BF688201C;
	Wed, 17 May 2023 19:11:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4BF688201C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 96A8D1BF47E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 19:11:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6858541825
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 19:11:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6858541825
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zfMzWXPYidzd for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 May 2023 19:11:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2D64B41811
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2D64B41811
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 19:11:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="355029597"
X-IronPort-AV: E=Sophos;i="5.99,283,1677571200"; d="scan'208";a="355029597"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 12:11:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="701862962"
X-IronPort-AV: E=Sophos;i="5.99,283,1677571200"; d="scan'208";a="701862962"
Received: from johnypau-mobl1.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.251.221.3])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 12:11:03 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 17 May 2023 13:10:43 -0600
Message-Id: <20230517191043.3914946-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684350666; x=1715886666;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fq1JC0Km5D7a1S2/Jww5mRm8v9lKviF6kaVPiCZ2xHE=;
 b=AppckgLsa0Vpy85tkjeBDo09NCs5+Ok8y/Y+qhsMZdd//vJmgS29rTwa
 vzAmjs2rwLGaPgB8/8WYx7WVftlyJ3sVaUUmXOk57MTgTik3esC3UmHOK
 ucSXeG1KgMGWv4E2ITvnNxGGw7jpY9DFazJV8cEcT8hYaQTusY5cDwulu
 QQHsYZpW3q9R1bU3vyKPCRoQcBvuqT2GugLDo+ddHh7MtTJ1hXBzK57wa
 TY/eEVzMNOFGiotJ6uSF/DfKby69xXolYSfFBCF7IwtNEALY1DUtkgTGp
 FaajBdkxvoUI+6YRDHEUHbOPJ2mxHVxs71ngAwGDpbOfnENKK/N66tMcZ
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AppckgLs
Subject: [Intel-wired-lan] [PATCH iwl-net] iavf: use internal state to free
 traffic IRQs
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

If the system tries to close the netdev while iavf_reset_task() is
running, __LINK_STATE_START will be cleared and netif_running() will
return false in iavf_reinit_interrupt_scheme(). This will result in
iavf_free_traffic_irqs() not being called and a leak as follows:

    [7632.489326] remove_proc_entry: removing non-empty directory 'irq/999', leaking at least 'iavf-enp24s0f0v0-TxRx-0'
    [7632.490214] WARNING: CPU: 0 PID: 10 at fs/proc/generic.c:718 remove_proc_entry+0x19b/0x1b0

is shown when pci_disable_msix() is later called. Fix by using the
internal adapter state. The traffic IRQs will always exist if
state == __IAVF_RUNNING.

Fixes: 5b36e8d04b44 ("i40evf: Enable VF to request an alternate queue allocation")
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index e18d7cacf99c..bf522002dc42 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1943,12 +1943,12 @@ static void iavf_free_rss(struct iavf_adapter *adapter)
  *
  * Returns 0 on success, negative on failure
  **/
-static int iavf_reinit_interrupt_scheme(struct iavf_adapter *adapter)
+static int iavf_reinit_interrupt_scheme(struct iavf_adapter *adapter, bool running)
 {
 	struct net_device *netdev = adapter->netdev;
 	int err;
 
-	if (netif_running(netdev))
+	if (running)
 		iavf_free_traffic_irqs(adapter);
 	iavf_free_misc_irq(adapter);
 	iavf_reset_interrupt_capability(adapter);
@@ -3064,7 +3064,7 @@ static void iavf_reset_task(struct work_struct *work)
 
 	if ((adapter->flags & IAVF_FLAG_REINIT_MSIX_NEEDED) ||
 	    (adapter->flags & IAVF_FLAG_REINIT_ITR_NEEDED)) {
-		err = iavf_reinit_interrupt_scheme(adapter);
+		err = iavf_reinit_interrupt_scheme(adapter, running);
 		if (err)
 			goto reset_err;
 	}
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
