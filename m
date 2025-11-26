Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A8C2C8B1CD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Nov 2025 18:02:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BAFCE605F7;
	Wed, 26 Nov 2025 17:02:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rjqLsrUC5iHf; Wed, 26 Nov 2025 17:02:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 40DBD60880
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764176564;
	bh=AWbTsrgNPPOgHqL1FaALgwqdIvTWg24dd9wPEs7zM7w=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=zrmgIDgf8Yl4An27J3ASjuaevx6Mj69yL+zQeAoNHkOiQMRMxqCv9vTSUAxTsPszu
	 o/K+hv8bpKsAnazNFqx7ZKcYIniMM3Mlfb1ocGj8GKlawBJt2V6R4wieCuiWrNR4Bq
	 xJKxCR3pVYq7gX96+eighvPS8PTPmIEhEHoOlhS4xZkuNLjeNokaz/+7BG06CpWypm
	 b+WtR+C1DfUBJ1euPOT4MUX8WPdLfdFb4NGWHu5d8WtJBQAlmrKvBBXo8qOfGFisQK
	 2dwFc4q8FDbIjWOGSrP+cnpBoyXd+SWD7KfPluL6T5H0ZNVjqWYi8wF2RYXJTPvcNc
	 NSkmAthWqYfJQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 40DBD60880;
	Wed, 26 Nov 2025 17:02:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id EC5202A9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Nov 2025 17:02:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D1E1740F26
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Nov 2025 17:02:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eq3TQkdb97cj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Nov 2025 17:02:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=sreedevi.joshi@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EC4C440D08
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EC4C440D08
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EC4C440D08
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Nov 2025 17:02:41 +0000 (UTC)
X-CSE-ConnectionGUID: ZxmkLb+BTr6cb/xi6YburA==
X-CSE-MsgGUID: TWRO0IuSSv6b1vW5fLvp6Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="66182458"
X-IronPort-AV: E=Sophos;i="6.20,228,1758610800"; d="scan'208";a="66182458"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 09:02:41 -0800
X-CSE-ConnectionGUID: Ma5upuRRRvy9s8OUz7r8rQ==
X-CSE-MsgGUID: PfNrhph2QHqVBO7XMhU4AQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,228,1758610800"; d="scan'208";a="198104632"
Received: from aus-labsrv3.an.intel.com ([10.123.116.23])
 by orviesa005.jf.intel.com with ESMTP; 26 Nov 2025 09:02:41 -0800
From: Sreedevi Joshi <sreedevi.joshi@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Sreedevi Joshi <sreedevi.joshi@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Wed, 26 Nov 2025 11:02:16 -0600
Message-Id: <20251126170216.267289-1-sreedevi.joshi@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764176562; x=1795712562;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EbPZvKqXXrNf0b8dZGogEugflK6zEWvJUPwarJAdyhQ=;
 b=gtcz/UMUeUQSuc3fFBrLbliqZEiK+dxBAWqnWONpI/TPhccEravThS8K
 rdGH8oTjsFg6Hnd8YPy0F8ocMBldgbvcsGR/OGyyG4Bbcxk8YmygTRYwa
 YtbpMkP/xRIGbB5a9+6V1VbsJpE177JmPjuCWWwDPwPOSzd5hNtn/e6bb
 fxW6OxIGgT/oStQMedS9QHGjzengLc/arCgNwx8MAjd3QC068iK2bfwQ+
 H9SNbLVBz6kaJTLYU7apo8uUA0E8X3898OoXFdR7YlQlSc3irW2rGGtLm
 r55QpFtYGhvJATPFquIuphieRZJZQ03hnLGrwQyJgeY5tpcGZolHQJVrE
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gtcz/UMU
Subject: [Intel-wired-lan] [PATCH iwl-next] idpf: update idpf_up_complete()
 return type to void
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

idpf_up_complete() function always returns 0 and no callers use this return
value. Although idpf_vport_open() checks the return value, it only handles
error cases which never occur. Change the return type to void to simplify
the code.

Signed-off-by: Sreedevi Joshi <sreedevi.joshi@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_lib.c | 15 ++-------------
 1 file changed, 2 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 69eb72ed6b99..b9424cfb13c7 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -1444,10 +1444,8 @@ static int idpf_set_real_num_queues(struct idpf_vport *vport)
 /**
  * idpf_up_complete - Complete interface up sequence
  * @vport: virtual port structure
- *
- * Returns 0 on success, negative on failure.
  */
-static int idpf_up_complete(struct idpf_vport *vport)
+static void idpf_up_complete(struct idpf_vport *vport)
 {
 	struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
 
@@ -1457,8 +1455,6 @@ static int idpf_up_complete(struct idpf_vport *vport)
 	}
 
 	set_bit(IDPF_VPORT_UP, np->state);
-
-	return 0;
 }
 
 /**
@@ -1610,20 +1606,13 @@ static int idpf_vport_open(struct idpf_vport *vport, bool rtnl)
 		goto disable_vport;
 	}
 
-	err = idpf_up_complete(vport);
-	if (err) {
-		dev_err(&adapter->pdev->dev, "Failed to complete interface up for vport %u: %d\n",
-			vport->vport_id, err);
-		goto deinit_rss;
-	}
+	idpf_up_complete(vport);
 
 	if (rtnl)
 		rtnl_unlock();
 
 	return 0;
 
-deinit_rss:
-	idpf_deinit_rss(rss_data);
 disable_vport:
 	idpf_send_disable_vport_msg(adapter, vport_id);
 disable_queues:
-- 
2.25.1

