Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF378C7A7D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 May 2024 18:41:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 315A741D59;
	Thu, 16 May 2024 16:41:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7VjyKap9wE1X; Thu, 16 May 2024 16:41:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6309E41D5C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715877697;
	bh=cDpqDj8r5wYLuYYJLXK3vWZCNGi8firhqe2aSgEuHG0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=m9Vul+0o2auz+3a5r45763zM4AOm2zK0uWmKDdQ1Hp7dQCa/n3ulUE2bewpRkE56T
	 GEF3vA5d0QeAkbsoa+28caPMao3+/9gm0f0akOM+6xXfgnawb4i781tlMKIcsN3OE9
	 wmjklJWarZRAiSrOYV2GJMcMXBWuvx3Q7h4IrLAnjCHhedOFDnj1c2h4HBq40eU8Xm
	 yJ+cFOO1QpSUqal74ZBDfzdlT8AxiMgyIP38EJ6lFwj7o95HdCmYi9LYrUpElELF4X
	 7EZ/bukvX9sqTr/WaLwaHCWGF+K3eUnvd7/HTVuEZ3R6IkyyT/Kjbf1+cs28WMdSBs
	 7B3AwTcXgOziQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6309E41D5C;
	Thu, 16 May 2024 16:41:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 213141BF5A3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 16:41:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0BCBE83A8C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 16:41:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LUhohUD4Cvny for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 May 2024 16:41:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=michal.kubiak@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C174C80C22
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C174C80C22
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C174C80C22
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 16:41:32 +0000 (UTC)
X-CSE-ConnectionGUID: uuVnBD2vSQiR9T1qJ8f+WQ==
X-CSE-MsgGUID: dwcohjNYRTGRk0/BcAq2XA==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="15831388"
X-IronPort-AV: E=Sophos;i="6.08,165,1712646000"; d="scan'208";a="15831388"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 09:41:32 -0700
X-CSE-ConnectionGUID: 70hJClljT9qHePJ18wTgVA==
X-CSE-MsgGUID: eMhh/MtoQOebtSvF5uVSVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,165,1712646000"; d="scan'208";a="68942623"
Received: from kkazimiedevpc.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.102.224])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 09:41:30 -0700
From: Michal Kubiak <michal.kubiak@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 16 May 2024 18:41:08 +0200
Message-Id: <20240516164108.1482192-1-michal.kubiak@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715877693; x=1747413693;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KKc5YzIGflCFVRWirSlgWVS98jJqwHzUqZyoeAjsiFY=;
 b=jFJK9VU7sL3n7ju09vXet3Lz8MexxTfnk6JqgMtOJ6ZVn84O2pSFE6bO
 cnBLAL4i/cPppxx1myqJstgplvV4VXvPlWQydUGmW/ga+PuN63Zw+xMH5
 mM2gf5JHwv44ngLHM1RVoRWKhJJBnYkqXSOMgaQwSNsW1SIqD/BKorvLm
 906ihXfoT/Vpz1A8l2lL0kDpce7J5OjQ7Lc9cWWoZ9XjBg6kzHFZyegq9
 Rnm1PzZJExqbJN5KfMFX2ZQU1E2V7pzodjo/gmtb76qUsUMOrPR8EQLQM
 tj4C7KniadvFH9GmPva5szRgduvLw3N1VPk/FHnWDK59BqRvJNVoZiyjU
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jFJK9VU7
Subject: [Intel-wired-lan] [PATCH iwl-net] i40e: Fix XDP program unloading
 while removing the driver
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 Michal Kubiak <michal.kubiak@intel.com>, maciej.fijalkowski@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The commit 6533e558c650 ("i40e: Fix reset path while removing
the driver") introduced a new PF state "__I40E_IN_REMOVE" to block
modifying the XDP program while the driver is being removed.
Unfortunately, such a change is useful only if the ".ndo_bpf()"
callback was called out of the rmmod context because unloading the
existing XDP program is also a part of driver removing procedure.
In other words, from the rmmod context the driver is expected to
unload the XDP program without reporting any errors. Otherwise,
the kernel warning with callstack is printed out to dmesg.

Example failing scenario:
 1. Load the i40e driver.
 2. Load the XDP program.
 3. Unload the i40e driver (using "rmmod" command).

Fix this by improving checks in ".ndo_bpf()" to determine if that
callback was called from the removing context and if the kernel
wants to unload the XDP program. Allow for unloading the XDP program
in such a case.

Fixes: 6533e558c650 ("i40e: Fix reset path while removing the driver")
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index ffb9f9f15c52..19fc043e351f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -13264,6 +13264,20 @@ static int i40e_xdp_setup(struct i40e_vsi *vsi, struct bpf_prog *prog,
 	bool need_reset;
 	int i;
 
+	/* Called from netdev unregister context. Unload the XDP program. */
+	if (vsi->netdev->reg_state == NETREG_UNREGISTERING) {
+		xdp_features_clear_redirect_target(vsi->netdev);
+		old_prog = xchg(&vsi->xdp_prog, NULL);
+		if (old_prog)
+			bpf_prog_put(old_prog);
+
+		return 0;
+	}
+
+	/* VSI shall be deleted in a moment, just return EINVAL */
+	if (test_bit(__I40E_IN_REMOVE, pf->state))
+		return -EINVAL;
+
 	/* Don't allow frames that span over multiple buffers */
 	if (vsi->netdev->mtu > frame_size - I40E_PACKET_HDR_PAD) {
 		NL_SET_ERR_MSG_MOD(extack, "MTU too large for linear frames and XDP prog does not support frags");
@@ -13272,14 +13286,9 @@ static int i40e_xdp_setup(struct i40e_vsi *vsi, struct bpf_prog *prog,
 
 	/* When turning XDP on->off/off->on we reset and rebuild the rings. */
 	need_reset = (i40e_enabled_xdp_vsi(vsi) != !!prog);
-
 	if (need_reset)
 		i40e_prep_for_reset(pf);
 
-	/* VSI shall be deleted in a moment, just return EINVAL */
-	if (test_bit(__I40E_IN_REMOVE, pf->state))
-		return -EINVAL;
-
 	old_prog = xchg(&vsi->xdp_prog, prog);
 
 	if (need_reset) {
-- 
2.33.1

