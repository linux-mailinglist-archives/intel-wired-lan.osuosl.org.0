Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B7FC977F390
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Aug 2023 11:36:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4D93283CDA;
	Thu, 17 Aug 2023 09:36:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4D93283CDA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692264995;
	bh=2JsAMr1ogHcc42Iq6qGCQ55rWM1BtrUeFfR2+15Vpto=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FyTWlnnSPWDJfuL7/1QGE7bWLttXiLf2nDvEh19UHXhLqC7WsYskhy0DjxQJOLUJ3
	 JuQ2Xx2kZpCTc/FWxxESsTidsmbJjGE6cuEIw1KXjvIJsqORz0tCB17o1CWs4RAHJy
	 PgPsPCcJyuJYR71i7VoT3AcO2vlV7NU1yakjaZmGS1i9q/sALYuM/mofn2hSdBIjbE
	 +AmjxNEfVd+NCJeP5KtJWia0jl1h7agPDuPJgwJ7n1cXbq+pz70sqDxNaGHA0YM4fR
	 PYf2vMe4X/ta5RA9D5BejuRWwvXvUkcPU11z0yu51fcfxEkx/4tRP04IUNm4OngIVR
	 y1GDLxEbLBraA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Blqi2P4mc6-M; Thu, 17 Aug 2023 09:36:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0490783CAC;
	Thu, 17 Aug 2023 09:36:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0490783CAC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 588971BF215
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 09:35:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3F2FC4181D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 09:35:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F2FC4181D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tRujdl8u2vtU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Aug 2023 09:35:54 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7B45641815
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 09:35:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7B45641815
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="459120213"
X-IronPort-AV: E=Sophos;i="6.01,179,1684825200"; d="scan'208";a="459120213"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 02:35:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="769557127"
X-IronPort-AV: E=Sophos;i="6.01,179,1684825200"; d="scan'208";a="769557127"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.19])
 by orsmga001.jf.intel.com with ESMTP; 17 Aug 2023 02:35:52 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 17 Aug 2023 17:34:42 +0800
Message-Id: <20230817093442.2576997-16-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230817093442.2576997-1-junfeng.guo@intel.com>
References: <20230605054641.2865142-1-junfeng.guo@intel.com>
 <20230817093442.2576997-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692264954; x=1723800954;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=F2OINOzxwTQ1dCyKwEFHR1t5P6bBmARpDy21Ilj0G6s=;
 b=ZrKQhxecPHuMFAjHd8uS6OVrXlYHBye3BWyFMeUG4H8413L22icNqUnc
 GkTeg78+EMHflm4qLATeSCas3IsZeXBGnh0Dis9FPLUJK1PxzmvWCmgmr
 bZ6RUqm5djh+dRraz5b/+qXetY7NhIT91E1Z0n0e/+3cWdYdkpURR3som
 xzRvgIfOnCFI3igPuzNJCawfyN3BwQlItDlJXRFhfHcM/fWeXJR6Xd9wx
 YeZ5vTQUYUk24hhEwMsPImUS6ShRGO/FxeHZylqSpGN/K0LayNQY99Hec
 51ZfMcL+OlYLlo4l1URusf33ThxN0NDl0bfXzMs7FboNsWC2lsQiBqPBO
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZrKQhxec
Subject: [Intel-wired-lan] [PATCH net-next v3 15/15] ice: add API for parser
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
Cc: ivecera@redhat.com, qi.z.zhang@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add API ice_parser_profile_init to init a parser profile base on
a parser result and a mask buffer. The ice_parser_profile can feed to
low level FXP engine to create HW profile / field vector directly.

Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_parser.c | 114 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_parser.h |  27 +++++
 2 files changed, 141 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
