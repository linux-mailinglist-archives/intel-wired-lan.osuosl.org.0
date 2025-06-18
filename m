Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2EAADF95A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jun 2025 00:25:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6A16340799;
	Wed, 18 Jun 2025 22:25:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5yajny20mKi8; Wed, 18 Jun 2025 22:25:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB022409D2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750285512;
	bh=dtM1q6iYLbzLECcMu9GcBPKcESf3A66ejLiTryX7xe8=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cpr4BouXu1jab76sRg0k5UJUMwZNzB+EspRUPr6w/ojtiJnYJG3pVn3mw3bkmgpre
	 9k9RLzii3P5kbufwPbZ5WpVXBDwI2KVXJ2KV7b+kiC6v6w7FBy4WHZreA5EQNe5tPn
	 mdIfvz1u0D5SGX0MuO6/8HCiBQ61BGfN5Q3ttE8CLwfVyCXPpn5Wo1sHexvz8T0EyH
	 dzPB+0LPuRnHTc7Nl+SDg7EMEoKopvoCU8J9WMQLs2FH+ug7ZpCFSY4M0emb7QFUhc
	 3upD6/YaEGaUmNC+v7QBu67X9hvutr9qtVBEKDgR60Bd3VulN6xLy25htDAq0z/het
	 yqtMmCehCSyjw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB022409D2;
	Wed, 18 Jun 2025 22:25:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1D8EAE2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 22:25:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 56657407AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 22:25:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jrzrQGvieiYc for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Jun 2025 22:25:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 99D4E40611
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 99D4E40611
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 99D4E40611
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 22:25:06 +0000 (UTC)
X-CSE-ConnectionGUID: QyzkRyz6TiiNIGNaNzvlrg==
X-CSE-MsgGUID: cptub74dSFGU1eJU7LiwCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="52447743"
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="52447743"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 15:25:05 -0700
X-CSE-ConnectionGUID: HJe5biCPRT6mbTbc7MJzvg==
X-CSE-MsgGUID: qx6IYD7wQ5Sek0DoqN0AXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="149870010"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 15:25:04 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 18 Jun 2025 15:24:38 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250618-e810-live-migration-jk-migration-prep-v1-3-72a37485453e@intel.com>
References: <20250618-e810-live-migration-jk-migration-prep-v1-0-72a37485453e@intel.com>
In-Reply-To: <20250618-e810-live-migration-jk-migration-prep-v1-0-72a37485453e@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org, 
 Madhu Chittim <madhu.chittim@intel.com>, Yahui Cao <yahui.cao@intel.com>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750285507; x=1781821507;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=2YPm4seTn/ZIa1SCJgczQ+gO+/iymLICfCYsu7Zgb8I=;
 b=F0a8SjVGU+em3GSZItMrLzfat0lBjWbzpxa5cThokWw0sfKajhaO666G
 elMJqzY5bb9203a552BwCfSGwwO9qL3uesXkYxCUQqQ1Ey/gpXuv2l3rS
 P4UuCWJTYCaey64E66NdZWftp41eeXe9BIGZSza1S25oE42KvK5/OpRpF
 KhokGmNkGCRrWs4GbjS8gYVTg6+KWqSyrx7tv/iIHmXihsmuDmE+A2MwW
 TlVD18tbYyXL2DPTC1yBQNvSszb4tWbXyqkNV1699yFaco2Xst64+y5zI
 SG3Ovujhc9UvnwEID85WXq3Zknib9WqTTKf2if/6Y4Q5ggwg1fuswgwDK
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=F0a8SjVG
Subject: [Intel-wired-lan] [PATCH iwl-next 3/8] ice: save RSS hash
 configuration for migration
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

The VF can program the RSS hash configuration over virtchnl. It does this
by sending a u64 bitmask which represents the current hash configuration.

It is not trivial to reverse the hardware configuration back to this hash
set for migration. Instead, save the value to the ice_vf structure when its
modified by the VF.

