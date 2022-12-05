Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE01642EF9
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Dec 2022 18:38:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 825E060B0F;
	Mon,  5 Dec 2022 17:38:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 825E060B0F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670261925;
	bh=CWrK//BXti/dRBaUyneJFHHaHWhu602HvGlftGiUku8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=B7x1xkxe0C7GKG8Ei9l6OYNFVLEKyaIdNJBBgwxxoxC4zOl+GHfn79OilOScsQPtI
	 h8N3b4V3M/ZNYnn9dNDcqJ+89xNTjRPc/lla+pjFWcqxB0PQvOWLQ6n6bVKvYHktMy
	 YP+I868LRBCM16O3oV5iy33RP6Hv70CWeFqvgrNtOsWYW5gfC+iQG1FsbdryTLRtlU
	 iXWI4aklN1h3G4Q0nSYUozX628coWogkw3KVnIgqrSo/xFRm/VzO1eldRdcX/ksMy1
	 c7WmMRaZqTf7MFSPJhAdmLdXA3aiHLeTaVlbA/3CtpMdVLfpyTtoDrHIXLGZaO1nji
	 GHVa75DYkAEfg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ksF9qfiQUhbc; Mon,  5 Dec 2022 17:38:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A6236605C9;
	Mon,  5 Dec 2022 17:38:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A6236605C9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 108171BF2BE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 17:38:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D598B605C9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 17:38:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D598B605C9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m7DbNsrj4YsM for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Dec 2022 17:38:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95BDD600CB
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 95BDD600CB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 17:38:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="343409109"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="343409109"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 09:37:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="820273964"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="820273964"
Received: from anguy11-desk2.jf.intel.com ([10.166.244.147])
 by orsmga005.jf.intel.com with ESMTP; 05 Dec 2022 09:37:36 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Dec 2022 09:37:21 -0800
Message-Id: <20221205173721.2601589-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670261918; x=1701797918;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WDagCbLhLz44YdPb7J2lBnfCBH6AAJx9u9phveh0qqk=;
 b=ix9SF9RRp5VEnF2lPXYmt7d6jKOwixhLslMJguDHvuNfOuzKt+3XyCjd
 yJbB4RmeH0irvnX1HvvMZTumD6zN+E2BMYMjIks70YQBmVaC3Xpa7z1pt
 /Ss0YrtXgS37uDz7i9/OQ0Q08+JdtpS+cPlk8Fg2HPhmaffJwEOmQQUvC
 RX+RQFhb86cBZIcWaZgmWZYl6W9FxsJBjLekBHUEOsqGnopMiQlcG03Z8
 nGbOUCyBadRSPjNC8+AjmHkBCcPhVMcZikS9iYiEOd6aelqV3hbNukfw+
 4rnX5zaCkl5dVMK8iwYG7pmQVztA5OsIXSNbv9SR/q10QcEYxZCcFl14K
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ix9SF9RR
Subject: [Intel-wired-lan] [Patch net-queue] igb: Correct vf reset response
 size
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

From: Akihiko Odaki <akihiko.odaki@daynix.com>

When an address is not assigned to a VF, sending E1000_VF_RESET message
from the VF to the PF causes the kernel to leak 64 bits on the stack to
its response, potentially crossing the security boundary relying on
virtualization.

Correct vf reset response size so that it does not leak data.

Fixes: 6ddbc4cf1f4d ("igb: Indicate failure on vf reset for empty mac address")
Signed-off-by: Akihiko Odaki <akihiko.odaki@daynix.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index a5049e342f7d..74694a27e35d 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -7577,10 +7577,11 @@ static void igb_vf_reset_msg(struct igb_adapter *adapter, u32 vf)
 	if (!is_zero_ether_addr(vf_mac)) {
 		msgbuf[0] = E1000_VF_RESET | E1000_VT_MSGTYPE_ACK;
 		memcpy(addr, vf_mac, ETH_ALEN);
+		igb_write_mbx(hw, msgbuf, 3, vf);
 	} else {
 		msgbuf[0] = E1000_VF_RESET | E1000_VT_MSGTYPE_NACK;
+		igb_write_mbx(hw, msgbuf, 1, vf);
 	}
-	igb_write_mbx(hw, msgbuf, 3, vf);
 }
 
 static void igb_flush_mac_table(struct igb_adapter *adapter)
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
