Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0I4EBob3zmn7sAYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 01:11:02 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8B638F07A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 01:11:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 802FC403EB;
	Thu,  2 Apr 2026 23:11:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TtyfOMTs9nAU; Thu,  2 Apr 2026 23:11:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F3C0440932
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775171460;
	bh=0fM3I6+OikB7+hj88oE9o72YJlLiLOrM9Di0KxaBgcA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mHFbZSUiZ4y02y5yoBc7I13p1EmW8+Ijj7TKobukLjA/mE9z+PskNvT9liazy/0lL
	 96dSe8h3YwIJ30U7QHf5QOpy7OJQlBMHU9cnpLe+0rI4uN0+DC9G+c5mpAP5PS6tAR
	 pXpTfBCwNgRtwmPdO1skZy+VRNx1dYwfn9Qn5xqvj7J2VOdF7q34ox118dqqyB9lRz
	 DLQ8RI4c/MyXVYGuVh4iqPeJ5yrA29+NDYHrI6o/WG/Q8MgcBPJAndbHPDPGIpxALH
	 XV1/MTNE9asyvHZqHFOvSF1qUpRKaoBLUSFVq1nx6R/PE6Ryij3J1KgOjwa1L5gMBI
	 oS8VDazjGC/2A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id F3C0440932;
	Thu,  2 Apr 2026 23:10:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0F0F42A2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2026 23:10:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 012B78130F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2026 23:10:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dXThUaIbiVOH for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Apr 2026 23:10:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E6D79812D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E6D79812D5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E6D79812D5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2026 23:10:57 +0000 (UTC)
X-CSE-ConnectionGUID: WORbzOuGSTCNABlLmcEMow==
X-CSE-MsgGUID: oB5Li3jLTpen3R9GiXVfMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11747"; a="76123147"
X-IronPort-AV: E=Sophos;i="6.23,156,1770624000"; d="scan'208";a="76123147"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 16:10:57 -0700
X-CSE-ConnectionGUID: b08BDPBoQnGTgTdVWQH2Bg==
X-CSE-MsgGUID: GhW3xD2mR4qwi9Nme4jaJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,156,1770624000"; d="scan'208";a="227044466"
Received: from gklab-003-001.igk.intel.com ([10.91.173.48])
 by orviesa008.jf.intel.com with ESMTP; 02 Apr 2026 16:10:53 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: netdev@vger.kernel.org
Date: Fri,  3 Apr 2026 01:06:25 +0200
Message-Id: <20260402230626.3826719-8-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20260402230626.3826719-1-grzegorz.nitka@intel.com>
References: <20260402230626.3826719-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775171458; x=1806707458;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2MZHnP/9cS14JCDWx6lZ3RRAkM3yTL2R5Dnn1mrIUqo=;
 b=e+/yFDc/CMNLX+knba12rDvUjHDHkVGCuh7XO1pspZ7TQyHoB7ryj448
 gzQCieOmCabv3PcvutKuxwi6xCZIfFWzkn9l5ZhUlFMezPxRoU1gErZ1G
 1LzcpDetSO1O/Q8k4VS9mUgNzE9qf9pfigWyaFQMuRAbzwSOZV6L8+fHa
 jO/yV9pcNCbJght9zIKLZQP00/FAlPLG8c8vvxwFxuJTawxiGrQvfpAHu
 A32fII4YnN9t070ceoxo+NfWu0JkAprxMEBaccN+EJZLTuJeDcIBxsf4E
 VdS5DCQ+kzksOAuUP0Gk3AIQ8SVnHgorhOkmNLdA0qVgNXg3XxW6ztiJi
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=e+/yFDc/
Subject: [Intel-wired-lan] [PATCH v5 net-next 7/8] ice: add Tx reference
 clock index handling to AN restart command
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
Cc: ivecera@redhat.com, vadim.fedorenko@linux.dev, kuba@kernel.org,
 jiri@resnulli.us, edumazet@google.com, przemyslaw.kitszel@intel.com,
 richardcochran@gmail.com, donald.hunter@gmail.com,
 linux-kernel@vger.kernel.org, arkadiusz.kubalewski@intel.com,
 andrew+netdev@lunn.ch, intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 Prathosh.Satish@microchip.com, anthony.l.nguyen@intel.com, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: CC8B638F07A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Extend the Restart Auto-Negotiation (AN) AdminQ command with a new
