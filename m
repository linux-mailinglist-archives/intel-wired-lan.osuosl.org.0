Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD658C27AA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 May 2024 17:27:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F247484567;
	Fri, 10 May 2024 15:27:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rsd-lgPvgr28; Fri, 10 May 2024 15:27:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2761E8455F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715354846;
	bh=zU69lrGM6m36Whruwd23N8azPjtiRj0gN9cF2KeFYeI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0JtENyBuGH4aKCk7IhVSPkuFhFzds67WGbRhGoVbWaFGgD4ToILPc4a/DJjM+Gr82
	 al+aSgjh4Wkdv7CIG2QdG4vhfrUMb3TqNz1SWkob6gkFWZWZ87ZjMlpL4Kpvj2xAwx
	 fAr8TT4R+5Ft1kI9FBaqT/hKIUYpJwG5lPb+P9O1c2mWLRpaTDU9+fjLns3cQpx8+H
	 G638pkQnk4UmDMWYxb7gtrFk+Y18vRExFJZU7WGeMSLYhQkvBSVcd8xhp8XH9ofwlM
	 3pT/XdTiE1QAG9ULU6tYpNg8SUqGGi+HXg5mn17bBdLSt/TIDlOoE1Y238ixlZUC5V
	 H+GU8So/1nK5g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2761E8455F;
	Fri, 10 May 2024 15:27:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9C4C11BF304
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 15:27:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8896D42243
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 15:27:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4dzTgZMD6W7Q for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 May 2024 15:27:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8A19842048
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8A19842048
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8A19842048
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 15:27:22 +0000 (UTC)
X-CSE-ConnectionGUID: Ivew3TPAQZyYGYevnUMZSQ==
X-CSE-MsgGUID: pL4OmkcfQqioKiwrLblQbA==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="15152548"
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="15152548"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 08:27:22 -0700
X-CSE-ConnectionGUID: XlGYlfGWQZGEqYtdblb2Bw==
X-CSE-MsgGUID: usbMoM40QpOhVM75OYdiyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="30208238"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa008.jf.intel.com with ESMTP; 10 May 2024 08:27:19 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 10 May 2024 17:26:09 +0200
Message-ID: <20240510152620.2227312-2-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20240510152620.2227312-1-aleksander.lobakin@intel.com>
References: <20240510152620.2227312-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715354843; x=1746890843;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=96/bv+FJrC/OibdNW1EQaNdvgoLzh92ZX9ptg3yrNfQ=;
 b=mHVMt2Nj7mLRfCJxoa9Zf9prx5NlPpV0xTf7YJNHQg4pI+C8pYIgDXIe
 nKt4zP3igiOw3iFLj8xb8yeFA+C5VmmUX4lI4mRHA6n9HwvOsrI+otlWP
 ClRBIeUrieGRQOoSZaOvdm0LwHqChHQjWBL2xcbI8soeh61ptLIoqRAlu
 Trf+LxscqaTmsvWPj9OiNxTV+Temgvddk7C812tFnrLWTYfL8vq8Q2Fpv
 OSVp773hPAZqMTfEMqis5Gd6NPB9+k1h1syYhDQ93GlVf2hh6KWgGrZXe
 OpCLzUhdl2VpL73d7ebHouWdQOU9nuQUn81o/GHyhafbDSZe1bV0ox+9R
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mHVMt2Nj
Subject: [Intel-wired-lan] [PATCH RFC iwl-next 01/12] libeth: add cacheline
 / struct alignment helpers
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Following the latest netdev trend, i.e. effective and usage-based field
cacheline placement, add helpers to group and then assert struct fields
by cachelines.
For 64-bit with 64-byte cachelines, the assertions are more strict as
the size can then be easily predicted. For the rest, just make sure
they don't cross the specified bound.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/net/libeth/cache.h | 64 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 64 insertions(+)
 create mode 100644 include/net/libeth/cache.h

