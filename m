Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD7B27A6F77
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Sep 2023 01:35:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 70C89417CD;
	Tue, 19 Sep 2023 23:35:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 70C89417CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695166522;
	bh=0GGySOzZB4vSb+Y25BkanT+OLkbznWDJNyX1Q2xFiuU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aK6moCwzDxV/7LbjHLBSvlEya1+y7QO3be85ipg1oABJBE+TDIRFwAUbwimTzcD6J
	 pBzc29FscvdOlELbXBSew6wXS2nhB9E47bUjA+JIRTrNmnotsqO1WYlWmh+owYDgwG
	 INxzOOmQcOvU5tFF6u0Y3c5USEWJqNVmLOY1qWb2bRJoSyOwlZFgBVJU7+aKTmeZ/A
	 yEL1bnYtV2Qsj133wq37SXx+QHGL8W6cT3SCILnCLOPLwgWdDt3RmvonxE1vjNTwO1
	 AizEzkItI6+cJUvKhJlJl696YRY6FnHsqTH9V7t83qPrNfEv70pCQ1l2T0M276pCx2
	 htgg4qg3dy3YA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pa0S2L5HsACk; Tue, 19 Sep 2023 23:35:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5B7E8417A0;
	Tue, 19 Sep 2023 23:35:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5B7E8417A0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5BAA91BF407
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 23:35:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6786141BEC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 23:35:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6786141BEC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lxMOts26VnHh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Sep 2023 23:35:07 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 73E3641E41
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Sep 2023 23:35:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 73E3641E41
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="444172128"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="444172128"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 16:34:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="749668106"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="749668106"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.1])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 16:34:50 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 19 Sep 2023 16:34:34 -0700
Message-ID: <20230919233435.518620-4-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0.1.g9857a21e0017.dirty
In-Reply-To: <20230919233435.518620-1-jacob.e.keller@intel.com>
References: <20230919233435.518620-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695166507; x=1726702507;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3P1aL1El3c+MVu82DVtYZvXNKOHxbpvRIsseTK+EBNE=;
 b=DRXthYCP+S+7wQayrRjk7epEx1umsowtGC0FJrosDmwSkQX+tph6AZGR
 Ji7B4oZsb9/OTySeBJq+T3E7kl6ydJJTaub/9Smmj29OdDH09+wJX64Dd
 XTFurcDL+hb/YaEUoNjk36d4DvSRsZ26xtvjhLdPEGINAPkD+FahneHtL
 vQEO6Iin5YnUdw46aN2DenW9qtL63oODReCmgeuzcNjAZfSX4NSvOk9bX
 zpoXLGxwDOsuiTT11N4OKM8AbQK2EJ3mvA/z6cOMrnxN6wgD1V67y87H4
 vg2jiQjqNISti+leub8RzDc3axtJNJJ0wfuM3Imk3ZcftY4m9V9+TM/c4
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DRXthYCP
Subject: [Intel-wired-lan] [PATCH iwl-next 3/4] ice: make
 ice_get_pf_c827_idx static
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
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice_get_pf_c827_idx function is only called inside of ice_ptp_hw.c, so
there is no reason to export it. Mark it static and remove the declaration
from ice_ptp_hw.h

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 2 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h | 1 -
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 882dfdad0021..0167e0577a55 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -3564,7 +3564,7 @@ int ice_clear_phy_tstamp(struct ice_hw *hw, u8 block, u8 idx)
  * * 0 - success
  * * negative - failure
  */
-int ice_get_pf_c827_idx(struct ice_hw *hw, u8 *idx)
+static int ice_get_pf_c827_idx(struct ice_hw *hw, u8 *idx)
 {
 	struct ice_aqc_get_link_topo cmd;
 	u8 node_part_number;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 18a993134826..36aeeef99ec0 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -271,7 +271,6 @@ int ice_read_sma_ctrl_e810t(struct ice_hw *hw, u8 *data);
 int ice_write_sma_ctrl_e810t(struct ice_hw *hw, u8 data);
 int ice_read_pca9575_reg_e810t(struct ice_hw *hw, u8 offset, u8 *data);
 bool ice_is_pca9575_present(struct ice_hw *hw);
-int ice_get_pf_c827_idx(struct ice_hw *hw, u8 *idx);
 enum dpll_pin_type ice_cgu_get_pin_type(struct ice_hw *hw, u8 pin, bool input);
 struct dpll_pin_frequency *
 ice_cgu_get_pin_freq_supp(struct ice_hw *hw, u8 pin, bool input, u8 *num);
-- 
2.41.0.1.g9857a21e0017.dirty

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
