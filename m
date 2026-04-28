Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YOKiAVXU8GkSZQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 17:37:57 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D582488059
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 17:37:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1A33780F0F;
	Tue, 28 Apr 2026 15:37:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NWTxEvrLhmfB; Tue, 28 Apr 2026 15:37:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1226483C03
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777390671;
	bh=h6xmkC20ZZsQfbCXkpbC0mMyClnK0/2HcBfHcMzmLA4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3oAnzIT4w1bl52FejfZjbcbS9zTOZlRXdy/M4Bb61eHQCzg64GSLNwBijc3qbQHih
	 GUEZEMIAGKB5+cSaph+K6SLgkY2+UUYUrja8J5t3nlZMjboBKqMRLGtxyZKH2sufw4
	 JLL8spq4EFiFuqw3Jf/xgPC5o9NxABLNCCYn6GtY8rnd+cR0jFNNyV35QpLvhNgIp4
	 IXi8fjPB9sbQsid7D3pg6quBXrtxClFyEpqnR2uIKHIV9rjb27RGgn7a2X9uvIUKf1
	 VrChSvDAxg0+RxuD4ImWpZpw4rxXG1qBQd11R1aUa/ZM1DAHQhWH4Q3VnjDC5WeHZL
	 TaUTBCRGVimkA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1226483C03;
	Tue, 28 Apr 2026 15:37:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id BC2841B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 15:37:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6B9C580D44
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 15:37:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 83q5zdAa-TJ2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 15:37:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8B4BA821CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8B4BA821CE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8B4BA821CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 15:37:45 +0000 (UTC)
X-CSE-ConnectionGUID: Wx/n2WTaRp2o3qGTpteWww==
X-CSE-MsgGUID: jxoLPDQpTKKiRlM1WeYFQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="78415124"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78415124"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 08:37:45 -0700
X-CSE-ConnectionGUID: m1sAz/B7QwO4aCHjx5KBUg==
X-CSE-MsgGUID: yVfI1yzESuq7rR6ioXnqzw==
X-ExtLoop1: 1
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa003.fm.intel.com with ESMTP; 28 Apr 2026 08:37:42 -0700
Received: from gond.igk.intel.com (gond.igk.intel.com [10.123.220.52])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 9AE67312C2;
 Tue, 28 Apr 2026 16:37:40 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, paul.greenwalt@intel.com, jacob.e.keller@intel.com,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Tue, 28 Apr 2026 16:37:15 +0200
Message-ID: <20260428143716.9653-3-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260428143716.9653-1-marcin.szycik@linux.intel.com>
References: <20260428143716.9653-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777390665; x=1808926665;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VQu2tqSbSW7X25R4xLZsKJJ9VF0GLiJsVVZC1KV7H0g=;
 b=LvgQDHvxdGFweOrDbABjs8+Aaj0oZAdMPYawJSQEf1KrN5YEolBnzUry
 /9oUyZcK8vhOnG4mKnAy0LDbhOsGfIGnoKWF8wbwfvOkM10t/kM8wT4g0
 X6mKd3SMT93CPLeRI5L6qBSPu4PmnOZxfdLO+bMzlzKAURQHVDCgFoNu4
 QFRZJhjblRGlBj/ZCIf01JAPZU9KBOsWnP/+VkBFL8l+wJIOsn/gca3R3
 NFLA92kTDYI7jr2ifTQNvS07yHwHoztGCSh2buGDwfp9WoLf37eN5+//o
 R/ZLAW9oaER/tzUGldqHm9jMEuR7R+3nPAReFU+tdYwi2U0viyca5BxsO
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LvgQDHvx
Subject: [Intel-wired-lan] [PATCH iwl-next 2/3] virtchnl, iavf, ice,
 i40e: store VIRTCHNL_VF_* flags in bitmaps
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
X-Rspamd-Queue-Id: 5D582488059
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,linux.intel.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]

As part of preparation to add extended (32nd and more) capability flags,
change all flags from bitmasks to bit numbers and store them in bitmaps
instead of u32. Change all bitops to test_bit()/set_bit()/etc.

Functionally nothing is changed, except that iavf now stores capability
flags in struct iavf_adapter::vf_cap_flags instead of
iavf_adapter::vf_res::vf_cap_flags to allow it to grow in the future.

Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
---
 .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |   4 +-
 drivers/net/ethernet/intel/iavf/iavf.h        |  51 ++++----
 .../net/ethernet/intel/iavf/iavf_prototype.h  |   3 +-
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   5 +-
 include/linux/intel/virtchnl.h                |  62 +++++-----
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |  76 ++++++------
 drivers/net/ethernet/intel/iavf/iavf_common.c |   7 +-
 .../net/ethernet/intel/iavf/iavf_ethtool.c    |   2 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  36 +++---
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  51 ++++----
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |   4 +-
 .../net/ethernet/intel/ice/virt/allowlist.c   |   5 +-
 drivers/net/ethernet/intel/ice/virt/fdir.c    |   2 +-
 drivers/net/ethernet/intel/ice/virt/queues.c  |  13 ++-
 drivers/net/ethernet/intel/ice/virt/rss.c     |   4 +-
 .../net/ethernet/intel/ice/virt/virtchnl.c    | 109 +++++++++---------
 16 files changed, 227 insertions(+), 207 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
index a03ecddfb956..b2b50c1fccf1 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
@@ -80,7 +80,9 @@ struct i40e_vf {
 	/* all VF vsis connect to the same parent */
 	enum i40e_switch_element_types parent_type;
 	struct virtchnl_version_info vf_ver;
-	u32 driver_caps; /* reported by VF driver */
+
+	/* reported by VF driver */
+	DECLARE_BITMAP(driver_caps, VIRTCHNL_VF_CAPS_MAX);
 
 	/* VF Port Extender (PE) stag if used */
 	u16 stag;
diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 1a1a66b3311e..64576cba3a01 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -395,7 +395,7 @@ struct iavf_adapter {
 	bool link_up;
 	enum virtchnl_link_speed link_speed;
 	/* This is only populated if the VIRTCHNL_VF_CAP_ADV_LINK_SPEED is set
-	 * in vf_res->vf_cap_flags. Use ADV_LINK_SUPPORT macro to determine if
+	 * in vf_cap_flags. Use ADV_LINK_SUPPORT macro to determine if
 	 * this field is valid. This field should be used going forward and the
 	 * enum virtchnl_link_speed above should be considered the legacy way of
 	 * storing/communicating link speeds.
@@ -404,39 +404,32 @@ struct iavf_adapter {
 
 	enum virtchnl_ops current_op;
 /* RSS by the PF should be preferred over RSS via other methods. */
-#define RSS_PF(_a) ((_a)->vf_res->vf_cap_flags & \
-		    VIRTCHNL_VF_OFFLOAD_RSS_PF)
-#define RSS_AQ(_a) ((_a)->vf_res->vf_cap_flags & \
-		    VIRTCHNL_VF_OFFLOAD_RSS_AQ)
-#define RSS_REG(_a) (!((_a)->vf_res->vf_cap_flags & \
-		       (VIRTCHNL_VF_OFFLOAD_RSS_AQ | \
-			VIRTCHNL_VF_OFFLOAD_RSS_PF)))
-#define VLAN_ALLOWED(_a) ((_a)->vf_res->vf_cap_flags & \
-			  VIRTCHNL_VF_OFFLOAD_VLAN)
-#define VLAN_V2_ALLOWED(_a) ((_a)->vf_res->vf_cap_flags & \
-			     VIRTCHNL_VF_OFFLOAD_VLAN_V2)
-#define CRC_OFFLOAD_ALLOWED(_a) ((_a)->vf_res->vf_cap_flags & \
-				 VIRTCHNL_VF_OFFLOAD_CRC)
-#define TC_U32_SUPPORT(_a) ((_a)->vf_res->vf_cap_flags & \
-			    VIRTCHNL_VF_OFFLOAD_TC_U32)
+#define RSS_PF(_a) test_bit(VIRTCHNL_VF_OFFLOAD_RSS_PF, (_a)->vf_cap_flags)
+#define RSS_AQ(_a) test_bit(VIRTCHNL_VF_OFFLOAD_RSS_AQ, (_a)->vf_cap_flags)
+#define RSS_REG(_a) (!(RSS_PF(_a) || RSS_AQ(_a)))
+#define VLAN_ALLOWED(_a) test_bit(VIRTCHNL_VF_OFFLOAD_VLAN, (_a)->vf_cap_flags)
+#define VLAN_V2_ALLOWED(_a)						\
+	test_bit(VIRTCHNL_VF_OFFLOAD_VLAN_V2, (_a)->vf_cap_flags)
+#define CRC_OFFLOAD_ALLOWED(_a)						\
+	test_bit(VIRTCHNL_VF_OFFLOAD_CRC, (_a)->vf_cap_flags)
+#define TC_U32_SUPPORT(_a)						\
+	test_bit(VIRTCHNL_VF_OFFLOAD_TC_U32, (_a)->vf_cap_flags)
 #define VLAN_V2_FILTERING_ALLOWED(_a) \
 	(VLAN_V2_ALLOWED((_a)) && \
 	 ((_a)->vlan_v2_caps.filtering.filtering_support.outer || \
 	  (_a)->vlan_v2_caps.filtering.filtering_support.inner))
 #define VLAN_FILTERING_ALLOWED(_a) \
 	(VLAN_ALLOWED((_a)) || VLAN_V2_FILTERING_ALLOWED((_a)))
