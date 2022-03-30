Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A13094EBD94
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Mar 2022 11:23:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 079CC61076;
	Wed, 30 Mar 2022 09:23:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0V2nuxF8ROZH; Wed, 30 Mar 2022 09:23:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 05A6861028;
	Wed, 30 Mar 2022 09:23:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C018D1BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Mar 2022 09:23:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AB29A61028
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Mar 2022 09:23:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XGsDmB2jswNO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Mar 2022 09:23:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AEA2460BFC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Mar 2022 09:23:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648632197; x=1680168197;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=y23RIbKwqNxa/t3JcK6RsI/UqNmh00039XVrepKkUTs=;
 b=iSrw4r9VA4z1Qjl0xMfCf3IlOcEjWnZNaJj96+mcHHBxhyknczXyQPmR
 FUWN0bYOaziH0wllKKoN238bOL9kmzIZ/z9K4kINWF0G7Og91jfwotNUQ
 I0fAFuhAUB+Bv1eRYOwb7+phh/UrTIfbig9F1F30t3EEbcIJizR7KLjiD
 nctkj8o3nkik+P90qN4Xl7i+PwCxDB08uaMTnvH2Usv1Fk9TNGrrCafX3
 rSxccdeCum+6vCmHcWv8HsSw3ntV7xJFEqDyRF7aGb2037kUy1OkjTroy
 rJeGhXT+6KKtxV52ZEodE1HN5nDwOmHeBZEJGUJxK1iGeW01OaNS4wxPK Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="241652629"
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="241652629"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 02:23:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="519609463"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga002.jf.intel.com with ESMTP; 30 Mar 2022 02:23:13 -0700
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 22U9NCcO004547; Wed, 30 Mar 2022 10:23:12 +0100
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 30 Mar 2022 11:20:46 +0200
Message-Id: <20220330092046.2727362-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-next] ice: switch: fix a braino in
 the new dummy packet match definitions
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
Cc: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There's a trivial mistake[0] in @ice_dummy_pkt_profile due to which
it incorrectly states that "plain" TCP IPv6 packets should match on
the flag 'inner IPv6', not the 'outer' one.

[0] https://lore.kernel.org/netdev/PH0PR11MB5782637EA9771D3ED4E56012FD1E9@PH0PR11MB5782.namprd11.prod.outlook.com

Fixes: b5c7ae81ff90 ("ice: switch: convert packet template match code to rodata")
Reported-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
---
Tony, please squash it with the mentioned commit on applying.
Thanks.
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index ed7130b7abfe..496250f9f8fc 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -1276,8 +1276,8 @@ static const struct ice_dummy_pkt_profile ice_dummy_pkt_profiles[] = {
 	ICE_PKT_PROFILE(udp_ipv6, ICE_PKT_OUTER_IPV6 | ICE_PKT_INNER_UDP),
 	ICE_PKT_PROFILE(vlan_udp, ICE_PKT_INNER_UDP | ICE_PKT_VLAN),
 	ICE_PKT_PROFILE(udp, ICE_PKT_INNER_UDP),
-	ICE_PKT_PROFILE(vlan_tcp_ipv6, ICE_PKT_INNER_IPV6 | ICE_PKT_VLAN),
-	ICE_PKT_PROFILE(tcp_ipv6, ICE_PKT_INNER_IPV6),
+	ICE_PKT_PROFILE(vlan_tcp_ipv6, ICE_PKT_OUTER_IPV6 | ICE_PKT_VLAN),
+	ICE_PKT_PROFILE(tcp_ipv6, ICE_PKT_OUTER_IPV6),
 	ICE_PKT_PROFILE(vlan_tcp, ICE_PKT_VLAN),
 	ICE_PKT_PROFILE(tcp, 0),
 };
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
