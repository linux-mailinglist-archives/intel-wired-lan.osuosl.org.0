Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 934CC39BDE4
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Jun 2021 19:01:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 31E65607C6;
	Fri,  4 Jun 2021 17:01:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4cz5LJk96Z-p; Fri,  4 Jun 2021 17:00:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 44B8860795;
	Fri,  4 Jun 2021 17:00:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EA0431BF873
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:00:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AC1E5843A4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:00:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fs7I-JJqzj3f for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Jun 2021 17:00:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0F7D5843D7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:00:28 +0000 (UTC)
IronPort-SDR: AQLQxGwVsqnlPP91BC/pbgGqs0i1c5q1Yd3yOIP5L0CAEwlUnFL11rDqdN90jDtkiAY1RYSW8T
 +ZoYvD8L824A==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="289960226"
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="289960226"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 10:00:28 -0700
IronPort-SDR: tiyXpH51N5VHDJ9t5aYF0Tl4tb5sd2mNs8j3pmJ8OofFvNYhqThm4tpUkz/Bl1Y+X25sE/SH2a
 IrfeH1cPhAbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="401017759"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.129])
 by orsmga003.jf.intel.com with ESMTP; 04 Jun 2021 10:00:26 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  4 Jun 2021 09:48:56 -0700
Message-Id: <20210604164900.33156-4-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210604164900.33156-1-anthony.l.nguyen@intel.com>
References: <20210604164900.33156-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 4/8] iavf: Fix failure to exit out
 from last all-multicast mode
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

From: Piotr Marczak <piotr.marczak@intel.com>

The driver could only quit allmulti when allmulti and promisc modes are
turn on at the same time. If promisc had been off there was no way to turn
off allmulti mode.
The patch corrects this behavior. Switching allmulti does not depends on
promisc state mode anymore

Fixes: f42a5c74da99 ("i40e: Add allmulti support for the VF")
Signed-off-by: Piotr Marczak <piotr.marczak@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 58624be64010..ffffb6e0a6c1 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1613,8 +1613,7 @@ static int iavf_process_aq_command(struct iavf_adapter *adapter)
 		iavf_set_promiscuous(adapter, FLAG_VF_MULTICAST_PROMISC);
 		return 0;
 	}
-
-	if ((adapter->aq_required & IAVF_FLAG_AQ_RELEASE_PROMISC) &&
+	if ((adapter->aq_required & IAVF_FLAG_AQ_RELEASE_PROMISC) ||
 	    (adapter->aq_required & IAVF_FLAG_AQ_RELEASE_ALLMULTI)) {
 		iavf_set_promiscuous(adapter, 0);
 		return 0;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
