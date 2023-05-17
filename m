Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D0D706A02
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 May 2023 15:35:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 75BB660D64;
	Wed, 17 May 2023 13:35:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 75BB660D64
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684330547;
	bh=GehTWXD/Io96yLGdpq51ar8YIGzrr1IICl1jeKQUFOI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=BGMGb77hMuDupCJ2MVJd246MmBCFw2nLzd09oDQFM9ytJ8i+KbVmigGB88GeeUnm6
	 VXWE1YagbyoEZpNBd53DHIRbaztkipruWmFtEJPHkEek1JXmmerqhV0GML2qTdaJ31
	 FH0ghBPqZej3y7llKO8pIzjBSIMMYUWO5hroAGpOazAglHTksYZcZlal4b4CQpbCLQ
	 yv/8zYOm1o2x40hgxzTAhEETwi6Ebt5eQE669aBC+aGOGFA/WNbqWckyCAZAr79uZc
	 fFNK5d8x+/uX/Jk5BJ0kpWBnE+MSrL9Q0ILQrln4DFp+B2OT26SCmiybKtc7tzSIL3
	 D7P16z2Kr/OUA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3qz_dlcKciyq; Wed, 17 May 2023 13:35:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1D15F60C19;
	Wed, 17 May 2023 13:35:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1D15F60C19
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D280A1BF487
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 13:35:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AD88340182
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 13:35:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AD88340182
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6x5p4IAKVzyH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 May 2023 13:35:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B3CD4400F2
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B3CD4400F2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 13:35:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="349263049"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="349263049"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 06:35:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="791513899"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="791513899"
Received: from amlin-018-068.igk.intel.com ([10.102.18.68])
 by FMSMGA003.fm.intel.com with ESMTP; 17 May 2023 06:35:38 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 17 May 2023 09:30:28 -0400
Message-Id: <20230517133028.420775-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684330539; x=1715866539;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Ly+2XxRYBpgH2MuF3a5mPpEOzMPJ+N1QrL0Msxq8QQA=;
 b=L7Nfn/s5+HAO/HJD11wtXj3Yqsa1pW4jTTBPmN75bW0zaBuLA5SHiaoc
 cppTn5OCZG+VGx7MWA16Xa+hmK9a31xMuvzuPbu2zZ1P1Z8pzcGx/F7yh
 eoC6eLbtu+150Pjpv186roCuh5QskWKG4S67bp9EcO68H0dPoEW/wzmY4
 TRhi0lrc7aUm4hnopR4kbzP45VPMxgjKdwJLfTc9QPwcMoPSOKT0kcKLJ
 K38o9+MthmfZ2fgKNaeQHl08Fb5O9q88RiERORXcjOzgjpLSAcQCSZGo8
 ICPkzbApqM3mu05vK9kQZ09FOiZv6CCXD9ph6cwiPsKBepzhFX84eiGLd
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L7Nfn/s5
Subject: [Intel-wired-lan] [PATCH iwl-net v3] ice: clear number of qs when
 rings are free
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

In case rebuild fails not clearing this field can lead to call trace.

