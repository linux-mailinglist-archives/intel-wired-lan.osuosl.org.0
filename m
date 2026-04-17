Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wOPEKHPT4WnQyQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 08:30:11 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8574176C0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 08:30:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F1E160C03;
	Fri, 17 Apr 2026 06:30:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WZ9iH6IuQidt; Fri, 17 Apr 2026 06:30:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 05C1260C00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776407404;
	bh=BAVdXEdc+kEMMK5GDr62Q5KNVz2Hir6sxQPRqGYxj9Y=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=67umcKLyqQrazgS2c+EyDG56IIfh64Ztacgd5fmiSltB+vXpHm92dDqeF3Qln0ZJ9
	 CsTScEe0JHcrCRxpFptE/8lf4egiiStfOLhZNNa5ivQDR/4171UdxnpdoOnIioN9w7
	 x3oXe2RLurhHZheeGaoWFKYcxMev+3/H74qYVhAR2NE0cI4iirdt2WmZyovt6n3gDK
	 45FWNVaHfrzvSM2o03wbXljf1uBhKo9drUFgdStCnb4ahF2Kjvx5hH6sKm8ce2xkyw
	 hL9MCBz+ADTXiI7DY3k0GWHM33dbpKjbN8i3B4kWXX6p8syZkIXkqcEj31BG5bsXB0
	 6CS6Z7DaVeYiQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 05C1260C00;
	Fri, 17 Apr 2026 06:30:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 17091396
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 06:30:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 08D9040544
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 06:30:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GSC74mQyhk_W for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Apr 2026 06:30:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B2C7640549
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B2C7640549
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B2C7640549
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 06:30:00 +0000 (UTC)
X-CSE-ConnectionGUID: rtnCPW+ZRUiP4wkuTNIRhw==
X-CSE-MsgGUID: 6UywVrfYSfC3jHdLxQZ+5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="94987403"
X-IronPort-AV: E=Sophos;i="6.23,183,1770624000"; d="scan'208";a="94987403"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 23:30:00 -0700
X-CSE-ConnectionGUID: JJmhOj7/RSKCkBkovQMohw==
X-CSE-MsgGUID: 9fOiDqdaTaKO+Dwy6EXiyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,183,1770624000"; d="scan'208";a="235329569"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa004.jf.intel.com with ESMTP; 16 Apr 2026 23:29:59 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Konrad Knitter <konrad.knitter@intel.com>
Date: Fri, 17 Apr 2026 08:29:52 +0200
Message-ID: <20260417062954.1241900-3-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260417062954.1241900-1-aleksandr.loktionov@intel.com>
References: <20260417062954.1241900-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776407400; x=1807943400;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=edbHUJHOaA58QasrhNxyc7+ghy9rcKSjYx+XG+RjX4w=;
 b=hQToS5VT11hTfTNul6njittgyjS3Xpar+CnhBKSMQ2Nxvvj8xruObX8F
 f0ffyjAS/ukLNjTGA7O+cZ5hjbGrhrRhY46znRkPYZqa3zeWCMX2/lnaG
 SRwjjZTClFiwQlz9JsadpKYC7GcJr+cR4ZPEHCK8Ivi3EHoAj+6wygdRr
 FSM84LWefREfan9I+GvvpHLvkVkKWFQyMy4unUJNhkV/WVxim/BU/QhjC
 iQA3dv6xeHqxQFeGnDVcn4/unCLzYRgpq9sVQydXecEeVXvK5X1wNNrK0
 m/rxqNhD09Kd1IorfSOPmtVBt/iwLmUYzOSGcoVbEUABbEM03WiqFQMaV
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hQToS5VT
Subject: [Intel-wired-lan] [PATCH iwl-net 2/4] ice: fix autoneg disable when
 link partner doesn't support AN
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
X-Rspamd-Queue-Id: 5B8574176C0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Konrad Knitter <konrad.knitter@intel.com>

Disabling autonegotiation was silently ignored when autoneg had not yet
completed (ICE_AQ_AN_COMPLETED was not set), leaving the configuration
unchanged with no error. This could prevent link from forming if the
link partner requires non-autoneg mode.

Extend the condition to also allow disabling autoneg when the link
partner reports no AN ability (ICE_AQ_LP_AN_ABILITY clear). Gate the
ICE_AQ_LP_AN_ABILITY check on the link being up so that stale or
zeroed an_info when link is down does not produce a false positive.
Introduce the helper ice_autoneg_disable_allowed() to make the check
explicit.

Fixes: f1a4a66d2310 ("ice: fix set pause param autoneg check")
Signed-off-by: Konrad Knitter <konrad.knitter@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 26 ++++++++++++++++++--
 1 file changed, 24 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 30d2550..e41fc8d 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -2509,6 +2509,28 @@ ice_ksettings_find_adv_link_speed(const struct ethtool_link_ksettings *ks)
 	return adv_link_speed;
 }

+/**
+ * ice_autoneg_disable_allowed - check if autoneg can be disabled
+ * @p: port info
+ *
+ * Check if autonegotiation can be disabled based on link state.
+ * ICE_AQ_LP_AN_ABILITY is only valid when the link is up; gate that
+ * check accordingly to avoid false positives from stale link data.
+ *
+ * Return: true if autoneg has completed, or if the link is up and the
+ *         link partner does not advertise autonegotiation capability.
+ */
+static bool ice_autoneg_disable_allowed(struct ice_port_info *p)
+{
+	u8 an_info = p->phy.link_info.an_info;
+
+	if (an_info & ICE_AQ_AN_COMPLETED)
+		return true;
+	/* ICE_AQ_LP_AN_ABILITY is only valid when link is up */
+	return (p->phy.link_info.link_info & ICE_AQ_LINK_UP) &&
+	       !(an_info & ICE_AQ_LP_AN_ABILITY);
+}
+
 /**
  * ice_setup_autoneg
  * @p: port info
@@ -2547,8 +2569,8 @@ ice_setup_autoneg(struct ice_port_info *p, struct ethtool_link_ksettings *ks,
 			}
 		}
 	} else {
-		/* If autoneg is currently enabled */
-		if (p->phy.link_info.an_info & ICE_AQ_AN_COMPLETED) {
+		/* If autoneg completed or link partner does not support AN */
+		if (ice_autoneg_disable_allowed(p)) {
 			/* If autoneg is supported 10GBASE_T is the only PHY
 			 * that can disable it, so otherwise return error
 			 */
--
2.52.0