-#define ADV_LINK_SUPPORT(_a) ((_a)->vf_res->vf_cap_flags & \
-			      VIRTCHNL_VF_CAP_ADV_LINK_SPEED)
-#define FDIR_FLTR_SUPPORT(_a) ((_a)->vf_res->vf_cap_flags & \
-			       VIRTCHNL_VF_OFFLOAD_FDIR_PF)
-#define ADV_RSS_SUPPORT(_a) ((_a)->vf_res->vf_cap_flags & \
-			     VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF)
-#define QOS_ALLOWED(_a) ((_a)->vf_res->vf_cap_flags & \
-			 VIRTCHNL_VF_OFFLOAD_QOS)
+#define ADV_LINK_SUPPORT(_a)						\
+	test_bit(VIRTCHNL_VF_CAP_ADV_LINK_SPEED, (_a)->vf_cap_flags)
+#define FDIR_FLTR_SUPPORT(_a)						\
+	test_bit(VIRTCHNL_VF_OFFLOAD_FDIR_PF, (_a)->vf_cap_flags)
+#define ADV_RSS_SUPPORT(_a)						\
+	test_bit(VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF, (_a)->vf_cap_flags)
+#define QOS_ALLOWED(_a) test_bit(VIRTCHNL_VF_OFFLOAD_QOS, (_a)->vf_cap_flags)
 #define IAVF_RXDID_ALLOWED(a)						\
-	((a)->vf_res->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC)
-#define IAVF_PTP_ALLOWED(a)						\
-	((a)->vf_res->vf_cap_flags & VIRTCHNL_VF_CAP_PTP)
+	test_bit(VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC, (a)->vf_cap_flags)
+#define IAVF_PTP_ALLOWED(a) test_bit(VIRTCHNL_VF_CAP_PTP, (a)->vf_cap_flags)
 	struct virtchnl_vf_resource *vf_res; /* incl. all VSIs */
 	struct virtchnl_vsi_resource *vsi_res; /* our LAN VSI */
 	struct virtchnl_version_info pf_version;
