Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UOPPKXXT4WnQyQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 08:30:13 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB334176CF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 08:30:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A28360B3B;
	Fri, 17 Apr 2026 06:30:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SITyYDvLQ8SU; Fri, 17 Apr 2026 06:30:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8445E60C09
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776407406;
	bh=oemXiSc9KUwUXa5egCJcntAKt2FOTT9c+N9ItQ0hXG0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mh7rmXPODncgwn+oQsMrM3xWGN9YbqyZV0syicQOJ6ZrmeYr7XNTbgcQg1QSrRTac
	 31btOzCS3bcTuJwxtpleuWH6k+wzKcBMnDrD4oQxxbHdx1pJZTk3n9o+pefsGFq4l6
	 iMmwVz/b4eNvDKKGm0mBZbWHBOwftCc963Wxlgm1qN51KQhrZmoUeIhqIZuWd9fkdL
	 QDGxLFHnJMz+DOF8hsrN5iVPvloPrdPodNzpuVZaxSJx5gf0V8dPnZdfessfF/lLHV
	 qkbuKLMdV+QP1oy9JCAGNucxSPof3j8YVn0mNNHr91ZJfBDCuYfyUQHcysKnKNXcR+
	 vE9pc/MHJ0KzA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8445E60C09;
	Fri, 17 Apr 2026 06:30:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id CBD03259
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 06:30:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B232D40549
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 06:30:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZqeZOu5L2afH for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Apr 2026 06:30:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BB49A40544
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BB49A40544
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BB49A40544
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 06:30:03 +0000 (UTC)
X-CSE-ConnectionGUID: PBw0WgkoSyqzP2hkds3Unw==
X-CSE-MsgGUID: 1P7Q5yBxR3iYVlur1B1KiQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="94987413"
X-IronPort-AV: E=Sophos;i="6.23,183,1770624000"; d="scan'208";a="94987413"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 23:30:03 -0700
X-CSE-ConnectionGUID: 5YymVZ47SJy22yljnjz78w==
X-CSE-MsgGUID: kbhWPzO0R0CEJgxzkM5zIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,183,1770624000"; d="scan'208";a="235329594"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa004.jf.intel.com with ESMTP; 16 Apr 2026 23:30:02 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Jan Glaza <jan.glaza@intel.com>
Date: Fri, 17 Apr 2026 08:29:54 +0200
Message-ID: <20260417062954.1241900-5-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260417062954.1241900-1-aleksandr.loktionov@intel.com>
References: <20260417062954.1241900-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776407403; x=1807943403;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NtB753eXsLk4+qxyJOoMbmx22XzwyHTBNlffDqorEjs=;
 b=UwrdpX4KMQSJle34+8SCLsGP/UFn7N0Z8vKyHqdu2/x3FySiAKlO4q96
 eyaZfwLOOIdTl25oq3mqjTHDFahHFej5zU2cHcQIaFZVr7r6OEC1jDpYr
 gsy6MPnbepEQ67ASfuxr6pAYucK0ZdSHTFvi1P6InAWy7COeg+6VOI1CT
 QtiZ3wIxl2iznC64aFsusa+D+jpqluiO4n8Kyjp0d8ZkTAqR0W0QtDjsR
 uZTY6yPO1Po0GeSA0REG4kJpRquNuh06fVe+l2ZgUHpkSgPELglD9BzPF
 gfnNizlbKhRjv1y9iZLCfAsEdRLeR/rYmQNFb2wxyoQTQcjcwu5Ntn3TA
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UwrdpX4K
Subject: [Intel-wired-lan] [PATCH iwl-net 4/4] ice: report EIPE checksum
 errors to the OS on E830
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5CB334176CF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Jan Glaza <jan.glaza@intel.com>

For E830 adapters the hardware-reported EIPE (Ethernet Inline IPsec
Engine) error is a reliable indication that a received packet failed
decryption and has a bad checksum. Route EIPE errors through the
generic checksum error path on E830 so the error is visible via
standard ethtool statistics (rx_csum_bad).

On previous devices (E810, E82X) the EIPE flag can be spuriously set
on encapsulated packets with inner L2 padding, so those adapters only
increment the driver-private hw_rx_eipe_error counter without routing
through the checksum error path.

Fixes: 0ca6755f3cc2 ("ice: Add a new counter for Rx EIPE errors")
Signed-off-by: Jan Glaza <jan.glaza@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index e695a66..82d9d2c4 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -140,6 +140,8 @@ ice_rx_csum(struct ice_rx_ring *ring, struct sk_buff *skb,

 	if (ipv4 && (rx_status0 & (BIT(ICE_RX_FLEX_DESC_STATUS0_XSUM_EIPE_S)))) {
 		ring->vsi->back->hw_rx_eipe_error++;
+		if (ring->vsi->back->hw.mac_type == ICE_MAC_E830)
+			goto checksum_fail;
 		return;
 	}

--
2.52.0

