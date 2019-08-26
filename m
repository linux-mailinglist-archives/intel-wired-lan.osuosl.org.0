Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4979D59A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Aug 2019 20:17:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8DE3B22621;
	Mon, 26 Aug 2019 18:17:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V1IRRWfjSXN0; Mon, 26 Aug 2019 18:17:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1FE2A22661;
	Mon, 26 Aug 2019 18:17:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0B0761BF2CF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2019 18:16:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 08E22880C2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2019 18:16:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wb7-AF6xwuKK for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Aug 2019 18:16:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 94A1E880D9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2019 18:16:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Aug 2019 11:16:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,433,1559545200"; d="scan'208";a="355508893"
Received: from alicemic-1.jf.intel.com ([10.166.17.62])
 by orsmga005.jf.intel.com with ESMTP; 26 Aug 2019 11:16:57 -0700
From: Alice Michael <alice.michael@intel.com>
To: alice.michael@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Mon, 26 Aug 2019 11:16:53 -0700
Message-Id: <20190826181655.15106-5-alice.michael@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190826181655.15106-1-alice.michael@intel.com>
References: <20190826181655.15106-1-alice.michael@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next PATCH S9 5/7] i40e: fix missed "Negotiated"
 string in i40e_print_link_message()
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

The "Negotiated" string in i40e_print_link_message() function was missed.
This string has been added to the dmesg and small refactoring done removing
common substrings and unifying link status message format.
Without this patch it was not clear that FEC is related to negotiated FEC.

Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index ed8e62cb5417..161663de09ef 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -6564,19 +6564,19 @@ void i40e_print_link_message(struct i40e_vsi *vsi, bool isup)
 	}
 
 	if (pf->hw.phy.link_info.link_speed == I40E_LINK_SPEED_25GB) {
-		req_fec = ", Requested FEC: None";
-		fec = ", FEC: None";
-		an = ", Autoneg: False";
+		req_fec = "None";
+		fec = "None";
+		an = "False";
 
 		if (pf->hw.phy.link_info.an_info & I40E_AQ_AN_COMPLETED)
-			an = ", Autoneg: True";
+			an = "True";
 
 		if (pf->hw.phy.link_info.fec_info &
 		    I40E_AQ_CONFIG_FEC_KR_ENA)
-			fec = ", FEC: CL74 FC-FEC/BASE-R";
+			fec = "CL74 FC-FEC/BASE-R";
 		else if (pf->hw.phy.link_info.fec_info &
 			 I40E_AQ_CONFIG_FEC_RS_ENA)
-			fec = ", FEC: CL108 RS-FEC";
+			fec = "CL108 RS-FEC";
 
 		/* 'CL108 RS-FEC' should be displayed when RS is requested, or
 		 * both RS and FC are requested
@@ -6585,13 +6585,14 @@ void i40e_print_link_message(struct i40e_vsi *vsi, bool isup)
 		    (I40E_AQ_REQUEST_FEC_KR | I40E_AQ_REQUEST_FEC_RS)) {
 			if (vsi->back->hw.phy.link_info.req_fec_info &
 			    I40E_AQ_REQUEST_FEC_RS)
-				req_fec = ", Requested FEC: CL108 RS-FEC";
+				req_fec = "CL108 RS-FEC";
 			else
-				req_fec = ", Requested FEC: CL74 FC-FEC/BASE-R";
+				req_fec = "CL74 FC-FEC/BASE-R";
 		}
 	}
 
-	netdev_info(vsi->netdev, "NIC Link is Up, %sbps Full Duplex%s%s%s, Flow Control: %s\n",
+	netdev_info(vsi->netdev,
+		    "NIC Link is Up, %sbps Full Duplex, Requested FEC: %s, Negotiated FEC: %s, Autoneg: %s, Flow Control: %s\n",
 		    speed, req_fec, fec, an, fc);
 }
 
-- 
2.21.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