The rss_hashcfg value is an 8-byte field. Make room for it in ice_vf by
re-arranging some of the existing fields. There is a 4-byte gap after the
first_vector_idx, and a 4-byte gap between max_tx_rate and vf_states. Move
first_vector_idx into the later 4-byte gap, creating an 8 byte area where
rss_hashcfg can be placed. Also move the num_msix field near min_tx_rate,
filling 2 bytes of a 3 byte hole.

The end result of these changes enables placing the rss_hashcfg field into
the structure while also saving 8 bytes in size. It looks like there are a
handful of more possible cleanups to reduce the size even further, but
those have been left as a future cleanup.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   | 8 +++++---
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 3 +++
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 4 ++++
 3 files changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index 482f4285fd350f3e1410b3c34eb8fdda43842fcf..a5ee380f8c9e53d6e5ac029b9942db380829a84f 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -106,8 +106,7 @@ struct ice_vf {
 	u16 ctrl_vsi_idx;
 	struct ice_vf_fdir fdir;
 	struct ice_fdir_prof_info fdir_prof_info[ICE_MAX_PTGS];
-	/* first vector index of this VF in the PF space */
-	int first_vector_idx;
+	u64 rss_hashcfg;		/* RSS hash configuration */
 	struct ice_sw *vf_sw_id;	/* switch ID the VF VSIs connect to */
 	struct virtchnl_version_info vf_ver;
 	u32 driver_caps;		/* reported by VF driver */
@@ -126,10 +125,14 @@ struct ice_vf {
 	u8 link_up:1;			/* only valid if VF link is forced */
 	u8 lldp_tx_ena:1;
 
+	u16 num_msix;			/* num of MSI-X configured on this VF */
+
 	u32 ptp_caps;
 
 	unsigned int min_tx_rate;	/* Minimum Tx bandwidth limit in Mbps */
 	unsigned int max_tx_rate;	/* Maximum Tx bandwidth limit in Mbps */
+	/* first vector index of this VF in the PF space */
+	int first_vector_idx;
 	DECLARE_BITMAP(vf_states, ICE_VF_STATES_NBITS);	/* VF runtime states */
 
 	unsigned long vf_caps;		/* VF's adv. capabilities */
@@ -154,7 +157,6 @@ struct ice_vf {
 	u16 lldp_recipe_id;
 	u16 lldp_rule_id;
 
-	u16 num_msix;			/* num of MSI-X configured on this VF */
 	struct ice_vf_qs_bw qs_bw[ICE_MAX_RSS_QS_PER_VF];
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index dac7a04d73e270f0e4f70a693f0a1b0e08873a41..5ee74f3e82dc77ba400fe4aa6d1cb6a183f85785 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -1009,6 +1009,9 @@ void ice_initialize_vf_entry(struct ice_vf *vf)
 	vf->num_msix = vfs->num_msix_per;
 	vf->num_vf_qs = vfs->num_qps_per;
 
+	/* set default RSS hash configuration */
+	vf->rss_hashcfg = ICE_DEFAULT_RSS_HASHCFG;
+
 	/* ctrl_vsi_idx will be set to a valid value only when iAVF
 	 * creates its first fdir rule.
 	 */
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index a6743f6874bad26b1cffe0a11d3cd98c12ea9443..65eb6757a02143f3765716dedcd090dff2d84d2c 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -3079,6 +3079,10 @@ static int ice_vc_set_rss_hashcfg(struct ice_vf *vf, u8 *msg)
 		v_ret = ice_err_to_virt_err(status);
 	}
 
+	/* save the requested VF configuration */
+	if (!v_ret)
+		vf->rss_hashcfg = vrh->hashcfg;
+
 	/* send the response to the VF */
 err:
 	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_SET_RSS_HASHCFG, v_ret,

-- 
2.48.1.397.gec9d649cc640

