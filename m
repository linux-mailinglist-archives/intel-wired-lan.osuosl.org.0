Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2869B8744C0
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Mar 2024 00:51:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C3B1281CAF;
	Wed,  6 Mar 2024 23:51:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ef2AfDDAPok2; Wed,  6 Mar 2024 23:51:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8894B81DA3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709769103;
	bh=8/qOHT0FrXz/jk25N5t4D87h17X9rY+PHleRKIhqTA0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=v79r9U/INMJTd36KSt9iF2vhp7Xvcv7j253Qlcmvck4tuTOEa9aOlZMs+DiHaRcyL
	 iyTCnfTCG2TQ58ArhYTq+6PagNxl/Y1pN2YrnQ3KuS1WlU2N6+3YP8ihDsTljVIQgG
	 b0q0ulSMpaDkNGEVmuH3TOhxspdEzvhq3CjQOBCKeZ52EkB4gJa/wSufBMMJrN6GOD
	 qej9+J40rqt7y1w7tiYb5mG3Hm4eZJfh5Wc7PwnbHZarjVFecJRfVJSKFxf0fPApdo
	 MWZxxEBkpyh9mCilBD/uPefYuoEqVRMXsAg+DCRTezriT/VGY3bcEsYC+2QWZWmwxQ
	 7zAAHCumtLzRQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8894B81DA3;
	Wed,  6 Mar 2024 23:51:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1B84D1BF5E9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 23:51:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 05C23400D0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 23:51:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yLoCjV8ZJIOR for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Mar 2024 23:51:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62a; helo=mail-pl1-x62a.google.com;
 envelope-from=keescook@chromium.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8430E40385
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8430E40385
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com
 [IPv6:2607:f8b0:4864:20::62a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8430E40385
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 23:51:40 +0000 (UTC)
Received: by mail-pl1-x62a.google.com with SMTP id
 d9443c01a7336-1dc0e5b223eso2414645ad.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 06 Mar 2024 15:51:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709769100; x=1710373900;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=8/qOHT0FrXz/jk25N5t4D87h17X9rY+PHleRKIhqTA0=;
 b=fYhU9zJdenlmst9F6jNJD5G3n+NVt1CX6KpzghizwOW88JgcvwyMwv5scQKN24jJEz
 07H/oMNmkC0FCcO64W5pbQfew4gJ4BI4wto7JZmVpSRUtq3LS7Ck6YSEzGt1xRFfkiqR
 EhFvDAVDOF0B+VWsHljxv8CoyDmtUB+CU2PgpJu8c173TOKzMZHWg34ltVVnJqel6Yrs
 5cBjextIZi6DQppAGJrwunzH50DLEqYR5qR3A9Vs1hE0/2I285ouB47jZXqfXmay2ATp
 9uM824V3Tg+qI5JL4/jSPI1c7Io9V0MoMEXBQQCr0ZvJFZNysL1vm+fIJ9MJwA0Gr1X7
 tOWA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXolYV7HhcQbWnrrs1IrmNC+3oUqSj6Rzc4EIM6NvWoHzwre4yLt5U8/FjyGpn2SPW9nrl88Vqf9N/s1HNTcNbIhfo3RBxPda6m2w5t8Y/4+A==
X-Gm-Message-State: AOJu0YwXFv5x/GIVV+vh+NoIFqsH5V29eLt/KuORuacZN9ibIGF4obRD
 Zf3QxAG3t+iALYHj9K9LisloRdTVvNQgmsSZORM+PmK9ynwOr23g6BFTQMJl9w==
X-Google-Smtp-Source: AGHT+IE+NKCIeOLd0oynlJyaM7Qjc9sYGTUxRdsQeKvXZf1AORTGmLID2QxlOJQ28IlrXJVJZL7wtw==
X-Received: by 2002:a17:903:2289:b0:1dd:4064:9f2a with SMTP id
 b9-20020a170903228900b001dd40649f2amr3014579plh.38.1709769099655; 
 Wed, 06 Mar 2024 15:51:39 -0800 (PST)
Received: from www.outflux.net ([198.0.35.241])
 by smtp.gmail.com with ESMTPSA id
 k11-20020a170902c40b00b001dba98889a3sm13153733plk.71.2024.03.06.15.51.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Mar 2024 15:51:39 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Wed,  6 Mar 2024 15:51:36 -0800
Message-Id: <20240306235128.it.933-kees@kernel.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=13054; i=keescook@chromium.org;
 h=from:subject:message-id; bh=kniFRnBCwG2rtM99m/dBlmUFBoQG+cJidyFisAZSBmo=;
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBl6QGIq6qEj9nAtP/Hd8ILwEU+OKOpsRRqP9w8G
 A99LVP1JseJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCZekBiAAKCRCJcvTf3G3A
 JiV/D/989Wm7nRRGUuhrbWs4Q23qF9hCTtWGHHjozWeiXXcNph/LiO7snp7NDjegFbvWGGN0q8g
 7z504ffBh9xBSttljWSciOKxgysSSyg8dathEyRLIJ9mLHyPC1qIb4reP7W74pYWww8bHmF23Yj
 dESZd3Y4gJXka/ITZPhurHnIsqtXfVS6E5UHYmMu4YbPqmNfg85yvn2owKEpTMZ4KB8rrxdPEEa
 QC06bJsVoib2ilAt/TLjHJkzVKWnr2ONGS8GCx98G1rjCiU08+q/XoKRsKjMLjOnQzeWGlZee7M
 6UwR43tDyBZMysUuK8FdSxDVGNYJ939ZAXVReRr+42MqEK+pnwh78GKBHB/fOTV56cgLOj17/1l
 yLoIWJGTATYxoI+RN2CCeSC2N0JvUVJRGCzNpCNDCWj3J9H2xZXNSEy4gsP1u4WxnTRKttnqhjr
 Tv/1764wcWBM3l3wWQnyPUMO9iY415td9XW5zMmLEB+KXAgJoUyYoB3+g4ILm9yfnsxB3Sy89NS
 zEt0DFfKkLkR81TltumdLXKtYVJDo0SshcYbix6ocipmvovqu9qLEPBmPoVmn6uW+XfOFKLvZua
 bVQ8z4aav9z9FNpjBvszD/ebecrdw5IzNGUyQkXSz5Ls8/4y1wOJto6T8XYjJJDLjuqxHHWueRg
 T5P7j8 Ws8vWaEkw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1709769100; x=1710373900; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=8/qOHT0FrXz/jk25N5t4D87h17X9rY+PHleRKIhqTA0=;
 b=V7Lw0g+z4FfNYpIUcaaVY0QT6HkMdefSOhVDDFdi/11jNU8fPxJHMZrX4Ff3cIk4dj
 irHvTMcD/9zW+e0Nc4o1cn2uUe7XEOfi/wUTvgpgw0gupJv5yQoDeLmByJcPDOa+f0dw
 /DlBI5k/a5fwQuERVzf5Y/HN2/0od7um4+Pvc=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=chromium.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=chromium.org header.i=@chromium.org header.a=rsa-sha256
 header.s=google header.b=V7Lw0g+z
Subject: [Intel-wired-lan] [PATCH v2] overflow: Change DEFINE_FLEX to take
 __counted_by member
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
Cc: Kees Cook <keescook@chromium.org>, intel-wired-lan@lists.osuosl.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 linux-hardening@vger.kernel.org, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The norm should be flexible array structures with __counted_by
annotations, so DEFINE_FLEX() is updated to expect that. Rename
the non-annotated version to DEFINE_RAW_FLEX(), and update the
few existing users.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Eric Dumazet <edumazet@google.com>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: Paolo Abeni <pabeni@redhat.com>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Cc: linux-hardening@vger.kernel.org
 v2: swap member/counter args
 v1: https://lore.kernel.org/lkml/20240306010746.work.678-kees@kernel.org/
---
 drivers/net/ethernet/intel/ice/ice_common.c |  4 +--
 drivers/net/ethernet/intel/ice/ice_ddp.c    |  8 +++---
 drivers/net/ethernet/intel/ice/ice_lag.c    |  6 ++---
 drivers/net/ethernet/intel/ice/ice_lib.c    |  4 +--
 drivers/net/ethernet/intel/ice/ice_sched.c  |  4 +--
 drivers/net/ethernet/intel/ice/ice_switch.c | 10 ++++----
 drivers/net/ethernet/intel/ice/ice_xsk.c    |  2 +-
 include/linux/overflow.h                    | 27 +++++++++++++++++----
 lib/overflow_kunit.c                        | 19 +++++++++++++++
 9 files changed, 60 insertions(+), 24 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 10c32cd80fff..ce50a322daa9 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -4700,7 +4700,7 @@ ice_dis_vsi_txq(struct ice_port_info *pi, u16 vsi_handle, u8 tc, u8 num_queues,
 		enum ice_disq_rst_src rst_src, u16 vmvf_num,
 		struct ice_sq_cd *cd)
 {
-	DEFINE_FLEX(struct ice_aqc_dis_txq_item, qg_list, q_id, 1);
+	DEFINE_RAW_FLEX(struct ice_aqc_dis_txq_item, qg_list, q_id, 1);
 	u16 i, buf_size = __struct_size(qg_list);
 	struct ice_q_ctx *q_ctx;
 	int status = -ENOENT;
@@ -4922,7 +4922,7 @@ int
 ice_dis_vsi_rdma_qset(struct ice_port_info *pi, u16 count, u32 *qset_teid,
 		      u16 *q_id)
 {
-	DEFINE_FLEX(struct ice_aqc_dis_txq_item, qg_list, q_id, 1);
+	DEFINE_RAW_FLEX(struct ice_aqc_dis_txq_item, qg_list, q_id, 1);
 	u16 qg_size = __struct_size(qg_list);
 	struct ice_hw *hw;
 	int status = 0;
diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
index 8b7504a9df31..03efb2521ca7 100644
--- a/drivers/net/ethernet/intel/ice/ice_ddp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
@@ -1934,8 +1934,8 @@ static enum ice_ddp_state ice_init_pkg_info(struct ice_hw *hw,
  */
 static enum ice_ddp_state ice_get_pkg_info(struct ice_hw *hw)
 {
-	DEFINE_FLEX(struct ice_aqc_get_pkg_info_resp, pkg_info, pkg_info,
-		    ICE_PKG_CNT);
+	DEFINE_RAW_FLEX(struct ice_aqc_get_pkg_info_resp, pkg_info, pkg_info,
+			ICE_PKG_CNT);
 	u16 size = __struct_size(pkg_info);
 	u32 i;
 
@@ -1986,8 +1986,8 @@ static enum ice_ddp_state ice_chk_pkg_compat(struct ice_hw *hw,
 					     struct ice_pkg_hdr *ospkg,
 					     struct ice_seg **seg)
 {
-	DEFINE_FLEX(struct ice_aqc_get_pkg_info_resp, pkg, pkg_info,
-		    ICE_PKG_CNT);
+	DEFINE_RAW_FLEX(struct ice_aqc_get_pkg_info_resp, pkg, pkg_info,
+			ICE_PKG_CNT);
 	u16 size = __struct_size(pkg);
 	enum ice_ddp_state state;
 	u32 i;
diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 2a25323105e5..da38edac1c42 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -470,7 +470,7 @@ static void
 ice_lag_move_vf_node_tc(struct ice_lag *lag, u8 oldport, u8 newport,
 			u16 vsi_num, u8 tc)
 {
-	DEFINE_FLEX(struct ice_aqc_move_elem, buf, teid, 1);
+	DEFINE_RAW_FLEX(struct ice_aqc_move_elem, buf, teid, 1);
 	struct device *dev = ice_pf_to_dev(lag->pf);
 	u16 numq, valq, num_moved, qbuf_size;
 	u16 buf_size = __struct_size(buf);
@@ -828,7 +828,7 @@ static void
 ice_lag_reclaim_vf_tc(struct ice_lag *lag, struct ice_hw *src_hw, u16 vsi_num,
 		      u8 tc)
 {
-	DEFINE_FLEX(struct ice_aqc_move_elem, buf, teid, 1);
+	DEFINE_RAW_FLEX(struct ice_aqc_move_elem, buf, teid, 1);
 	struct device *dev = ice_pf_to_dev(lag->pf);
 	u16 numq, valq, num_moved, qbuf_size;
 	u16 buf_size = __struct_size(buf);
@@ -1852,7 +1852,7 @@ static void
 ice_lag_move_vf_nodes_tc_sync(struct ice_lag *lag, struct ice_hw *dest_hw,
 			      u16 vsi_num, u8 tc)
 {
-	DEFINE_FLEX(struct ice_aqc_move_elem, buf, teid, 1);
+	DEFINE_RAW_FLEX(struct ice_aqc_move_elem, buf, teid, 1);
 	struct device *dev = ice_pf_to_dev(lag->pf);
 	u16 numq, valq, num_moved, qbuf_size;
 	u16 buf_size = __struct_size(buf);
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 9be724291ef8..6819e95cec32 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1805,7 +1805,7 @@ int ice_vsi_cfg_single_rxq(struct ice_vsi *vsi, u16 q_idx)
 
 int ice_vsi_cfg_single_txq(struct ice_vsi *vsi, struct ice_tx_ring **tx_rings, u16 q_idx)
 {
-	DEFINE_FLEX(struct ice_aqc_add_tx_qgrp, qg_buf, txqs, 1);
+	DEFINE_RAW_FLEX(struct ice_aqc_add_tx_qgrp, qg_buf, txqs, 1);
 
 	if (q_idx >= vsi->alloc_txq || !tx_rings || !tx_rings[q_idx])
 		return -EINVAL;
@@ -1854,7 +1854,7 @@ int ice_vsi_cfg_rxqs(struct ice_vsi *vsi)
 static int
 ice_vsi_cfg_txqs(struct ice_vsi *vsi, struct ice_tx_ring **rings, u16 count)
 {
-	DEFINE_FLEX(struct ice_aqc_add_tx_qgrp, qg_buf, txqs, 1);
+	DEFINE_RAW_FLEX(struct ice_aqc_add_tx_qgrp, qg_buf, txqs, 1);
 	int err = 0;
 	u16 q_idx;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index d174a4eeb899..a1525992d14b 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -237,7 +237,7 @@ static int
 ice_sched_remove_elems(struct ice_hw *hw, struct ice_sched_node *parent,
 		       u32 node_teid)
 {
-	DEFINE_FLEX(struct ice_aqc_delete_elem, buf, teid, 1);
+	DEFINE_RAW_FLEX(struct ice_aqc_delete_elem, buf, teid, 1);
 	u16 buf_size = __struct_size(buf);
 	u16 num_groups_removed = 0;
 	int status;
@@ -2219,7 +2219,7 @@ int
 ice_sched_move_nodes(struct ice_port_info *pi, struct ice_sched_node *parent,
 		     u16 num_items, u32 *list)
 {
-	DEFINE_FLEX(struct ice_aqc_move_elem, buf, teid, 1);
+	DEFINE_RAW_FLEX(struct ice_aqc_move_elem, buf, teid, 1);
 	u16 buf_len = __struct_size(buf);
 	struct ice_sched_node *node;
 	u16 i, grps_movd = 0;
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index f84bab80ca42..d4baae8c3b72 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -1812,7 +1812,7 @@ ice_aq_alloc_free_vsi_list(struct ice_hw *hw, u16 *vsi_list_id,
 			   enum ice_sw_lkup_type lkup_type,
 			   enum ice_adminq_opc opc)
 {
-	DEFINE_FLEX(struct ice_aqc_alloc_free_res_elem, sw_buf, elem, 1);
+	DEFINE_RAW_FLEX(struct ice_aqc_alloc_free_res_elem, sw_buf, elem, 1);
 	u16 buf_len = __struct_size(sw_buf);
 	struct ice_aqc_res_elem *vsi_ele;
 	int status;
@@ -2081,7 +2081,7 @@ ice_aq_get_recipe_to_profile(struct ice_hw *hw, u32 profile_id, u8 *r_bitmap,
  */
 int ice_alloc_recipe(struct ice_hw *hw, u16 *rid)
 {
-	DEFINE_FLEX(struct ice_aqc_alloc_free_res_elem, sw_buf, elem, 1);
+	DEFINE_RAW_FLEX(struct ice_aqc_alloc_free_res_elem, sw_buf, elem, 1);
 	u16 buf_len = __struct_size(sw_buf);
 	int status;
 
@@ -4418,7 +4418,7 @@ int
 ice_alloc_res_cntr(struct ice_hw *hw, u8 type, u8 alloc_shared, u16 num_items,
 		   u16 *counter_id)
 {
-	DEFINE_FLEX(struct ice_aqc_alloc_free_res_elem, buf, elem, 1);
+	DEFINE_RAW_FLEX(struct ice_aqc_alloc_free_res_elem, buf, elem, 1);
 	u16 buf_len = __struct_size(buf);
 	int status;
 
@@ -4446,7 +4446,7 @@ int
 ice_free_res_cntr(struct ice_hw *hw, u8 type, u8 alloc_shared, u16 num_items,
 		  u16 counter_id)
 {
-	DEFINE_FLEX(struct ice_aqc_alloc_free_res_elem, buf, elem, 1);
+	DEFINE_RAW_FLEX(struct ice_aqc_alloc_free_res_elem, buf, elem, 1);
 	u16 buf_len = __struct_size(buf);
 	int status;
 
@@ -4476,7 +4476,7 @@ ice_free_res_cntr(struct ice_hw *hw, u8 type, u8 alloc_shared, u16 num_items,
  */
 int ice_share_res(struct ice_hw *hw, u16 type, u8 shared, u16 res_id)
 {
-	DEFINE_FLEX(struct ice_aqc_alloc_free_res_elem, buf, elem, 1);
+	DEFINE_RAW_FLEX(struct ice_aqc_alloc_free_res_elem, buf, elem, 1);
 	u16 buf_len = __struct_size(buf);
 	u16 res_type;
 	int status;
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 8b81a1677045..92ffa8de5171 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -217,7 +217,7 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
  */
 static int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
 {
-	DEFINE_FLEX(struct ice_aqc_add_tx_qgrp, qg_buf, txqs, 1);
+	DEFINE_RAW_FLEX(struct ice_aqc_add_tx_qgrp, qg_buf, txqs, 1);
 	u16 size = __struct_size(qg_buf);
 	struct ice_q_vector *q_vector;
 	struct ice_tx_ring *tx_ring;
diff --git a/include/linux/overflow.h b/include/linux/overflow.h
index aa691f2119b0..677b03c4c84f 100644
--- a/include/linux/overflow.h
+++ b/include/linux/overflow.h
@@ -396,9 +396,9 @@ static inline size_t __must_check size_sub(size_t minuend, size_t subtrahend)
  * @name: Name for a variable to define.
  * @member: Name of the array member.
  * @count: Number of elements in the array; must be compile-time const.
- * @initializer: initializer expression (could be empty for no init).
+ * @initializer...: initializer expression (could be empty for no init).
  */
-#define _DEFINE_FLEX(type, name, member, count, initializer)			\
+#define _DEFINE_FLEX(type, name, member, count, initializer...)			\
 	_Static_assert(__builtin_constant_p(count),				\
 		       "onstack flex array members require compile-time const count"); \
 	union {									\
@@ -408,8 +408,8 @@ static inline size_t __must_check size_sub(size_t minuend, size_t subtrahend)
 	type *name = (type *)&name##_u
 
 /**
- * DEFINE_FLEX() - Define an on-stack instance of structure with a trailing
- * flexible array member.
+ * DEFINE_RAW_FLEX() - Define an on-stack instance of structure with a trailing
+ * flexible array member, when it does not have a __counted_by annotation.
  *
  * @type: structure type name, including "struct" keyword.
  * @name: Name for a variable to define.
@@ -420,7 +420,24 @@ static inline size_t __must_check size_sub(size_t minuend, size_t subtrahend)
  * flexible array member.
  * Use __struct_size(@name) to get compile-time size of it afterwards.
  */
-#define DEFINE_FLEX(type, name, member, count)			\
+#define DEFINE_RAW_FLEX(type, name, member, count)	\
 	_DEFINE_FLEX(type, name, member, count, = {})
 
+/**
+ * DEFINE_FLEX() - Define an on-stack instance of structure with a trailing
+ * flexible array member.
+ *
+ * @TYPE: structure type name, including "struct" keyword.
+ * @NAME: Name for a variable to define.
+ * @MEMBER: Name of the array member.
+ * @COUNTER: Name of the __counted_by member.
+ * @COUNT: Number of elements in the array; must be compile-time const.
+ *
+ * Define a zeroed, on-stack, instance of @TYPE structure with a trailing
+ * flexible array member.
+ * Use __struct_size(@NAME) to get compile-time size of it afterwards.
+ */
+#define DEFINE_FLEX(TYPE, NAME, MEMBER, COUNTER, COUNT)	\
+	_DEFINE_FLEX(TYPE, NAME, MEMBER, COUNT, = { .obj.COUNTER = COUNT, })
+
 #endif /* __LINUX_OVERFLOW_H */
diff --git a/lib/overflow_kunit.c b/lib/overflow_kunit.c
index 65e8a72a83bf..4ef31b0bb74d 100644
--- a/lib/overflow_kunit.c
+++ b/lib/overflow_kunit.c
@@ -1172,6 +1172,24 @@ static void castable_to_type_test(struct kunit *test)
 #undef TEST_CASTABLE_TO_TYPE
 }
 
+struct foo {
+	int a;
+	u32 counter;
+	s16 array[] __counted_by(counter);
+};
+
+static void DEFINE_FLEX_test(struct kunit *test)
+{
+	DEFINE_RAW_FLEX(struct foo, two, array, 2);
+	DEFINE_FLEX(struct foo, eight, array, counter, 8);
+	DEFINE_FLEX(struct foo, empty, array, counter, 0);
+
+	KUNIT_EXPECT_EQ(test, __struct_size(two),
+			sizeof(struct foo) + sizeof(s16) + sizeof(s16));
+	KUNIT_EXPECT_EQ(test, __struct_size(eight), 24);
+	KUNIT_EXPECT_EQ(test, __struct_size(empty), sizeof(struct foo));
+}
+
 static struct kunit_case overflow_test_cases[] = {
 	KUNIT_CASE(u8_u8__u8_overflow_test),
 	KUNIT_CASE(s8_s8__s8_overflow_test),
@@ -1194,6 +1212,7 @@ static struct kunit_case overflow_test_cases[] = {
 	KUNIT_CASE(overflows_type_test),
 	KUNIT_CASE(same_type_test),
 	KUNIT_CASE(castable_to_type_test),
+	KUNIT_CASE(DEFINE_FLEX_test),
 	{}
 };
 
-- 
2.34.1

