Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F44798FD92
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Oct 2024 08:55:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9070641095;
	Fri,  4 Oct 2024 06:55:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bLt_WahsdY7G; Fri,  4 Oct 2024 06:55:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B903C4060C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728024931;
	bh=pi5SNRq5ymg6JW+SXdRNN8IphIlf2s3n65otSn8Xsko=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=iTkED0mwNDmtfLKyJ8ob38JvB19I7trEw31AcA3WFbQpkXAYAtgq/oMYYSDlZk/pK
	 GWKt/JWmUZgxmSf1d41xS/3zy1rWtTWT+K8mWgW02dbJVz/eMsOGfh79ub94SHk1va
	 Tcyr7mHIS7xcjdLOIxXrAuwUw9gipMSCWNZEhqnEfFVs6t7vAFp56lyckO41Uo5aqA
	 KAvHEuKMBflNYtqPPPRhvI+CKBHFkradUOXXnHKL766vskGGu3qXx2FIq5uVi6NcGf
	 /buQ2lbCcuwGrrMxUvS5AO4HiaGhtUOEiD9y0UTowKWQtQs8LhvmC95DcM7k/BUO3H
	 UvcTUNmv2Oosw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B903C4060C;
	Fri,  4 Oct 2024 06:55:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D88E51BF34E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 06:55:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C6E91820E0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 06:55:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MnkB9epxm53O for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Oct 2024 06:55:29 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F07CD816A4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F07CD816A4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F07CD816A4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2024 06:55:28 +0000 (UTC)
X-CSE-ConnectionGUID: f0v0t20PR02eZUgy9hGtAA==
X-CSE-MsgGUID: 6SBiC8BLTiSo7Wz/NywBbQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="38627189"
X-IronPort-AV: E=Sophos;i="6.11,176,1725346800"; d="scan'208";a="38627189"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 23:55:28 -0700
X-CSE-ConnectionGUID: B8vUTS9MRfmeHm5B0Fdo6Q==
X-CSE-MsgGUID: L7ZtoNUmTQO5Lnv5eXI5Kw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,176,1725346800"; d="scan'208";a="79583977"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by orviesa004.jf.intel.com with ESMTP; 03 Oct 2024 23:55:27 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  4 Oct 2024 08:55:26 +0200
Message-ID: <20241004065526.7306-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728024929; x=1759560929;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Cyh7Ua2jGouYHzGE+b7S2AoRHtkTUzXF0bkm+UuK2ow=;
 b=RLJxCZgtIXGZwJ8Tb/6gjzD2M2YJQutESOaEvBcYzu85GUaf+bWeiIVA
 WW+5/5RBZvFWHA8LKLVS7UIASRN8BrzkTkyglmpQ+tcd08kpmRS1GJt1i
 lwuwMVkP0Rws7Nu9IRvP2DQDsMDbKR0Pc22GLt3TRhqv8zC2Mlk6cTmN0
 IHHzVQkLtvo3ogSoFFinPTYHzBifRk9eUQ4jUE1TKJA7o2OXFwob3/MKH
 2xokh+PJsJhp7RLelNiJuYd3F7RsrOUEB5F44Y8L28WYEHt9deUBrsKEm
 9Z3ZbROgJ2KjOc90wpGLEpSvIIAIW0l7WfX07UiTjD9vgVdTRAAMrQ+Iy
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RLJxCZgt
Subject: [Intel-wired-lan] [iwl-net v1] ice: block SF port creation in
 legacy mode
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
Cc: netdev@vger.kernel.org, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There is no support for SF in legacy mode. Reflect it in the code.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Fixes: eda69d654c7e ("ice: add basic devlink subfunctions support")
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/devlink/devlink_port.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
index 928c8bdb6649..c6779d9dffff 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
@@ -989,5 +989,11 @@ ice_devlink_port_new(struct devlink *devlink,
 	if (err)
 		return err;
 
+	if (!ice_is_eswitch_mode_switchdev(pf)) {
+		NL_SET_ERR_MSG_MOD(extack,
+				   "SF ports are only supported in eswitch switchdev mode");
+		return -EOPNOTSUPP;
+	}
+
 	return ice_alloc_dynamic_port(pf, new_attr, extack, devlink_port);
 }
-- 
2.42.0

