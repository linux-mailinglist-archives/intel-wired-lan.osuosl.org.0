Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 374027805F2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Aug 2023 08:47:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5F5864052E;
	Fri, 18 Aug 2023 06:47:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5F5864052E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692341242;
	bh=ieiG8CgkXbEPlPq4iSWkllkR7AyafafOvoP4ajrFXgk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YNRA4cdq20yzQ8GZ3QqmKkY75tEZ9H4RPyh1FdVz8E0FVMF1zNZ1hBIfOEgGFOmAQ
	 GChTfX2WtDLRQt/mPRXvz1asOSqoh9C5BWZDPxyWt9jH8G6Q+/x1fvke2KBFeYsSz1
	 ujKclrn4c0UE4p7X/WVAdx5n3yFMsxzUQnVMfELgAJr0V0ultT7kIGvYSxjAswq6Tr
	 Tro9IxpwXmm2BzceJW030FqoL0MwSYo0MoOyEnuyom9jq0+HrRz6LAe2o6HiyoCp81
	 ScEffxL+5L+uDNYaMqpALzz9mc6kYAENRnYYUGjWC7CRYiQ5P0JPoyy6TH5/+Elf+7
	 +NdcxbxkKk40w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4tkwGHHQs2ZP; Fri, 18 Aug 2023 06:47:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4F57040490;
	Fri, 18 Aug 2023 06:47:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4F57040490
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1EC531BF2B4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 06:47:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EB51E40490
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 06:47:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EB51E40490
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Di0jN0A6sHrR for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Aug 2023 06:47:10 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A1250404C4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Aug 2023 06:47:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A1250404C4
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="439408354"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="439408354"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 23:47:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="824997406"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="824997406"
Received: from dpdk-jf-ntb-v2.sh.intel.com ([10.67.119.19])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Aug 2023 23:47:08 -0700
From: Junfeng Guo <junfeng.guo@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 18 Aug 2023 14:47:01 +0800
Message-Id: <20230818064703.154183-2-junfeng.guo@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230818064703.154183-1-junfeng.guo@intel.com>
References: <20230605024453.2378898-1-junfeng.guo@intel.com>
 <20230818064703.154183-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692341230; x=1723877230;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CVcekTVmTmI5+D9u4aKWL7S1xVXiU39E/HhDXDt4PjM=;
 b=OEwxJKxlJD9hfpef2b3x7CEhP0I4mHVj216j80GeCyyGUuBfRjlQvdU+
 eCFEZzM5Lx5GxudMcTR+uhwQCoOyDkLdU/6ufhMeEEF/1sSjBQa3XZUdS
 CKhFczATwd4fPcmpF96m7TM2v+shtbhmf6vZbCnMTwfrlb3cyVLTDFQQZ
 n+rFycqZFnsfmhc7zUWI6s+hEbnB+hil8lKwKH6ehWJYJFKqGfw/yXFXq
 +PFNzRcSkdPNufuaHlM2H2ZbOjL/0tSF2fJIhfW/W1FM/NbKMX2a+kFCD
 09avgsR74rENsITSb2EtsGncc5Ego4M+zxDsx8c3lDsARxj6TZGujZbJt
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OEwxJKxl
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/3] virtchnl: support raw
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
Cc: ivecera@redhat.com, qi.z.zhang@intel.com
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