[  +0.009792] BUG: kernel NULL pointer dereference, address: 0000000000000000
[  +0.000009] #PF: supervisor read access in kernel mode
[  +0.000006] #PF: error_code(0x0000) - not-present page
[  +0.000005] PGD 0 P4D 0
[  +0.000009] Oops: 0000 [#1] PREEMPT SMP PTI
[  +0.000009] CPU: 45 PID: 77867 Comm: ice-ptp-0000:60 Kdump: loaded Tainted: G S         OE      6.2.0-rc6+ #110
[  +0.000010] Hardware name: Dell Inc. PowerEdge R740/0JMK61, BIOS 2.11.2 004/21/2021
[  +0.000005] RIP: 0010:ice_ptp_update_cached_phctime+0xb0/0x130 [ice]
[  +0.000145] Code: fa 7e 55 48 8b 93 48 01 00 00 48 8b 0c fa 48 85 c9 74 e1 8b 51 68 85 d2 75 da 66 83 b9 86 04 00 00 00 74 d0 31 d2 48 8b 71 20 <48> 8b 34 d6 48 85 f6 74 07 48 89 86 d8 00 00 00 0f b7 b1 86 04 00
[  +0.000008] RSP: 0018:ffffa036cf7c7ea8 EFLAGS: 00010246
[  +0.000008] RAX: 174ab1a8ab400f43 RBX: ffff937cda2c01a0 RCX: ffff937cdca9b028
[  +0.000005] RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000000
[  +0.000005] RBP: ffffa036cf7c7eb8 R08: 0000000000000000 R09: 0000000000000000
[  +0.000005] R10: 0000000000000080 R11: 0000000000000001 R12: ffff937cdc971f40
[  +0.000006] R13: ffff937cdc971f44 R14: 0000000000000001 R15: ffffffffc13f3210
[  +0.000005] FS:  0000000000000000(0000) GS:ffff93826f980000(0000) knlGS:0000000000000000
[  +0.000006] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  +0.000006] CR2: 0000000000000000 CR3: 00000004b7310002 CR4: 00000000007726e0
[  +0.000006] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[  +0.000004] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[  +0.000005] PKRU: 55555554
[  +0.000004] Call Trace:
[  +0.000004]  <TASK>
[  +0.000007]  ice_ptp_periodic_work+0x2a/0x60 [ice]
[  +0.000126]  kthread_worker_fn+0xa6/0x250
[  +0.000014]  ? __pfx_kthread_worker_fn+0x10/0x10
[  +0.000010]  kthread+0xfc/0x130
[  +0.000009]  ? __pfx_kthread+0x10/0x10
[  +0.000010]  ret_from_fork+0x29/0x50

ice_ptp_update_cached_phctime() is calling ice_for_each_rxq macro, in
case of rebuild fail the rx_ring is NULL and there is NULL pointer
dereference.

Also for future safety it is better to clear the size values for tx and
rx ring when they are cleared.

Add two checks for ICE_RESET_FAILED during driver removal to avoid accessing
memory that was previously cleared.

Co-developed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
v3 --> v2:
 * set ICE_RESET_FAILED flag for failed vsi rebuild and add checks for it
   during driver removal
v1 --> v2:
 * change subject to net and add fixes tag
---
 drivers/net/ethernet/intel/ice/ice_lib.c  | 3 +++
 drivers/net/ethernet/intel/ice/ice_main.c | 4 ++--
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 5ddb95d1073a..786bc4b687d3 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -331,10 +331,12 @@ static void ice_vsi_free_arrays(struct ice_vsi *vsi)
 		vsi->q_vectors = NULL;
 	}
 	if (vsi->tx_rings) {
+		vsi->num_txq = 0;
 		devm_kfree(dev, vsi->tx_rings);
 		vsi->tx_rings = NULL;
 	}
 	if (vsi->rx_rings) {
+		vsi->num_rxq = 0;
 		devm_kfree(dev, vsi->rx_rings);
 		vsi->rx_rings = NULL;
 	}
@@ -3247,6 +3249,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
 	ice_vsi_decfg(vsi);
 err_vsi_cfg:
 	kfree(coalesce);
+	set_bit(ICE_RESET_FAILED, pf->state);
 	return ret;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index b0d1e6116eb9..e81ec213973a 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4218,7 +4218,7 @@ static void ice_deinit_fdir(struct ice_pf *pf)
 {
 	struct ice_vsi *vsi = ice_get_ctrl_vsi(pf);
 
-	if (!vsi)
+	if (!vsi || test_bit(ICE_RESET_FAILED, pf->state))
 		return;
 
 	ice_vsi_manage_fdir(vsi, false);
@@ -4795,7 +4795,7 @@ static void ice_deinit_pf_sw(struct ice_pf *pf)
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