index aa63605690a0..f701b513b13a 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.c
+++ b/drivers/net/ethernet/intel/ice/ice_parser.c
@@ -446,3 +446,117 @@ int ice_parser_ecpri_tunnel_set(struct ice_parser *psr,
 {
 	return _ice_tunnel_port_set(psr, "TNL_UDP_ECPRI", udp_port, on);
 }
+
+static bool _ice_nearest_proto_id(struct ice_parser_result *rslt, u16 offset,
+				  u8 *proto_id, u16 *proto_off)
+{
+	u16 dist = U16_MAX;
+	u8 proto = 0;
+	int i;
+
+	for (i = 0; i < rslt->po_num; i++) {
+		if (offset < rslt->po[i].offset)
+			continue;
+		if (offset - rslt->po[i].offset < dist) {
+			proto	= rslt->po[i].proto_id;
+			dist	= offset - rslt->po[i].offset;
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
+ * ice_parser_profile_init  - initialize a FXP profile base on parser result
+ * @rslt: a instance of a parser result
+ * @pkt_buf: packet data buffer
+ * @msk_buf: packet mask buffer
+ * @buf_len: packet length
+ * @blk: FXP pipeline stage
+ * @prefix_match: match protocol stack exactly or only prefix
+ * @prof: input/output parameter to save the profile
+ */
+int ice_parser_profile_init(struct ice_parser_result *rslt,
+			    const u8 *pkt_buf, const u8 *msk_buf,
+			    int buf_len, enum ice_block blk,
+			    bool prefix_match,
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
+		if (!_ice_nearest_proto_id(rslt, off, &proto_id, &proto_off))
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
+	u16 i;
+
+	dev_info(ice_hw_to_dev(hw), "ptypes:\n");
+	for (i = 0; i < ICE_FLOW_PTYPE_MAX; i++)
+		if (test_bit(i, prof->ptypes))
+			dev_info(ice_hw_to_dev(hw), "\t%d\n", i);
+
+	for (i = 0; i < prof->fv_num; i++)
+		dev_info(ice_hw_to_dev(hw),
+			 "proto = %d, offset = %2d; spec = 0x%04x, mask = 0x%04x\n",
+			 prof->fv[i].proto_id, prof->fv[i].offset,
+			 prof->fv[i].spec, prof->fv[i].msk);
+
+	dev_info(ice_hw_to_dev(hw), "flags = 0x%04x\n", prof->flags);
+	dev_info(ice_hw_to_dev(hw), "flags_msk = 0x%04x\n", prof->flags_msk);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h b/drivers/net/ethernet/intel/ice/ice_parser.h
index df819471b462..86f33b205774 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.h
+++ b/drivers/net/ethernet/intel/ice/ice_parser.h
@@ -33,6 +33,8 @@
 #define ICE_SID_LBL_ENTRY_SIZE				66
 
 #define ICE_PARSER_PROTO_OFF_PAIR_SIZE			16
+#define ICE_PARSER_FV_SIZE				48
+#define ICE_PARSER_FV_MAX				24
 #define ICE_BT_TUN_PORT_OFF_H				16
 #define ICE_BT_TUN_PORT_OFF_L				15
 #define ICE_UDP_PORT_OFF_H				1
@@ -110,4 +112,29 @@ struct ice_parser_result {
 int ice_parser_run(struct ice_parser *psr, const u8 *pkt_buf,
 		   int pkt_len, struct ice_parser_result *rslt);
 void ice_parser_result_dump(struct ice_hw *hw, struct ice_parser_result *rslt);
+
+struct ice_parser_fv {
+	u8 proto_id;	/* hardware protocol ID */
+	u16 offset;	/* offset from the start of the protocol header */
+	u16 spec;	/* 16 bits pattern to match */
+	u16 msk;	/* 16 bits pattern mask */
+};
+
+struct ice_parser_profile {
+	/* array of field vectors */
+	struct ice_parser_fv fv[ICE_PARSER_FV_SIZE];
+	int fv_num;		/* # of field vectors must <= 48 */
+	u16 flags;		/* 16 bits key builder flags */
+	u16 flags_msk;		/* key builder flag mask */
+
+	DECLARE_BITMAP(ptypes, ICE_FLOW_PTYPE_MAX); /* PTYPE bitmap */
+};
+
+int ice_parser_profile_init(struct ice_parser_result *rslt,
+			    const u8 *pkt_buf, const u8 *msk_buf,
+					int buf_len, enum ice_block blk,
+					bool prefix_match,
+					struct ice_parser_profile *prof);
+void ice_parser_profile_dump(struct ice_hw *hw,
+			     struct ice_parser_profile *prof);
 #endif /* _ICE_PARSER_H_ */
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
