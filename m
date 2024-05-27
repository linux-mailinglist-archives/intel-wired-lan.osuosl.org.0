Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D4BE8D0A4B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 May 2024 20:59:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B8B1F813D7;
	Mon, 27 May 2024 18:59:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id trSwK8MALWVU; Mon, 27 May 2024 18:59:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CEDEA8119E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716836352;
	bh=/3VxxgRtFFDtRfNq6uZsyd5JEIO6Dz1pEQxjnzVyEDg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mexphDRQiSTpJd0wTyIt5yBp0IUdLn4y9UHRo8HUz8Kmbbq3zvnP3EckbU8WbavJL
	 +4HHmAVEr1MyoHHXaO29NrFHHzFwzb1uPK3WFRP4aOD8xxHX6UJ8Z28Ofv8phIUK4X
	 /3W/9imxwF5y95f4L32bKTXPZx7QIP3NMoLXx4D7lOGMty1oZYxBFvNXs5XPY9aGiC
	 j1AHEpkeVNqRxflcnuJ0QchVvntaXbPH8ukkcSXIRZtuqGMjmygVPilSXTKZkTT/mB
	 WvO5F0L99NDz/CFTl+fBSosg4ut8JoV3msIs77KCX6r9qTkoA3DefJH9DQ9U6Q/4dd
	 EUCx46uy9Pq2Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CEDEA8119E;
	Mon, 27 May 2024 18:59:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 274751D1FEE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 18:59:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 143708122A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 18:59:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tBxNSyIx71QY for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 May 2024 18:59:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D73E58119E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D73E58119E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D73E58119E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 18:58:59 +0000 (UTC)
X-CSE-ConnectionGUID: BEAkawbVRrSQB9fCcbufiQ==
X-CSE-MsgGUID: mDTJISUQQReKTwvR6jE1iA==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13353937"
X-IronPort-AV: E=Sophos;i="6.08,193,1712646000"; d="scan'208";a="13353937"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 11:58:59 -0700
X-CSE-ConnectionGUID: ush7zp4KTwGhc3oVAKEYyw==
X-CSE-MsgGUID: XvoYpcDgQGunlOA5GKLuSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,193,1712646000"; d="scan'208";a="34910038"
Received: from rfrazer-mobl3.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.110.208])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 11:58:56 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 27 May 2024 12:58:05 -0600
Message-ID: <20240527185810.3077299-9-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240527185810.3077299-1-ahmed.zaki@intel.com>
References: <20240527185810.3077299-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716836340; x=1748372340;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9TpP55xXYF/Go17p+FG6vALzXWEK2pjaZ90fQjehBww=;
 b=EvVS3YKlAjPuvWlKE8Kv6O83ZSgYWAO4hM6EouVJmmpwgQq6xgShpsLF
 RyJ1Y89moWfgBlkGVjh3qJvyQJh34I/8WrjLGkssCFy29lsOA6v1vJBQc
 3BUrvlm1+SfukWKJnMrb2aBXoEkq2i0IOPgX8eV4FNhydAC/V+gYsuAqo
 CCai+9mY0LhwsO1q8t2Mdcwnlt1E/y+LuBuZcjDDLQva2fCM5is8PiD+z
 lrvnx2Z81fUX6/EuiRoY0x370KQTSx81yHuQhek+Yz5MN9YJCVKr8qqtT
 KoGvgUwTMxY66AYWqjx34isf+O+ov3vEHbSSqoMui8G+4JfFJDEAuPqD6
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EvVS3YKl
Subject: [Intel-wired-lan] [PATCH iwl-next v2 08/13] ice: add API for parser
 profile initialization
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
Cc: netdev@vger.kernel.org, Ahmed Zaki <ahmed.zaki@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>, anthony.l.nguyen@intel.com,
 jacob.e.keller@intel.com, Junfeng Guo <junfeng.guo@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Junfeng Guo <junfeng.guo@intel.com>

Add API ice_parser_profile_init() to init a parser profile based on
a parser result and a mask buffer. The ice_parser_profile struct is used
by the low level FXP engine to create HW profile/field vectors.

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_parser.c | 125 +++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_parser.h |  26 ++++
 2 files changed, 149 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
