Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E57E0B54F1B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Sep 2025 15:17:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CF28240862;
	Fri, 12 Sep 2025 13:17:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I09CdDqNvT2I; Fri, 12 Sep 2025 13:17:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4301840809
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757683039;
	bh=kZ23U8G8YS9TAGTiNkUPd11A6mCHxev+3yNbsjr9VeE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GXWJsaVNyBfuJMDswJYo+uSPvhr+icIZVmrUE+AWfvKq3eUjqpY8D1P05XAnKIgpF
	 psINAFqPiSXmg6Y0tJQ+muqqJNTXBZp+9BMNsJ0932i//bunkS25XaYvq2qC/7cHVQ
	 aHfVZUfwekyWGuov0/+U4EbZ9RPR/iCk/itomxXpw+lK39WUctmBCYPlGVlDv/43L/
	 A396QGsgJZ4Fg1dpo92toGn9N7eGVHEuA/P4Te9pNaZHl2yhs841Z0HteYi9ut97dj
	 j7NVUZ4dZ9PkLJzTwrcLNcGJzYQF9SLeWJhRfBIga5QEv/5y7vQwOna5gjg+I/RKUM
	 c7+ENqlndPyXw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4301840809;
	Fri, 12 Sep 2025 13:17:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3D8F9943
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:17:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E72E640600
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:17:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1L7B3FbWabMl for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Sep 2025 13:17:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4B07E405EE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4B07E405EE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4B07E405EE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:17:14 +0000 (UTC)
X-CSE-ConnectionGUID: ToczD3iOSXWj7JQ9ANeugA==
X-CSE-MsgGUID: SqGf3sKaQ0+ph3FayGnQxw==
X-IronPort-AV: E=McAfee;i="6800,10657,11551"; a="85461413"
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="85461413"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 06:17:14 -0700
X-CSE-ConnectionGUID: HkeroFooSneFXg37GH6fcg==
X-CSE-MsgGUID: yc6VqzHJRYWqD0jbSxOKJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="173131218"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa006.jf.intel.com with ESMTP; 12 Sep 2025 06:17:12 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 912832FC71;
 Fri, 12 Sep 2025 14:17:10 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Fri, 12 Sep 2025 15:06:21 +0200
Message-Id: <20250912130627.5015-4-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20250912130627.5015-1-przemyslaw.kitszel@intel.com>
References: <20250912130627.5015-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757683034; x=1789219034;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Lr7XMlR0GP6CoJuj+0JC3gYElxLwUxJ1ZEl66nOapwQ=;
 b=oJeL2EhEYNNY+zwJLZQO/WdInV1iIWeMYRFnBf4VBuNbPm/fbxaAGg6w
 0tSLEi9cc+QA11xBSnBL3vaYZEcXuBPRapUask+KyLQB+gKiXXz274bTG
 EY1/5myZwF2DIwXNHtp2kyrEW9YAlI+kWi1h9uDpWQrri71h0vQocmMsi
 wbB0jdsX5bfK4iWkh1B4H9VC+a1KMHJHUdxKLloGZ7dKSuU+QC67pqMYD
 au/7ANFIKwNcqRVm1P//rFZthcFwpvaANVBmvQmzgI8O74AFfzvQ173t0
 782rBQOBp/YTbKT78gnelMvNPZo17TApiC3e4LqvCT06XSsrMJFc4krka
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=oJeL2EhE
Subject: [Intel-wired-lan] [PATCH iwl-next 3/9] ice: move
 ice_init_interrupt_scheme() prior ice_init_pf()
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
Cc: netdev@vger.kernel.org, Simon Horman <horms@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Move ice_init_interrupt_scheme() prior ice_init_pf().
To enable the move ice_set_pf_caps() was moved out from ice_init_pf()
to the caller (ice_init_dev()), and placed prior to the irq scheme init.

The move makes deinit order of ice_deinit_dev() and failure-path of
ice_init_pf() match (at least in terms of not calling
ice_clear_interrupt_scheme() and ice_deinit_pf() in opposite ways).

The new order aligns with findings made by Jakub Buchocki in
the commit 24b454bc354a ("ice: Fix ice module unload").

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
CC: Jakub Kicinski <kuba@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 25 ++++++++++-------------
 1 file changed, 11 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 53a535c76bd3..3cf79afff1bd 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4062,8 +4062,6 @@ void ice_start_service_task(struct ice_pf *pf)
  */
 static int ice_init_pf(struct ice_pf *pf)
 {
-	ice_set_pf_caps(pf);
-
 	mutex_init(&pf->sw_mutex);
 	mutex_init(&pf->tc_mutex);
 	mutex_init(&pf->adev_mutex);
@@ -4769,11 +4767,18 @@ int ice_init_dev(struct ice_pf *pf)
 		ice_set_safe_mode_caps(hw);
 	}
 
+	ice_set_pf_caps(pf);
+	err = ice_init_interrupt_scheme(pf);
+	if (err) {
+		dev_err(dev, "ice_init_interrupt_scheme failed: %d\n", err);
+		return -EIO;
+	}
+
 	ice_start_service_task(pf);
 	err = ice_init_pf(pf);
 	if (err) {
 		dev_err(dev, "ice_init_pf failed: %d\n", err);
-		return err;
+		goto unroll_irq_scheme_init;
 	}
 
 	pf->hw.udp_tunnel_nic.set_port = ice_udp_tunnel_set_port;
@@ -4791,32 +4796,24 @@ int ice_init_dev(struct ice_pf *pf)
 		pf->hw.udp_tunnel_nic.tables[1].tunnel_types =
 			UDP_TUNNEL_TYPE_GENEVE;
 	}
-
-	err = ice_init_interrupt_scheme(pf);
-	if (err) {
-		dev_err(dev, "ice_init_interrupt_scheme failed: %d\n", err);
-		err = -EIO;
-		goto unroll_pf_init;
-	}
-
 	/* In case of MSIX we are going to setup the misc vector right here
 	 * to handle admin queue events etc. In case of legacy and MSI
 	 * the misc functionality and queue processing is combined in
 	 * the same vector and that gets setup at open.
 	 */
 	err = ice_req_irq_msix_misc(pf);
 	if (err) {
 		dev_err(dev, "setup of misc vector failed: %d\n", err);
-		goto unroll_irq_scheme_init;
+		goto unroll_pf_init;
 	}
 
 	return 0;
 
-unroll_irq_scheme_init:
-	ice_clear_interrupt_scheme(pf);
 unroll_pf_init:
 	ice_deinit_pf(pf);
+unroll_irq_scheme_init:
 	ice_service_task_stop(pf);
+	ice_clear_interrupt_scheme(pf);
 	return err;
 }
 
-- 
2.39.3

