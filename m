Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E688CC759
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 May 2024 21:37:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9142280C15;
	Wed, 22 May 2024 19:36:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 75yJoAivZdNW; Wed, 22 May 2024 19:36:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9BAF68219A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716406614;
	bh=PlLzJRecjqqHxOuJYbe997NJBZgkIkl0G5q4lhJ2yeY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SBF0mxXCoJOts0hCoLJlpl7CY0a73jb3PzG8jMaXyCb5lbvWNa9NBOXQUbMuweWYU
	 ZYcRkFX2SF95IjyhKxeYLsOTNyY+bnmlycdQZD5lIhe503MSHneHIZc7LysKBABdWQ
	 Kxi0Qq+nprelqNTIbe204U2fKPouGWlx4TNJQLlIX8KgeA7mnD2GnYLvU8P1MYZU2D
	 oLzWGGGqf9Jlk3BD4fOyEmvENbi4GC6ssW7bbv3FwNIzBRhYwSctSyS7pykOcE1Erx
	 vRkcUVVW6SEdLPi9aaOPNvCIQgPL4C2mbcro9WHGSXP3ay9wI+4Ep5Oc2nxAwr0ddK
	 Gokr6O7CqQhUg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9BAF68219A;
	Wed, 22 May 2024 19:36:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AE1F11C5EF7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 May 2024 19:36:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9AF7A406C2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 May 2024 19:36:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IAbAusHfS7cN for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 May 2024 19:36:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B6C1C406C1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B6C1C406C1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B6C1C406C1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 May 2024 19:36:45 +0000 (UTC)
X-CSE-ConnectionGUID: /+vXj7TLS7akmZ+yS+yx6Q==
X-CSE-MsgGUID: epEVrtvZQlibr8KUL6eu6A==
X-IronPort-AV: E=McAfee;i="6600,9927,11080"; a="23256360"
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="23256360"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 12:36:45 -0700
X-CSE-ConnectionGUID: J1dfDumrR4qxMzrzFj1JMQ==
X-CSE-MsgGUID: kmdYZkSeRq+hGiqPAU7KWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="33254181"
Received: from spandruv-desk1.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.125.109.214])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 12:36:43 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 22 May 2024 13:35:58 -0600
Message-ID: <20240522193602.164331-10-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240522193602.164331-1-ahmed.zaki@intel.com>
References: <20240522193602.164331-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716406605; x=1747942605;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2yFiu1Og9cxMJXWXQ+vO2j1w/wU3jvz/fw4Fj8ypKf0=;
 b=l/EI5MsB9gbLDdV4urM4vvkug24jDHYQv168mVHFP3mBEkrQdVeUNcEl
 4z4s18M0//zRqEnwqwZdjj8imSXb63pNkwF/7k9FZ7qWZRT6TB+3ptFOG
 6sNyELJVsiaDjI1lFriGfGDi4pI48dp9gtL/muKscaucNeNVhn3kZVZhH
 qa14fMjiC8O3eA93wLD4rwGbTXoe5kcE2kemJ647s7d9WYpjIPtUF6qpE
 aHnYX05na3Djn1vtaCmj4rNmXCctxmDEfI3CqaBscWkTNLyJU6g1l0F/L
 Z8cd76J7Hhv3r5nQ/45nZ87qAsvoM6kojKiTngJcu+ExGYWek/W/2iDOf
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=l/EI5MsB
Subject: [Intel-wired-lan] [PATCH iwl-next 09/13] virtchnl: support raw
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
Cc: Marcin Szycik <marcin.szycik@linux.intel.com>,
 Junfeng Guo <junfeng.guo@intel.com>, Ahmed Zaki <ahmed.zaki@intel.com>
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

