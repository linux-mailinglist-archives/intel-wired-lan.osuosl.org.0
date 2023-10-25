Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B36277D6FA6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Oct 2023 16:48:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 381CD43370;
	Wed, 25 Oct 2023 14:48:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 381CD43370
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698245307;
	bh=gZTGY/U54SLkm6vwphb5pYERGGKiWG8yMoaJg7mT9ks=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=hbo7npWqxL0XSci0RMvhtzAITOfxjMq4pdit0SF8CNpFw8WnHl3+A0U9P1+Ut+aV+
	 sn0iPebFikIOsTx0pdwdrP/oytehe9qt2zOWEJHx3acwpOABIq0bafmnHUtaitmUyK
	 mKWZmcdf5ALPtXrVytZA64VvFebXkkB8AuwmZOah2WE9h+tH7jhTt80EsB09MjFR/J
	 2O4kwe8y1ykytr7ESEm7kq4WNZZhlFOczqVRyU7oE87fZTfh2b51w9C7bSvyxzTDlG
	 zEhfYxd34UUyFo/jv0M2SbtKclauK21q+aOFE1QGlRf7WIk66Kme0mfWwP1SCQKSZo
	 oIBX8pJ+qSJSg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yC_-00qCIXk3; Wed, 25 Oct 2023 14:48:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0667643394;
	Wed, 25 Oct 2023 14:48:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0667643394
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7FE481BF392
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 14:48:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 56B77610C4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 14:48:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 56B77610C4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4aHJcyMWWoeI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Oct 2023 14:48:18 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 80B5761056
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 14:48:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 80B5761056
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="451549035"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="451549035"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 07:48:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="902568385"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="902568385"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga001.fm.intel.com with ESMTP; 25 Oct 2023 07:45:36 -0700
Received: from giewont.igk.intel.com (giewont.igk.intel.com [10.211.8.15])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id A5FB7284DD;
 Wed, 25 Oct 2023 15:47:58 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 25 Oct 2023 16:47:24 +0200
Message-Id: <20231025144724.234304-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698245298; x=1729781298;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=r4IllklSL3eRFegSTstqSw7cLr2JXE5NvAhcg46wysE=;
 b=Kwv1m9EgHFfAmi5r8wMUgNbs6tjSFzVlJVO5ThCs/R5W5vYhMYTZSdTO
 EFtwW6Bo0hj5ceQOAOep/hFFiwVTiRobBA2Ami9M8LZ7wYZ56PuD2Bvvn
 jysrORa8qh27pxi29u1XLeQIAg0Pfso5cRa4rkojksfmFP/90KZGXkyYr
 D+ALNKZNNGDhG3HQdr1NAbjugWWQXpwK+3phjLM/0LN0PiTdv5UrnShR/
 1UaxI8zCNp+7XLQp6xTlQS2XA24v2sWW9PK1cmMbTYTR1ylUHdeYrnMsu
 7OLYiy7DdD/COB9Z84wzMke6qV7Xke0qCRopUjyXTRM+rSxEqRUPJeKXo
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Kwv1m9Eg
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: Fix VF-VF direction matching
 in drop rule in switchdev
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
Cc: netdev@vger.kernel.org, Marcin Szycik <marcin.szycik@linux.intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When adding a drop rule on a VF, rule direction is not being set, which
results in it always being set to ingress (ICE_ESWITCH_FLTR_INGRESS
equals 0). Because of this, drop rules added on port representors don't
match any packets.

To fix it, set rule direction in drop action to egress when netdev is a
port representor, otherwise set it to ingress.

Fixes: 0960a27bd479 ("ice: Add direction metadata")
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 24 ++++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
index 0e75fc6b3c06..dd03cb69ad26 100644
--- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
@@ -670,6 +670,25 @@ static int ice_tc_setup_redirect_action(struct net_device *filter_dev,
 	return 0;
 }
 
+static int
+ice_tc_setup_drop_action(struct net_device *filter_dev,
+			 struct ice_tc_flower_fltr *fltr)
+{
+	fltr->action.fltr_act = ICE_DROP_PACKET;
+
+	if (ice_is_port_repr_netdev(filter_dev)) {
+		fltr->direction = ICE_ESWITCH_FLTR_EGRESS;
+	} else if (ice_tc_is_dev_uplink(filter_dev)) {
+		fltr->direction = ICE_ESWITCH_FLTR_INGRESS;
+	} else {
+		NL_SET_ERR_MSG_MOD(fltr->extack,
+				   "Unsupported netdevice in switchdev mode");
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 static int ice_eswitch_tc_parse_action(struct net_device *filter_dev,
 				       struct ice_tc_flower_fltr *fltr,
 				       struct flow_action_entry *act)
@@ -678,7 +697,10 @@ static int ice_eswitch_tc_parse_action(struct net_device *filter_dev,
 
 	switch (act->id) {
 	case FLOW_ACTION_DROP:
-		fltr->action.fltr_act = ICE_DROP_PACKET;
+		err = ice_tc_setup_drop_action(filter_dev, fltr);
+		if (err)
+			return err;
+
 		break;
 
 	case FLOW_ACTION_REDIRECT:
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
