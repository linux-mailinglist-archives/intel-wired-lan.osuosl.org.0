Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A40C03757EF
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 May 2021 17:51:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3CFCA406A4;
	Thu,  6 May 2021 15:51:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xdMWzvBV_0LF; Thu,  6 May 2021 15:51:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4FAA240688;
	Thu,  6 May 2021 15:51:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3447C1C1187
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 May 2021 15:50:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3CE1F607DD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 May 2021 15:50:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fbs94TZnWSqK for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 May 2021 15:50:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0ABCF605A4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 May 2021 15:50:38 +0000 (UTC)
IronPort-SDR: 591LO2WDHDaQ80rZY3ZRXTlxhRB4SVzYyVIeVoo/ejcHT6bj/Ostq7gW1IxZtT5U/wqBD04d75
 cKvHU/Ehdbrg==
X-IronPort-AV: E=McAfee;i="6200,9189,9976"; a="219389330"
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; d="scan'208";a="219389330"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 08:50:36 -0700
IronPort-SDR: 7WIMK18kpVUQzDxpv/5BeeUA/3x3WWz8b2WDjlg8NHU+GXUp/1R1+5mYMvBNoMdO6sCpGaLkQY
 uV7aFIvjmG3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; d="scan'208";a="459369490"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 06 May 2021 08:50:36 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  6 May 2021 08:40:05 -0700
Message-Id: <20210506154008.12880-10-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210506154008.12880-1-anthony.l.nguyen@intel.com>
References: <20210506154008.12880-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S59 10/13] ice: mark PTYPE 2 as reserved
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

From: Jacob Keller <jacob.e.keller@intel.com>

The entry for PTYPE 2 in the ice_ptype_lkup table incorrectly states
that this is an L2 packet with no payload. According to the datasheet,
this PTYPE is actually unused and reserved.

Fix the lookup entry to indicate this is an unused entry that is
reserved.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
index 72334a2de64f..80736e0ec0dc 100644
--- a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
+++ b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
@@ -652,7 +652,7 @@ static const struct ice_rx_ptype_decoded ice_ptype_lkup[BIT(10)] = {
 	/* L2 Packet types */
 	ICE_PTT_UNUSED_ENTRY(0),
 	ICE_PTT(1, L2, NONE, NOF, NONE, NONE, NOF, NONE, PAY2),
-	ICE_PTT(2, L2, NONE, NOF, NONE, NONE, NOF, NONE, NONE),
+	ICE_PTT_UNUSED_ENTRY(2),
 	ICE_PTT_UNUSED_ENTRY(3),
 	ICE_PTT_UNUSED_ENTRY(4),
 	ICE_PTT_UNUSED_ENTRY(5),
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
