Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5825939BE11
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Jun 2021 19:06:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F2162607A3;
	Fri,  4 Jun 2021 17:06:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nVeQLtep4J-W; Fri,  4 Jun 2021 17:06:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 07CA7607B5;
	Fri,  4 Jun 2021 17:06:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8453E1BF863
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:05:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5D48E40198
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:05:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mnELPyC0Rw8l for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Jun 2021 17:05:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0A31340664
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:05:06 +0000 (UTC)
IronPort-SDR: o5ikumuPmHFABnamUkyyK7CHWsi+fGFyiVGRJa6msUVIVTgZ3h9tx8TcQjwywnznuhc6LDqnd/
 284pdEo3m08g==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="225649934"
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="225649934"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 10:05:04 -0700
IronPort-SDR: ut/vLgJ4cO0eh/ix+n+UJrUcqd7R8uPeuYvY8MFd9RyO1q5Y+ECKAhUTg4ULJgigh9udxMhaHv
 n5BaHi7Dy8iA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="634086398"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.129])
 by fmsmga006.fm.intel.com with ESMTP; 04 Jun 2021 10:05:03 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  4 Jun 2021 09:53:33 -0700
Message-Id: <20210604165335.33329-13-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210604165335.33329-1-anthony.l.nguyen@intel.com>
References: <20210604165335.33329-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 13/15] iavf: Set RSS LUT and key
 in reset handle path
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

From: Md Fahad Iqbal Polash <md.fahad.iqbal.polash@intel.com>

iavf driver should set RSS LUT and key unconditionally in reset
path. Currently, the driver does not do that. This patch fixes
this issue.

Signed-off-by: Md Fahad Iqbal Polash <md.fahad.iqbal.polash@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index e7b9c64db3b5..892aa22b39da 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1534,11 +1534,6 @@ static int iavf_reinit_interrupt_scheme(struct iavf_adapter *adapter)
 	set_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
 
 	iavf_map_rings_to_vectors(adapter);
-
-	if (RSS_AQ(adapter))
-		adapter->aq_required |= IAVF_FLAG_AQ_CONFIGURE_RSS;
-	else
-		err = iavf_init_rss(adapter);
 err:
 	return err;
 }
@@ -2233,6 +2228,14 @@ static void iavf_reset_task(struct work_struct *work)
 			goto reset_err;
 	}
 
+	if (RSS_AQ(adapter)) {
+		adapter->aq_required |= IAVF_FLAG_AQ_CONFIGURE_RSS;
+	} else {
+		err = iavf_init_rss(adapter);
+		if (err)
+			goto reset_err;
+	}
+
 	adapter->aq_required |= IAVF_FLAG_AQ_GET_CONFIG;
 	adapter->aq_required |= IAVF_FLAG_AQ_MAP_VECTORS;
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