@@ -445,6 +438,10 @@ struct iavf_adapter {
 	struct virtchnl_vlan_caps vlan_v2_caps;
 	u64 supp_rxdids;
 	struct iavf_ptp ptp;
+
+	/* Mirrors vf_res->vf_cap_flags */
+	DECLARE_BITMAP(vf_cap_flags, VIRTCHNL_VF_CAPS_MAX);
+
 	u16 msg_enable;
 	struct iavf_eth_stats current_stats;
 	struct virtchnl_qos_cap_list *qos_caps;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_prototype.h b/drivers/net/ethernet/intel/iavf/iavf_prototype.h
index a3348b063723..985111b152d5 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_prototype.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_prototype.h
@@ -42,7 +42,8 @@ enum iavf_status iavf_aq_set_rss_key(struct iavf_hw *hw, u16 seid,
 				     struct iavf_aqc_get_set_rss_key_data *key);
 
 void iavf_vf_parse_hw_config(struct iavf_hw *hw,
-			     struct virtchnl_vf_resource *msg);
+			     struct virtchnl_vf_resource *msg,
+			     const unsigned long *vf_cap_flags);
 enum iavf_status iavf_aq_send_msg_to_pf(struct iavf_hw *hw,
 					enum virtchnl_ops v_opcode,
 					enum iavf_status v_retval,
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index c520e22e3d0a..d44c060d3c91 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -157,7 +157,10 @@ struct ice_vf {
 	u64 rss_hashcfg;		/* RSS hash configuration */
 	struct ice_sw *vf_sw_id;	/* switch ID the VF VSIs connect to */
 	struct virtchnl_version_info vf_ver;
-	u32 driver_caps;		/* reported by VF driver */
+
+	/* reported by VF driver */
+	DECLARE_BITMAP(driver_caps, VIRTCHNL_VF_CAPS_MAX);
+
 	u8 dev_lan_addr[ETH_ALEN];
 	u8 hw_lan_addr[ETH_ALEN];
 	struct ice_time_mac legacy_last_added_umac;
diff --git a/include/linux/intel/virtchnl.h b/include/linux/intel/virtchnl.h
index bb4737de37fe..577b0549b437 100644
--- a/include/linux/intel/virtchnl.h
+++ b/include/linux/intel/virtchnl.h
@@ -244,35 +244,39 @@ struct virtchnl_vsi_resource {
 
 VIRTCHNL_CHECK_STRUCT_LEN(16, virtchnl_vsi_resource);
 
-/* VF capability flags
- * VIRTCHNL_VF_OFFLOAD_L2 flag is inclusive of base mode L2 offloads including
- * TX/RX Checksum offloading and TSO for non-tunnelled packets.
- */
-#define VIRTCHNL_VF_OFFLOAD_L2			BIT(0)
-#define VIRTCHNL_VF_OFFLOAD_RDMA		BIT(1)
-#define VIRTCHNL_VF_OFFLOAD_RSS_AQ		BIT(3)
-#define VIRTCHNL_VF_OFFLOAD_RSS_REG		BIT(4)
-#define VIRTCHNL_VF_OFFLOAD_WB_ON_ITR		BIT(5)
-#define VIRTCHNL_VF_OFFLOAD_REQ_QUEUES		BIT(6)
-/* used to negotiate communicating link speeds in Mbps */
-#define VIRTCHNL_VF_CAP_ADV_LINK_SPEED		BIT(7)
-#define  VIRTCHNL_VF_OFFLOAD_CRC		BIT(10)
-#define VIRTCHNL_VF_OFFLOAD_TC_U32		BIT(11)
-#define VIRTCHNL_VF_OFFLOAD_VLAN_V2		BIT(15)
-#define VIRTCHNL_VF_OFFLOAD_VLAN		BIT(16)
-#define VIRTCHNL_VF_OFFLOAD_RX_POLLING		BIT(17)
-#define VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2	BIT(18)
-#define VIRTCHNL_VF_OFFLOAD_RSS_PF		BIT(19)
-#define VIRTCHNL_VF_OFFLOAD_ENCAP		BIT(20)
-#define VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM		BIT(21)
-#define VIRTCHNL_VF_OFFLOAD_RX_ENCAP_CSUM	BIT(22)
-#define VIRTCHNL_VF_OFFLOAD_ADQ			BIT(23)
-#define VIRTCHNL_VF_OFFLOAD_USO			BIT(25)
-#define VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC	BIT(26)
-#define VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF		BIT(27)
-#define VIRTCHNL_VF_OFFLOAD_FDIR_PF		BIT(28)
-#define VIRTCHNL_VF_OFFLOAD_QOS			BIT(29)
-#define VIRTCHNL_VF_CAP_PTP			BIT(31)
+/* VF capability flags */
+enum virtchnl_vf_caps_bitnr {
+	/* Inclusive of base mode L2 offloads including TX/RX Checksum
+	 * offloading and TSO for non-tunnelled packets.
+	 */
+	VIRTCHNL_VF_OFFLOAD_L2 = 0,
+	VIRTCHNL_VF_OFFLOAD_RDMA = 1,
+	VIRTCHNL_VF_OFFLOAD_RSS_AQ = 3,
+	VIRTCHNL_VF_OFFLOAD_RSS_REG = 4,
+	VIRTCHNL_VF_OFFLOAD_WB_ON_ITR = 5,
+	VIRTCHNL_VF_OFFLOAD_REQ_QUEUES = 6,
+	/* Used to negotiate communicating link speeds in Mbps */
+	VIRTCHNL_VF_CAP_ADV_LINK_SPEED = 7,
+	VIRTCHNL_VF_OFFLOAD_CRC = 10,
+	VIRTCHNL_VF_OFFLOAD_TC_U32 = 11,
+	VIRTCHNL_VF_OFFLOAD_VLAN_V2 = 15,
+	VIRTCHNL_VF_OFFLOAD_VLAN = 16,
+	VIRTCHNL_VF_OFFLOAD_RX_POLLING = 17,
+	VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2 = 18,
+	VIRTCHNL_VF_OFFLOAD_RSS_PF = 19,
+	VIRTCHNL_VF_OFFLOAD_ENCAP = 20,
+	VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM = 21,
+	VIRTCHNL_VF_OFFLOAD_RX_ENCAP_CSUM = 22,
+	VIRTCHNL_VF_OFFLOAD_ADQ = 23,
+	VIRTCHNL_VF_OFFLOAD_USO = 25,
+	VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC = 26,
+	VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF = 27,
+	VIRTCHNL_VF_OFFLOAD_FDIR_PF = 28,
+	VIRTCHNL_VF_OFFLOAD_QOS = 29,
+	VIRTCHNL_VF_CAP_PTP = 31,
+
+	VIRTCHNL_VF_CAPS_MAX /* must be last */
+};
 
 struct virtchnl_vf_resource {
 	u16 num_vsis;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index a26c3d47ec15..519f18dacd4a 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -90,7 +90,7 @@ static void i40e_set_vf_link_state(struct i40e_vf *vf,
 	if (vf->link_forced)
 		link_status = vf->link_up;
 
-	if (vf->driver_caps & VIRTCHNL_VF_CAP_ADV_LINK_SPEED) {
+	if (test_bit(VIRTCHNL_VF_CAP_ADV_LINK_SPEED, vf->driver_caps)) {
 		pfe->event_data.link_event_adv.link_speed = link_status ?
 			i40e_vc_link_speed2mbps(ls->link_speed) : 0;
 		pfe->event_data.link_event_adv.link_status = link_status;
@@ -455,8 +455,8 @@ static void i40e_config_irq_link_list(struct i40e_vf *vf, u16 vsi_id,
 	/* if the vf is running in polling mode and using interrupt zero,
 	 * need to disable auto-mask on enabling zero interrupt for VFs.
 	 */
-	if ((vf->driver_caps & VIRTCHNL_VF_OFFLOAD_RX_POLLING) &&
-	    (vector_id == 0)) {
+	if (test_bit(VIRTCHNL_VF_OFFLOAD_RX_POLLING, vf->driver_caps) &&
+	    vector_id == 0) {
 		reg = rd32(hw, I40E_GLINT_CTL);
 		if (!(reg & I40E_GLINT_CTL_DIS_AUTOMASK_VF0_MASK)) {
 			reg |= I40E_GLINT_CTL_DIS_AUTOMASK_VF0_MASK;
@@ -2146,51 +2146,56 @@ static int i40e_vc_get_vf_resources_msg(struct i40e_vf *vf, u8 *msg)
 		len = 0;
 		goto err;
 	}
-	if (VF_IS_V11(&vf->vf_ver))
-		vf->driver_caps = *(u32 *)msg;
-	else
-		vf->driver_caps = VIRTCHNL_VF_OFFLOAD_L2 |
-				  VIRTCHNL_VF_OFFLOAD_RSS_REG |
-				  VIRTCHNL_VF_OFFLOAD_VLAN;
 
-	vfres->vf_cap_flags = VIRTCHNL_VF_OFFLOAD_L2;
-	vfres->vf_cap_flags |= VIRTCHNL_VF_CAP_ADV_LINK_SPEED;
+	bitmap_zero(vf->driver_caps, VIRTCHNL_VF_CAPS_MAX);
+	if (VF_IS_V11(&vf->vf_ver)) {
+		bitmap_from_arr32(vf->driver_caps, (u32 *)msg,
+				  BITS_PER_TYPE(u32));
+	} else {
+		__set_bit(VIRTCHNL_VF_OFFLOAD_L2, vf->driver_caps);
+		__set_bit(VIRTCHNL_VF_OFFLOAD_RSS_REG, vf->driver_caps);
+		__set_bit(VIRTCHNL_VF_OFFLOAD_VLAN, vf->driver_caps);
+	}
+
+	vfres->vf_cap_flags = BIT(VIRTCHNL_VF_OFFLOAD_L2);
+	vfres->vf_cap_flags |= BIT(VIRTCHNL_VF_CAP_ADV_LINK_SPEED);
 	vsi = pf->vsi[vf->lan_vsi_idx];
 	if (!vsi->info.pvid)
-		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_VLAN;
+		vfres->vf_cap_flags |= BIT(VIRTCHNL_VF_OFFLOAD_VLAN);
 
 	if (i40e_vf_client_capable(pf, vf->vf_id) &&
-	    (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_RDMA)) {
-		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_RDMA;
+	    test_bit(VIRTCHNL_VF_OFFLOAD_RDMA, vf->driver_caps)) {
+		vfres->vf_cap_flags |= BIT(VIRTCHNL_VF_OFFLOAD_RDMA);
 		set_bit(I40E_VF_STATE_RDMAENA, &vf->vf_states);
 	} else {
 		clear_bit(I40E_VF_STATE_RDMAENA, &vf->vf_states);
 	}
 
-	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_RSS_PF) {
-		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_RSS_PF;
+	if (test_bit(VIRTCHNL_VF_OFFLOAD_RSS_PF, vf->driver_caps)) {
+		vfres->vf_cap_flags |= BIT(VIRTCHNL_VF_OFFLOAD_RSS_PF);
 	} else {
 		if (test_bit(I40E_HW_CAP_RSS_AQ, pf->hw.caps) &&
-		    (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_RSS_AQ))
-			vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_RSS_AQ;
+		    test_bit(VIRTCHNL_VF_OFFLOAD_RSS_AQ, vf->driver_caps))
+			vfres->vf_cap_flags |= BIT(VIRTCHNL_VF_OFFLOAD_RSS_AQ);
 		else
-			vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_RSS_REG;
+			vfres->vf_cap_flags |= BIT(VIRTCHNL_VF_OFFLOAD_RSS_REG);
 	}
 
 	if (test_bit(I40E_HW_CAP_MULTI_TCP_UDP_RSS_PCTYPE, pf->hw.caps)) {
-		if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2)
+		if (test_bit(VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2,
+			     vf->driver_caps))
 			vfres->vf_cap_flags |=
-				VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2;
+				BIT(VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2);
 	}
 
-	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_ENCAP)
-		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_ENCAP;
+	if (test_bit(VIRTCHNL_VF_OFFLOAD_ENCAP, vf->driver_caps))
+		vfres->vf_cap_flags |= BIT(VIRTCHNL_VF_OFFLOAD_ENCAP);
 
 	if (test_bit(I40E_HW_CAP_OUTER_UDP_CSUM, pf->hw.caps) &&
-	    (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM))
-		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM;
+	    test_bit(VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM, vf->driver_caps))
+		vfres->vf_cap_flags |= BIT(VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM);
 
-	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_RX_POLLING) {
+	if (test_bit(VIRTCHNL_VF_OFFLOAD_RX_POLLING, vf->driver_caps)) {
 		if (test_bit(I40E_FLAG_MFP_ENA, pf->flags)) {
 			dev_err(&pf->pdev->dev,
 				"VF %d requested polling mode: this feature is supported only when the device is running in single function per port (SFP) mode\n",
@@ -2198,20 +2203,20 @@ static int i40e_vc_get_vf_resources_msg(struct i40e_vf *vf, u8 *msg)
 			aq_ret = -EINVAL;
 			goto err;
 		}
-		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_RX_POLLING;
+		vfres->vf_cap_flags |= BIT(VIRTCHNL_VF_OFFLOAD_RX_POLLING);
 	}
 
 	if (test_bit(I40E_HW_CAP_WB_ON_ITR, pf->hw.caps)) {
-		if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_WB_ON_ITR)
+		if (test_bit(VIRTCHNL_VF_OFFLOAD_WB_ON_ITR, vf->driver_caps))
 			vfres->vf_cap_flags |=
-					VIRTCHNL_VF_OFFLOAD_WB_ON_ITR;
+					BIT(VIRTCHNL_VF_OFFLOAD_WB_ON_ITR);
 	}
 
-	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_REQ_QUEUES)
-		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_REQ_QUEUES;
+	if (test_bit(VIRTCHNL_VF_OFFLOAD_REQ_QUEUES, vf->driver_caps))
+		vfres->vf_cap_flags |= BIT(VIRTCHNL_VF_OFFLOAD_REQ_QUEUES);
 
-	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_ADQ)
-		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_ADQ;
+	if (test_bit(VIRTCHNL_VF_OFFLOAD_ADQ, vf->driver_caps))
+		vfres->vf_cap_flags |= BIT(VIRTCHNL_VF_OFFLOAD_ADQ);
 
 	vfres->num_vsis = num_vsis;
 	vfres->num_queue_pairs = vf->num_queue_pairs;
@@ -2227,7 +2232,8 @@ static int i40e_vc_get_vf_resources_msg(struct i40e_vf *vf, u8 *msg)
 		/* VFs only use TC 0 */
 		vfres->vsi_res[0].qset_handle
 					  = le16_to_cpu(vsi->info.qs_handle[0]);
-		if (!(vf->driver_caps & VIRTCHNL_VF_OFFLOAD_USO) && !vf->pf_set_mac) {
+		if (!test_bit(VIRTCHNL_VF_OFFLOAD_USO, vf->driver_caps) &&
+		    !vf->pf_set_mac) {
 			spin_lock_bh(&vsi->mac_filter_hash_lock);
 			i40e_del_mac_filter(vsi, vf->default_lan_addr.addr);
 			eth_zero_addr(vf->default_lan_addr.addr);
@@ -4059,7 +4065,7 @@ static int i40e_vc_add_qch_msg(struct i40e_vf *vf, u8 *msg)
 		goto err;
 	}
 
-	if (!(vf->driver_caps & VIRTCHNL_VF_OFFLOAD_ADQ)) {
+	if (!test_bit(VIRTCHNL_VF_OFFLOAD_ADQ, vf->driver_caps)) {
 		dev_err(&pf->pdev->dev,
 			"VF %d attempting to enable ADq, but hasn't properly negotiated that capability\n",
 			vf->vf_id);
diff --git a/drivers/net/ethernet/intel/iavf/iavf_common.c b/drivers/net/ethernet/intel/iavf/iavf_common.c
index 9bc8bdc339c7..97e8b4ac8125 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_common.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_common.c
@@ -421,12 +421,14 @@ enum iavf_status iavf_aq_send_msg_to_pf(struct iavf_hw *hw,
  * iavf_vf_parse_hw_config
  * @hw: pointer to the hardware structure
  * @msg: pointer to the virtual channel VF resource structure
+ * @vf_cap_flags: VF capability flags
  *
  * Given a VF resource message from the PF, populate the hw struct
  * with appropriate information.
  **/
 void iavf_vf_parse_hw_config(struct iavf_hw *hw,
-			     struct virtchnl_vf_resource *msg)
+			     struct virtchnl_vf_resource *msg,
+			     const unsigned long *vf_cap_flags)
 {
 	struct virtchnl_vsi_resource *vsi_res;
 	int i;
@@ -437,8 +439,7 @@ void iavf_vf_parse_hw_config(struct iavf_hw *hw,
 	hw->dev_caps.num_rx_qp = msg->num_queue_pairs;
 	hw->dev_caps.num_tx_qp = msg->num_queue_pairs;
 	hw->dev_caps.num_msix_vectors_vf = msg->max_vectors;
-	hw->dev_caps.dcb = msg->vf_cap_flags &
-			   VIRTCHNL_VF_OFFLOAD_L2;
+	hw->dev_caps.dcb = test_bit(VIRTCHNL_VF_OFFLOAD_L2, vf_cap_flags);
 	hw->dev_caps.fcoe = 0;
 	for (i = 0; i < msg->num_vsis; i++) {
 		if (vsi_res->vsi_type == VIRTCHNL_VSI_SRIOV) {
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index dc2503e3c5ba..b14d5c2309cc 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -1726,7 +1726,7 @@ static int iavf_set_channels(struct net_device *netdev,
 	struct iavf_adapter *adapter = netdev_priv(netdev);
 	u32 num_req = ch->combined_count;
 
-	if ((adapter->vf_res->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_ADQ) &&
+	if (test_bit(VIRTCHNL_VF_OFFLOAD_ADQ, adapter->vf_cap_flags) &&
 	    adapter->num_tc) {
 		dev_info(&adapter->pdev->dev, "Cannot set channels since ADq is enabled.\n");
 		return -EINVAL;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 30ae1a296115..ce2b61e56f9d 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1533,7 +1533,7 @@ static int iavf_alloc_queues(struct iavf_adapter *adapter)
 	 */
 	if (adapter->num_req_queues)
 		num_active_queues = adapter->num_req_queues;
-	else if ((adapter->vf_res->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_ADQ) &&
+	else if (test_bit(VIRTCHNL_VF_OFFLOAD_ADQ, adapter->vf_cap_flags) &&
 		 adapter->num_tc)
 		num_active_queues = adapter->ch_config.total_qps;
 	else
@@ -1736,8 +1736,8 @@ static int iavf_init_rss(struct iavf_adapter *adapter)
 
 	if (!RSS_PF(adapter)) {
 		/* Enable PCTYPES for RSS, TCP/UDP with IPv4/IPv6 */
-		if (adapter->vf_res->vf_cap_flags &
-		    VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2)
+		if (test_bit(VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2,
+			     adapter->vf_cap_flags))
 			adapter->rss_hashcfg =
 				IAVF_DEFAULT_RSS_HASHCFG_EXPANDED;
 		else
@@ -1861,7 +1861,7 @@ static int iavf_init_interrupt_scheme(struct iavf_adapter *adapter)
 	 * resources have been allocated in the reset path.
 	 * Now we can truly claim that ADq is enabled.
 	 */
-	if ((adapter->vf_res->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_ADQ) &&
+	if (test_bit(VIRTCHNL_VF_OFFLOAD_ADQ, adapter->vf_cap_flags) &&
 	    adapter->num_tc)
 		dev_info(&adapter->pdev->dev, "ADq Enabled, %u TCs created",
 			 adapter->num_tc);
@@ -2436,7 +2436,7 @@ int iavf_parse_vf_resource_msg(struct iavf_adapter *adapter)
 	adapter->vsi.base_vector = 1;
 	vsi->netdev = adapter->netdev;
 	vsi->qs_handle = adapter->vsi_res->qset_handle;
-	if (adapter->vf_res->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_RSS_PF) {
+	if (test_bit(VIRTCHNL_VF_OFFLOAD_RSS_PF, adapter->vf_cap_flags)) {
 		adapter->rss_key_size = adapter->vf_res->rss_key_size;
 		adapter->rss_lut_size = adapter->vf_res->rss_lut_size;
 	} else {
@@ -2783,8 +2783,7 @@ static void iavf_init_config_adapter(struct iavf_adapter *adapter)
 	if (err)
 		goto err_sw_init;
 	iavf_map_rings_to_vectors(adapter);
-	if (adapter->vf_res->vf_cap_flags &
-		VIRTCHNL_VF_OFFLOAD_WB_ON_ITR)
+	if (test_bit(VIRTCHNL_VF_OFFLOAD_WB_ON_ITR, adapter->vf_cap_flags))
 		adapter->flags |= IAVF_FLAG_WB_ON_ITR_CAPABLE;
 
 	err = iavf_request_misc_irq(adapter);
@@ -3080,7 +3079,6 @@ static void iavf_reconfig_qs_bw(struct iavf_adapter *adapter)
  */
 void iavf_reset_step(struct iavf_adapter *adapter)
 {
-	struct virtchnl_vf_resource *vfres = adapter->vf_res;
 	struct net_device *netdev = adapter->netdev;
 	struct iavf_hw *hw = &adapter->hw;
 	struct iavf_mac_filter *f, *ftmp;
@@ -3234,7 +3232,7 @@ void iavf_reset_step(struct iavf_adapter *adapter)
 
 	/* check if TCs are running and re-add all cloud filters */
 	spin_lock_bh(&adapter->cloud_filter_list_lock);
-	if ((vfres->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_ADQ) &&
+	if (test_bit(VIRTCHNL_VF_OFFLOAD_ADQ, adapter->vf_cap_flags) &&
 	    adapter->num_tc) {
 		list_for_each_entry(cf, &adapter->cloud_filter_list, list) {
 			cf->add = true;
@@ -3675,7 +3673,6 @@ static int __iavf_setup_tc(struct net_device *netdev, void *type_data)
 {
 	struct tc_mqprio_qopt_offload *mqprio_qopt = type_data;
 	struct iavf_adapter *adapter = netdev_priv(netdev);
-	struct virtchnl_vf_resource *vfres = adapter->vf_res;
 	u8 num_tc = 0, total_qps = 0;
 	int ret = 0, netdev_tc = 0;
 	u64 max_tx_rate;
@@ -3704,7 +3701,7 @@ static int __iavf_setup_tc(struct net_device *netdev, void *type_data)
 
 	/* add queue channel */
 	if (mode == TC_MQPRIO_MODE_CHANNEL) {
-		if (!(vfres->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_ADQ)) {
+		if (!test_bit(VIRTCHNL_VF_OFFLOAD_ADQ, adapter->vf_cap_flags)) {
 			dev_err(&adapter->pdev->dev, "ADq not supported\n");
 			return -EOPNOTSUPP;
 		}
@@ -4744,7 +4741,7 @@ iavf_get_netdev_vlan_hw_features(struct iavf_adapter *adapter)
 {
 	netdev_features_t hw_features = 0;
 
-	if (!adapter->vf_res || !adapter->vf_res->vf_cap_flags)
+	if (bitmap_empty(adapter->vf_cap_flags, VIRTCHNL_VF_CAPS_MAX))
 		return hw_features;
 
 	/* Enable VLAN features if supported */
@@ -4809,7 +4806,7 @@ iavf_get_netdev_vlan_features(struct iavf_adapter *adapter)
 {
 	netdev_features_t features = 0;
 
-	if (!adapter->vf_res || !adapter->vf_res->vf_cap_flags)
+	if (bitmap_empty(adapter->vf_cap_flags, VIRTCHNL_VF_CAPS_MAX))
 		return features;
 
 	if (VLAN_ALLOWED(adapter)) {
@@ -5186,7 +5183,6 @@ static int iavf_check_reset_complete(struct iavf_hw *hw)
  **/
 int iavf_process_config(struct iavf_adapter *adapter)
 {
-	struct virtchnl_vf_resource *vfres = adapter->vf_res;
 	netdev_features_t hw_vlan_features, vlan_features;
 	struct net_device *netdev = adapter->netdev;
 	netdev_features_t hw_enc_features;
@@ -5208,7 +5204,7 @@ int iavf_process_config(struct iavf_adapter *adapter)
 	/* advertise to stack only if offloads for encapsulated packets is
 	 * supported
 	 */
-	if (vfres->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_ENCAP) {
+	if (test_bit(VIRTCHNL_VF_OFFLOAD_ENCAP, adapter->vf_cap_flags)) {
 		hw_enc_features |= NETIF_F_GSO_UDP_TUNNEL	|
 				   NETIF_F_GSO_GRE		|
 				   NETIF_F_GSO_GRE_CSUM		|
@@ -5218,8 +5214,8 @@ int iavf_process_config(struct iavf_adapter *adapter)
 				   NETIF_F_GSO_PARTIAL		|
 				   0;
 
-		if (!(vfres->vf_cap_flags &
-		      VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM))
+		if (!test_bit(VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM,
+			      adapter->vf_cap_flags))
 			netdev->gso_partial_features |=
 				NETIF_F_GSO_UDP_TUNNEL_CSUM;
 
@@ -5239,11 +5235,11 @@ int iavf_process_config(struct iavf_adapter *adapter)
 	hw_vlan_features = iavf_get_netdev_vlan_hw_features(adapter);
 
 	/* Enable HW TC offload if ADQ or tc U32 is supported */
-	if (vfres->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_ADQ ||
+	if (test_bit(VIRTCHNL_VF_OFFLOAD_ADQ, adapter->vf_cap_flags) ||
 	    TC_U32_SUPPORT(adapter))
 		hw_features |= NETIF_F_HW_TC;
 
-	if (vfres->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_USO)
+	if (test_bit(VIRTCHNL_VF_OFFLOAD_USO, adapter->vf_cap_flags))
 		hw_features |= NETIF_F_GSO_UDP_L4;
 
 	netdev->hw_features |= hw_features | hw_vlan_features;
@@ -5251,7 +5247,7 @@ int iavf_process_config(struct iavf_adapter *adapter)
 
 	netdev->features |= hw_features | vlan_features;
 
-	if (vfres->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_VLAN)
+	if (test_bit(VIRTCHNL_VF_OFFLOAD_VLAN, adapter->vf_cap_flags))
 		netdev->features |= NETIF_F_HW_VLAN_CTAG_FILTER;
 
 	if (FDIR_FLTR_SUPPORT(adapter)) {
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 04dc447bb8b0..38be4caf77f0 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -152,27 +152,27 @@ int iavf_send_vf_config_msg(struct iavf_adapter *adapter)
 {
 	u32 caps;
 
-	caps = VIRTCHNL_VF_OFFLOAD_L2 |
-	       VIRTCHNL_VF_OFFLOAD_RSS_PF |
-	       VIRTCHNL_VF_OFFLOAD_RSS_AQ |
-	       VIRTCHNL_VF_OFFLOAD_RSS_REG |
-	       VIRTCHNL_VF_OFFLOAD_VLAN |
-	       VIRTCHNL_VF_OFFLOAD_WB_ON_ITR |
-	       VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2 |
-	       VIRTCHNL_VF_OFFLOAD_ENCAP |
-	       VIRTCHNL_VF_OFFLOAD_TC_U32 |
-	       VIRTCHNL_VF_OFFLOAD_VLAN_V2 |
-	       VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC |
-	       VIRTCHNL_VF_OFFLOAD_CRC |
-	       VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM |
-	       VIRTCHNL_VF_OFFLOAD_REQ_QUEUES |
-	       VIRTCHNL_VF_CAP_PTP |
-	       VIRTCHNL_VF_OFFLOAD_ADQ |
-	       VIRTCHNL_VF_OFFLOAD_USO |
-	       VIRTCHNL_VF_OFFLOAD_FDIR_PF |
-	       VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF |
-	       VIRTCHNL_VF_CAP_ADV_LINK_SPEED |
-	       VIRTCHNL_VF_OFFLOAD_QOS;
+	caps = BIT(VIRTCHNL_VF_OFFLOAD_L2) |
+	       BIT(VIRTCHNL_VF_OFFLOAD_RSS_PF) |
+	       BIT(VIRTCHNL_VF_OFFLOAD_RSS_AQ) |
+	       BIT(VIRTCHNL_VF_OFFLOAD_RSS_REG) |
+	       BIT(VIRTCHNL_VF_OFFLOAD_VLAN) |
+	       BIT(VIRTCHNL_VF_OFFLOAD_WB_ON_ITR) |
+	       BIT(VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2) |
+	       BIT(VIRTCHNL_VF_OFFLOAD_ENCAP) |
+	       BIT(VIRTCHNL_VF_OFFLOAD_TC_U32) |
+	       BIT(VIRTCHNL_VF_OFFLOAD_VLAN_V2) |
+	       BIT(VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC) |
+	       BIT(VIRTCHNL_VF_OFFLOAD_CRC) |
+	       BIT(VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM) |
+	       BIT(VIRTCHNL_VF_OFFLOAD_REQ_QUEUES) |
+	       BIT(VIRTCHNL_VF_CAP_PTP) |
+	       BIT(VIRTCHNL_VF_OFFLOAD_ADQ) |
+	       BIT(VIRTCHNL_VF_OFFLOAD_USO) |
+	       BIT(VIRTCHNL_VF_OFFLOAD_FDIR_PF) |
+	       BIT(VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF) |
+	       BIT(VIRTCHNL_VF_CAP_ADV_LINK_SPEED) |
+	       BIT(VIRTCHNL_VF_OFFLOAD_QOS);
 
 	adapter->current_op = VIRTCHNL_OP_GET_VF_RESOURCES;
 	adapter->aq_required &= ~IAVF_FLAG_AQ_GET_CONFIG;
@@ -296,12 +296,16 @@ int iavf_get_vf_config(struct iavf_adapter *adapter)
 	err = iavf_poll_virtchnl_msg(hw, &event, VIRTCHNL_OP_GET_VF_RESOURCES);
 	memcpy(adapter->vf_res, event.msg_buf, min(event.msg_len, len));
 
+	/* mirror to the extended bitmap */
+	bitmap_from_arr32(adapter->vf_cap_flags, &adapter->vf_res->vf_cap_flags,
+			  BITS_PER_TYPE(u32));
+
 	/* some PFs send more queues than we should have so validate that
 	 * we aren't getting too many queues
 	 */
 	if (!err)
 		iavf_validate_num_queues(adapter);
-	iavf_vf_parse_hw_config(hw, adapter->vf_res);
+	iavf_vf_parse_hw_config(hw, adapter->vf_res, adapter->vf_cap_flags);
 
 	kfree(event.msg_buf);
 
@@ -2579,7 +2583,8 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 
 		memcpy(adapter->vf_res, msg, min(msglen, len));
 		iavf_validate_num_queues(adapter);
-		iavf_vf_parse_hw_config(&adapter->hw, adapter->vf_res);
+		iavf_vf_parse_hw_config(&adapter->hw, adapter->vf_res,
+					adapter->vf_cap_flags);
 		if (is_zero_ether_addr(adapter->hw.mac.addr)) {
 			/* restore current mac address */
 			ether_addr_copy(adapter->hw.mac.addr, netdev->dev_addr);
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 64a4a9eac9db..6570480c13fa 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -792,7 +792,7 @@ void ice_reset_all_vfs(struct ice_pf *pf)
 		mutex_lock(&vf->cfg_lock);
 
 		ice_eswitch_detach_vf(pf, vf);
-		vf->driver_caps = 0;
+		bitmap_zero(vf->driver_caps, VIRTCHNL_VF_CAPS_MAX);
 		ice_vc_set_default_allowlist(vf);
 
 		ice_vf_fdir_exit(vf);
@@ -935,7 +935,7 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 	if (!rsd)
 		dev_warn(dev, "VF reset check timeout on VF %d\n", vf->vf_id);
 
-	vf->driver_caps = 0;
+	bitmap_zero(vf->driver_caps, VIRTCHNL_VF_CAPS_MAX);
 	ice_vc_set_default_allowlist(vf);
 
 	/* disable promiscuous modes in case they were enabled
diff --git a/drivers/net/ethernet/intel/ice/virt/allowlist.c b/drivers/net/ethernet/intel/ice/virt/allowlist.c
index a07efec19c45..eb3d3b4e65a9 100644
--- a/drivers/net/ethernet/intel/ice/virt/allowlist.c
+++ b/drivers/net/ethernet/intel/ice/virt/allowlist.c
@@ -102,7 +102,7 @@ struct allowlist_opcode_info {
 
 #define BIT_INDEX(caps) (HWEIGHT((caps) - 1))
 #define ALLOW_ITEM(caps, list) \
-	[BIT_INDEX(caps)] = { \
+	[caps] = { \
 		.opcodes = list, \
 		.size = ARRAY_SIZE(list) \
 	}
@@ -190,10 +190,9 @@ void ice_vc_set_working_allowlist(struct ice_vf *vf)
  */
 void ice_vc_set_caps_allowlist(struct ice_vf *vf)
 {
-	unsigned long caps = vf->driver_caps;
 	unsigned int i;
 
-	for_each_set_bit(i, &caps, ARRAY_SIZE(allowlist_opcodes))
+	for_each_set_bit(i, vf->driver_caps, ARRAY_SIZE(allowlist_opcodes))
 		ice_vc_allowlist_opcodes(vf, allowlist_opcodes[i].opcodes,
 					 allowlist_opcodes[i].size);
 }
diff --git a/drivers/net/ethernet/intel/ice/virt/fdir.c b/drivers/net/ethernet/intel/ice/virt/fdir.c
index 4f1f3442e52c..74967edf27ad 100644
--- a/drivers/net/ethernet/intel/ice/virt/fdir.c
+++ b/drivers/net/ethernet/intel/ice/virt/fdir.c
@@ -105,7 +105,7 @@ ice_vc_fdir_param_check(struct ice_vf *vf, u16 vsi_id)
 	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states))
 		return -EINVAL;
 
-	if (!(vf->driver_caps & VIRTCHNL_VF_OFFLOAD_FDIR_PF))
+	if (!test_bit(VIRTCHNL_VF_OFFLOAD_FDIR_PF, vf->driver_caps))
 		return -EINVAL;
 
 	if (!ice_vc_isvalid_vsi_id(vf, vsi_id))
diff --git a/drivers/net/ethernet/intel/ice/virt/queues.c b/drivers/net/ethernet/intel/ice/virt/queues.c
index 31be2f76181c..4e2caeb5d642 100644
--- a/drivers/net/ethernet/intel/ice/virt/queues.c
+++ b/drivers/net/ethernet/intel/ice/virt/queues.c
@@ -781,7 +781,7 @@ int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 		if (!qci->qpair[i].rxq.crc_disable)
 			continue;
 
-		if (!(vf->driver_caps & VIRTCHNL_VF_OFFLOAD_CRC) ||
+		if (!test_bit(VIRTCHNL_VF_OFFLOAD_CRC, vf->driver_caps) ||
 		    vf->vlan_strip_ena)
 			goto error_param;
 	}
@@ -868,8 +868,8 @@ int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 			 * format. Legacy 16byte descriptor is not supported.
 			 * If this RXDID is selected, return error.
 			 */
-			if (vf->driver_caps &
-			    VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC) {
+			if (test_bit(VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC,
+				     vf->driver_caps)) {
 				rxdid = qpi->rxq.rxdid;
 				if (!(BIT(rxdid) & pf->supported_rxdids))
 					goto error_param;
@@ -877,9 +877,10 @@ int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 				rxdid = ICE_RXDID_LEGACY_1;
 			}
 
-			ena_ts = ((vf->driver_caps &
-				  VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC) &&
-				  (vf->driver_caps & VIRTCHNL_VF_CAP_PTP) &&
+			ena_ts = (test_bit(VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC,
+					   vf->driver_caps) &&
+				  test_bit(VIRTCHNL_VF_CAP_PTP,
+					   vf->driver_caps) &&
 				  (qpi->rxq.flags & VIRTCHNL_PTP_RX_TSTAMP));
 
 			ice_write_qrxflxp_cntxt(&vsi->back->hw,
diff --git a/drivers/net/ethernet/intel/ice/virt/rss.c b/drivers/net/ethernet/intel/ice/virt/rss.c
index 960012ca91b5..b4f6dcce76f6 100644
--- a/drivers/net/ethernet/intel/ice/virt/rss.c
+++ b/drivers/net/ethernet/intel/ice/virt/rss.c
@@ -680,9 +680,9 @@ static bool ice_vc_parse_rss_cfg(struct ice_hw *hw,
  * Return true if VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF capability is set,
  * else return false
  */
-static bool ice_vf_adv_rss_offload_ena(u32 caps)
+static bool ice_vf_adv_rss_offload_ena(const unsigned long *caps)
 {
-	return !!(caps & VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF);
+	return test_bit(VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF, caps);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/virt/virtchnl.c b/drivers/net/ethernet/intel/ice/virt/virtchnl.c
index 06d2f9be93ae..f15e8c82d52d 100644
--- a/drivers/net/ethernet/intel/ice/virt/virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/virt/virtchnl.c
@@ -58,7 +58,7 @@ static void
 ice_set_pfe_link(struct ice_vf *vf, struct virtchnl_pf_event *pfe,
 		 int ice_link_speed, bool link_up)
 {
-	if (vf->driver_caps & VIRTCHNL_VF_CAP_ADV_LINK_SPEED) {
+	if (test_bit(VIRTCHNL_VF_CAP_ADV_LINK_SPEED, vf->driver_caps)) {
 		pfe->event_data.link_event_adv.link_status = link_up;
 		/* Speed in Mbps */
 		pfe->event_data.link_event_adv.link_speed =
@@ -188,26 +188,26 @@ static int ice_vc_get_ver_msg(struct ice_vf *vf, u8 *msg)
 }
 
 /**
- * ice_vc_get_vlan_caps
+ * ice_vc_get_vlan_caps - get VF capability flags based on driver caps
  * @hw: pointer to the hw
  * @vf: pointer to the VF info
  * @vsi: pointer to the VSI
  * @driver_caps: current driver caps
  *
- * Return 0 if there is no VLAN caps supported, or VLAN caps value
+ * Return: 0 if there is no VLAN caps supported, or VLAN caps value
  */
 static u32
 ice_vc_get_vlan_caps(struct ice_hw *hw, struct ice_vf *vf, struct ice_vsi *vsi,
-		     u32 driver_caps)
+		     const unsigned long *driver_caps)
 {
 	if (ice_is_eswitch_mode_switchdev(vf->pf))
 		/* In switchdev setting VLAN from VF isn't supported */
 		return 0;
 
-	if (driver_caps & VIRTCHNL_VF_OFFLOAD_VLAN_V2) {
+	if (test_bit(VIRTCHNL_VF_OFFLOAD_VLAN_V2, driver_caps)) {
 		/* VLAN offloads based on current device configuration */
-		return VIRTCHNL_VF_OFFLOAD_VLAN_V2;
-	} else if (driver_caps & VIRTCHNL_VF_OFFLOAD_VLAN) {
+		return BIT(VIRTCHNL_VF_OFFLOAD_VLAN_V2);
+	} else if (test_bit(VIRTCHNL_VF_OFFLOAD_VLAN, driver_caps)) {
 		/* allow VF to negotiate VIRTCHNL_VF_OFFLOAD explicitly for
 		 * these two conditions, which amounts to guest VLAN filtering
 		 * and offloads being based on the inner VLAN or the
@@ -215,7 +215,7 @@ ice_vc_get_vlan_caps(struct ice_hw *hw, struct ice_vf *vf, struct ice_vsi *vsi,
 		 * negotiate VIRTCHNL_VF_OFFLOAD in any other cases
 		 */
 		if (ice_is_dvm_ena(hw) && ice_vf_is_port_vlan_ena(vf)) {
-			return VIRTCHNL_VF_OFFLOAD_VLAN;
+			return BIT(VIRTCHNL_VF_OFFLOAD_VLAN);
 		} else if (!ice_is_dvm_ena(hw) &&
 			   !ice_vf_is_port_vlan_ena(vf)) {
 			/* configure backward compatible support for VFs that
@@ -223,7 +223,7 @@ ice_vc_get_vlan_caps(struct ice_hw *hw, struct ice_vf *vf, struct ice_vsi *vsi,
 			 * configured in SVM, and no port VLAN is configured
 			 */
 			ice_vf_vsi_cfg_svm_legacy_vlan_mode(vsi);
-			return VIRTCHNL_VF_OFFLOAD_VLAN;
+			return BIT(VIRTCHNL_VF_OFFLOAD_VLAN);
 		} else if (ice_is_dvm_ena(hw)) {
 			/* configure software offloaded VLAN support when DVM
 			 * is enabled, but no port VLAN is enabled
@@ -264,13 +264,17 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 		len = 0;
 		goto err;
 	}
-	if (VF_IS_V11(&vf->vf_ver))
-		vf->driver_caps = *(u32 *)msg;
-	else
-		vf->driver_caps = VIRTCHNL_VF_OFFLOAD_L2 |
-				  VIRTCHNL_VF_OFFLOAD_VLAN;
 
-	vfres->vf_cap_flags = VIRTCHNL_VF_OFFLOAD_L2;
+	bitmap_zero(vf->driver_caps, VIRTCHNL_VF_CAPS_MAX);
+	if (VF_IS_V11(&vf->vf_ver)) {
+		bitmap_from_arr32(vf->driver_caps, (u32 *)msg,
+				  BITS_PER_TYPE(u32));
+	} else {
+		__set_bit(VIRTCHNL_VF_OFFLOAD_L2, vf->driver_caps);
+		__set_bit(VIRTCHNL_VF_OFFLOAD_VLAN, vf->driver_caps);
+	}
+
+	vfres->vf_cap_flags = BIT(VIRTCHNL_VF_OFFLOAD_L2);
 	vsi = ice_get_vf_vsi(vf);
 	if (!vsi) {
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
@@ -280,54 +284,54 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 	vfres->vf_cap_flags |= ice_vc_get_vlan_caps(hw, vf, vsi,
 						    vf->driver_caps);
 
-	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_RSS_PF)
-		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_RSS_PF;
+	if (test_bit(VIRTCHNL_VF_OFFLOAD_RSS_PF, vf->driver_caps))
+		vfres->vf_cap_flags |= BIT(VIRTCHNL_VF_OFFLOAD_RSS_PF);
 
-	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC)
-		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC;
+	if (test_bit(VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC, vf->driver_caps))
+		vfres->vf_cap_flags |= BIT(VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC);
 
-	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_FDIR_PF)
-		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_FDIR_PF;
+	if (test_bit(VIRTCHNL_VF_OFFLOAD_FDIR_PF, vf->driver_caps))
+		vfres->vf_cap_flags |= BIT(VIRTCHNL_VF_OFFLOAD_FDIR_PF);
 
-	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_TC_U32 &&
-	    vfres->vf_cap_flags & VIRTCHNL_VF_OFFLOAD_FDIR_PF)
-		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_TC_U32;
+	if (test_bit(VIRTCHNL_VF_OFFLOAD_TC_U32, vf->driver_caps) &&
+	    (vfres->vf_cap_flags & BIT(VIRTCHNL_VF_OFFLOAD_FDIR_PF)))
+		vfres->vf_cap_flags |= BIT(VIRTCHNL_VF_OFFLOAD_TC_U32);
 
-	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2)
-		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2;
+	if (test_bit(VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2, vf->driver_caps))
+		vfres->vf_cap_flags |= BIT(VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2);
 
-	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_ENCAP)
-		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_ENCAP;
+	if (test_bit(VIRTCHNL_VF_OFFLOAD_ENCAP, vf->driver_caps))
+		vfres->vf_cap_flags |= BIT(VIRTCHNL_VF_OFFLOAD_ENCAP);
 
-	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM)
-		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM;
+	if (test_bit(VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM, vf->driver_caps))
+		vfres->vf_cap_flags |= BIT(VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM);
 
-	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_RX_POLLING)
-		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_RX_POLLING;
+	if (test_bit(VIRTCHNL_VF_OFFLOAD_RX_POLLING, vf->driver_caps))
+		vfres->vf_cap_flags |= BIT(VIRTCHNL_VF_OFFLOAD_RX_POLLING);
 
-	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_WB_ON_ITR)
-		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_WB_ON_ITR;
+	if (test_bit(VIRTCHNL_VF_OFFLOAD_WB_ON_ITR, vf->driver_caps))
+		vfres->vf_cap_flags |= BIT(VIRTCHNL_VF_OFFLOAD_WB_ON_ITR);
 
-	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_REQ_QUEUES)
-		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_REQ_QUEUES;
+	if (test_bit(VIRTCHNL_VF_OFFLOAD_REQ_QUEUES, vf->driver_caps))
+		vfres->vf_cap_flags |= BIT(VIRTCHNL_VF_OFFLOAD_REQ_QUEUES);
 
-	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_CRC)
-		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_CRC;
+	if (test_bit(VIRTCHNL_VF_OFFLOAD_CRC, vf->driver_caps))
+		vfres->vf_cap_flags |= BIT(VIRTCHNL_VF_OFFLOAD_CRC);
 
-	if (vf->driver_caps & VIRTCHNL_VF_CAP_ADV_LINK_SPEED)
-		vfres->vf_cap_flags |= VIRTCHNL_VF_CAP_ADV_LINK_SPEED;
+	if (test_bit(VIRTCHNL_VF_CAP_ADV_LINK_SPEED, vf->driver_caps))
+		vfres->vf_cap_flags |= BIT(VIRTCHNL_VF_CAP_ADV_LINK_SPEED);
 
-	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF)
-		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF;
+	if (test_bit(VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF, vf->driver_caps))
+		vfres->vf_cap_flags |= BIT(VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF);
 
-	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_USO)
-		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_USO;
+	if (test_bit(VIRTCHNL_VF_OFFLOAD_USO, vf->driver_caps))
+		vfres->vf_cap_flags |= BIT(VIRTCHNL_VF_OFFLOAD_USO);
 
-	if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_QOS)
-		vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_QOS;
+	if (test_bit(VIRTCHNL_VF_OFFLOAD_QOS, vf->driver_caps))
+		vfres->vf_cap_flags |= BIT(VIRTCHNL_VF_OFFLOAD_QOS);
 
-	if (vf->driver_caps & VIRTCHNL_VF_CAP_PTP)
-		vfres->vf_cap_flags |= VIRTCHNL_VF_CAP_PTP;
+	if (test_bit(VIRTCHNL_VF_CAP_PTP, vf->driver_caps))
+		vfres->vf_cap_flags |= BIT(VIRTCHNL_VF_CAP_PTP);
 
 	vfres->num_vsis = 1;
 	/* Tx and Rx queue are equal for VF */
@@ -344,7 +348,8 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 			vf->hw_lan_addr);
 
 	/* match guest capabilities */
-	vf->driver_caps = vfres->vf_cap_flags;
+	bitmap_from_arr32(vf->driver_caps, &vfres->vf_cap_flags,
+			  BITS_PER_TYPE(u32));
 
 	ice_vc_set_caps_allowlist(vf);
 	ice_vc_set_working_allowlist(vf);
@@ -1027,9 +1032,9 @@ static int ice_vc_del_mac_addr_msg(struct ice_vf *vf, u8 *msg)
  *
  * Return true if VIRTCHNL_VF_OFFLOAD_VLAN capability is set, else return false
  */
-static bool ice_vf_vlan_offload_ena(u32 caps)
+static bool ice_vf_vlan_offload_ena(const unsigned long *caps)
 {
-	return !!(caps & VIRTCHNL_VF_OFFLOAD_VLAN);
+	return test_bit(VIRTCHNL_VF_OFFLOAD_VLAN, caps);
 }
 
 /**
@@ -1431,7 +1436,7 @@ static int ice_vc_query_rxdid(struct ice_vf *vf)
 		goto err;
 	}
 
-	if (!(vf->driver_caps & VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC)) {
+	if (!test_bit(VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC, vf->driver_caps)) {
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 		goto err;
 	}
-- 
2.49.0

