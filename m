Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AABB969D73
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Sep 2024 14:26:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD023607D2;
	Tue,  3 Sep 2024 12:26:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n9iBv5MacQd1; Tue,  3 Sep 2024 12:26:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD5A060622
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725366379;
	bh=GINw1yCsMrEfrafRaxL5K4FNaJAGtedNyEvo6eAVOjg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Uh0ZokuO56Oce7LtTH7Z8cQQwXn+PbzM9hGt5Ivb5p4Aff0Mxf1E5s86xy+HEHZ+S
	 PGIzfdvbkX8WSRWO6Ll1i5C1xP5lD26tlfcQAx9ef8aMyv8V+Wqv0BqSRUAEfi8FZ8
	 0snN+kkY4EtIseHc8U73hZDfVGxT1hly0UEM4ziwrc9ZApzHEXL/EIH8t4MwG7ASRw
	 GS/G2Pb68qpncRaiXRG7a3yfPYrId2X6gc2O2iPoczD67RBDntNf5pm4L4TD7EifoV
	 11YfTkDOF7CFfsPowDIjYq8blEKAmda5JMKWkPZadbusltpfhYxKajL3dS8nD7/IGP
	 c1opxEjfZT2Bw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD5A060622;
	Tue,  3 Sep 2024 12:26:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A29771BF589
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 12:26:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8FB0B80E4C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 12:26:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z9EAvZJ4g7ex for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Sep 2024 12:26:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.32;
 helo=szxga06-in.huawei.com; envelope-from=yuehaibing@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DB4F680E4A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DB4F680E4A
Received: from szxga06-in.huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DB4F680E4A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 12:26:13 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.162.112])
 by szxga06-in.huawei.com (SkyGuard) with ESMTP id 4WylD72TLtz1xwys;
 Tue,  3 Sep 2024 20:24:07 +0800 (CST)
Received: from dggpemf500002.china.huawei.com (unknown [7.185.36.57])
 by mail.maildlp.com (Postfix) with ESMTPS id AF3EF1402CF;
 Tue,  3 Sep 2024 20:26:07 +0800 (CST)
Received: from huawei.com (10.175.101.6) by dggpemf500002.china.huawei.com
 (7.185.36.57) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Tue, 3 Sep
 2024 20:26:06 +0800
From: Yue Haibing <yuehaibing@huawei.com>
To: <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <davem@davemloft.net>, <kuba@kernel.org>, <pabeni@redhat.com>,
 <ahmed.zaki@intel.com>, <yuehaibing@huawei.com>, <richardcochran@gmail.com>,
 <michal.swiatkowski@linux.intel.com>, <amritha.nambiar@intel.com>,
 <mateusz.polchlopek@intel.com>, <jacob.e.keller@intel.com>,
 <maciej.fijalkowski@intel.com>
