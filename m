Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B7A628714
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Nov 2022 18:29:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ECAA241685;
	Mon, 14 Nov 2022 17:29:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ECAA241685
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668446987;
	bh=sDPrazTD1CDcGpA1c6sRbcJBjpJCiOBmCk2utfMoLiQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=3vt4kTGRt5B0STLGmfkl2FVGL9gStmsRzkK4y9bFlHO5Ovj7ssM+VE7u88Uy3rf81
	 CtIxmRziflbwUvabALXBs0OseT3Gsadi2qM4sk5gBcYLzr+cNezdeGTTziwv5Lf+na
	 3YsvOufrWwHCxNEFx72ryfIdvDhjHHmpA2eedjbXcGS3GOR+GmkQanqTMQsUZ1ov8i
	 WQIidsyzs89Rx1gFTgZLcT/fyEzchLwmX9IayQaxQ2M5JLT+Oq2VbOdu1p7B/XnFOm
	 oAY9sjoe9G1Aq90eBlGrDIg93z6ByAqeHCl+rNKeufDYnKCeKGoUubJCFSRu/aPNt+
	 EdVuT4hx7450A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7fnFNNo1BtCU; Mon, 14 Nov 2022 17:29:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A9145415E3;
	Mon, 14 Nov 2022 17:29:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A9145415E3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EFDBD1BF31F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 17:29:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C08AB415E3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 17:29:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C08AB415E3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NOG_DU812beC for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Nov 2022 17:29:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7449A4155E
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7449A4155E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 17:29:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="398320874"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="398320874"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 09:29:35 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="727609629"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="727609629"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 09:29:35 -0800
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 14 Nov 2022 09:30:04 -0800
Message-Id: <20221114173004.658320-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668446976; x=1699982976;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TAhAs//9x/gQJaQzhQ+fqoIP1GirMJieXFEXB7HqRGk=;
 b=lDvAo8rWHTN6bXiPKhCOMt0jQF7tCiwwF8WdhMdGLAPNs7YjCkp/R3FM
 C3BQeKEqPxNCGiiumh7tmCIL1xYiqXWXGfOV9jlb09zpEw9WHf5InoG7S
 wvMe19eUCLVNOO5mjy6j4qxF1mqk2JMjtDnLRzjMhmwrSpyUBEyiwk1FN
 yMtq6mtTMbtAG0AATxR4Kpx5jMYajSJaBEi0jjf2yNr4wiamAPQAHVYwi
 NLjZru8wZWbk9EF4DMGT0NT+IYsQfiMFFcoda/dVzKz7ZMt17i5l2EMfE
 3Ou17JTX/6+W7r4gUUZLhlYyT46DMkK7RlGhFbhEC71RCMFMaRYHh3JK3
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lDvAo8rW
Subject: [Intel-wired-lan] [PATCH net v2] ice: Correctly handle aux device
 when num channels change
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

When the number of channels/queues changes on an interface, it is necessary
to change how those resources are distributed to the auxiliary device for
maintaining RDMA functionality.  To do this, the best way is to unplug, and
then re-plug the auxiliary device.  This will cause all current resource
allocation to be released, and then re-requested under the new state.

Since the set_channel command from ethtool comes in while holding the RTNL
lock, it is necessary to offset the plugging and unplugging of auxiliary
device to another context.  For this purpose, set the flags for UNPLUG and
PLUG in the PF state, then respond to them in the service task.

Also, since the auxiliary device will be unplugged/plugged at the end of
the flow, it is better to not send the event for TCs changing in the
middle of the flow.  This will prevent a timing issue between the events
and the probe/release calls conflicting.

Fixes: 348048e724a0 ("ice: Implement iidc operations")
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         | 2 ++
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 6 ++++++
 drivers/net/ethernet/intel/ice/ice_idc.c     | 3 +++
 drivers/net/ethernet/intel/ice/ice_main.c    | 3 +++
 4 files changed, 14 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 001500afc4a6..092e572768fe 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -281,6 +281,7 @@ enum ice_pf_state {
 	ICE_FLTR_OVERFLOW_PROMISC,
 	ICE_VF_DIS,
 	ICE_CFG_BUSY,
+	ICE_SET_CHANNELS,
 	ICE_SERVICE_SCHED,
 	ICE_SERVICE_DIS,
 	ICE_FD_FLUSH_REQ,
@@ -485,6 +486,7 @@ enum ice_pf_flags {
 	ICE_FLAG_VF_VLAN_PRUNING,
 	ICE_FLAG_LINK_LENIENT_MODE_ENA,
 	ICE_FLAG_PLUG_AUX_DEV,
+	ICE_FLAG_UNPLUG_AUX_DEV,
 	ICE_FLAG_MTU_CHANGED,
 	ICE_FLAG_GNSS,			/* GNSS successfully initialized */
 	ICE_PF_FLAGS_NBITS		/* must be last */
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index b7be84bbe72d..37e174a19860 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3536,6 +3536,8 @@ static int ice_set_channels(struct net_device *dev, struct ethtool_channels *ch)
 		return -EINVAL;
 	}
 
+	set_bit(ICE_SET_CHANNELS, pf->state);
+
 	ice_vsi_recfg_qs(vsi, new_rx, new_tx);
 
 	if (!netif_is_rxfh_configured(dev))
@@ -3543,6 +3545,10 @@ static int ice_set_channels(struct net_device *dev, struct ethtool_channels *ch)
 
 	/* Update rss_size due to change in Rx queues */
 	vsi->rss_size = ice_get_valid_rss_size(&pf->hw, new_rx);
+	clear_bit(ICE_SET_CHANNELS, pf->state);
+
+	set_bit(ICE_FLAG_UNPLUG_AUX_DEV, pf->flags);
+	set_bit(ICE_FLAG_PLUG_AUX_DEV, pf->flags);
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_idc.c b/drivers/net/ethernet/intel/ice/ice_idc.c
index 895c32bcc8b5..9bf6fa5ed4c8 100644
--- a/drivers/net/ethernet/intel/ice/ice_idc.c
+++ b/drivers/net/ethernet/intel/ice/ice_idc.c
@@ -37,6 +37,9 @@ void ice_send_event_to_aux(struct ice_pf *pf, struct iidc_event *event)
 	if (WARN_ON_ONCE(!in_task()))
 		return;
 
+	if (test_bit(ICE_SET_CHANNELS, pf->state))
+		return;
+
 	mutex_lock(&pf->adev_mutex);
 	if (!pf->adev)
 		goto finish;
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 0f6718719453..b066148b210c 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2300,6 +2300,9 @@ static void ice_service_task(struct work_struct *work)
 		}
 	}
 
+	if (test_and_clear_bit(ICE_FLAG_UNPLUG_AUX_DEV, pf->flags))
+		ice_unplug_aux_dev(pf);
+
 	if (test_bit(ICE_FLAG_PLUG_AUX_DEV, pf->flags)) {
 		/* Plug aux device per request */
 		ice_plug_aux_dev(pf);
-- 
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
