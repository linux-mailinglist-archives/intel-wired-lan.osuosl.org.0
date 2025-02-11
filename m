Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA78A31347
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Feb 2025 18:42:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 16AFC41433;
	Tue, 11 Feb 2025 17:42:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ORW7DnpaNba3; Tue, 11 Feb 2025 17:42:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2B590406BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739295725;
	bh=qFE5lxMJkBlU1uyXsIkEP9Qf5RBnEtcE3aVBRTEBh0U=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VUL7h8NCCPzLhbDH6eMUG0MaMU0omEMIfgHZPnUzhVxPEEakPJkzpb6Kk6XtCc5bW
	 W00kX9Jnj+lCUhzd7slSpaXVVsIwL3iaJE+Px0SXwE2zNOW4/JkNOGfKS9NNN3qjoQ
	 o8RBARK1wuNqp59uF3RZZ/vqs1iW2JXp4jy/WK/8EmxpBxxO85mHuks6EfPSyRHrgn
	 3DbbK8FPe3PZREyWYbD8NlVgdEU19nYNhr8TnqHK5mlVxBHGgc6jtJbct5iUL94LRu
	 uJchguyHaL7o/O+iXfS+D4dRf3sglB9mr+nm44ECwFBEAtQcFcNgIn4Sl3m9ay81W0
	 Cb5KjO0tq9osA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2B590406BE;
	Tue, 11 Feb 2025 17:42:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2F8396C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 17:42:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A3FC540320
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 17:42:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rFx_BkdV-yCG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Feb 2025 17:42:00 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 74AA940111
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 74AA940111
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 74AA940111
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 17:42:00 +0000 (UTC)
X-CSE-ConnectionGUID: w4g+hDpYTEKHd53UwUiGyA==
X-CSE-MsgGUID: dbaVRdnuQuqNaiNVlGjeew==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="43855616"
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="43855616"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 09:41:57 -0800
X-CSE-ConnectionGUID: eVIm/HmsTeWiaFOnoajx+Q==
X-CSE-MsgGUID: 4ON84f3IRxmaU5Z8H1GMwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="112538344"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa006.jf.intel.com with ESMTP; 11 Feb 2025 09:41:56 -0800
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id D48BD32ECE;
 Tue, 11 Feb 2025 17:41:54 +0000 (GMT)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 11 Feb 2025 18:43:22 +0100
Message-ID: <20250211174322.603652-2-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20250211174322.603652-1-marcin.szycik@linux.intel.com>
References: <20250211174322.603652-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739295720; x=1770831720;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GgftlG2/oea9KOpUGCKxqmmj2Ugal+b2G6hJrr6GoOw=;
 b=fvgmYmfEkNeLeeVkkDCXrAVPOH1NZjO5FGX4WKIuYYObQXyz2g7Pooml
 oEa3T90cKvpSfKyiWkx/cl7tKXjIQO+vddMCatyM+8+L1mHM/DgR8bybK
 K95H3r38dlnOk3UoOTnJgie7+Y0vXsv+iUAKX+n794f7tUu7SVRXD+u0x
 PZSWU6sHlQ6B8vNkNmKBPktNouXELZEmxzBe+EEnYPV8TJ4uurwZiVU5h
 rEA8TZC3IaldyKuc+LOYrVZp8pyGP+tNOnrGp1MAncbjenoZhjWRp112L
 iq4TJ9HKqigfaR7G8rz7XCzFPYRWWxhP4lLDNVP6KAVXK8ieWH+r379aW
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fvgmYmfE
Subject: [Intel-wired-lan] [PATCH iwl-net 2/2] ice: Avoid setting default Rx
 VSI twice in switchdev setup
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
Cc: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>,
 netdev@vger.kernel.org, Marcin Szycik <marcin.szycik@linux.intel.com>,
 michal.swiatkowski@linux.intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

As part of switchdev environment setup, uplink VSI is configured as
default for both Tx and Rx. Default Rx VSI is also used by promiscuous
mode. If promisc mode is enabled and an attempt to enter switchdev mode
is made, the setup will fail because Rx VSI is already configured as
default (rule exists).

Reproducer:
  devlink dev eswitch set $PF1_PCI mode switchdev
  ip l s $PF1 up
  ip l s $PF1 promisc on
  echo 1 > /sys/class/net/$PF1/device/sriov_numvfs

In switchdev setup, use ice_set_dflt_vsi() instead of plain
ice_cfg_dflt_vsi(), which avoids repeating setting default VSI for Rx if
it's already configured.

Fixes: 50d62022f455 ("ice: default Tx rule instead of to queue")
Reported-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
Closes: https://lore.kernel.org/intel-wired-lan/PH0PR11MB50138B635F2E5CEB7075325D961F2@PH0PR11MB5013.namprd11.prod.outlook.com
Reviewed-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index b44a375e6365..ed21d7f55ac1 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -38,8 +38,7 @@ static int ice_eswitch_setup_env(struct ice_pf *pf)
 	if (ice_vsi_add_vlan_zero(uplink_vsi))
 		goto err_vlan_zero;
 
-	if (ice_cfg_dflt_vsi(uplink_vsi->port_info, uplink_vsi->idx, true,
-			     ICE_FLTR_RX))
+	if (ice_set_dflt_vsi(uplink_vsi))
 		goto err_def_rx;
 
 	if (ice_cfg_dflt_vsi(uplink_vsi->port_info, uplink_vsi->idx, true,
-- 
2.45.0

