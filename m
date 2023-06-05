Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C35ED721DB0
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 07:49:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 548C141821;
	Mon,  5 Jun 2023 05:49:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 548C141821
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685944168;
	bh=9OxqJsHW8NgZrz/G8RzZD7BUkA4Oi3nq5DJNIzHpJnA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MehXxYrecX08gqg8OGlboTlCC0Mk9Mg/A25LpLjgAPmfii5KXmY7rVqlYTZVzZS1I
	 AXbpZCSucyW+EjlZZmV1i87XJeKgA/4IB3vTn/ZLUqkeyIoy7RRfTvsfv7FdjvZW+J
	 2ducdkNuajNHgba+LcIbt8FhhNekIMbSonglqcgEuxlGoXZQg6EUXQooTfgPi8hXRM
	 pcp2oiQ2pJvD1/L3RsWodI0+0Zs/ELyfrdzA0G53eTI8uumw7A+1QtimUd+eLZKWTx
	 ALyTLm7PLAP+TJGbT5vkwpp2H1pkbVgHbAYj38qJXb9KS1L2t8d9C7dJwVKH/yd/rQ
	 RLrPJEBRAeChA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vNSixurh6RaA; Mon,  5 Jun 2023 05:49:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BCB8B41809;
	Mon,  5 Jun 2023 05:49:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BCB8B41809
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C74561BF289
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 05:48:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AC86E403A2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 05:48:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AC86E403A2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XtCWleSK24uP for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 05:48:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E371D40114
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E371D40114
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 05:48:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="419831893"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="419831893"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2023 22:48:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="741581548"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="741581548"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.16])
 by orsmga001.jf.intel.com with ESMTP; 04 Jun 2023 22:48:20 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Jun 2023 13:46:41 +0800
Message-Id: <20230605054641.2865142-16-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230605054641.2865142-1-junfeng.guo@intel.com>
References: <20230605054641.2865142-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685944101; x=1717480101;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=V9fih3aypWIREqnCy/tkFqN9199Q18oYPava6GLVxzE=;
 b=DYgXgIrglubrkKP4zY1K3fFvvHSrZHPZX3i9yCuTh9FZprUSr3A2PQyT
 MA5GGxyFXL4ZTzF9W4VGWse+AoPPVczEh6YPkOpjwvRdI7+EA6QSh/fUz
 C64YnguWYhmN5E8dCdBDrt824pK0XPsH3HrUp0sBSC06zKg47k/JHJSre
 ffbYOzfirBamGwtRukK7mhREuymjwakAazVEoNw9hU0TcF0i+jYHGScOh
 qR8Lq7Q399cCApZy/SmPMp2txqHJnsYgyKI4ux+BP67STC6OgBqMuZEYK
 p40rMlif/qCTpnJRnDGpLXIgztju/pWY+pem+JYYlEaU++MAoAsrL9T15
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DYgXgIrg
Subject: [Intel-wired-lan] [PATCH iwl-next v2 15/15] ice: add API for parser
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
Cc: qi.z.zhang@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add API ice_parser_profile_init to init a parser profile base on
a parser result and a mask buffer. The ice_parser_profile can feed to
low level FXP engine to create HW profile / field vector directly.

Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_parser.c | 113 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_parser.h |  24 +++++
 2 files changed, 137 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
