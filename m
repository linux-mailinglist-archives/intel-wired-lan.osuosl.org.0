Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F46D7B9749
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Oct 2023 00:16:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A715440C24;
	Wed,  4 Oct 2023 22:16:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A715440C24
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696457782;
	bh=a82qozjxjukxK5xAmSCqiknNgAaRN9Joz9O2jjQmqoY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=N/FcuO5RzH28wgO5TI3HI+GE+3cCBlIQObMl48ysSvqUL2UHPDluvUyuST6EHdBcw
	 F0tD9pB4dNifSdfEF7vCCwQolIb5jiSTlL6gb74M92aI4TNa7Vu3H43acmn/kzEejV
	 bpVj7G3K9+xNoBpWkw5diWa4PaigQKXOdTtLWZgJt7E1Q0AwKCnquiO2aXm9Uk65FN
	 aHdTXc+OKpmuUsxj+ciEzMGQjsjRj/jtg2sMfL/QI1+tR0rzAMcv4Ijzmu/Jsnrezl
	 AUIHTmdyxYqKiDcZD0HqIvMlEUp69sR5k7B9l4mMc9UkGmoqytcWRK7FhtUMuMIohQ
	 dGO8hQrTG+Kew==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id giRRS2i_KG9J; Wed,  4 Oct 2023 22:16:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 89AE840A82;
	Wed,  4 Oct 2023 22:16:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 89AE840A82
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 443921BF4DD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 22:16:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1C3E082387
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 22:16:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1C3E082387
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PO-u8n4jUKeM for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Oct 2023 22:16:15 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 04 Oct 2023 22:16:15 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B4EA82383
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0B4EA82383
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 22:16:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="1915751"
X-IronPort-AV: E=Sophos;i="6.03,201,1694761200"; 
   d="scan'208";a="1915751"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 15:09:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="925329256"
X-IronPort-AV: E=Sophos;i="6.03,201,1694761200"; d="scan'208";a="925329256"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.80.24])
 by orsmga005.jf.intel.com with ESMTP; 04 Oct 2023 15:09:05 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  4 Oct 2023 15:06:10 -0700
Message-Id: <20231004220610.41979-1-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696457776; x=1727993776;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BLcGHd//Krko2rsclIp+Y0gfVLOZBREcKr61TvsVkac=;
 b=XaxzB1cXLt18dGN6nC3nLwCuNsfHbGsrhwbAN3FYKqPTRlLSQ7TazCAY
 IKCiPxqraL1Q5Ve5TN2TWFxFBdMklqtv19Tf3CG38i9E2NUdmAO4S75Gm
 kw/YnSQNZMzEJTA06ltE2GR6dqj2W89bczYyfAv6V6+N1uaKN6D+qNS55
 n1vtLp14MU/TUQAeb3ew8Wec8CQ4A0iFeMyg5VPfJjJABZM9lappp3OLU
 56n8zBE4pqgRscY+zoFPYdxees07IQmWvGNDJUNKSIWw7tDrMZYt6OfhL
 XCbEHt5VZ+jOlTzzb0zCAR0ptkMrG82+xuR4Oel+1CZ6NiLy9QiUl/TFU
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XaxzB1cX
Subject: [Intel-wired-lan] [PATCH iwl-next v1] idpf: cancel mailbox work in
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
Cc: Pavan Kumar Linga <pavan.kumar.linga@intel.com>, wojciech.drewek@intel.com,
 emil.s.tantilov@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In idpf_vc_core_init, the mailbox work is queued
on a mailbox workqueue but it is not cancelled on error.
This results in a call trace when idpf_mbx_task tries
to access the freed mailbox queue pointer. Fix it by
cancelling the mailbox work in the error path.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
---
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
