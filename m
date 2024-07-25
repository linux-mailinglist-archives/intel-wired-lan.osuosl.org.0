Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F21B593CAAA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jul 2024 00:09:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A1CC640ED7;
	Thu, 25 Jul 2024 22:09:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0i9XH133_ShP; Thu, 25 Jul 2024 22:09:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AF2D640EDC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721945345;
	bh=mJiDMBdEFePJP5cqyTsWBVY9bpOsqykp5w8Rb7SoHd4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UjU/+0lW2jiqPGhaEbRYeRHGZHN/fggaOKPfcAsNz7bNGxO5heEkJI35Py+H5kne9
	 dHj7mCsiot30/b6P5r/DLugFSPdTwI5asJux091RP/iDmbpYU+o68idBtLPI4/uAYM
	 k1IMlX/d08XRJNWoXn6IVDFC8Cvs93aMIryZr/4DkZdSIobtdSZpBYw7LKmDCKMmc7
	 84gTtPnv7jYDmi6epuzuLHHchsRc3i5+GF1Vpdof3T8r/Rr1lMnWfGqxWzUSIfmPJa
	 DrtxsIsbITtDdaOQsNeE3aQRUENOWGBId7KWQRY65+Sep7gMsBkf2+057acCadrdGR
	 cQBj07dZQjDgg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AF2D640EDC;
	Thu, 25 Jul 2024 22:09:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CEDBB1BF3C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 22:09:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BC4AF81EFA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 22:09:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aUGV6pTqazDf for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2024 22:09:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0AEAA81EF7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0AEAA81EF7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0AEAA81EF7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2024 22:09:02 +0000 (UTC)
X-CSE-ConnectionGUID: LgDfb/1lSeqJXcu9/9DZIA==
X-CSE-MsgGUID: lPQYRPRtSNeYlAwKt+pq0A==
X-IronPort-AV: E=McAfee;i="6700,10204,11144"; a="19520542"
X-IronPort-AV: E=Sophos;i="6.09,237,1716274800"; d="scan'208";a="19520542"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2024 15:09:02 -0700
X-CSE-ConnectionGUID: 0tbE/hZDT/mZAn2mvBQ0qg==
X-CSE-MsgGUID: 6ypWcob/TCuuwCxrYN2RQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,237,1716274800"; d="scan'208";a="52956224"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.245.246.33])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2024 15:08:58 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Jul 2024 16:08:05 -0600
Message-ID: <20240725220810.12748-10-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240725220810.12748-1-ahmed.zaki@intel.com>
References: <20240725220810.12748-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721945342; x=1753481342;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yOMvGONTz6voeoYDVKKif51gxiH/fasIzag5jalvqfo=;
 b=nWdAfZkkNLvZXyoYcnMPCIK02kezkK+VgXM63zf87fjoxtFMeXYzZ0uG
 EY0Nb2nDwU7qIMR2QKl/clG5kWrl5qIbVxBB2EwFX5ILhFBGQzVm8Nj3o
 RMgs9xRBNji8oFyJv8nXCfSqWiXp+1hb/r8Z5ufSdjtK2QuTmZaRMNxVQ
 KqNSy6bSZsEViaKEG3CJR1b7za03b+ZEA6qoG/0v/8XZNIujJtPd5lWPS
 g3CDbTf2ZA96L9i9xXjCzCCC87bI4f6rcq/tzLgmEBFulm1hGmSNoVNyD
 vqupcG0Lql1Wyv8Ge6+cNCaT86sBcSHxH9KfaN/IQl40LOwa/ccj9ua/C
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nWdAfZkk
Subject: [Intel-wired-lan] [PATCH iwl-next v5 09/13] virtchnl: support raw
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
 hkelam@marvell.com, Marcin Szycik <marcin.szycik@linux.intel.com>,
 anthony.l.nguyen@intel.com, horms@kernel.org, przemyslaw.kitszel@intel.com,
 Junfeng Guo <junfeng.guo@intel.com>,
 Rafal Romanowski <rafal.romanowski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Junfeng Guo <junfeng.guo@intel.com>

The patch extends existing virtchnl_proto_hdrs structure to allow VF
to pass a pair of buffers as packet data and mask that describe
a match pattern of a filter rule. Then the kernel PF driver is requested
to parse the pair of buffer and figure out low level hardware metadata
(ptype, profile, field vector.. ) to program the expected FDIR or RSS
rules.

Reviewed-by: Simon Horman <horms@kernel.org>
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>
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

