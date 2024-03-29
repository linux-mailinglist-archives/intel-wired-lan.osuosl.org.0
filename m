Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2E78918CC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Mar 2024 13:29:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 05991416C7;
	Fri, 29 Mar 2024 12:29:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 42Cjz0hwtQNF; Fri, 29 Mar 2024 12:29:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 588E3416B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711715357;
	bh=AhgI0gLin0DIKQFCqQWZQdXCZszgkRxwSDljE2fNLP8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VebU7ogZPzeGYZkSM6ZZJbhYpCCLAB8MZDrmv+2jMjPv1hxBwaV+DA0a3jlaww0M0
	 5EZ4s+xJiRrAYHqZe+dYots7AQz7DcUGCo3quaMQDp/vaVVXhw5tBGPbnq8V3m6mrC
	 hVV3+VYfZe0mPdpTAHbgkgfC36JouD5yhXsvDHMHKYatzpPcWxiFmoFgPyZ4i6H6Um
	 OC3fSYOdBfXFzAp4O1ie/6O2CAZRYatbgaFw1pcJE+hLV/r/rtAuWxQ8zvkZDxmAdN
	 HC2OTf51cGdaVjB/f3nP6pzqtLyogcxM4Y/u9V+JFfcoFhy0tO9IuRBVcH7mvqdUS4
	 HHrhScn8EpnVg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 588E3416B0;
	Fri, 29 Mar 2024 12:29:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0708B1BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 12:29:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F355940B49
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 12:29:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vf0RR61Yv2Dp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Mar 2024 12:29:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=sashal@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BFEF840B0F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BFEF840B0F
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BFEF840B0F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 12:29:13 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 2F5AFCE2F85;
 Fri, 29 Mar 2024 12:29:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03001C433C7;
 Fri, 29 Mar 2024 12:29:06 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Fri, 29 Mar 2024 08:25:59 -0400
Message-ID: <20240329122652.3082296-63-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240329122652.3082296-1-sashal@kernel.org>
References: <20240329122652.3082296-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.8.2
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1711715348;
 bh=r04ih+R+QLaanuRfoFajyez1KZEQnSMxlDoyFKVImUo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FoMiZSBXaX66qA5yzAw6pVlpnsY65CqqkXDIrxJWoilmBUv4z4sD0Yn8fRK9ZS5FK
 ClAMjWTXWIywCBfLb6QZECrvR40JADAU1ZlflYhjtYaAZYJ9qYIbgMPY143rAGNizN
 jT9TKA66iVDB5tTzbVyXvW/TgRwPeYI/MYHeU4TsUcZJehmfaYEamE92WTQKE9KuNy
 bmsMkiNKs46Zr865dYSw6nuDhvXj5jba6Poiel/8vdd5roPv8V/bDfYL8yBthdzBRv
 oasIN0XPYi/L1/5mq+3V0NfTZYv/eVR44pWNG1XlVKcbOAaM2T6YiAebnr6Xy85uSA
 dZWsxRfAhzVxQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=FoMiZSBX
Subject: [Intel-wired-lan] [PATCH AUTOSEL 6.8 63/68] ice: use relative VSI
 index for VFs instead of PF VSI number
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
Cc: Sasha Levin <sashal@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, davem@davemloft.net,
 edumazet@google.com, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jacob Keller <jacob.e.keller@intel.com>, kuba@kernel.org, pabeni@redhat.com,
 Rafal Romanowski <rafal.romanowski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

[ Upstream commit 11fbb1bfb5bc8c98b2d7db9da332b5e568f4aaab ]

When initializing over virtchnl, the PF is required to pass a VSI ID to the
VF as part of its capabilities exchange. The VF driver reports this value
back to the PF in a variety of commands. The PF driver validates that this
value matches the value it sent to the VF.

Some hardware families such as the E700 series could use this value when
reading RSS registers or communicating directly with firmware over the
Admin Queue.

However, E800 series hardware does not support any of these interfaces and
the VF's only use for this value is to report it back to the PF. Thus,
there is no requirement that this value be an actual VSI ID value of any
kind.

The PF driver already does not trust that the VF sends it a real VSI ID.
The VSI structure is always looked up from the VF structure. The PF does
validate that the VSI ID provided matches a VSI associated with the VF, but
otherwise does not use the VSI ID for any purpose.

Instead of reporting the VSI number relative to the PF space, report a
fixed value of 1. When communicating with the VF over virtchnl, validate
that the VSI number is returned appropriately.

This avoids leaking information about the firmware of the PF state.
Currently the ice driver only supplies a VF with a single VSI. However, it
appears that virtchnl has some support for allowing multiple VSIs. I did
not attempt to implement this. However, space is left open to allow further
relative indexes if additional VSIs are provided in future feature
development. For this reason, keep the ice_vc_isvalid_vsi_id function in
place to allow extending it for multiple VSIs in the future.

This change will also simplify handling of live migration in a future
series. Since we no longer will provide a real VSI number to the VF, there
will be no need to keep track of this number when migrating to a new host.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 9 ++-------
 drivers/net/ethernet/intel/ice/ice_virtchnl.h | 9 +++++++++
 2 files changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 6f2328a049bf1..7b550d7d96b68 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -499,7 +499,7 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 	vfres->rss_lut_size = ICE_LUT_VSI_SIZE;
 	vfres->max_mtu = ice_vc_get_max_frame_size(vf);
 
-	vfres->vsi_res[0].vsi_id = vf->lan_vsi_num;
+	vfres->vsi_res[0].vsi_id = ICE_VF_VSI_ID;
 	vfres->vsi_res[0].vsi_type = VIRTCHNL_VSI_SRIOV;
 	vfres->vsi_res[0].num_queue_pairs = vsi->num_txq;
 	ether_addr_copy(vfres->vsi_res[0].default_mac_addr,
@@ -545,12 +545,7 @@ static void ice_vc_reset_vf_msg(struct ice_vf *vf)
  */
 bool ice_vc_isvalid_vsi_id(struct ice_vf *vf, u16 vsi_id)
 {
-	struct ice_pf *pf = vf->pf;
-	struct ice_vsi *vsi;
-
-	vsi = ice_find_vsi(pf, vsi_id);
-
-	return (vsi && (vsi->vf == vf));
+	return vsi_id == ICE_VF_VSI_ID;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.h b/drivers/net/ethernet/intel/ice/ice_virtchnl.h
index 60dfbe05980aa..3a41158691532 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.h
@@ -19,6 +19,15 @@
 #define ICE_MAX_MACADDR_PER_VF		18
 #define ICE_FLEX_DESC_RXDID_MAX_NUM	64
 
+/* VFs only get a single VSI. For ice hardware, the VF does not need to know
+ * its VSI index. However, the virtchnl interface requires a VSI number,
+ * mainly due to legacy hardware.
+ *
+ * Since the VF doesn't need this information, report a static value to the VF
+ * instead of leaking any information about the PF or hardware setup.
+ */
+#define ICE_VF_VSI_ID	1
+
 struct ice_virtchnl_ops {
 	int (*get_ver_msg)(struct ice_vf *vf, u8 *msg);
 	int (*get_vf_res_msg)(struct ice_vf *vf, u8 *msg);
-- 
2.43.0

