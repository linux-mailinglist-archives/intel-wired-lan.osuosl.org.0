Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 751AE4EED85
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Apr 2022 14:55:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EACCF60E93;
	Fri,  1 Apr 2022 12:55:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rFRBN9e99j72; Fri,  1 Apr 2022 12:55:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F2B4960E63;
	Fri,  1 Apr 2022 12:55:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 771061BF308
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Apr 2022 12:55:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 64891419AE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Apr 2022 12:55:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ymm5cX-xvxPv for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Apr 2022 12:55:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8EAD441977
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Apr 2022 12:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648817701; x=1680353701;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NIxxOF4X+NBZXmFKmeG0AwAoyQKtEKclmBIOxgqHrFk=;
 b=A25/5ytzzck0iRPG/fNv7U/ThqaHVgJtbyAAMHbkzzLzRP1O72Hpmsym
 BRN70Jpo8d4xqQ5l9A/Uau+qnwx5M7Sn+5X3D+wxoJHGrv4j5Rbqc1kjs
 RPb5cumjheaZkQ/f/59HqD5QCgTBsL6+20vrbcaURQ3yyMlTXz+DN/3gR
 1koueQk8dhs929+mACOKVfjR6i6mKJ8WJdiSE2nhFnmUfgdFiwxLC0RUp
 9Moshulz0rWZX56WXWiLJqJHiRKz7ZLeNV4tDFpHK91wInQm6iLse15i8
 EaF6CDrpDoioMxqxKAepJEWA1Lt8X4CjTSjZe/2W/DrPGs4g8a7FJPAvG w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10303"; a="258962266"
X-IronPort-AV: E=Sophos;i="5.90,227,1643702400"; d="scan'208";a="258962266"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 05:55:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,227,1643702400"; d="scan'208";a="547791709"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orsmga007.jf.intel.com with ESMTP; 01 Apr 2022 05:54:57 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  1 Apr 2022 14:54:38 +0200
Message-Id: <20220401125438.292649-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-net] ice: allow creating VFs for
 !CONFIG_NET_SWITCHDEV
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
Cc: Michal Swiatkowski <michal.swiatkowski@intel.com>, netdev@vger.kernel.org,
 kuba@kernel.org, davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently for !CONFIG_NET_SWITCHDEV kernel builds it is not possible to
create VFs properly as call to ice_eswitch_configure() returns
-EOPNOTSUPP for us. This is because CONFIG_ICE_SWITCHDEV depends on
CONFIG_NET_SWITCHDEV.

Change the ice_eswitch_configure() implementation for
!CONFIG_ICE_SWITCHDEV to return 0 instead -EOPNOTSUPP and let
ice_ena_vfs() finish its work properly.

CC: Grzegorz Nitka <grzegorz.nitka@intel.com>
Fixes: 1a1c40df2e80 ("ice: set and release switchdev environment")
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.h b/drivers/net/ethernet/intel/ice/ice_eswitch.h
index bd58d9d2e565..6a413331572b 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.h
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.h
@@ -52,7 +52,7 @@ static inline void ice_eswitch_update_repr(struct ice_vsi *vsi) { }
 
 static inline int ice_eswitch_configure(struct ice_pf *pf)
 {
-	return -EOPNOTSUPP;
+	return 0;
 }
 
 static inline int ice_eswitch_rebuild(struct ice_pf *pf)
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