diff --git a/include/net/libeth/cache.h b/include/net/libeth/cache.h
new file mode 100644
index 000000000000..3245a20b22d3
--- /dev/null
+++ b/include/net/libeth/cache.h
@@ -0,0 +1,64 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2024 Intel Corporation */
+
+#ifndef __LIBETH_CACHE_H
+#define __LIBETH_CACHE_H
+
+#include <linux/cache.h>
+
+/* __aligned_largest is architecture-dependent. Get the actual alignment */
+#define ___LIBETH_LARGEST_ALIGN						   \
+	sizeof(struct { long __UNIQUE_ID(long_); } __aligned_largest)
+#define __LIBETH_LARGEST_ALIGN						   \
+	(___LIBETH_LARGEST_ALIGN > SMP_CACHE_BYTES ?			   \
+	 ___LIBETH_LARGEST_ALIGN : SMP_CACHE_BYTES)
+#define __LIBETH_LARGEST_ALIGNED(sz)					   \
+	ALIGN(sz, __LIBETH_LARGEST_ALIGN)
+
+#define __libeth_cacheline_group_begin(grp)				   \
+	__cacheline_group_begin(grp) __aligned(__LIBETH_LARGEST_ALIGN)
+#define __libeth_cacheline_group_end(grp)				   \
+	__cacheline_group_end(grp) __aligned(4)
+
+#define libeth_cacheline_group(grp, ...)				   \
+	struct_group(grp,						   \
+		__libeth_cacheline_group_begin(grp);			   \
+		__VA_ARGS__						   \
+		__libeth_cacheline_group_end(grp);			   \
+	)
+
+#if defined(CONFIG_64BIT) && L1_CACHE_BYTES == 64
+#define libeth_cacheline_group_assert(type, grp, sz)			   \
+	static_assert(offsetof(type, __cacheline_group_end__##grp) -	   \
+		      offsetofend(type, __cacheline_group_begin__##grp) == \
+		      (sz))
+#define __libeth_cacheline_struct_assert(type, sz)			   \
+	static_assert(sizeof(type) == (sz))
+#else /* !CONFIG_64BIT || L1_CACHE_BYTES != 64 */
+#define libeth_cacheline_group_assert(type, grp, sz)			   \
+	static_assert(offsetof(type, __cacheline_group_end__##grp) -	   \
+		      offsetofend(type, __cacheline_group_begin__##grp) <= \
+		      (sz))
+#define __libeth_cacheline_struct_assert(type, sz)			   \
+	static_assert(sizeof(type) <= (sz))
+#endif /* !CONFIG_64BIT || L1_CACHE_BYTES != 64 */
+
+#define __libeth_cls1(sz1)						   \
+	__LIBETH_LARGEST_ALIGNED(sz1)
+#define __libeth_cls2(sz1, sz2)						   \
+	(__LIBETH_LARGEST_ALIGNED(sz1) + __LIBETH_LARGEST_ALIGNED(sz2))
+#define __libeth_cls3(sz1, sz2, sz3)					   \
+	(__LIBETH_LARGEST_ALIGNED(sz1) + __LIBETH_LARGEST_ALIGNED(sz2) +   \
+	 __LIBETH_LARGEST_ALIGNED(sz3))
+#define __libeth_cls(...)						   \
+	CONCATENATE(__libeth_cls, COUNT_ARGS(__VA_ARGS__))(__VA_ARGS__)
+#define libeth_cacheline_struct_assert(type, ...)			   \
+	__libeth_cacheline_struct_assert(type, __libeth_cls(__VA_ARGS__))
+
+#define libeth_cacheline_set_assert(type, ro, rw, c)			   \
+	libeth_cacheline_group_assert(type, read_mostly, ro);		   \
+	libeth_cacheline_group_assert(type, read_write, rw);		   \
+	libeth_cacheline_group_assert(type, cold, c);			   \
+	libeth_cacheline_struct_assert(type, ro, rw, c)
+
+#endif /* __LIBETH_CACHE_H */
-- 
2.45.0