parameter allowing software to specify the Tx reference clock index to
be used during link restart.

This patch:
 - adds REFCLK field definitions to ice_aqc_restart_an
 - updates ice_aq_set_link_restart_an() to take a new refclk parameter
   and properly encode it into the command
 - keeps legacy behavior by passing REFCLK_NOCHANGE where appropriate

This prepares the driver for configurations requiring dynamic selection
of the Tx reference clock as part of the AN flow.

Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 2 ++
 drivers/net/ethernet/intel/ice/ice_common.c     | 5 ++++-
 drivers/net/ethernet/intel/ice/ice_common.h     | 2 +-
 drivers/net/ethernet/intel/ice/ice_lib.c        | 3 ++-
 4 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 859e9c66f3e7..a24a0613d887 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1169,6 +1169,8 @@ struct ice_aqc_restart_an {
 	u8 cmd_flags;
 #define ICE_AQC_RESTART_AN_LINK_RESTART	BIT(1)
 #define ICE_AQC_RESTART_AN_LINK_ENABLE	BIT(2)
+#define ICE_AQC_RESTART_AN_REFCLK_M	GENMASK(4, 3)
+#define ICE_AQC_RESTART_AN_REFCLK_NOCHANGE 0
 	u8 reserved2[13];
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index ce11fea122d0..de88aec9137c 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -4126,12 +4126,13 @@ int ice_get_link_status(struct ice_port_info *pi, bool *link_up)
  * @pi: pointer to the port information structure
  * @ena_link: if true: enable link, if false: disable link
  * @cd: pointer to command details structure or NULL
+ * @refclk: the new TX reference clock, 0 if no change
  *
  * Sets up the link and restarts the Auto-Negotiation over the link.
  */
 int
 ice_aq_set_link_restart_an(struct ice_port_info *pi, bool ena_link,
-			   struct ice_sq_cd *cd)
+			   struct ice_sq_cd *cd,  u8 refclk)
 {
 	struct ice_aqc_restart_an *cmd;
 	struct libie_aq_desc desc;
@@ -4147,6 +4148,8 @@ ice_aq_set_link_restart_an(struct ice_port_info *pi, bool ena_link,
 	else
 		cmd->cmd_flags &= ~ICE_AQC_RESTART_AN_LINK_ENABLE;
 
+	cmd->cmd_flags |= FIELD_PREP(ICE_AQC_RESTART_AN_REFCLK_M, refclk);
+
 	return ice_aq_send_cmd(pi->hw, &desc, NULL, 0, cd);
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index e700ac0dc347..9f5344212195 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -215,7 +215,7 @@ ice_cfg_phy_fec(struct ice_port_info *pi, struct ice_aqc_set_phy_cfg_data *cfg,
 		enum ice_fec_mode fec);
 int
 ice_aq_set_link_restart_an(struct ice_port_info *pi, bool ena_link,
-			   struct ice_sq_cd *cd);
+			   struct ice_sq_cd *cd, u8 refclk);
 int
 ice_aq_set_mac_cfg(struct ice_hw *hw, u16 max_frame_size, struct ice_sq_cd *cd);
 int
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 689c6025ea82..c2c7f186bcc7 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3769,7 +3769,8 @@ int ice_set_link(struct ice_vsi *vsi, bool ena)
 	if (vsi->type != ICE_VSI_PF)
 		return -EINVAL;
 
-	status = ice_aq_set_link_restart_an(pi, ena, NULL);
+	status = ice_aq_set_link_restart_an(pi, ena, NULL,
+					    ICE_AQC_RESTART_AN_REFCLK_NOCHANGE);
 
 	/* if link is owned by manageability, FW will return LIBIE_AQ_RC_EMODE.
 	 * this is not a fatal error, so print a warning message and return
-- 
2.39.3

