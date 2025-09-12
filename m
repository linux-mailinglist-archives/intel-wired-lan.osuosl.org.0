Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EEE0B54F24
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Sep 2025 15:17:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 37902824EE;
	Fri, 12 Sep 2025 13:17:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id riD_sljSAYtn; Fri, 12 Sep 2025 13:17:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 762FF82505
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757683043;
	bh=UDSaRantZDidC75EfH1BwRqbWLLyKsoGHTNzDUHqWoo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sto3mFL8SbYMa+hZ0zxIfwcIkG2gA81nL/MmcfTiMgTZaXPwZQ/RJLY1zrWozV2qk
	 hHbkzu6U4kU7sswcmClYHPFN+OjcXgYnTjbi733Uw7DBjVrYHO3uB7UsY2LCpwC/Gm
	 lsJJst5z5eybgJTqOOeXp5h6vCbDGBZJtKFGkCg4pcexN0EsJkrYvO7CfEoT7l8sqy
	 n9z2CL8pbSkJL6ZCoQj/3ExRjvJ7/1SL1JAv2LYeUpcDI8Fm7PVcGN5lZvib5LxEbg
	 1LFYfoCXCyC8TN/YfsML8ZBZ62vbvFJ4h0nRFRsjSiYXq6RXIDEYrPyV8ltpyYyxMT
	 pElEbKktdvQZQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 762FF82505;
	Fri, 12 Sep 2025 13:17:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1A92C12D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:17:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1E49D8230C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:17:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EvHtvR1NGeF6 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Sep 2025 13:17:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 324738230D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 324738230D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 324738230D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:17:18 +0000 (UTC)
X-CSE-ConnectionGUID: v9GYyG/QR6ytcBgyUjkm1g==
X-CSE-MsgGUID: WOm4EOeMSRyk8g6+tOBcAw==
X-IronPort-AV: E=McAfee;i="6800,10657,11551"; a="85461446"
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="85461446"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 06:17:18 -0700
X-CSE-ConnectionGUID: ZI6MQcVeSVq/gzDwBhapww==
X-CSE-MsgGUID: AZYbj3sgQE+bbxvvwjG7rA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="173131240"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa006.jf.intel.com with ESMTP; 12 Sep 2025 06:17:16 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id A08EE2FC71;
 Fri, 12 Sep 2025 14:17:14 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Fri, 12 Sep 2025 15:06:27 +0200
Message-Id: <20250912130627.5015-10-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20250912130627.5015-1-przemyslaw.kitszel@intel.com>
References: <20250912130627.5015-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757683038; x=1789219038;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0lubkKvXUTXLnSw8A50MURKszPTJ4IuA01qIWQQ67bw=;
 b=KTP03Ks+t0JRmEHHFKClB5DnvpHlBkdRBORd+FtEK3hrNx5DqG+lQGLD
 jsalQnrrtPfnFdmkmbfLQqeEvas/RuEq+gUiz/k6SvNyXradIcphT/S4T
 QYviXZzvN5o+T2HVH/6PLBbVuvbLx2B9oNMa5Qws6HHCeF8T0918Q10Iw
 iPgCFpoRTaygc+hnusbN4iZq1eCG9NHCPNOWAIol+0nIXwdiFNJ6LUSbu
 ab73OQhqyhTLHiMAGtJoTxHkjJGg0WfONOqi8Mdsm6ZFEuJE1N9mFXS3p
 6v9+pObkuxvoQZLSll77BHjaHkPBnQWwFoRcDeBGoPercM3pUK3Sw7SzS
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KTP03Ks+
Subject: [Intel-wired-lan] [PATCH iwl-next 9/9] ice: remove duplicate call
 to ice_deinit_hw() on error paths
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
 Jacob Keller <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Current unwinding code on error paths of ice_devlink_reinit_up() and
ice_probe() have manual call to ice_deinit_hw() (which is good, as there
is also manual call to ice_hw_init() there), which is then duplicated
(and was prior current series) in ice_deinit_dev().

Fix the above by removing ice_deinit_hw() from ice_deinit_dev().
Add a (now missing) call in ice_remove().

Reported-by: Jacob Keller <jacob.e.keller@intel.com>
Link: https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20250717-jk-ddp-safe-mode-issue-v1-1-e113b2baed79@intel.com
Fixes: 4d3f59bfa2cd ("ice: split ice_init_hw() out from ice_init_dev()")
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
This series obsoletes patch by Jake Link:ed above; already removed from our
dev-queue
---
 drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index c169134beb04..6b197d44f56d 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4815,7 +4815,6 @@ int ice_init_dev(struct ice_pf *pf)
 
 void ice_deinit_dev(struct ice_pf *pf)
 {
-	ice_deinit_hw(&pf->hw);
 	ice_service_task_stop(pf);
 
 	/* Service task is already stopped, so call reset directly. */
@@ -5497,6 +5496,7 @@ static void ice_remove(struct pci_dev *pdev)
 	ice_set_wake(pf);
 
 	ice_adapter_put(pdev);
+	ice_deinit_hw(&pf->hw);
 
 	ice_deinit_dev(pf);
 	ice_aq_cancel_waiting_tasks(pf);
-- 
2.39.3

