Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AC5252C590
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 May 2022 23:34:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 11CF484312;
	Wed, 18 May 2022 21:34:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qqvi-Xnp5ROL; Wed, 18 May 2022 21:34:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6AE57842D2;
	Wed, 18 May 2022 21:34:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 284AA1BF380
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 May 2022 21:34:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2390B41068
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 May 2022 21:34:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0-YBizYOaJYE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 May 2022 21:34:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 756D141067
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 May 2022 21:34:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652909653; x=1684445653;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Ni/SQHZteVpCxMZklST77suT+SYD3fwp2aqvrG6kBNU=;
 b=FcjYlpYwxfwVBfNcCc1PSBXhGU7TDFYInRL0nL88jb1H2nrdcki4r8Wi
 jlgtw1oHWAyjo7Po4628D2Xa72jKVpYBgjLlUbFOQtIl1pkzA3TMsAFof
 LAWC32qe8zK2BMlcUADpYSREqMIf59qY43vFsc6p5UuM/2XbMJdu7f/PQ
 zpCWBWDU+JBVxTUHec84XNa31Fnny4OUy7ZvwXBfvaC6fs6xxWhRivoPt
 fsY64M0IOkkuzjBzFwYTygZVXh4BEhxLz/UEoGl4AdSRcApM75z63IHEi
 wgn02xSXnxjUNoZ5SYJ2eUg3FH6KVcFCp54TXP41OUUu/3onIO5OC3T68 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10351"; a="334949013"
X-IronPort-AV: E=Sophos;i="5.91,235,1647327600"; d="scan'208";a="334949013"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 14:34:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,235,1647327600"; d="scan'208";a="627256471"
Received: from anguy11-desk2.jf.intel.com ([10.166.244.147])
 by fmsmga008.fm.intel.com with ESMTP; 18 May 2022 14:34:12 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 18 May 2022 14:31:11 -0700
Message-Id: <20220518213111.2444630-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH RESEND] i40e: Remove unnecessary
 synchronize_irq() before free_irq()
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
Cc: Zeal Robot <zealci@zte.com.cn>, Minghao Chi <chi.minghao@zte.com.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Minghao Chi <chi.minghao@zte.com.cn>

Calling synchronize_irq() right before free_irq() is quite useless. On one
hand the IRQ can easily fire again before free_irq() is entered, on the
other hand free_irq() itself calls synchronize_irq() internally (in a race
condition free way), before any state associated with the IRQ is freed.

Reported-by: Zeal Robot <zealci@zte.com.cn>
Signed-off-by: Minghao Chi <chi.minghao@zte.com.cn>
---
Resending due to mail issues with Intel Wired LAN

 drivers/net/ethernet/intel/i40e/i40e_main.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 83e0cf475ebd..797f61b2cd96 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -4162,7 +4162,6 @@ static void i40e_free_misc_vector(struct i40e_pf *pf)
 	i40e_flush(&pf->hw);
 
 	if (pf->flags & I40E_FLAG_MSIX_ENABLED && pf->msix_entries) {
-		synchronize_irq(pf->msix_entries[0].vector);
 		free_irq(pf->msix_entries[0].vector, pf);
 		clear_bit(__I40E_MISC_IRQ_REQUESTED, pf->state);
 	}
@@ -4901,7 +4900,6 @@ static void i40e_vsi_free_irq(struct i40e_vsi *vsi)
 			irq_set_affinity_notifier(irq_num, NULL);
 			/* remove our suggested affinity mask for this IRQ */
 			irq_update_affinity_hint(irq_num, NULL);
-			synchronize_irq(irq_num);
 			free_irq(irq_num, vsi->q_vectors[i]);
 
 			/* Tear down the interrupt queue link list
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
