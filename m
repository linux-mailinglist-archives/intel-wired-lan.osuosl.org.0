Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A15D8D0A4C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 May 2024 20:59:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A5BF8119E;
	Mon, 27 May 2024 18:59:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id unMz4qF9K1l0; Mon, 27 May 2024 18:59:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5049A812C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716836354;
	bh=PlLzJRecjqqHxOuJYbe997NJBZgkIkl0G5q4lhJ2yeY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RTGMYvjQblJkeZBeLtXkNvekxKv9O+lRtPv/6kgBwPSQrPITze4FPMM+LZ4F+FwpW
	 5S32063LF5cUP75rsPfNWNxYrZ4+UqcqWpmADs1giWFOYSQbo64q/G4j4vKnidytmM
	 4aG7M1DidvuxuUEyB6j28I7vxC3uEpllrnXpKTcQ7Bo9fiLKwPxCOPRnznCi03AsBK
	 Gcx57jLnjvGnDgO8GN0djPNDPnBkJs0VKCDvxMINSBZg7CDI9GACYEuPnYEhTntXc0
	 ATedL7Cg5cKvI/eCTyrO1p8wGNBofwXCtmC2JHtiMTRruEKftJSlqx5MGbFJoQuGwm
	 iAxymZ5K3GlJw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5049A812C8;
	Mon, 27 May 2024 18:59:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7F4E71D1D4E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 18:59:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6C62E8125D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 18:59:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F_KN9IWBmJ8p for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 May 2024 18:59:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A22E68122A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A22E68122A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A22E68122A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 May 2024 18:59:02 +0000 (UTC)
X-CSE-ConnectionGUID: 80C5L3blRg69cHUaCaqc3g==
X-CSE-MsgGUID: 9DL9cOUCTmCex2SAtYrg0w==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13353940"
X-IronPort-AV: E=Sophos;i="6.08,193,1712646000"; d="scan'208";a="13353940"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 11:59:02 -0700
X-CSE-ConnectionGUID: ukUziT//S3Kf0BBq9Q9AWA==
X-CSE-MsgGUID: GKgDCCjbSEOuSp89Os+Gkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,193,1712646000"; d="scan'208";a="34910043"
Received: from rfrazer-mobl3.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.110.208])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 11:58:59 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 27 May 2024 12:58:06 -0600
Message-ID: <20240527185810.3077299-10-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240527185810.3077299-1-ahmed.zaki@intel.com>
References: <20240527185810.3077299-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716836342; x=1748372342;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2yFiu1Og9cxMJXWXQ+vO2j1w/wU3jvz/fw4Fj8ypKf0=;
 b=P/QrwuubzPIw2TLqJT+Y8qEeJ94c9/ObeS6+3xrv8ph5CH9k33hNJtEL
 DNJ/l8xkknd2m4fRW6JrZ4NAhfaIXW4M+FLfw8OtD+PiA7Mk4ulqIQFdH
 fiNGoupCmPOCDsr2djr5S5BTunD6K13u/dUDQxnH1IEG4cjyQkt54WhSf
 PMqU3nRCjB9FjhMSU5lXl/aUaKozejVi6Z8AAd3bRHA2pNyd6+nafNEPy
 B2LFzBoWUZy0b/tdn5w75Q/uuXKRDGkCv8TX14ncTiZqoetZee45BruRx
 6hbBqkVHOpN09tlJ2MVkHVOm/gGr2cPmorRPCr6xP9pXSPBx8moIEch0z
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=P/Qrwuub
Subject: [Intel-wired-lan] [PATCH iwl-next v2 09/13] virtchnl: support raw
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
 jacob.e.keller@intel.com, Junfeng Guo <junfeng.guo@intel.com>
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

