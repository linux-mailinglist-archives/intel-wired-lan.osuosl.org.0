Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C440B969D74
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Sep 2024 14:26:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9BF28607D3;
	Tue,  3 Sep 2024 12:26:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fpqbDeL95iwc; Tue,  3 Sep 2024 12:26:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD46C60622
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725366380;
	bh=bdwNlO10/FzjujM96/UAuWgzXHY3k0KaqsI9ZMK91Zg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=P3klb6o0j8zMgFY/RX3uwKziLf9ep5x6hRbQgDKNyBNuohhEkg65a/6Bu51JyvNgP
	 JXPYG2/X57Jm1WuAxuFJF4GaK2nkSvLTK6bNTr257ORk8cmbBzvuSIH+8hUXI/Drg9
	 WP6W47drs1tKyUIg06gXRTc5U90gUQEQRXzyDTwG/dYXq7S8S+opj444LRs/dMWuh6
	 nlFR7JwfIXsz68ntBheLhOwcpJqzzfpY95Q9/A1kBgnUSj1bEKI188+iKxRZrx1T24
	 Icw63qPYlZRGii/ViPY95/eVx9UIKk2XU3HDOVRQRTAbJQcqw93SeqVIKCdC48N13z
	 k7uWy0lASS7DA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CD46C60622;
	Tue,  3 Sep 2024 12:26:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B992A1BF589
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 12:26:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B3BA740921
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 12:26:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TD7vwIkADRwR for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Sep 2024 12:26:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=45.249.212.32;
 helo=szxga06-in.huawei.com; envelope-from=yuehaibing@huawei.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DB6E3408D4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DB6E3408D4
Received: from szxga06-in.huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DB6E3408D4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 12:26:14 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.88.234])
 by szxga06-in.huawei.com (SkyGuard) with ESMTP id 4WylD56MpSz1xwpy;
 Tue,  3 Sep 2024 20:24:05 +0800 (CST)
Received: from dggpemf500002.china.huawei.com (unknown [7.185.36.57])
 by mail.maildlp.com (Postfix) with ESMTPS id 4118114011F;
 Tue,  3 Sep 2024 20:26:06 +0800 (CST)
Received: from huawei.com (10.175.101.6) by dggpemf500002.china.huawei.com
 (7.185.36.57) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Tue, 3 Sep
 2024 20:26:05 +0800
From: Yue Haibing <yuehaibing@huawei.com>
To: <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <davem@davemloft.net>, <kuba@kernel.org>, <pabeni@redhat.com>,
 <ahmed.zaki@intel.com>, <yuehaibing@huawei.com>, <richardcochran@gmail.com>,
 <michal.swiatkowski@linux.intel.com>, <amritha.nambiar@intel.com>,
 <mateusz.polchlopek@intel.com>, <jacob.e.keller@intel.com>,
 <maciej.fijalkowski@intel.com>
Date: Tue, 3 Sep 2024 20:22:32 +0800
Message-ID: <20240903122234.964218-2-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240903122234.964218-1-yuehaibing@huawei.com>
References: <20240903122234.964218-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.175.101.6]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 dggpemf500002.china.huawei.com (7.185.36.57)
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=huawei.com
Subject: [Intel-wired-lan] [PATCH net-next 1/3] iavf: Remove unused
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

There is no caller and implementation in tree.

Signed-off-by: Yue Haibing <yuehaibing@huawei.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h           | 10 ----------
 drivers/net/ethernet/intel/iavf/iavf_prototype.h |  3 ---
 2 files changed, 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 48cd1d06761c..95b1d8f62304 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -529,22 +529,16 @@ static inline void iavf_change_state(struct iavf_adapter *adapter,
 		iavf_state_str(adapter->state));
 }
 
