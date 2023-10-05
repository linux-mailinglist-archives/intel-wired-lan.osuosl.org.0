Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C692B7BAA50
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Oct 2023 21:40:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 92ECA414A1;
	Thu,  5 Oct 2023 19:40:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 92ECA414A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696534840;
	bh=2GqDAxWyKtsewSU+kdcR6rFqXSOnTc+UmwLiueCUHb8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=fjtvmMPobE82soI1TNQceTX8zs/yQA44X2go4TR2/pLNscIpVhzTNcq1ZJ+6P1Q5c
	 zQaKjA25Vx+1Ud2z3lNju5QGFcXNt5bP+QtAPJG0MKNImMn+0yn8c3KpvHRVTIEojB
	 lee70+v+qMWzTA40WYpYzsAOuOLiw1L5im5Rg2SPtxksdSdczG9C3A7QKzp1UiwsmW
	 1OugJBl3muKseqCOrcYiHvCpLzDGiN6PG7uXr1tTd9fWVffbagR/PLdES0V3UVBMXd
	 xkmWQIWaxxsqmrOMd87q3AGLCQYV+0HHLBQceeN0Qr9BldDSLynwYspawoayE2+w7Y
	 Dm++kpQCtY7AQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ENt34Z6wermL; Thu,  5 Oct 2023 19:40:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 602CD4137D;
	Thu,  5 Oct 2023 19:40:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 602CD4137D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D07351BF312
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 19:40:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A823D40280
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 19:40:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A823D40280
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ILU1eQ-syFxz for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Oct 2023 19:40:33 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 12597400C6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 19:40:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 12597400C6
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="414578983"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="414578983"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 12:40:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="728557138"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="728557138"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.80.24])
 by orsmga006.jf.intel.com with ESMTP; 05 Oct 2023 12:40:31 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  5 Oct 2023 12:40:16 -0700
Message-Id: <20231005194016.45237-1-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696534833; x=1728070833;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/UkaRVzHrwovIYNai0+UkEhOfiv2WtCPlikq0jlodf4=;
 b=RW4BKQl9/Ut9VuwZAJVZ3av7b7TQEiMFjVJXDE3p+bwBLJY1oq2p/HFK
 HpY2phCMsRIyUA5vKu91CenYomCTAoIub9cExS+XWWeHlFU58g0YNq77x
 S0LTqY8x510cHeJ+TLHFJAz7/AqzNMvAUaiKwCsAVmE37yPsk9YbqyXQ6
 bz093/2RCETKVHP4DfSfGjxBc7bgSnFHFCt9pqGX8DTs2Y6W52FWCHAR9
 pQlgf5aeBQ1X7rSegLZXW+HM429CFDvfxMdqHBY/uMsIRteg2CMcBLOcY
 R6Zn6sszZe+3zIuAlrP1+RJVnfvcmfvelkoY6eMAbC//f57eWRzKh2+QB
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RW4BKQl9
Subject: [Intel-wired-lan] [PATCH iwl-next v2] idpf: cancel mailbox work in
 error path
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
Cc: anthony.l.nguyen@intel.com, Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 wojciech.drewek@intel.com, emil.s.tantilov@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In idpf_vc_core_init, the mailbox work is queued
on a mailbox workqueue but it is not cancelled on error.
This results in a call trace when idpf_mbx_task tries
to access the freed mailbox queue pointer. Fix it by
cancelling the mailbox work in the error path.

Fixes: 4930fbf419a7 ("idpf: add core init and interrupt request")
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
---
v2:
- added 'Fixes' tag with the commit id this patch fixes

 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 9bc85b2f1709..cbb3f104f899 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -3140,6 +3140,7 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
 
 err_intr_req:
 	cancel_delayed_work_sync(&adapter->serv_task);
+	cancel_delayed_work_sync(&adapter->mbx_task);
 	idpf_vport_params_buf_rel(adapter);
 err_netdev_alloc:
 	kfree(adapter->vports);
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
