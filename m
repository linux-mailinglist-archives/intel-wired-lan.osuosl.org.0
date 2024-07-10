Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FCD392DA46
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jul 2024 22:41:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C3AA83F18;
	Wed, 10 Jul 2024 20:41:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id imVHhwiJ0QqH; Wed, 10 Jul 2024 20:41:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 906EC83B29
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720644074;
	bh=PlLzJRecjqqHxOuJYbe997NJBZgkIkl0G5q4lhJ2yeY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0EanMcf7qdWfg/n4q2vxdYvXJUe4Bwx+wq0Htm3OwUyE3q0GSOxIp1S2su/fY3MoH
	 MhPaPtIr+QscUVK+CAAe953tSHF4V3VYE1EoYD20B/pTcH2mKOkxv6ic3HGXsgiHd+
	 233Gq6J3ZVCoWbZJXXLXbqcm5lWj3GnW5mcDCpsoF53tse5E8Jve+aNeShP41RVaHK
	 cy2uBERj4S6tUhkPT5tDuLOGxHDYJKkVUfiVyedVrgcV9zKHksJbP7qzAnrEHrAWiN
	 vCuEarhKXOV5kcEZg1ABgEezyMjcLhQLBC7j9zvcsX0e9eeKSqbndPwBO8deaZ+LK4
	 MyxfAZYpaOFSQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 906EC83B29;
	Wed, 10 Jul 2024 20:41:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E92911BF573
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2024 20:41:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D5C92408BF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2024 20:41:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kN4fg6iS7tuH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jul 2024 20:41:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C419040248
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C419040248
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C419040248
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jul 2024 20:41:08 +0000 (UTC)
X-CSE-ConnectionGUID: S+n+A80TSCaFcXImjlvjZA==
X-CSE-MsgGUID: tIQY0TuyR1aTo8k2mTehTw==
X-IronPort-AV: E=McAfee;i="6700,10204,11129"; a="29153350"
X-IronPort-AV: E=Sophos;i="6.09,198,1716274800"; d="scan'208";a="29153350"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2024 13:41:09 -0700
X-CSE-ConnectionGUID: MTzFsQsqSKWh4NaOpAAJ8g==
X-CSE-MsgGUID: qxj66jW4TTmCarFGFJQPcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,198,1716274800"; d="scan'208";a="48301232"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.245.246.184])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2024 13:41:04 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 10 Jul 2024 14:40:11 -0600
Message-ID: <20240710204015.124233-10-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240710204015.124233-1-ahmed.zaki@intel.com>
References: <20240710204015.124233-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720644069; x=1752180069;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2yFiu1Og9cxMJXWXQ+vO2j1w/wU3jvz/fw4Fj8ypKf0=;
 b=TuTZdqAc+UmP2S3Fo5UQ3pPjaQRl97Z9WnTvpiIdEZNDtg2uoVVolGMm
 PkgMleehhC03U+0miNbUFdBHb+LKxKKKnm4Rf6nlY1am2JCU9Lx2ty5gw
 +cXPpb9h0I2dnFRr/BZiD3xrwOElm15TkLgB1NX4hO52wBNU5Hbds26L3
 XZ0Pdmtc+A/T1Vm6z/CcanYjKrWFFeXODYJhMa6vywocHJDbN9U9W+dor
 WAprrb6fdkaB+5SRNVgkbTZo/QK/VxOwHaTY2PI8uq4p0rX5zQzBgfvpk
 S9G1U9WOuaaGFEfGzFsclUE39bsLnOgwmsjBphZB4LCOsosmPBCJPf/B3
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TuTZdqAc
Subject: [Intel-wired-lan] [PATCH iwl-next v3 09/13] virtchnl: support raw
 packet in protocol header
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
 horms@kernel.org, Junfeng Guo <junfeng.guo@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Junfeng Guo <junfeng.guo@intel.com>

The patch extends existing virtchnl_proto_hdrs structure to allow VF
to pass a pair of buffers as packet data and mask that describe
a match pattern of a filter rule. Then the kernel PF driver is requested
to parse the pair of buffer and figure out low level hardware metadata
(ptype, profile, field vector.. ) to program the expected FDIR or RSS
rules.

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 include/linux/avf/virtchnl.h | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index 8e177b67e82f..4f78a65e33dc 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -1121,6 +1121,7 @@ enum virtchnl_vfr_states {
 };
 
 #define VIRTCHNL_MAX_NUM_PROTO_HDRS	32
+#define VIRTCHNL_MAX_SIZE_RAW_PACKET	1024
 #define PROTO_HDR_SHIFT			5
 #define PROTO_HDR_FIELD_START(proto_hdr_type) ((proto_hdr_type) << PROTO_HDR_SHIFT)
 #define PROTO_HDR_FIELD_MASK ((1UL << PROTO_HDR_SHIFT) - 1)
@@ -1266,13 +1267,22 @@ struct virtchnl_proto_hdrs {
 	u8 pad[3];
 	/**
 	 * specify where protocol header start from.
+	 * must be 0 when sending a raw packet request.
 	 * 0 - from the outer layer
 	 * 1 - from the first inner layer
 	 * 2 - from the second inner layer
 	 * ....
 	 **/
 	int count; /* the proto layers must < VIRTCHNL_MAX_NUM_PROTO_HDRS */
-	struct virtchnl_proto_hdr proto_hdr[VIRTCHNL_MAX_NUM_PROTO_HDRS];
+	union {
+		struct virtchnl_proto_hdr
+			proto_hdr[VIRTCHNL_MAX_NUM_PROTO_HDRS];
+		struct {
+			u16 pkt_len;
+			u8 spec[VIRTCHNL_MAX_SIZE_RAW_PACKET];
+			u8 mask[VIRTCHNL_MAX_SIZE_RAW_PACKET];
+		} raw;
+	};
 };
 
 VIRTCHNL_CHECK_STRUCT_LEN(2312, virtchnl_proto_hdrs);
-- 
2.43.0

