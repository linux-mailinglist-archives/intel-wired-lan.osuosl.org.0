Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B19ED79848B
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Sep 2023 11:07:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 018BE82E14;
	Fri,  8 Sep 2023 09:07:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 018BE82E14
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694164021;
	bh=iyvKoDV/VwXZVE96VNDT22p0Kw9Htmgl2uFbIfYSrEs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=jUoq/sugaAV6+pXiNKIQPRqf6FpOQhZ49YeBPULd6BSFuYdEC2+RAwYqol1SSZ//R
	 +zvBJegMooOsMIYlwqur1Qsf0HMndAx97yy0vkRycVb2OdJTTgi1rvAhP1HJKa1386
	 qJwr8UaFjYUeAl341LbOcDtWOk6v3ZeuQtfB9B5bO8+6ZdXIDIzxWmRu5MkbUt4U4x
	 JBK0HO58elDO1DLBGeCbkvC3zchfviWLnHRLZmvG5VoJl3qd2R8hewu8yNiA2axm55
	 1G7PaRk781NQvA292DMgQsbzpKGEOIoHqSBGyVzo/+aSntOn45deqHa8QtiIpwohBJ
	 1Az5/JPqyDXkw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JRy5neMN-fZt; Fri,  8 Sep 2023 09:07:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D008B82CC7;
	Fri,  8 Sep 2023 09:06:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D008B82CC7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D37FF1BF30E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Sep 2023 09:06:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AB55982D17
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Sep 2023 09:06:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AB55982D17
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3A0HBaiHmDf9 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Sep 2023 09:06:53 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4F90182D0F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Sep 2023 09:06:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4F90182D0F
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="380342107"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="380342107"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 02:06:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="866041544"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="866041544"
Received: from amlin-018-068.igk.intel.com ([10.102.18.68])
 by orsmga004.jf.intel.com with ESMTP; 08 Sep 2023 02:06:38 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  8 Sep 2023 04:59:25 -0400
