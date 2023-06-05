Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2F8721C15
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 04:45:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 62E3460BF1;
	Mon,  5 Jun 2023 02:45:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 62E3460BF1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685933110;
	bh=ieiG8CgkXbEPlPq4iSWkllkR7AyafafOvoP4ajrFXgk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dzPheUnsZZHcKpPNiSNgqio+2v8P5HrRTbk+Z+cPqzKhi+PA/S8dN2G315nDGyBLC
	 zgKabiICoNZMvvbsgoiNVyZEAbYsWhiN8ev1T8k+j8eY0+hdAjEOZrswvFJQBhWr/K
	 ND+x1WVe5RVOtSSFUw50XKOs9gAL/Ni9ufDVyuRzh/sH0woVMTFVlHpN/n8alDOiXO
	 3gWN5bOez6muw0XX4u2n1PcjEK/+h5IfHIbQngXJ/bBpWD/4PzzZ0iE+5kA8Eev9kt
	 umkhnDg2VoxMCYjBN4HB4Hp58+ny29eExZniSQ5xtHJYXcjwaW4ozHuqufxyEeBxnP
	 O+bF6M6wfdSGg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id at-9SvliU9Pq; Mon,  5 Jun 2023 02:45:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 27F2960BB9;
	Mon,  5 Jun 2023 02:45:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 27F2960BB9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 405F21BF95D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 02:45:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 22B8581FDB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 02:45:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 22B8581FDB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TTJqH9PoIvvk for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 02:45:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 20A9C81FDA
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 20A9C81FDA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 02:45:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="355119125"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="355119125"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2023 19:45:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="821001548"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="821001548"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.16])
 by fmsmga002.fm.intel.com with ESMTP; 04 Jun 2023 19:45:01 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Jun 2023 10:44:51 +0800
Message-Id: <20230605024453.2378898-2-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230605024453.2378898-1-junfeng.guo@intel.com>
References: <20230605024453.2378898-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685933103; x=1717469103;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CVcekTVmTmI5+D9u4aKWL7S1xVXiU39E/HhDXDt4PjM=;
 b=F6AXjHxfGnt7LDC8om5PV+a8x50lR9D9Oj55c3FzXcFKnHJiTRYTlqZN
 IGUHk2pPV2O5Ax91CkYI8REEA7UZbjnHOGe9ZJTlLXBF8BGe4uQzjPrda
 GuCPw5XzanBQaWSRGZbqpPO4g/G5X65g/oTIcL1Hg35pTXSl+myLbi0+L
 xriSgPahfh4szfbb3or+Xh6FrlJbE0js4wk1mmfhD0wR9YZ0GVOK7IHQo
 ntEkUJ6A1Uqqd8U2AJXb/Rqf06lBMqlMbzX5wOB2GWR7QpBzbEiAVTQRj
 gUO+wg+q/ZDNZjdVgGIzIXmWNxz8MMUSZUiIqhrw0Mi+F1tXl7ngAZT9r
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=F6AXjHxf
Subject: [Intel-wired-lan] [PATCH iwl-next 1/3] virtchnl: support raw packet
 in protocol header
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

The patch extends existing virtchnl_proto_hdrs structure to allow VF
to pass a pair of buffers as packet data and mask that describe
a match pattern of a filter rule. Then the kernel PF driver is requested
to parse the pair of buffer and figure out low level hardware metadata
(ptype, profile, field vector.. ) to program the expected FDIR or RSS
rules.

Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
---
 include/linux/avf/virtchnl.h | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index c15221dcb75e..33b4c6db0c10 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -1083,6 +1083,7 @@ enum virtchnl_rss_algorithm {
 };
 
 #define VIRTCHNL_MAX_NUM_PROTO_HDRS	32
+#define VIRTCHNL_MAX_SIZE_RAW_PACKET	1024
 #define PROTO_HDR_SHIFT			5
 #define PROTO_HDR_FIELD_START(proto_hdr_type) ((proto_hdr_type) << PROTO_HDR_SHIFT)
 #define PROTO_HDR_FIELD_MASK ((1UL << PROTO_HDR_SHIFT) - 1)
@@ -1228,13 +1229,22 @@ struct virtchnl_proto_hdrs {
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
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