index 1ca0886e6590..ad42dcd31cb3 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.c
+++ b/drivers/net/ethernet/intel/ice/ice_parser.c
@@ -448,3 +448,116 @@ int ice_parser_ecpri_tunnel_set(struct ice_parser *psr,
 {
 	return _tunnel_port_set(psr, "TNL_UDP_ECPRI", udp_port, on);
 }
+
+static bool _nearest_proto_id(struct ice_parser_result *rslt, u16 offset,
+			      u8 *proto_id, u16 *proto_off)
+{
+	u16 dist = 0xffff;
+	u8 p = 0;
+	int i;
+
+	for (i = 0; i < rslt->po_num; i++) {
+		if (offset < rslt->po[i].offset)
+			continue;
+		if (offset - rslt->po[i].offset < dist) {
+			p = rslt->po[i].proto_id;
+			dist = offset - rslt->po[i].offset;
+		}
+	}
+
+	if (dist % 2)
+		return false;
+
+	*proto_id = p;
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
+	u8 proto_id = 0xff;
+	u16 proto_off = 0;
+	u16 off;
+
+	memset(prof, 0, sizeof(*prof));
+	set_bit(rslt->ptype, prof->ptypes);
+	if (blk == ICE_BLK_SW) {
+		prof->flags = rslt->flags_sw;
+		prof->flags_msk = ICE_KEYBUILD_FLAG_MASK_DEFAULT_SW;
+	} else if (blk == ICE_BLK_ACL) {
+		prof->flags = rslt->flags_acl;
+		prof->flags_msk = ICE_KEYBUILD_FLAG_MASK_DEFAULT_ACL;
+	} else if (blk == ICE_BLK_FD) {
+		prof->flags = rslt->flags_fd;
+		prof->flags_msk = ICE_KEYBUILD_FLAG_MASK_DEFAULT_FD;
+	} else if (blk == ICE_BLK_RSS) {
+		prof->flags = rslt->flags_rss;
+		prof->flags_msk = ICE_KEYBUILD_FLAG_MASK_DEFAULT_RSS;
+	} else {
+		return -EINVAL;
+	}
+
+	for (off = 0; off < buf_len - 1; off++) {
+		if (msk_buf[off] == 0 && msk_buf[off + 1] == 0)
+			continue;
+		if (!_nearest_proto_id(rslt, off, &proto_id, &proto_off))
+			continue;
+		if (prof->fv_num >= 32)
+			return -EINVAL;
+
+		prof->fv[prof->fv_num].proto_id = proto_id;
+		prof->fv[prof->fv_num].offset = proto_off;
+		prof->fv[prof->fv_num].spec = *(const u16 *)&pkt_buf[off];
+		prof->fv[prof->fv_num].msk = *(const u16 *)&msk_buf[off];
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
+void ice_parser_profile_dump(struct ice_hw *hw, struct ice_parser_profile *prof)
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
+			 "proto = %d, offset = %d spec = 0x%04x, mask = 0x%04x\n",
+			 prof->fv[i].proto_id, prof->fv[i].offset,
+			 prof->fv[i].spec, prof->fv[i].msk);
+
+	dev_info(ice_hw_to_dev(hw), "flags = 0x%04x\n", prof->flags);
+	dev_info(ice_hw_to_dev(hw), "flags_msk = 0x%04x\n", prof->flags_msk);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h b/drivers/net/ethernet/intel/ice/ice_parser.h
index 432d47031298..ecbec5843e9f 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.h
+++ b/drivers/net/ethernet/intel/ice/ice_parser.h
@@ -85,4 +85,28 @@ struct ice_parser_result {
 int ice_parser_run(struct ice_parser *psr, const u8 *pkt_buf,
 		   int pkt_len, struct ice_parser_result *rslt);
 void ice_parser_result_dump(struct ice_hw *hw, struct ice_parser_result *rslt);
+
+struct ice_parser_fv {
+	u8 proto_id; /* hardware protocol ID */
+	u16 offset; /* offset from the start of the protocol header */
+	u16 spec; /* 16 bits pattern to match */
+	u16 msk; /* 16 bits pattern mask */
+};
+
+struct ice_parser_profile {
+	struct ice_parser_fv fv[48]; /* field vector arrary */
+	int fv_num; /* field vector number must <= 48 */
+	u16 flags; /* 16 bits key builder flag */
+	u16 flags_msk; /* key builder flag masker */
+	/* 1024 bits PTYPE bitmap */
+	DECLARE_BITMAP(ptypes, ICE_FLOW_PTYPE_MAX);
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