Message-Id: <20230908085925.423883-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694164013; x=1725700013;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OADQm0c0TCm/+u7WP7LIAIIKh+DOhVcfb/QiWSIrsAM=;
 b=CAdOQ3lqVfrsT4I9iDqR0Zf6GY/5IRflgbpqTFM8lzpmBZnIaz8vtqBK
 WGphzzm7XpmcxrkAU2PVqKz3lEC0NtyUtuzSfQ0U+tgmyxhmyWwtcDJBq
 k27G54k7eBT1A6csPSrefSthJrx/hofKwJ5zBBp0G69TiLBGxKAVhrgGk
 KD8gV1fSrgvWpX7G9LQlkYR2DLatnS1ceCPDwhL76koyUzkGqfBIScFRU
 /cEZ4Qkbgkiv4yVxeDO9w5k/obP4x/D2xxR98eE9RB4C58bM7ty1ARisX
 JN9Mkm06QWXe2svF64lCPB0R6KkjRJMhRdinDmTGQbZpCg0Rl8xk/YeHl
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CAdOQ3lq
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: Fix call trace when
 rebuild fails
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In case rebuild fails trying to restart or unload a driver lead to call
trace.

    [  128.876458] BUG: unable to handle kernel NULL pointer dereference at 0000000000000000
    [  128.884417] PGD 33510d067 P4D 0
    [  128.887776] Oops: 0000 [#1] SMP NOPTI
    [  128.891571] CPU: 6 PID: 2141 Comm: ethtool Kdump: loaded Not tainted 4.18.0-372.34.1.el8_6.ice.2117361.repr.x86_64 #1
    [  128.902308] Hardware name: ACCTON BRIGHTONCITY/BRIGHTONCITY, BIOS IDVLCRB1.86B.0021.D40.2112020610 12/02/2021
    [  128.912351] RIP: 0010:ice_vsi_setup_tx_rings+0x26/0x80 [ice]
    [  128.918163] Code: 00 0f 1f 00 0f 1f 44 00 00 41 54 55 53 66 83 bf da 03 00 00 00 48 89 fb 0f 84 c9 38 05 00 48 8b 47 28 41 bc 08 00 00 00 31 ed <48> 8b 38 48 85 ff 75 21 eb 3d 0f b7 93 da 03 00 00 83 c5 01 39 ea
    [  128.937060] RSP: 0018:ff78a8b908183a10 EFLAGS: 00010246
    [  128.942417] RAX: 0000000000000000 RBX: ff4a4174c104e818 RCX: 0000000000000a50
    [  128.949683] RDX: 0000000000000a4f RSI: 641269b8ad24144d RDI: ff4a4174c104e818
    [  128.956946] RBP: 0000000000000000 R08: 0000000080000000 R09: ff4a4173241b9b30
    [  128.964208] R10: ff4a4173241b9b30 R11: 0000000000000000 R12: 0000000000000008
    [  128.971475] R13: ff4a417570650180 R14: 0000000000000001 R15: 0000000000000001
    [  128.978741] FS:  00007f18a268e740(0000) GS:ff4a41823ff80000(0000) knlGS:0000000000000000
    [  128.986961] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
    [  128.992837] CR2: 0000000000000000 CR3: 0000000109e8e003 CR4: 0000000000771ee0
    [  129.000103] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
    [  129.007368] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
    [  129.014635] PKRU: 55555554
    [  129.017473] Call Trace:
    [  129.020054]  ice_vsi_open+0x29/0x120 [ice]
    [  129.024292]  ice_vsi_recfg_qs+0xaa/0x110 [ice]
    [  129.028874]  ice_set_channels+0x18d/0x3d0 [ice]
    [  129.033549]  ethnl_set_channels+0x3a1/0x410
    [  129.037865]  genl_family_rcv_msg_doit.isra.17+0x113/0x150
    [  129.043394]  genl_family_rcv_msg+0xb7/0x170
    [  129.047708]  ? channels_fill_reply+0x1a0/0x1a0
    [  129.052282]  genl_rcv_msg+0x47/0xa0
    [  129.055901]  ? genl_family_rcv_msg+0x170/0x170

Fix this by setting ICE_RESET_FAILED when rebuild fails and
clearing number of qs when rings are free.

Fixes: 6624e780a577 ("ice: split ice_vsi_setup into smaller functions")
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 v2: Add dev_err message about rebuild fail
---
 drivers/net/ethernet/intel/ice/ice_lib.c  | 7 +++++++
 drivers/net/ethernet/intel/ice/ice_main.c | 4 ++--
 2 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 0054d7e64ec3..09190457113a 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -321,6 +321,9 @@ static void ice_vsi_free_arrays(struct ice_vsi *vsi)
 
 	dev = ice_pf_to_dev(pf);
 
+	vsi->num_txq = 0;
+	vsi->num_rxq = 0;
+
 	bitmap_free(vsi->af_xdp_zc_qps);
 	vsi->af_xdp_zc_qps = NULL;
 	/* free the ring and vector containers */
@@ -3157,6 +3160,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
 	struct ice_coalesce_stored *coalesce;
 	int ret, prev_txq, prev_rxq;
 	int prev_num_q_vectors = 0;
+	struct device *dev;
 	struct ice_pf *pf;
 
 	if (!vsi)
@@ -3166,6 +3170,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
 	params.flags = vsi_flags;
 
 	pf = vsi->back;
+	dev = ice_pf_to_dev(pf);
 	if (WARN_ON(vsi->type == ICE_VSI_VF && !vsi->vf))
 		return -EINVAL;
 
@@ -3206,6 +3211,8 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
 	ice_vsi_decfg(vsi);
 err_vsi_cfg:
 	kfree(coalesce);
+	set_bit(ICE_RESET_FAILED, pf->state);
+	dev_err(dev, "Rebuild failed, unload and reload driver\n");
 	return ret;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index b40dfe6ae321..becf7f0fcd4c 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4232,7 +4232,7 @@ static void ice_deinit_fdir(struct ice_pf *pf)
 {
 	struct ice_vsi *vsi = ice_get_ctrl_vsi(pf);
 
-	if (!vsi)
+	if (!vsi || test_bit(ICE_RESET_FAILED, pf->state))
 		return;
 
 	ice_vsi_manage_fdir(vsi, false);
@@ -4746,7 +4746,7 @@ static void ice_deinit_pf_sw(struct ice_pf *pf)
 {
 	struct ice_vsi *vsi = ice_get_main_vsi(pf);
 
-	if (!vsi)
+	if (!vsi || test_bit(ICE_RESET_FAILED, pf->state))
 		return;
 
 	ice_vsi_release(vsi);
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
