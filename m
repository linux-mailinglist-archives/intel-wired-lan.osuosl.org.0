Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B5BDB6EFA82
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Apr 2023 20:57:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4764983C44;
	Wed, 26 Apr 2023 18:57:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4764983C44
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682535451;
	bh=ysVR89GvkwA7F1VGJjNIQRRpPumYEUEVskzYCZoJJo8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=mGEE3vfvrz/zNUhEV+Mp9BzifvMCtb6SVfpGuZPT9qZKmSiRaJDNT+LtPZF1ipAdt
	 M/XGhjq28Q5VS3zoYZcAIoii1mWFRiGbIZaOOp3r0IqwHR6dLmS/3/TSUzgDmHjK3E
	 Fhe7h74eg/GEfdBrPngzwC/cWx0xJJMVUAhmEwpGM5Q6Lt69YdWyioHQwaEH7h1VjV
	 WmxVBRNaP/xF2wYuP4bpQvxmg684FNxIqcLFwxs9mJVmySw09ZzpRMD605C+83daot
	 Px9fyWMUII1v2lrTosnOiqXL75oRawm9HrvKpalNckFNrA5EAnl2sh40CzBREJ/01A
	 wURHj0koJzJcw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rm3EUmV0gtcM; Wed, 26 Apr 2023 18:57:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4DB8C83C25;
	Wed, 26 Apr 2023 18:57:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4DB8C83C25
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 22B5C1BF5AE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Apr 2023 18:57:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0363D61525
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Apr 2023 18:57:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0363D61525
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7zovAd5Fudgr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Apr 2023 18:57:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9D0C7607E1
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9D0C7607E1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Apr 2023 18:57:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="327529661"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="327529661"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 11:57:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="868396226"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="868396226"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.168])
 by orsmga005.jf.intel.com with ESMTP; 26 Apr 2023 11:57:07 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 26 Apr 2023 11:50:45 -0700
Message-Id: <20230426185047.725910-1-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682535444; x=1714071444;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EIceTSH7I7dlyL93I7Q9+ocMQAgLT0Mb0Lz6KJFERxg=;
 b=N9F0GLlyH8HVfu2g0Ckm7o+Xr6F1OYunRW6jd3QDCXiaSBu3fcSA9+h7
 5m7UtHGxyYyEKhB4j0+sX7cVaoi8N509JukwhtOUk7USeKsfZYy/nN14A
 x1PhAmcCXEqviQ73dLgB+/lZefEe9rihpeuPCBcTYrTVyHSrg2mMOdLUj
 2m9AdgXciMBgj9+ZEo4KdG6lDAHz2CcPam4inaRv6/dQ5UfAHyQKaCeE7
 OzHzTfv0oc70tdgxJEf7u0yFEaEjvxtSgy/IS4ikU18QYeT1YVbC3HVnL
 yLVY32gkD9uFCi+JHL2DkFJVmegMOXaBcOmVsCsvYmtf9xByf9RGOguVP
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=N9F0GLly
Subject: [Intel-wired-lan] [PATCH net 1/3] ice: update
 ICE_PHY_TYPE_HIGH_MAX_INDEX
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

ICE_PHY_TYPE_HIGH_MAX_INDEX should be the maximum index value and not the
length/number of ICE_PHY_TYPE_HIGH. This is not an issue because this
define is only used when calling ice_get_link_speed_based_on_phy_type(),
which will return ICE_AQ_LINK_SPEED_UNKNOWN for any invalid index. The
caller of ice_get_link_speed_based_on_phy_type(), ice_update_phy_type()
checks that the return value is a valid link speed before using it and
ICE_AQ_LINK_SPEED_UNKNOWN is not. However, update the define to reflect
the correct value.

Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 740236b3f0fc..8a624cef0eb0 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1105,7 +1105,7 @@ struct ice_aqc_get_phy_caps {
 #define ICE_PHY_TYPE_HIGH_100G_CAUI2		BIT_ULL(2)
 #define ICE_PHY_TYPE_HIGH_100G_AUI2_AOC_ACC	BIT_ULL(3)
 #define ICE_PHY_TYPE_HIGH_100G_AUI2		BIT_ULL(4)
-#define ICE_PHY_TYPE_HIGH_MAX_INDEX		5
+#define ICE_PHY_TYPE_HIGH_MAX_INDEX		4
 
 struct ice_aqc_get_phy_caps_data {
 	__le64 phy_type_low; /* Use values from ICE_PHY_TYPE_LOW_* */
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
