Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D393059DB06
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Aug 2022 13:57:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C6A954058F;
	Tue, 23 Aug 2022 11:57:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C6A954058F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661255837;
	bh=6D85T/inVgddjxqAUuBSBOucVn1hUWed39HZvERIx48=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ZECwUUF1Z9dpHULuAkWpQ7OnQM9R0dccRK6mNgwFYKIKOJ+6t3fTvUgnwlVbM9Ulv
	 Mg+eV7gEww1Rvsaa5zZyOqEkhQGr9gRmHonQoV4hwOaHZaw9vg6dkHFM8tbEYHuuwS
	 qnsz5x3v+Y6It5XHY4dVE76tVwZ67nSAjRr0ndL/GPr6y2FcOul/Rjy4Ra/FPnXdtV
	 iB4A8ikx+aOG3Td2XBU4iT4X9556B8fEXO9uKlFonbSKLjtQX+0ybn2t9KW1Mzem9p
	 FmbB8GAhsINYPgIpNEYdFUMS3AzWVxKMtlE7agHJqDL/g1Q9fqw2Y+udowiJ3BWORI
	 weYkpfxPXYaIw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UyNlIraO-KDd; Tue, 23 Aug 2022 11:57:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BC52440329;
	Tue, 23 Aug 2022 11:57:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BC52440329
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9E6B31BF2C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Aug 2022 11:57:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 85F65401F8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Aug 2022 11:57:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 85F65401F8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HgtaGaN7V0uu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Aug 2022 11:57:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C4558400C5
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C4558400C5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Aug 2022 11:57:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10447"; a="357644880"
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="357644880"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 04:56:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="669999561"
Received: from mmichali-devpc.igk.intel.com ([10.211.235.239])
 by fmsmga008.fm.intel.com with ESMTP; 23 Aug 2022 04:56:29 -0700
From: Michal Michalik <michal.michalik@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Aug 2022 13:56:26 +0200
Message-Id: <20220823115626.29063-1-michal.michalik@intel.com>
X-Mailer: git-send-email 2.9.5
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661255831; x=1692791831;
 h=from:to:cc:subject:date:message-id;
 bh=BAB4ZoqpUph7gvfP7m3L4YU8Qz/EKA+zRL7tK4gAVH8=;
 b=DH1rEuH4/JPBUle/9NWK7mDOKc/dOsGGK9Maqb9HWiKaFYr0umo8T8Kc
 pLZDlQA3mxijPD3YJZmj240WGjzH0aslpPz+4rwPwwN4+sxyfoIRaA57i
 BWaqEdDvvp7JViEyOoAtK4g5iL195WYDr8nfbTgyGL7gJRrtBms3xUzAc
 pb83yduLQlECFZQTNN+zi51aLccCbYPGAOOiUVdg2hTwYfBYJbrhax35M
 TSbJu62Szkh809nOOkeT29FZn05OkMhW9cPnQ05vduX+D/+HqZ+jne5aB
 IC3u0SIcnrdjzA0F7f4ojw1gTaeDyzqIPWv52QN+GUdv1iEKC/vmJVdlg
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DH1rEuH4
Subject: [Intel-wired-lan] [PATCH next v1] ice: Check if reset in progress
 while waiting for offsets
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Occasionally while waiting to valid offsets from hardware we get reset.
Add check for reset before proceeding to execute scheduled work.

Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Michal Michalik <michal.michalik@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index a1cd332..c43c602 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -890,6 +890,9 @@ static void ice_ptp_wait_for_offset_valid(struct kthread_work *work)
 	hw = &pf->hw;
 	dev = ice_pf_to_dev(pf);
 
+	if (ice_is_reset_in_progress(pf->state))
+		return;
+
 	if (ice_ptp_check_offset_valid(port)) {
 		/* Offsets not ready yet, try again later */
 		kthread_queue_delayed_work(pf->ptp.kworker,
-- 
2.9.5

base-commit: c3ac33fdeac6d1a23f2d28aafaee5520632c159f
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
