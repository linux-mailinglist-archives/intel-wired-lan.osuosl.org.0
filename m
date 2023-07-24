Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9031475F16D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jul 2023 11:57:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1607D81F1F;
	Mon, 24 Jul 2023 09:57:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1607D81F1F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690192658;
	bh=iDnttJjlxaG26GS6qGVAGXrFTwUpBtfBrXoOprqOA94=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=djNFQZijhyeiXfvRdoAtyHiBlx2eIewRNWtQAUnAn9T1bnM6okKJX8/+W4jFUmMhS
	 KM/5wCoOPJcIVE/wwgBIxpXKY3Cc/N0d95uhe16qeq35t7JnG64OAKBwIB1+Rw4Uix
	 eN7jJqvGikqRHhYHbMtrd3Kx6psRyvCGtoxTKxCQlEbJHsgtfrgj4PmtWZ4Tf5vsxB
	 Q37MRcTCmnI/Ltf7+4mkkxpsOWJsOZHu7d65eRqsGX/bcGOhAvPnbsoJGzSusY7Xoj
	 7utNUaBxIUqV3CrXKp3MlQ6U7f2QULgdsaRAkmbQdgkXzBRahL64WBT0RdC3Ovifmq
	 J7VMlTSr0uTOg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rjrgK3PuecrY; Mon, 24 Jul 2023 09:57:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 071BA81F0A;
	Mon, 24 Jul 2023 09:57:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 071BA81F0A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C3CE31BF4D7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 09:57:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9C2C081F0D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 09:57:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9C2C081F0D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N-6bezuqxByV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jul 2023 09:57:29 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 24 Jul 2023 09:57:29 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8450A81B26
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8450A81B26
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jul 2023 09:57:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10780"; a="367423350"
X-IronPort-AV: E=Sophos;i="6.01,228,1684825200"; d="scan'208";a="367423350"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 02:50:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10780"; a="795709749"
X-IronPort-AV: E=Sophos;i="6.01,228,1684825200"; d="scan'208";a="795709749"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmsmga004.fm.intel.com with ESMTP; 24 Jul 2023 02:50:20 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 24 Jul 2023 11:43:19 +0200
Message-Id: <20230724094319.57359-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690192649; x=1721728649;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OioHk1ChN5JiT7QsVymWpXuiBzyoD3qR9bpeqjbMExQ=;
 b=k5RQPkC+QMX1u+OX0zT+c4rcehRmWqUD/jAMS3UxZijBXZwvKrz3m+8p
 wH5f8Kk/rgmQbMV2fU32wTes8LuZr1Yxr4XjqgF8jUUMkksePC5hugt6V
 crcpLjBDJwDg84eMEc48qp1Qp7JR9SgTEc2NTaoTXck+iR4+OFwi+NGH3
 HnZ+Q+ERrManzhGCYL/58bAbF9J8cgOtJS+YbEdD41PHrwgzL0yidrP38
 Ee8wh/L1JsXBEwRrfk/DZ7nFxUOzETQEpL3ViwWy2XO0kaTKMDguH5ZYA
 10JOcEnTWLQ0v+nUdY+i3wAJdrchBUpRRfG37X42Z1in4p0FKLc4FnyOI
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=k5RQPkC+
Subject: [Intel-wired-lan] [PATCH iwl-next v1] i40e: Clear stats after
 deleting tc
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
Cc: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>

There was an issue with ethtool stats that
have not been cleared after tc had been deleted.

Fix this by resetting stats after deleting tc
by calling i40e_vsi_reset_stats() function after
distroying qdisc.

Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 29ad1797adce..6f604bfe7437 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -5885,6 +5885,11 @@ static int i40e_vsi_config_tc(struct i40e_vsi *vsi, u8 enabled_tc)
 
 	/* Update the netdev TC setup */
 	i40e_vsi_config_netdev_tc(vsi, enabled_tc);
+
+	/* After distroying qdisc reset all stats of the vsi */
+	if (!vsi->mqprio_qopt.qopt.hw)
+		i40e_vsi_reset_stats(vsi);
+
 out:
 	return ret;
 }
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
