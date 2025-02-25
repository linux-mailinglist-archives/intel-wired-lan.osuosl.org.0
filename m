Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C79EA438CA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Feb 2025 10:09:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F54F80588;
	Tue, 25 Feb 2025 09:09:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SPt9L1Fwivge; Tue, 25 Feb 2025 09:09:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 79F7F811BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740474577;
	bh=pJ1oji1iTw0khUEYDWFrC2U2tb1rqdG3uxwAOvCBsro=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qlDWdg6oIM+F9AJfnMoHhSdLOAvbonS6diLSG2aWawseGG96AWGmN4aWb5Hh4EYkM
	 LCvvMZ5mm0Uitt/i0Ihzgs9S2ZblNF5AELn60ZSTJq6WLD4DU/Ota1QDbR7BNOFVPK
	 0QFsyK7A9bYuOyU2kEUYM8+7hOBIJc5IU5WtSpZF2ZQfqoNVfF6bAe36setxNmu4DM
	 NvdBN6lGulkXkAqP6qeekiqhFusPsb+sAzIyIS3hv/GmQ7eXfKFVdHYw83dUkY73AZ
	 p2j6fxz6Rejgd2vm61b8P0gt4p+B/PaJDsEvndx/u6WDadqT3N87g4wzWNzc9nVnls
	 x69vbZUL4gQEA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 79F7F811BE;
	Tue, 25 Feb 2025 09:09:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id B01842292
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 09:09:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 94F16810C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 09:09:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hLIFWggu6qAM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Feb 2025 09:09:34 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AAB5C811BE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AAB5C811BE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AAB5C811BE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 09:09:34 +0000 (UTC)
X-CSE-ConnectionGUID: Mv1+RXlHR/yIcptiTZ1zBA==
X-CSE-MsgGUID: bcpGRYEuSOiPhfOs5mflgw==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="58810347"
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="58810347"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 01:09:34 -0800
X-CSE-ConnectionGUID: o+9dFX3gRHGoJ6Rd1FpILg==
X-CSE-MsgGUID: E+rWjXQ0T22J4soRLBBOew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="121275700"
Received: from enterprise.igk.intel.com ([10.102.20.175])
 by orviesa003.jf.intel.com with ESMTP; 25 Feb 2025 01:09:33 -0800
From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Date: Tue, 25 Feb 2025 10:08:49 +0100
Message-ID: <20250225090847.513849-8-martyna.szapar-mudlaw@linux.intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250225090847.513849-2-martyna.szapar-mudlaw@linux.intel.com>
References: <20250225090847.513849-2-martyna.szapar-mudlaw@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740474574; x=1772010574;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p2lHx+ivZdf+2bsYoUoyEQpLiHAsgUf1x6J7T9tfMH4=;
 b=H1VM7+M08zUEp6M74/zfBhCXK+ys3Qewz/gRkXAjGvVsEuj+GQrFhDxI
 JpsnG4nykUwQIxv0S4xVOOOtmAFWxVRz0pO8jqBcrJNzRbV+Mw87N5Lwb
 8rXiQXjihVP2OAqGR8yPI8hqKW/XOFWqggMNzUKGDQosnqZlwP/ddrk+r
 dR5dlE57qSH/7JaYRXFpuqWMphUxN2t2wK3DSxop42YXgrxjesJRE+NCX
 MmmK7K6KKbEzgFdB2gDYQ3RjoLBX4N2mmgzuSdXtZE8pSPBPbro3nZ4P5
 +9lrWjWBIOVvDNFbZtASafPFghAbtRRai9ScjnP+5iC1XWPSlokwtwajW
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=H1VM7+M0
Subject: [Intel-wired-lan] [iwl-net v2 5/5] ice: fix using untrusted value
 of pkt_len in ice_vc_fdir_parse_raw()
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

From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>

Fix using the untrusted value of proto->raw.pkt_len in function
ice_vc_fdir_parse_raw() by verifying if it does not exceed the
VIRTCHNL_MAX_SIZE_RAW_PACKET value.

Fixes: 99f419df8a5c ("ice: enable FDIR filters from raw binary patterns for VFs")
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
---
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    | 25 +++++++++++++------
 1 file changed, 17 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
index 14e3f0f89c78..6250629ee8f9 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
@@ -835,18 +835,27 @@ ice_vc_fdir_parse_raw(struct ice_vf *vf,
 	u8 *pkt_buf, *msk_buf __free(kfree);
 	struct ice_parser_result rslt;
 	struct ice_pf *pf = vf->pf;
+	u16 pkt_len, udp_port = 0;
 	struct ice_parser *psr;
 	int status = -ENOMEM;
 	struct ice_hw *hw;
-	u16 udp_port = 0;
 
-	pkt_buf = kzalloc(proto->raw.pkt_len, GFP_KERNEL);
-	msk_buf = kzalloc(proto->raw.pkt_len, GFP_KERNEL);
+	if (!proto->raw.pkt_len)
+		return -EINVAL;
+
+	pkt_len = proto->raw.pkt_len;
+
+	if (!pkt_len || pkt_len > VIRTCHNL_MAX_SIZE_RAW_PACKET)
+		return -EINVAL;
+
+	pkt_buf = kzalloc(pkt_len, GFP_KERNEL);
+	msk_buf = kzalloc(pkt_len, GFP_KERNEL);
+
 	if (!pkt_buf || !msk_buf)
 		goto err_mem_alloc;
 
-	memcpy(pkt_buf, proto->raw.spec, proto->raw.pkt_len);
-	memcpy(msk_buf, proto->raw.mask, proto->raw.pkt_len);
+	memcpy(pkt_buf, proto->raw.spec, pkt_len);
+	memcpy(msk_buf, proto->raw.mask, pkt_len);
 
 	hw = &pf->hw;
 
@@ -862,7 +871,7 @@ ice_vc_fdir_parse_raw(struct ice_vf *vf,
 	if (ice_get_open_tunnel_port(hw, &udp_port, TNL_VXLAN))
 		ice_parser_vxlan_tunnel_set(psr, udp_port, true);
 
-	status = ice_parser_run(psr, pkt_buf, proto->raw.pkt_len, &rslt);
+	status = ice_parser_run(psr, pkt_buf, pkt_len, &rslt);
 	if (status)
 		goto err_parser_destroy;
 
@@ -876,7 +885,7 @@ ice_vc_fdir_parse_raw(struct ice_vf *vf,
 	}
 
 	status = ice_parser_profile_init(&rslt, pkt_buf, msk_buf,
-					 proto->raw.pkt_len, ICE_BLK_FD,
+					 pkt_len, ICE_BLK_FD,
 					 conf->prof);
 	if (status)
 		goto err_parser_profile_init;
@@ -885,7 +894,7 @@ ice_vc_fdir_parse_raw(struct ice_vf *vf,
 		ice_parser_profile_dump(hw, conf->prof);
 
 	/* Store raw flow info into @conf */
-	conf->pkt_len = proto->raw.pkt_len;
+	conf->pkt_len = pkt_len;
 	conf->pkt_buf = pkt_buf;
 	conf->parser_ena = true;
 
-- 
2.47.0