-int iavf_up(struct iavf_adapter *adapter);
 void iavf_down(struct iavf_adapter *adapter);
 int iavf_process_config(struct iavf_adapter *adapter);
 int iavf_parse_vf_resource_msg(struct iavf_adapter *adapter);
 void iavf_schedule_reset(struct iavf_adapter *adapter, u64 flags);
 void iavf_schedule_aq_request(struct iavf_adapter *adapter, u64 flags);
 void iavf_schedule_finish_config(struct iavf_adapter *adapter);
-void iavf_reset(struct iavf_adapter *adapter);
 void iavf_set_ethtool_ops(struct net_device *netdev);
-void iavf_update_stats(struct iavf_adapter *adapter);
 void iavf_free_all_tx_resources(struct iavf_adapter *adapter);
 void iavf_free_all_rx_resources(struct iavf_adapter *adapter);
 
-void iavf_napi_add_all(struct iavf_adapter *adapter);
-void iavf_napi_del_all(struct iavf_adapter *adapter);
-
 int iavf_send_api_ver(struct iavf_adapter *adapter);
 int iavf_verify_api_ver(struct iavf_adapter *adapter);
 int iavf_send_vf_config_msg(struct iavf_adapter *adapter);
@@ -555,11 +549,9 @@ void iavf_set_queue_vlan_tag_loc(struct iavf_adapter *adapter);
 u16 iavf_get_num_vlans_added(struct iavf_adapter *adapter);
 void iavf_irq_enable(struct iavf_adapter *adapter, bool flush);
 void iavf_configure_queues(struct iavf_adapter *adapter);
-void iavf_deconfigure_queues(struct iavf_adapter *adapter);
 void iavf_enable_queues(struct iavf_adapter *adapter);
 void iavf_disable_queues(struct iavf_adapter *adapter);
 void iavf_map_queues(struct iavf_adapter *adapter);
-int iavf_request_queues(struct iavf_adapter *adapter, int num);
 void iavf_add_ether_addrs(struct iavf_adapter *adapter);
 void iavf_del_ether_addrs(struct iavf_adapter *adapter);
 void iavf_add_vlans(struct iavf_adapter *adapter);
@@ -579,8 +571,6 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 			      enum virtchnl_ops v_opcode,
 			      enum iavf_status v_retval, u8 *msg, u16 msglen);
 int iavf_config_rss(struct iavf_adapter *adapter);
-int iavf_lan_add_device(struct iavf_adapter *adapter);
-int iavf_lan_del_device(struct iavf_adapter *adapter);
 void iavf_enable_channels(struct iavf_adapter *adapter);
 void iavf_disable_channels(struct iavf_adapter *adapter);
 void iavf_add_cloud_filter(struct iavf_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_prototype.h b/drivers/net/ethernet/intel/iavf/iavf_prototype.h
index 48c3901381b4..cac9d1a35a52 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_prototype.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_prototype.h
@@ -18,7 +18,6 @@
 /* adminq functions */
 enum iavf_status iavf_init_adminq(struct iavf_hw *hw);
 enum iavf_status iavf_shutdown_adminq(struct iavf_hw *hw);
-void iavf_adminq_init_ring_data(struct iavf_hw *hw);
 enum iavf_status iavf_clean_arq_element(struct iavf_hw *hw,
 					struct iavf_arq_event_info *e,
 					u16 *events_pending);
@@ -33,8 +32,6 @@ bool iavf_asq_done(struct iavf_hw *hw);
 void iavf_debug_aq(struct iavf_hw *hw, enum iavf_debug_mask mask,
 		   void *desc, void *buffer, u16 buf_len);
 
-void iavf_idle_aq(struct iavf_hw *hw);
-void iavf_resume_aq(struct iavf_hw *hw);
 bool iavf_check_asq_alive(struct iavf_hw *hw);
 enum iavf_status iavf_aq_queue_shutdown(struct iavf_hw *hw, bool unloading);
 const char *iavf_aq_str(struct iavf_hw *hw, enum iavf_admin_queue_err aq_err);
-- 
2.34.1

