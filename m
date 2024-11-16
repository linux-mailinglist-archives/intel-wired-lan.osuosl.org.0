Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 982409D1530
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Nov 2024 17:19:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9D0DD84B44;
	Mon, 18 Nov 2024 16:19:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P8biPT5uNrIj; Mon, 18 Nov 2024 16:19:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5E9B084B32
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731946763;
	bh=MOwl+3RRY6hxipxxoc7tx76VBhuRwRCiipNgIx+NOyw=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=E/IdkbDIp1tux+2SZnFCSkYU8C5KQI9Ok6swlvl/qhxwRAmSTmA8aCmsCg+p81+vs
	 yq58xvF5gQ/FmYw+sz58j+X27OaaEYHh11fY4s97/ChLPOt0njSJjq8MFA95n9zHGH
	 xXRVQK+jEjUVNdFDtMs43cV3oLOTkfJRoowjXfhD3o6jJgcqbmJp5Gyv4TC0KD2Lnu
	 5A9EWh8ts6rgk4rexxw21UMltJHW6YTf52J5r8GUSqVqbooEOD4vRsdEvN7ENN4W66
	 GbJq/cfBUvyfbIGhu35L42QLajQLDR4pTa0bpXUgW6v5hQnx7ya2LwSC+1bLNb2CTy
	 5XuKNdCuEKapg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5E9B084B32;
	Mon, 18 Nov 2024 16:19:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 057091EB8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Nov 2024 15:41:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E81D880AC3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Nov 2024 15:41:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id si0XnPn5k17H for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Nov 2024 15:41:39 +0000 (UTC)
X-Greylist: delayed 1012 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 16 Nov 2024 15:41:38 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D171880C50
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D171880C50
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1098:5b::1;
 helo=mx.treblig.org; envelope-from=linux@treblig.org; receiver=<UNKNOWN> 
