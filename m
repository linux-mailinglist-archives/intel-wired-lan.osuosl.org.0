Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AC9E66B58F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Jan 2023 03:23:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 893E5408F2;
	Mon, 16 Jan 2023 02:23:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 893E5408F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673835792;
	bh=7AvKvnLKfI0uSaLdKsPAIdtRO/aLkX0uYwAFIZ8ffiY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=KFjXf7VIxRrXNgSTDvVa2lniw9SW8NIneThoVVxnzuocBwTpIk7bAwPOtJL/X6ir+
	 RHzHLg2GsixrzLusPxvbHQvTYbtwKeuaBGQabW+cjAgU/o2lvPLa4WHLdyZSUYF11y
	 UL5EpVBQafGkrcvyVWExndEZfytieczAtHx8xVBDp+T6TXOigPLHSuqIUIrx00usT2
	 4YduoC1+tt8i1m1/jsO9rGWprsYLtWLwAZNzqny0wAGjVrQEzz0DdEmAJcjU3WsfB9
	 BKaMNk5XntLKtjnf5aBjbnt6t2EKVpawlpsGzwNUDbp/tTMLj56Xi9wz0pOHbZai90
	 +bdQqIzndPXiQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5_s7tamny_4V; Mon, 16 Jan 2023 02:23:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6263F408DE;
	Mon, 16 Jan 2023 02:23:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6263F408DE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 418871BF386
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 02:23:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1F73060AB3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 02:23:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1F73060AB3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id naUsz5oJIc7D for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Jan 2023 02:23:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB030608B7
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CB030608B7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jan 2023 02:23:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="322063129"
X-IronPort-AV: E=Sophos;i="5.97,219,1669104000"; d="scan'208";a="322063129"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2023 18:23:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="658858854"
X-IronPort-AV: E=Sophos;i="5.97,219,1669104000"; d="scan'208";a="658858854"
Received: from unknown (HELO intel-71.bj.intel.com) ([10.238.154.71])
 by orsmga002.jf.intel.com with ESMTP; 15 Jan 2023 18:23:00 -0800
From: Zhu Yanjun <yanjun.zhu@intel.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Date: Mon, 16 Jan 2023 13:51:31 -0500
Message-Id: <20230116185131.63315-1-yanjun.zhu@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673835785; x=1705371785;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zSspbzPOerkJVpTB4SrCceZZpws3n9Kul9ZMusgzDi0=;
 b=Xndn2jiLltItzuhiRatRYhtMT9lGuHL9bi6S+Pjo++Hm6MIhx4WnNwi7
 Wp6/tMUyiwQWqi1F97oDkGVTCKhO4IO5J6Q4Ar21dGB13r4qw0du0DLmu
 s88M7EGOLqViZPL0BWC/OHzALxEl5G1pILAGGKI8EkOPNaz3wX9m0yTP6
 eSmuepMAPtIglNm5KNHqG0RutQLJXoycJwz6rauTf20pv5KTUpjnjb44Y
 KFN/W4/mA3WfeHuvUZeilr9bGKr5LviHU1U/H3uN2gIqXT4PXsHugOzLJ
 g8aR+qdlcsWYOFEFuZoVmes96suieB6hMW6Bhu7fJBa12DnSgatGvdpsP
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Xndn2jiL
Subject: [Intel-wired-lan] [PATCH 1/1] ice: Mention CEE DCBX in code comment
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
Cc: Zhu Yanjun <yanjun.zhu@linux.dev>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Zhu Yanjun <yanjun.zhu@linux.dev>

From the function ice_parse_org_tlv, CEE DCBX TLV is also supported.
So update the comment. Or else, it is confusing.

Signed-off-by: Zhu Yanjun <yanjun.zhu@linux.dev>
---
 drivers/net/ethernet/intel/ice/ice_dcb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb.c b/drivers/net/ethernet/intel/ice/ice_dcb.c
index 6be02f9b0b8c..7964405efa77 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb.c
@@ -566,7 +566,7 @@ ice_parse_cee_tlv(struct ice_lldp_org_tlv *tlv, struct ice_dcbx_cfg *dcbcfg)
  * @tlv: Organization specific TLV
  * @dcbcfg: Local store to update ETS REC data
  *
- * Currently only IEEE 802.1Qaz TLV is supported, all others
+ * Currently IEEE 802.1Qaz and CEE DCBX TLV are supported, others
  * will be returned
  */
 static void
@@ -585,7 +585,7 @@ ice_parse_org_tlv(struct ice_lldp_org_tlv *tlv, struct ice_dcbx_cfg *dcbcfg)
 		ice_parse_cee_tlv(tlv, dcbcfg);
 		break;
 	default:
-		break;
+		break; /* Other OUIs not supported */
 	}
 }
 
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
