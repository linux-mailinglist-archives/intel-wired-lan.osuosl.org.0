Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +PlQIWBm8GmWSwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 09:48:48 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C1D47F38E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 09:48:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 84DE1835B9;
	Tue, 28 Apr 2026 07:48:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rAA59u-zwFtV; Tue, 28 Apr 2026 07:48:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 049B7835A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777362525;
	bh=jZwj4tX/oev43hW6mlw83gckHgi/VwfgkmUGlAjEjyk=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eVlZa15jm8WPvV9xWCQs3/3nk5VjuNZ1+eFwznFzcz5vc6XcHJ+4kvdyIWrs1qdlc
	 h0lmikegAidoIc9ot0ct6JKI3K7VHXj1DHDfG7heDU+tSIxBusalwhpDC3GXhxeNBc
	 w2VR0wUR5sJWY1c17CS04m1LowAGNBkmbZZZXvyXvxQ2xPtlWzjlzWWE+X05rQ7GVn
	 E6B2iiElA4tUaVPWTqfW+mB4cXYHROyjl4HcUqsqNj0+/Uki5a5HWlRPM0lgzQ34VS
	 XcWBLWjy4LR4ZxOgtTxWWwcHZPGVl88rrDAldPwcJSRiK73Rmddwm4RRfIxItDL3hm
	 eXyut85duThuQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 049B7835A3;
	Tue, 28 Apr 2026 07:48:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C2DDD1B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 07:48:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B4DEB835A3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 07:48:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eXPpyrlZg8JU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 07:48:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E754E80984
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E754E80984
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E754E80984
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 07:48:41 +0000 (UTC)
X-CSE-ConnectionGUID: JEJwj2pgSJO5beip3bt+ew==
X-CSE-MsgGUID: rAHcBGM/T8ONTCYwoQ9r9w==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="82114977"
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="82114977"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 00:48:41 -0700
X-CSE-ConnectionGUID: oZxoNrDDT2KD76jnox+vpA==
X-CSE-MsgGUID: RZOxA7l0Sb+HUeBPeYePMQ==
X-ExtLoop1: 1
Received: from os-delivery.igk.intel.com ([10.102.21.165])
 by fmviesa003.fm.intel.com with ESMTP; 28 Apr 2026 00:48:39 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, jramaseu@redhat.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, aleksandr.loktionov@intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Date: Tue, 28 Apr 2026 09:06:46 +0200
Message-ID: <20260428070647.777141-2-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260428070647.777141-1-michal.swiatkowski@linux.intel.com>
References: <20260428070647.777141-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777362522; x=1808898522;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=89VxZuTuAfq1TCEMT31Kq1wu5QB4YSBR1QkGpSsfP4Y=;
 b=ZLqvc++FnAsxpdsJBpfD2Y7dtlR9tMDhJblSsLzeiBCpSRJ6PqOWnuKo
 MSG6+GIM9J9QCO98pbjvtwO6Lb3qERF33AY5RGaiorsp6GxUpLF3yMs3p
 Yx2hZ27tjDlWAjuJhWuYwir+IoSlDQFc/QLh44+MxPY1TqMgPn57OU1Uh
 6a9nxkpPpDshqA/W7sJKKmStZ+wpbUHeK0DTLLTjDOaVdEy6PYBCoUyUM
 XZ6z+h4BvZi4J5wy7ofZ7eI92ejK3TprzjohnWvEWDqg3AUk0rLpCwshB
 M1s7hgHBZTI48qVHnk8+7OxWMBitECasFwA9eqbBgBRJaMJgOEiIyr7cD
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZLqvc++F
Subject: [Intel-wired-lan] [PATCH iwl-net v1 1/2] ice: always do GCS if
 hardware supports it
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
X-Rspamd-Queue-Id: 77C1D47F38E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[michal.swiatkowski@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]

There is no need to check for NETIF_HW_CSUM. If the code reach
calculating checksum it means that correct checksum flags are set,
because kernel is checking that when setting ip->summed.

Instead of netdev feature flag use Tx ring flag to check if the hardware
can use special descriptor for checksum calculating.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c  | 4 ++++
 drivers/net/ethernet/intel/ice/ice_txrx.c | 2 +-
 drivers/net/ethernet/intel/ice/ice_txrx.h | 1 +
 3 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 837b71b7b2b7..033fabc22f58 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1415,6 +1415,10 @@ static int ice_vsi_alloc_rings(struct ice_vsi *vsi)
 			set_bit(ICE_TX_RING_FLAGS_VLAN_L2TAG2, ring->flags);
 		else
 			set_bit(ICE_TX_RING_FLAGS_VLAN_L2TAG1, ring->flags);
+
+		if (ice_is_feature_supported(pf, ICE_F_GCS))
+			set_bit(ICE_TX_RING_FLAGS_GCS, ring->flags);
+
 		WRITE_ONCE(vsi->tx_rings[i], ring);
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 4ca1a0602307..25b19a5d817e 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1743,7 +1743,7 @@ int ice_tx_csum(struct ice_tx_buf *first, struct ice_tx_offload_params *off)
 	l3_len = l4.hdr - ip.hdr;
 	offset |= (l3_len / 4) << ICE_TX_DESC_LEN_IPLEN_S;
 
-	if ((tx_ring->netdev->features & NETIF_F_HW_CSUM) &&
+	if (test_bit(ICE_TX_RING_FLAGS_GCS, tx_ring->flags) &&
 	    !(first->tx_flags & ICE_TX_FLAGS_TSO) &&
 	    !skb_csum_is_sctp(skb)) {
 		/* Set GCS */
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index 5e517f219379..15dbd5100912 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -217,6 +217,7 @@ enum ice_tx_ring_flags {
 	ICE_TX_RING_FLAGS_VLAN_L2TAG1,
 	ICE_TX_RING_FLAGS_VLAN_L2TAG2,
 	ICE_TX_RING_FLAGS_TXTIME,
+	ICE_TX_RING_FLAGS_GCS,
 	ICE_TX_RING_FLAGS_NBITS,
 };
 
-- 
2.49.0

