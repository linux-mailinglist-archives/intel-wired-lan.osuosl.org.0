Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C82884FED5
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Feb 2024 22:27:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0DDE542642;
	Fri,  9 Feb 2024 21:27:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mSiScujkMblu; Fri,  9 Feb 2024 21:27:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4F0C641CE4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707514073;
	bh=Wbpos21NRE1f2PH6SViUVxxXCuQ9wlciv90Ukg0MeMc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=t7q2/G9ozCbhT4LW4AhBX0oPWKwekdt8USPAggdTmWl3y+vdoXk0ySkuG0IVQ4Jsl
	 cRJ6+WAET1y+X860FuXlxDTPCYC+/BW0EBTHBKWP01bj09jF8XRZ7IqinAmq9H2G/z
	 td/vpRmbrO+c6bpo8a7Mo1SPgxTyt5js0OQZVB5SXOHWCbS/961umiNwoG+10T/FAW
	 zaFdyk+zkyqVFbS2ZkybJnff/g9WR9oC/7C9k4ALP56Bj4xAppVFJqbQxnfhjdWFZk
	 j6I8Bw4e4e04vudoDhOObyQYCkZ4sG305DyvPMULREgnuOMdqBY+v7ew6x41aFUmJJ
	 c+GllzQMSwRyA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4F0C641CE4;
	Fri,  9 Feb 2024 21:27:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 709861BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 21:27:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EAA4E405AB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 21:27:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DVuX1OUCVU3J for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Feb 2024 21:27:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org F096C400D0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F096C400D0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F096C400D0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 21:27:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10979"; a="5321574"
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; 
   d="scan'208";a="5321574"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 13:27:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; 
   d="scan'208";a="6681845"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa003.jf.intel.com with ESMTP; 09 Feb 2024 13:27:45 -0800
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  9 Feb 2024 22:24:32 +0100
Message-Id: <20240209212432.750653-4-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240209212432.750653-1-arkadiusz.kubalewski@intel.com>
References: <20240209212432.750653-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707514067; x=1739050067;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z0WJ7E8spdtBnga4ZdfzNDjQ73HZCDLuO3Txp3ofkyc=;
 b=iX1PajOyMcnArJTyqYMMQcKCPQuUikpxVC/Xp+uce8gW8Mh5IJWJsdVb
 wh8B2VvnkhUlOTFp4+jUfGguUmIjqx453L8dK8JkjxdNjVVIYJnJIQqlK
 sIk9Hoze8RNXatTvulBeqqMPu2IyIvDnubyvuNBXOzM+3oif9JlaxMUBb
 BzXksbG7XKuMxCXi7w2+PDyw8f2d6vXOMweeUOAxJegkYyeesX3o30GXs
 BVVCoQG2431jMsREnxZmv2X0rgqmDmwTwQmS9DzpALBR+tZLirb6oYp2S
 sUXoow1sBrv1f9VxcQ1/YOuYl8f7o1farcscYbvOZPXDscJT/ZnkgYHqA
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iX1PajOy
Subject: [Intel-wired-lan] [PATCH iwl-net v2 3/3] ice: fix pin phase adjust
 updates on PF reset
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
Cc: Igor Bagnucki <igor.bagnucki@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Do not allow to set phase adjust value for a pin if PF reset is in
progress, this would cause confusing netlink extack errors as the firmware
cannot process the request properly during the reset time.

Return (-EBUSY) and report extack error for the user who tries configure
pin phase adjust during the reset time.

Test by looping execution of below steps until netlink error appears:
- perform PF reset
$ echo 1 > /sys/class/net/<ice PF>/device/reset
- change pin phase adjust value:
$ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/dpll.yaml \
	--do pin-set --json '{"id":0, "phase-adjust":1000}'

Fixes: 90e1c90750d7 ("ice: dpll: implement phase related callbacks")
Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dpll.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index 544cfedf6c55..63aeaeb4308b 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -963,6 +963,9 @@ ice_dpll_pin_phase_adjust_set(const struct dpll_pin *pin, void *pin_priv,
 	u8 flag, flags_en = 0;
 	int ret;
 
+	if (ice_dpll_is_reset(pf, extack))
+		return -EBUSY;
+
 	mutex_lock(&pf->dplls.lock);
 	switch (type) {
 	case ICE_DPLL_PIN_TYPE_INPUT:
-- 
2.38.1

