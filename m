Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oNEhA46r2GkmgwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 09:49:34 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B3843D38FB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 09:49:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AB9E060B00;
	Fri, 10 Apr 2026 07:49:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9mAmO-Gc2ghz; Fri, 10 Apr 2026 07:49:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 347B8608B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775807369;
	bh=nIxp1/gtrOVAXIRr01aQUATxNocT4ZeQMQQgF1/kJiw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MPZeYG21xl9r3RTqAAYCVlSMzgpvnev/zccDPQhSgDlcT1T6xxdlkL285sTzBc6qw
	 qDgyiiCkffBk8U+yilkcrsZvUDxgyu+Ib+w9h5u+YCQ5fmLc52VkkAaYnzfUN+mL/d
	 ZFl71Fl71lkFdy+NDyLu4cxF7T/H2ouTADaDRrAMmCd3JKbrOQJvGqrkQe5n1O3Rvb
	 IjboOGB0Br9SyirbxKMWbVpB8IKLGMEIX1KemU4kEmOOVcEvfBww7ue6nf0DjGSFdk
	 Z8Rt77F6b/8XJqUzDHAB+2Dklkq2mgX8LONFAnigbyQVWr1B28pn7LM9GBG3DqC02N
	 Y1KWkqPIQpX4w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 347B8608B6;
	Fri, 10 Apr 2026 07:49:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D4C81237
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 07:49:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B95DB816EE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 07:49:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qQ2Vyoybt-4j for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Apr 2026 07:49:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0D1AE81E25
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0D1AE81E25
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0D1AE81E25
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 07:49:25 +0000 (UTC)
X-CSE-ConnectionGUID: XHl/Kqf+RSKfAGknk/mudg==
X-CSE-MsgGUID: 3c/XTvLsRBScsHhyBXHNGQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11754"; a="77007921"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="77007921"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 00:49:26 -0700
X-CSE-ConnectionGUID: NXkxgQrHRIWOeCDQHAq+QA==
X-CSE-MsgGUID: /rvw9uVTS4i3Q+0nyNpQbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="228941849"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa008.jf.intel.com with ESMTP; 10 Apr 2026 00:49:24 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Dave Ertman <david.m.ertman@intel.com>
Date: Fri, 10 Apr 2026 09:49:12 +0200
Message-ID: <20260410074921.1254213-2-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260410074921.1254213-1-aleksandr.loktionov@intel.com>
References: <20260410074921.1254213-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775807366; x=1807343366;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8mVlqUSKhLghunpKta0EtGrvQtVkNh/RcZcNL/hOjQ0=;
 b=CRcXG1al264lCIo3yohwbM/8Oe21Cko/wCzX+EPsDR2HW9LKIMOg5Hoc
 IK4P1GGHE+YCN6EAN14aTkJAzNgHy+FEVbItnchvJvdDrPhN5Nd0hlaWJ
 El7Kezv8XQ2cJAqgErg5ZIZOWL8HnOd2ct2aDU46XH3uOOVlDPfPElpwr
 Z2Iz7V2MLpqQzsNj68cS+H0w7SXiFm5lzY1PLFPTwLTFAtXTveAR6pbGE
 YgDAv9b1GvRhcamyF6mHiCv6cyPiSfMeX5ngYW36WgHHQ9DBRT/B/gxC2
 /fOw0VDKRXYz6xikF67VpN/HP00QFj0gQLg0L2vjTwv4DUMrtRfIGrZnR
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CRcXG1al
Subject: [Intel-wired-lan] [PATCH iwl-next 1/10] ice: translate FW to SW for
 max num TCs encoding
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 7B3843D38FB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Dave Ertman <david.m.ertman@intel.com>

The FW uses a 3-bit field in a TLV to represent the maximum number of
Traffic Classes supported per interface. Since the maximum value is 8,
and at least one TC must be supported, the encoding uses bit values of
000 to represent 8 TCs.

The driver currently does not translate this value and reports 0 max TCs
to the DCBNL interface instead of 8.

Add a translation when interfacing with the FW to use 0x0 as the value
for 8 max TCs.

Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dcb.c | 2 ++
 drivers/net/ethernet/intel/ice/ice_dcb.h | 3 +++
 2 files changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb.c b/drivers/net/ethernet/intel/ice/ice_dcb.c
index 7be1fa7..f15c6fe 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb.c
@@ -221,6 +221,8 @@ ice_parse_ieee_etscfg_tlv(struct ice_lldp_org_tlv *tlv,
 	etscfg->willing = FIELD_GET(ICE_IEEE_ETS_WILLING_M, buf[0]);
 	etscfg->cbs = FIELD_GET(ICE_IEEE_ETS_CBS_M, buf[0]);
 	etscfg->maxtcs = FIELD_GET(ICE_IEEE_ETS_MAXTC_M, buf[0]);
+	if (etscfg->maxtcs == ICE_DCB_MAXTC_ENCODE)
+		etscfg->maxtcs = ICE_DCB_MAXTC;
 
 	/* Begin parsing at Priority Assignment Table (offset 1 in buf) */
 	ice_parse_ieee_ets_common_tlv(&buf[1], etscfg);
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb.h b/drivers/net/ethernet/intel/ice/ice_dcb.h
index da57497..285c5f6 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb.h
+++ b/drivers/net/ethernet/intel/ice/ice_dcb.h
@@ -109,6 +109,9 @@
 #define ICE_DSCP_TC_BW_TLV_LEN		25
 #define ICE_DSCP_PFC_TLV_LEN		6
 
+#define ICE_DCB_MAXTC			8
+#define ICE_DCB_MAXTC_ENCODE		0x0
+
 /* IEEE 802.1AB LLDP Organization specific TLV */
 struct ice_lldp_org_tlv {
 	__be16 typelen;
-- 
2.52.0