Date: Tue, 3 Sep 2024 20:22:34 +0800
Message-ID: <20240903122234.964218-4-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240903122234.964218-1-yuehaibing@huawei.com>
References: <20240903122234.964218-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 dggpemf500002.china.huawei.com (7.185.36.57)
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
Subject: [Intel-wired-lan] [PATCH net-next 3/3] ice: Cleanup unused
 declarations
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Since commit fff292b47ac1 ("ice: add VF representors one by one")
ice_eswitch_configure() is not used anymore.
Commit 1b8f15b64a00 ("ice: refactor filter functions") removed
ice_vsi_cfg_mac_fltr() but leave declaration.
Commit a24b4c6e9aab ("ice: xsk: Do not convert to buff to frame for
XDP_TX") leave ice_xmit_xdp_buff() declaration.

Commit 7cab44f1c35f ("ice: Introduce ETH56G PHY model for E825C
products") declared ice_phy_cfg_{rx,tx}_offset_eth56g(),
commit a1ffafb0b4a4 ("ice: Support configuring the device to Double
VLAN Mode") declared ice_pkg_buf_get_free_space(), and
commit 8a3a565ff210 ("ice: add admin commands to access cgu
configuration") declared ice_is_pca9575_present(), but all these never
be implemented.

Signed-off-by: Yue Haibing <yuehaibing@huawei.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.h   | 5 -----
 drivers/net/ethernet/intel/ice/ice_flex_pipe.h | 3 ---
 drivers/net/ethernet/intel/ice/ice_lib.h       | 2 --
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h    | 3 ---
 drivers/net/ethernet/intel/ice/ice_txrx_lib.h  | 1 -
 5 files changed, 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.h b/drivers/net/ethernet/intel/ice/ice_eswitch.h
index 78fd39a6935d..cf4b7845f08f 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.h
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.h
@@ -48,11 +48,6 @@ ice_eswitch_set_target_vsi(struct sk_buff *skb,
 static inline void
 ice_eswitch_update_repr(unsigned long *repr_id, struct ice_vsi *vsi) { }
 
-static inline int ice_eswitch_configure(struct ice_pf *pf)
-{
-	return 0;
-}
-
 static inline int ice_eswitch_mode_get(struct devlink *devlink, u16 *mode)
 {
 	return DEVLINK_ESWITCH_MODE_LEGACY;
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
index 90b9b0993122..28b0897adf32 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.h
@@ -23,9 +23,6 @@ int
 ice_get_sw_fv_list(struct ice_hw *hw, struct ice_prot_lkup_ext *lkups,
 		   unsigned long *bm, struct list_head *fv_list);
 int
-ice_pkg_buf_unreserve_section(struct ice_buf_build *bld, u16 count);
-u16 ice_pkg_buf_get_free_space(struct ice_buf_build *bld);
-int
 ice_aq_upload_section(struct ice_hw *hw, struct ice_buf_hdr *pkg_buf,
 		      u16 buf_size, struct ice_sq_cd *cd);
 bool
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 94ce8964dda6..77dff4ab875a 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -91,8 +91,6 @@ void ice_write_intrl(struct ice_q_vector *q_vector, u8 intrl);
 void ice_write_itr(struct ice_ring_container *rc, u16 itr);
 void ice_set_q_vector_intrl(struct ice_q_vector *q_vector);
 
-int ice_vsi_cfg_mac_fltr(struct ice_vsi *vsi, const u8 *macaddr, bool set);
-
 bool ice_is_safe_mode(struct ice_pf *pf);
 bool ice_is_rdma_ena(struct ice_pf *pf);
 bool ice_is_dflt_vsi_in_use(struct ice_port_info *pi);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 0852a34ade91..67a9711d01ac 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -403,7 +403,6 @@ int ice_phy_cfg_intr_e82x(struct ice_hw *hw, u8 quad, bool ena, u8 threshold);
 int ice_read_sma_ctrl_e810t(struct ice_hw *hw, u8 *data);
 int ice_write_sma_ctrl_e810t(struct ice_hw *hw, u8 data);
 int ice_read_pca9575_reg_e810t(struct ice_hw *hw, u8 offset, u8 *data);
-bool ice_is_pca9575_present(struct ice_hw *hw);
 enum dpll_pin_type ice_cgu_get_pin_type(struct ice_hw *hw, u8 pin, bool input);
 struct dpll_pin_frequency *
 ice_cgu_get_pin_freq_supp(struct ice_hw *hw, u8 pin, bool input, u8 *num);
@@ -420,8 +419,6 @@ int ice_cgu_get_output_pin_state_caps(struct ice_hw *hw, u8 pin_id,
 int ice_ptp_read_tx_hwtstamp_status_eth56g(struct ice_hw *hw, u32 *ts_status);
 int ice_stop_phy_timer_eth56g(struct ice_hw *hw, u8 port, bool soft_reset);
 int ice_start_phy_timer_eth56g(struct ice_hw *hw, u8 port);
-int ice_phy_cfg_tx_offset_eth56g(struct ice_hw *hw, u8 port);
-int ice_phy_cfg_rx_offset_eth56g(struct ice_hw *hw, u8 port);
 int ice_phy_cfg_intr_eth56g(struct ice_hw *hw, u8 port, bool ena, u8 threshold);
 int ice_phy_cfg_ptp_1step_eth56g(struct ice_hw *hw, u8 port);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.h b/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
index afcead4baef4..79f960c6680d 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
@@ -154,7 +154,6 @@ static inline u32 ice_set_rs_bit(const struct ice_tx_ring *xdp_ring)
 }
 
 void ice_finalize_xdp_rx(struct ice_tx_ring *xdp_ring, unsigned int xdp_res, u32 first_idx);
-int ice_xmit_xdp_buff(struct xdp_buff *xdp, struct ice_tx_ring *xdp_ring);
 int __ice_xmit_xdp_ring(struct xdp_buff *xdp, struct ice_tx_ring *xdp_ring,
 			bool frame);
 void ice_release_rx_desc(struct ice_rx_ring *rx_ring, u16 val);
-- 
2.34.1