index 6a0d5f720af0..270806efb8b4 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.c
+++ b/drivers/net/ethernet/intel/ice/ice_parser.c
@@ -2213,9 +2213,9 @@ static int ice_tunnel_port_set(struct ice_parser *psr, enum ice_lbl_type type,
 		/* found a matched slot to delete */
 		} else if (!on &&
 			   (item->key_inv[ICE_BT_TUN_PORT_OFF_L] ==
-			    buf[ICE_UDP_PORT_OFF_L] ||
+				buf[ICE_UDP_PORT_OFF_L] ||
 			    item->key_inv[ICE_BT_TUN_PORT_OFF_H] ==
-			    buf[ICE_UDP_PORT_OFF_H])) {
+				buf[ICE_UDP_PORT_OFF_H])) {
 			item->key_inv[ICE_BT_TUN_PORT_OFF_L] = ICE_BT_VLD_KEY;
 			item->key_inv[ICE_BT_TUN_PORT_OFF_H] = ICE_BT_INV_KEY;
 
@@ -2266,3 +2266,124 @@ int ice_parser_ecpri_tunnel_set(struct ice_parser *psr,
 	return ice_tunnel_port_set(psr, ICE_LBL_BST_TYPE_UDP_ECPRI,
 				   udp_port, on);
 }
+
+/* ice_nearest_proto_id
+ * @rslt: pointer to a parser result instance
+ * @offset: a min value for the protocol offset
+ * @proto_id: the protocol ID (output)
+ * @proto_off: the protocol offset (output)
+ *
+ * From the protocols in @rslt, find the nearest protocol that has offset
+ * larger than @offset. Return the protocol's ID and offset.
+ */
+static bool ice_nearest_proto_id(struct ice_parser_result *rslt, u16 offset,
+				 u8 *proto_id, u16 *proto_off)
+{
+	u16 dist = U16_MAX;
+	u8 proto = 0;
+	int i;
+
+	for (i = 0; i < rslt->po_num; i++) {
+		if (offset < rslt->po[i].offset)
+			continue;
+		if (offset - rslt->po[i].offset < dist) {
+			proto = rslt->po[i].proto_id;
+			dist = offset - rslt->po[i].offset;
+		}
+	}
+
+	if (dist % 2)
+		return false;
+
+	*proto_id = proto;
+	*proto_off = dist;
+
+	return true;
+}
+
+/** default flag mask to cover GTP_EH_PDU, GTP_EH_PDU_LINK and TUN2
+ * In future, the flag masks should learn from DDP
+ */
+#define ICE_KEYBUILD_FLAG_MASK_DEFAULT_SW	0x4002
+#define ICE_KEYBUILD_FLAG_MASK_DEFAULT_ACL	0x0000
+#define ICE_KEYBUILD_FLAG_MASK_DEFAULT_FD	0x6080
+#define ICE_KEYBUILD_FLAG_MASK_DEFAULT_RSS	0x6010
+
+/**
+ * ice_parser_profile_init - initialize a FXP profile based on parser result
+ * @rslt: a instance of a parser result
+ * @pkt_buf: packet data buffer
+ * @msk_buf: packet mask buffer
+ * @buf_len: packet length
+ * @blk: FXP pipeline stage
+ * @prof: input/output parameter to save the profile
+ */
+int ice_parser_profile_init(struct ice_parser_result *rslt,
+			    const u8 *pkt_buf, const u8 *msk_buf,
+			    int buf_len, enum ice_block blk,
+			    struct ice_parser_profile *prof)
+{
+	u8 proto_id = U8_MAX;
+	u16 proto_off = 0;
+	u16 off;
+
+	memset(prof, 0, sizeof(*prof));
+	set_bit(rslt->ptype, prof->ptypes);
+	if (blk == ICE_BLK_SW) {
+		prof->flags	= rslt->flags_sw;
+		prof->flags_msk	= ICE_KEYBUILD_FLAG_MASK_DEFAULT_SW;
+	} else if (blk == ICE_BLK_ACL) {
+		prof->flags	= rslt->flags_acl;
+		prof->flags_msk	= ICE_KEYBUILD_FLAG_MASK_DEFAULT_ACL;
+	} else if (blk == ICE_BLK_FD) {
+		prof->flags	= rslt->flags_fd;
+		prof->flags_msk	= ICE_KEYBUILD_FLAG_MASK_DEFAULT_FD;
+	} else if (blk == ICE_BLK_RSS) {
+		prof->flags	= rslt->flags_rss;
+		prof->flags_msk	= ICE_KEYBUILD_FLAG_MASK_DEFAULT_RSS;
+	} else {
+		return -EINVAL;
+	}
+
+	for (off = 0; off < buf_len - 1; off++) {
+		if (msk_buf[off] == 0 && msk_buf[off + 1] == 0)
+			continue;
+		if (!ice_nearest_proto_id(rslt, off, &proto_id, &proto_off))
+			continue;
+		if (prof->fv_num >= ICE_PARSER_FV_MAX)
+			return -EINVAL;
+
+		prof->fv[prof->fv_num].proto_id	= proto_id;
+		prof->fv[prof->fv_num].offset	= proto_off;
+		prof->fv[prof->fv_num].spec	= *(const u16 *)&pkt_buf[off];
+		prof->fv[prof->fv_num].msk	= *(const u16 *)&msk_buf[off];
+		prof->fv_num++;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_parser_profile_dump - dump an FXP profile info
+ * @hw: pointer to the hardware structure
+ * @prof: profile info to dump
+ */
+void ice_parser_profile_dump(struct ice_hw *hw,
+			     struct ice_parser_profile *prof)
+{
+	struct device *dev = ice_hw_to_dev(hw);
+	u16 i;
+
+	dev_info(dev, "ptypes:\n");
+	for (i = 0; i < ICE_FLOW_PTYPE_MAX; i++)
+		if (test_bit(i, prof->ptypes))
+			dev_info(dev, "\t%u\n", i);
+
+	for (i = 0; i < prof->fv_num; i++)
+		dev_info(dev, "proto = %u, offset = %2u, spec = 0x%04x, mask = 0x%04x\n",
+			 prof->fv[i].proto_id, prof->fv[i].offset,
+			 prof->fv[i].spec, prof->fv[i].msk);
+
+	dev_info(dev, "flags = 0x%04x\n", prof->flags);
+	dev_info(dev, "flags_msk = 0x%04x\n", prof->flags_msk);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h b/drivers/net/ethernet/intel/ice/ice_parser.h
index 26aa500c27c7..ebb8f30908ea 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.h
+++ b/drivers/net/ethernet/intel/ice/ice_parser.h
@@ -451,6 +451,8 @@ struct ice_parser_proto_off {
 
 #define ICE_PARSER_PROTO_OFF_PAIR_SIZE	16
 #define ICE_PARSER_FLAG_PSR_SIZE	8
+#define ICE_PARSER_FV_SIZE		48
+#define ICE_PARSER_FV_MAX		24
 #define ICE_BT_TUN_PORT_OFF_H		16
 #define ICE_BT_TUN_PORT_OFF_L		15
 #define ICE_BT_VM_OFF			0
@@ -511,4 +513,28 @@ int ice_parser_ecpri_tunnel_set(struct ice_parser *psr, u16 udp_port, bool on);
 int ice_parser_run(struct ice_parser *psr, const u8 *pkt_buf,
 		   int pkt_len, struct ice_parser_result *rslt);
 void ice_parser_result_dump(struct ice_hw *hw, struct ice_parser_result *rslt);
+
+struct ice_parser_fv {
+	u8 proto_id;	/* hardware protocol ID */
+	u16 offset;	/* offset from the start of the protocol header */
+	u16 spec;	/* pattern to match */
+	u16 msk;	/* pattern mask */
+};
+
+struct ice_parser_profile {
+	/* array of field vectors */
+	struct ice_parser_fv fv[ICE_PARSER_FV_SIZE];
+	int fv_num;		/* # of field vectors must <= 48 */
+	u16 flags;		/* key builder flags */
+	u16 flags_msk;		/* key builder flag mask */
+
+	DECLARE_BITMAP(ptypes, ICE_FLOW_PTYPE_MAX); /* PTYPE bitmap */
+};
+
+int ice_parser_profile_init(struct ice_parser_result *rslt,
+			    const u8 *pkt_buf, const u8 *msk_buf,
+			    int buf_len, enum ice_block blk,
+			    struct ice_parser_profile *prof);
+void ice_parser_profile_dump(struct ice_hw *hw,
+			     struct ice_parser_profile *prof);
 #endif /* _ICE_PARSER_H_ */
-- 
2.43.0