Received: from mx.treblig.org (mx.treblig.org [IPv6:2a00:1098:5b::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D171880C50
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Nov 2024 15:41:38 +0000 (UTC)
Received: from localhost ([127.0.0.1] helo=dalek.home.treblig.org)
 by mx.treblig.org with esmtp (Exim 4.96)
 (envelope-from <linux@treblig.org>) id 1tCKf4-000ISC-1X;
 Sat, 16 Nov 2024 15:24:34 +0000
From: linux@treblig.org
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, netdev@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 "Dr. David Alan Gilbert" <linux@treblig.org>
Date: Sat, 16 Nov 2024 15:24:33 +0000
Message-ID: <20241116152433.96262-1-linux@treblig.org>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 18 Nov 2024 16:19:21 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx; h=MIME-Version:Message-ID:Date:Subject:From:Content-Type:From
 :Subject; bh=MOwl+3RRY6hxipxxoc7tx76VBhuRwRCiipNgIx+NOyw=; b=jQklbqBFpGHK1wDK
 vjkNxGjl6RAxQS9DO47Bsw2jtozWJttx6ZB4jIWFlJpRpK2hNZYeXEoBPiHntqEqgMk9qr2S/wkHf
 KFXGqkrQlvZZQb1C5b2aVG7h281MAvIwN4fJLGZ/XMB8chosS6aQ1TEYKVGY0kgkd9/ptY8Ltux5i
 31krpcPcsyNjVqGoyQK2ZAMS/Sx4xTEOmrKbY3KkScxEkXyJd4Q7IaUr8onugrJJxkhE7NoGStCVZ
 gnlOo56gLspSWEXJqxFtkgS1G2k3KYAmuIZ5zGjEdPLB1is79sYeK4RQY/0ITaMb3Gq3vcpRtpysx
 bH+o5fdUxvaPTEFXuA==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=treblig.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=treblig.org header.i=@treblig.org header.a=rsa-sha256
 header.s=bytemarkmx header.b=jQklbqBF
Subject: [Intel-wired-lan] [PATCH net-next] intel/fm10k: Remove unused
 fm10k_iov_msg_mac_vlan_pf
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

From: "Dr. David Alan Gilbert" <linux@treblig.org>

fm10k_iov_msg_mac_vlan_pf() has been unused since 2017's
commit 1f5c27e52857 ("fm10k: use the MAC/VLAN queue for VF<->PF MAC/VLAN
requests")

Remove it.

Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>
---
 drivers/net/ethernet/intel/fm10k/fm10k_pf.c | 120 --------------------
 drivers/net/ethernet/intel/fm10k/fm10k_pf.h |   2 -
 2 files changed, 122 deletions(-)

diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_pf.c b/drivers/net/ethernet/intel/fm10k/fm10k_pf.c
index 98861cc6df7c..b9dd7b719832 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_pf.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_pf.c
@@ -1179,126 +1179,6 @@ s32 fm10k_iov_select_vid(struct fm10k_vf_info *vf_info, u16 vid)
 		return vid;
 }
 
-/**
- *  fm10k_iov_msg_mac_vlan_pf - Message handler for MAC/VLAN request from VF
- *  @hw: Pointer to hardware structure
- *  @results: Pointer array to message, results[0] is pointer to message
- *  @mbx: Pointer to mailbox information structure
- *
- *  This function is a default handler for MAC/VLAN requests from the VF.
- *  The assumption is that in this case it is acceptable to just directly
- *  hand off the message from the VF to the underlying shared code.
- **/
-s32 fm10k_iov_msg_mac_vlan_pf(struct fm10k_hw *hw, u32 **results,
-			      struct fm10k_mbx_info *mbx)
-{
-	struct fm10k_vf_info *vf_info = (struct fm10k_vf_info *)mbx;
-	u8 mac[ETH_ALEN];
-	u32 *result;
-	int err = 0;
-	bool set;
-	u16 vlan;
-	u32 vid;
-
-	/* we shouldn't be updating rules on a disabled interface */
-	if (!FM10K_VF_FLAG_ENABLED(vf_info))
-		err = FM10K_ERR_PARAM;
-
-	if (!err && !!results[FM10K_MAC_VLAN_MSG_VLAN]) {
-		result = results[FM10K_MAC_VLAN_MSG_VLAN];
-
-		/* record VLAN id requested */
-		err = fm10k_tlv_attr_get_u32(result, &vid);
-		if (err)
-			return err;
-
-		set = !(vid & FM10K_VLAN_CLEAR);
-		vid &= ~FM10K_VLAN_CLEAR;
-
-		/* if the length field has been set, this is a multi-bit
-		 * update request. For multi-bit requests, simply disallow
-		 * them when the pf_vid has been set. In this case, the PF
-		 * should have already cleared the VLAN_TABLE, and if we
-		 * allowed them, it could allow a rogue VF to receive traffic
-		 * on a VLAN it was not assigned. In the single-bit case, we
-		 * need to modify requests for VLAN 0 to use the default PF or
-		 * SW vid when assigned.
-		 */
-
-		if (vid >> 16) {
-			/* prevent multi-bit requests when PF has
-			 * administratively set the VLAN for this VF
-			 */
-			if (vf_info->pf_vid)
-				return FM10K_ERR_PARAM;
-		} else {
-			err = fm10k_iov_select_vid(vf_info, (u16)vid);
-			if (err < 0)
-				return err;
-
-			vid = err;
-		}
-
-		/* update VSI info for VF in regards to VLAN table */
-		err = hw->mac.ops.update_vlan(hw, vid, vf_info->vsi, set);
-	}
-
-	if (!err && !!results[FM10K_MAC_VLAN_MSG_MAC]) {
-		result = results[FM10K_MAC_VLAN_MSG_MAC];
-
-		/* record unicast MAC address requested */
-		err = fm10k_tlv_attr_get_mac_vlan(result, mac, &vlan);
-		if (err)
-			return err;
-
-		/* block attempts to set MAC for a locked device */
-		if (is_valid_ether_addr(vf_info->mac) &&
-		    !ether_addr_equal(mac, vf_info->mac))
-			return FM10K_ERR_PARAM;
-
-		set = !(vlan & FM10K_VLAN_CLEAR);
-		vlan &= ~FM10K_VLAN_CLEAR;
-
-		err = fm10k_iov_select_vid(vf_info, vlan);
-		if (err < 0)
-			return err;
-
-		vlan = (u16)err;
-
-		/* notify switch of request for new unicast address */
-		err = hw->mac.ops.update_uc_addr(hw, vf_info->glort,
-						 mac, vlan, set, 0);
-	}
-
-	if (!err && !!results[FM10K_MAC_VLAN_MSG_MULTICAST]) {
-		result = results[FM10K_MAC_VLAN_MSG_MULTICAST];
-
-		/* record multicast MAC address requested */
-		err = fm10k_tlv_attr_get_mac_vlan(result, mac, &vlan);
-		if (err)
-			return err;
-
-		/* verify that the VF is allowed to request multicast */
-		if (!(vf_info->vf_flags & FM10K_VF_FLAG_MULTI_ENABLED))
-			return FM10K_ERR_PARAM;
-
-		set = !(vlan & FM10K_VLAN_CLEAR);
-		vlan &= ~FM10K_VLAN_CLEAR;
-
-		err = fm10k_iov_select_vid(vf_info, vlan);
-		if (err < 0)
-			return err;
-
-		vlan = (u16)err;
-
-		/* notify switch of request for new multicast address */
-		err = hw->mac.ops.update_mc_addr(hw, vf_info->glort,
-						 mac, vlan, set);
-	}
-
-	return err;
-}
-
 /**
  *  fm10k_iov_supported_xcast_mode_pf - Determine best match for xcast mode
  *  @vf_info: VF info structure containing capability flags
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_pf.h b/drivers/net/ethernet/intel/fm10k/fm10k_pf.h
index 8e814df709d2..ad3696893cb1 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_pf.h
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_pf.h
@@ -99,8 +99,6 @@ extern const struct fm10k_tlv_attr fm10k_err_msg_attr[];
 
 s32 fm10k_iov_select_vid(struct fm10k_vf_info *vf_info, u16 vid);
 s32 fm10k_iov_msg_msix_pf(struct fm10k_hw *, u32 **, struct fm10k_mbx_info *);
-s32 fm10k_iov_msg_mac_vlan_pf(struct fm10k_hw *, u32 **,
-			      struct fm10k_mbx_info *);
 s32 fm10k_iov_msg_lport_state_pf(struct fm10k_hw *, u32 **,
 				 struct fm10k_mbx_info *);
 
-- 
2.47.0

