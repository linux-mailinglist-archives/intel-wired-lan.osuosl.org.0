Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GAFJDP+9wWlSWAQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 23:26:07 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B35D12FE399
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 23:26:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 637E640D38;
	Mon, 23 Mar 2026 22:26:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CmrTsrwuiuyQ; Mon, 23 Mar 2026 22:26:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C644840D3A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774304764;
	bh=0fM3I6+OikB7+hj88oE9o72YJlLiLOrM9Di0KxaBgcA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SrjTOZHsGappgWrX4l1HMyKpfCMQhZfFYUEqnOGby84itlHTGM7JevHXGm5aQ/5sI
	 NOVJEVpJKKuxN3apegej7W5cDJo3B/ai5RbRGhd++O/wfi0RW0wIm4Ospuovx05TfA
	 bnRVhU7pcxbEBX19FP8nf0VHasSxmvMNcTwVOh+m/mn9gJ3vlGZrq0wQtIBm8PhquF
	 h+tcB+LgGjMZ0KeoWd1SDl8V/AUrT3ZMjJsWNh7oyNNL1iX6Kq6gQPQE/YbRWOdFri
	 HIfAtcEc2+W+QS5GAd4nItRsuTati8Z8yTmlvBaEhGL7etdcPgAoVLqwqi4Ik05eb4
	 LwoW3a6SButOg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C644840D3A;
	Mon, 23 Mar 2026 22:26:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E25D3F4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 22:26:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D3538608B3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 22:26:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yc0Ww5-ENi03 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Mar 2026 22:26:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D8C88608B2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D8C88608B2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D8C88608B2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 22:26:02 +0000 (UTC)
X-CSE-ConnectionGUID: gz0hYsFAStucyd5GdQgBSQ==
X-CSE-MsgGUID: jGnJT41NTH+b7uXlCZ12Dw==
X-IronPort-AV: E=McAfee;i="6800,10657,11738"; a="75221959"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="75221959"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 15:26:02 -0700
X-CSE-ConnectionGUID: oNXUv2jLTRCtpXWztQTyVg==
X-CSE-MsgGUID: wKD30q+dTMu1rZv0mZy53w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="247207494"
Received: from gklab-003-001.igk.intel.com ([10.91.173.48])
 by fmviesa002.fm.intel.com with ESMTP; 23 Mar 2026 15:25:58 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: netdev@vger.kernel.org
Date: Mon, 23 Mar 2026 23:21:32 +0100
Message-Id: <20260323222133.1796997-8-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20260323222133.1796997-1-grzegorz.nitka@intel.com>
References: <20260323222133.1796997-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774304763; x=1805840763;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2MZHnP/9cS14JCDWx6lZ3RRAkM3yTL2R5Dnn1mrIUqo=;
 b=Piy/wuB0EFG0jfZ69LLCz3itF60dK5M56P16zh628J5lpYEG3VCkXL55
 xt7XCxTZ0SoC6V10S2cOAIAryk+vzNM/I46/X2n430oxA2pLMhB95ws4R
 H0vQzU6uLIpy51C7nMB5oxhKlH8R0jVc5FrQmMeyJD2vl5s2KJ+gRq4Yl
 QuM+WXR5B289TcWm3gSNc3e+Ux7zrXdH6XF8dxFE0fFUhu8x42umh8EPS
 ukDAiTEyn1N9ChfZExIHgIAnpMwiP3Gt3Ky18t5Y1D3lYmuj9M0KBDBIi
 imCcIKd6Dvu8KKMWL26SmUGtsbNuh56gdRkQ7zaoIGiIaJHYBVAzJ76kd
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Piy/wuB0
Subject: [Intel-wired-lan] [PATCH v3 net-next 7/8] ice: add Tx reference
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
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim,intel.com:email,intel.com:mid];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B35D12FE399
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

