Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EDA84FC813
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Apr 2022 01:29:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1F554410C0;
	Mon, 11 Apr 2022 23:29:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jKZWKRk5V7p1; Mon, 11 Apr 2022 23:29:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id ECAFB410B5;
	Mon, 11 Apr 2022 23:29:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7AE951BF399
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Apr 2022 23:29:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DCD1160B9A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Apr 2022 23:29:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IwdzXnJ3Coyt for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Apr 2022 23:29:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E4B3660E43
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Apr 2022 23:29:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649719754; x=1681255754;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=22oOZLmpun3slFU06FDW/TmpEHQh9P0V/fqHZ/WBPgk=;
 b=IxApYSlCiFG2MydX1Rz49L4otVR3KLYKtWaubjv9L96sKp85EYzFMEOx
 yKrr9JIiSZRBn/aYAw9HZlcyOg83vXbZ2dyddoBlOnIzQmKgVoQps/3+v
 m4R5JooY9pxRy1tB1s9BMZE2vgLWTu+AuhuFCMqV2p7wJ6qCUIxfEqh5c
 DBcPNHnVILaiJUIN9fppZ87N39b2VX5kUBc5J0L9wV1Rb6koxeU10bsew
 Da7nbn9xpNaMVG+gAMq6AR7xw+mO+RUvJlN09GNyZPgLKw+xUqDWyEb5N
 5+RWYwKuveL3ljlUaKgFOGZjgShNdTOvcIHpAB7T1e9lU1NwZEgpKjlrp Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10314"; a="244121036"
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="244121036"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 16:29:13 -0700
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="660246422"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.7])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 16:29:13 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Mon, 11 Apr 2022 16:29:07 -0700
Message-Id: <20220411232907.1022602-7-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.456.ga9c7032d4631
In-Reply-To: <20220411232907.1022602-1-jacob.e.keller@intel.com>
References: <20220411232907.1022602-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 6/6] ice: remove period on
 argument description in ice_for_each_vf
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

The ice_for_each_vf macros have comments describing the implementation.
One of the arguments has a period on the end, which is not our typical
style. Remove the unnecessary period.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_vf_lib.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index 831b667dc5b2..1b4380d6d949 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -176,7 +176,7 @@ static inline u16 ice_vf_get_port_vlan_tpid(struct ice_vf *vf)
  * ice_for_each_vf - Iterate over each VF entry
  * @pf: pointer to the PF private structure
  * @bkt: bucket index used for iteration
- * @vf: pointer to the VF entry currently being processed in the loop.
+ * @vf: pointer to the VF entry currently being processed in the loop
  *
  * The bkt variable is an unsigned integer iterator used to traverse the VF
  * entries. It is *not* guaranteed to be the VF's vf_id. Do not assume it is.
@@ -192,7 +192,7 @@ static inline u16 ice_vf_get_port_vlan_tpid(struct ice_vf *vf)
  * ice_for_each_vf_rcu - Iterate over each VF entry protected by RCU
  * @pf: pointer to the PF private structure
  * @bkt: bucket index used for iteration
- * @vf: pointer to the VF entry currently being processed in the loop.
+ * @vf: pointer to the VF entry currently being processed in the loop
  *
  * The bkt variable is an unsigned integer iterator used to traverse the VF
  * entries. It is *not* guaranteed to be the VF's vf_id. Do not assume it is.
-- 
2.35.1.456.ga9c7032d4631

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
