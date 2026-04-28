Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id JNbpHmJm8GkKTAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 09:48:50 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A3247F39E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 09:48:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA32C60EEE;
	Tue, 28 Apr 2026 07:48:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bANCFbU_zBHj; Tue, 28 Apr 2026 07:48:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 33F0960EE4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777362526;
	bh=5KLkgtc/ClwA1IW4x25/+pMIcPRvAbZOkKaAblLfepE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XFKbIJFzJCLwu/VoO/YamD7vwA3pQHYhN5Imign50/qTiR/LS/gGUuSya6MIx/Gkp
	 a4MFQU4KasIpJ7gHrdoNb6afLxpidY+bW7TeBmLhZg4NyYaxCYK8+wdIR4yYhCxB4+
	 H2I1hGrtYR/5H5bQVCPtXD2R8OVMD0zK3GWx/aNRO0opw++mvEjEV+K1kffbbF3bFq
	 jC4fVeYWuKHe4TsaYlirGAFsGoSQ2rFyLB4sL/kowqW2dxaXUZDuwaAIQA/JcCWVlX
	 qQeFYIqkv4wk2uHEb+hTj+BysMYnb9Q76OFIeKunS11faJLZ+xjfnvm+w2ExWne/CX
	 h69zOBgovsWng==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 33F0960EE4;
	Tue, 28 Apr 2026 07:48:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 509371B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 07:48:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 368ED81DF6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 07:48:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0Y8ajV3lGc_6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 07:48:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2F73080984
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2F73080984
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2F73080984
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 07:48:43 +0000 (UTC)
X-CSE-ConnectionGUID: SynQMH3cS0mFhnfCxUjMBA==
X-CSE-MsgGUID: 5Hq8utxFRAWOiSTtggpRpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="82114988"
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="82114988"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 00:48:43 -0700
X-CSE-ConnectionGUID: Wk4hzHRfT0iqPGSytiMW/A==
X-CSE-MsgGUID: srlJlaO7Tty0WggEyj2/eA==
X-ExtLoop1: 1
Received: from os-delivery.igk.intel.com ([10.102.21.165])
 by fmviesa003.fm.intel.com with ESMTP; 28 Apr 2026 00:48:41 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, jramaseu@redhat.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, aleksandr.loktionov@intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Date: Tue, 28 Apr 2026 09:06:47 +0200
Message-ID: <20260428070647.777141-3-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260428070647.777141-1-michal.swiatkowski@linux.intel.com>
References: <20260428070647.777141-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777362523; x=1808898523;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=v7FR8f9Bf7hDGtGHvqy69oIKLKN59GzoNuO6jFdL1vk=;
 b=JcDMAm2tcklVcaEKqyF7daMU+Z/dxDCxIFp/x185+7iq49xsBlbMEol7
 lljNWCopkpNqprA30TI4recK2r+kiDdRVO9HlWQX666esmLedl7YxF1+f
 qYggrULNQeEr49nBhS/utjcNpXspFTsQw6UJn62qHKIu2MpYspi68YUJK
 OPgZ/nSbaV4NzFn4HNy7Txl2jhSIS9eT9dkLmjKzp53SsLAiK51Tb9OrZ
 YyzM7dBgRKhsSED3BqDo/nvywHJqIQEqntC+hQqro7+4zZUIV+lBkm0q6
 xC+SGC2SniUQTkuDH2viiFck5Lw7qUwYRKqj4LuYs03q6vvOoHlqbYG/7
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JcDMAm2t
Subject: [Intel-wired-lan] [PATCH iwl-net v1 2/2] ice: use NETIF_F_HW_CSUM
 instead of IP/IPV6
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: D6A3247F39E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[michal.swiatkowski@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]

The hardware is capable of calculating checksum for IPV6 packets with
extension header. To not drop such packets switch from IP/IPV6 checksum
to HW_CSUM.

HW_CSUM is also used in previous generation (i40e).

Previously HW_CSUM was used to indicate that hardware supports general
checksum. Drop it assuming that if the hardware supports it, it is used.

Disabling offload for E830 in case of TSO isn't needed anymore as the
check for TSO is done in Tx path just before preparation of the special
GCS descriptor.

The commit from Fixes didn't introduce a bug, it just shown that the
driver is doing sth wrong with the checksum features.

Suggested-by: Jakub Ramaseuski <jramaseu@redhat.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Fixes: 04c20a9356f2 ("net: skip offload for NETIF_F_IPV6_CSUM if ipv6 header contains extension")
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 21 +--------------------
 1 file changed, 1 insertion(+), 20 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 15550216fbf0..0f2f949af536 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3500,9 +3500,8 @@ void ice_set_netdev_features(struct net_device *netdev)
 			NETIF_F_RXHASH;
 
 	csumo_features = NETIF_F_RXCSUM	  |
-			 NETIF_F_IP_CSUM  |
 			 NETIF_F_SCTP_CRC |
-			 NETIF_F_IPV6_CSUM;
+			 NETIF_F_HW_CSUM;
 
 	vlano_features = NETIF_F_HW_VLAN_CTAG_FILTER |
 			 NETIF_F_HW_VLAN_CTAG_TX     |
@@ -3564,12 +3563,6 @@ void ice_set_netdev_features(struct net_device *netdev)
 	/* Allow core to manage IRQs affinity */
 	netif_set_affinity_auto(netdev);
 
-	/* Mutual exclusivity for TSO and GCS is enforced by the set features
-	 * ndo callback.
-	 */
-	if (ice_is_feature_supported(pf, ICE_F_GCS))
-		netdev->hw_features |= NETIF_F_HW_CSUM;
-
 	netif_set_tso_max_size(netdev, ICE_MAX_TSO_SIZE);
 }
 
@@ -6489,18 +6482,6 @@ ice_set_features(struct net_device *netdev, netdev_features_t features)
 	if (changed & NETIF_F_LOOPBACK)
 		ret = ice_set_loopback(vsi, !!(features & NETIF_F_LOOPBACK));
 
-	/* Due to E830 hardware limitations, TSO (NETIF_F_ALL_TSO) with GCS
-	 * (NETIF_F_HW_CSUM) is not supported.
-	 */
-	if (ice_is_feature_supported(pf, ICE_F_GCS) &&
-	    ((features & NETIF_F_HW_CSUM) && (features & NETIF_F_ALL_TSO))) {
-		if (netdev->features & NETIF_F_HW_CSUM)
-			dev_err(ice_pf_to_dev(pf), "To enable TSO, you must first disable HW checksum.\n");
-		else
-			dev_err(ice_pf_to_dev(pf), "To enable HW checksum, you must first disable TSO.\n");
-		return -EIO;
-	}
-
 	return ret;
 }
 
-- 
2.49.0

