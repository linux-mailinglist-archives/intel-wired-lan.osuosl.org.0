Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 56EDD9106E9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jun 2024 15:56:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 06AF58470C;
	Thu, 20 Jun 2024 13:56:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cDOyZQDhs73W; Thu, 20 Jun 2024 13:56:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F15BE8472A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718891796;
	bh=z2dxLIA9iwuNWs9l/RKdjgtui0t7Boix+N3xnl03ACo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7g2VpY5snlonJmmA81Wi/KvybeQQFOXgNSP2Xx7e1RhhxeDtIhYmZ2EKijmt2iK4g
	 arZpDmmyL2wSCfEnhbOOgFqQ/2jXvwm9sdxXgWhbuYQXKi7S+y0czoyhJ8FvpENezs
	 +5Y83/fEgkRq4eOM1+2F+7qew1umwuiD1Ws2qV0pnjTCftcI8DB8RcmlPUSZCQcNG0
	 0rkKSj0MEkgQMtqKBSuhhwNgRTYPp+ZE137UaITDZpuK46fFGR6PnY13DnO1OZx766
	 HXinpGkXRM1Ef1RuyabVllg7Zq+g0PCPPrr4a+NYZ4luPjLjEL7tWPs8M3osls64lN
	 bQsVlqn+ib3zw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F15BE8472A;
	Thu, 20 Jun 2024 13:56:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3EAA91BF315
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 13:56:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2B75C42EE5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 13:56:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Th6oz33ATZEo for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jun 2024 13:56:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 00D2542E6A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 00D2542E6A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 00D2542E6A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 13:56:32 +0000 (UTC)
X-CSE-ConnectionGUID: Mkw5NfYHRd2+uO30Im1lqA==
X-CSE-MsgGUID: aykqbpEWT/2jncLRhiOhbg==
X-IronPort-AV: E=McAfee;i="6700,10204,11108"; a="15987817"
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="15987817"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2024 06:56:32 -0700
X-CSE-ConnectionGUID: nBo8jPV7QN+6if8pzvreKg==
X-CSE-MsgGUID: GcpVcVBQQqqrBe5wywP+ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="46772060"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa004.fm.intel.com with ESMTP; 20 Jun 2024 06:56:28 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 20 Jun 2024 15:53:36 +0200
Message-ID: <20240620135347.3006818-4-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240620135347.3006818-1-aleksander.lobakin@intel.com>
References: <20240620135347.3006818-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718891793; x=1750427793;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bDNRJ9pUxO+8DZxErTdiKH0DICe6eRRQQReWV8Dosdw=;
 b=V0PBNOPbI08xVy4wQDgwCZ84qCg7I9AmrGXNBdh6xRco1crwgjmJqgSp
 PRGPlu3d6wFkjUtJWFmdua1cuHuUizUmqd9wtiq321JotN4azDO4r6Kkl
 XEg8LtvyLYHlPrriKEUI/oIrAJe7VVBzlmEFki1QmouJReuKYM7AaSZwS
 gsR9Dh+vzWTlH9ovt6D1Ytf4n6ytyiTqTYxcxvQA2toDP2tuXl20BqxEX
 K9gd3infAOjgBRs6EW3MCijhMCwvhmyB7TqYM39yp6082jgYg7ysL20oR
 Hy0QJLPIHtbrMwVnWUAbcUK+XaEPnEJF8wPLJadVNbos6xz1LgtWwmViG
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=V0PBNOPb
Subject: [Intel-wired-lan] [PATCH iwl-next v2 03/14] libeth: add cacheline /
 struct layout assertion helpers
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
Cc: Mina Almasry <almasrymina@google.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add helpers to assert struct field layout, a bit more crazy and
networking-specific than in <linux/cache.h>. They assume you have
3 CL-aligned groups (read-mostly, read-write, cold) in a struct
you want to assert, and nothing besides them.
For 64-bit with 64-byte cachelines, the assertions are as strict
as possible, as the size can then be easily predicted.
For the rest, make sure they don't cross the specified bound.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/net/libeth/cache.h | 66 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 66 insertions(+)
 create mode 100644 include/net/libeth/cache.h

diff --git a/include/net/libeth/cache.h b/include/net/libeth/cache.h
new file mode 100644
index 000000000000..bdb0c043ce61
--- /dev/null
+++ b/include/net/libeth/cache.h
@@ -0,0 +1,66 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2024 Intel Corporation */
+
+#ifndef __LIBETH_CACHE_H
+#define __LIBETH_CACHE_H
+
+#include <linux/cache.h>
+
+/**
+ * libeth_cacheline_group_assert - make sure cacheline group size is expected
+ * @type: type of the structure containing the group
+ * @grp: group name inside the struct
+ * @sz: expected group size
+ */
+#if defined(CONFIG_64BIT) && SMP_CACHE_BYTES == 64
+#define libeth_cacheline_group_assert(type, grp, sz)			      \
+	static_assert(offsetof(type, __cacheline_group_end__##grp) -	      \
+		      offsetofend(type, __cacheline_group_begin__##grp) ==    \
+		      (sz))
+#define __libeth_cacheline_struct_assert(type, sz)			      \
+	static_assert(sizeof(type) == (sz))
+#else /* !CONFIG_64BIT || SMP_CACHE_BYTES != 64 */
+#define libeth_cacheline_group_assert(type, grp, sz)			      \
+	static_assert(offsetof(type, __cacheline_group_end__##grp) -	      \
+		      offsetofend(type, __cacheline_group_begin__##grp) <=    \
+		      (sz))
+#define __libeth_cacheline_struct_assert(type, sz)			      \
+	static_assert(sizeof(type) <= (sz))
+#endif /* !CONFIG_64BIT || SMP_CACHE_BYTES != 64 */
+
+#define __libeth_cls1(sz1)	SMP_CACHE_ALIGN(sz1)
+#define __libeth_cls2(sz1, sz2)	(SMP_CACHE_ALIGN(sz1) + SMP_CACHE_ALIGN(sz2))
+#define __libeth_cls3(sz1, sz2, sz3)					      \
+	(SMP_CACHE_ALIGN(sz1) + SMP_CACHE_ALIGN(sz2) + SMP_CACHE_ALIGN(sz3))
+#define __libeth_cls(...)						      \
+	CONCATENATE(__libeth_cls, COUNT_ARGS(__VA_ARGS__))(__VA_ARGS__)
+
+/**
+ * libeth_cacheline_struct_assert - make sure CL-based struct size is expected
+ * @type: type of the struct
+ * @...: from 1 to 3 CL group sizes (read-mostly, read-write, cold)
+ *
+ * When a struct contains several CL groups, it's difficult to predict its size
+ * on different architectures. The macro instead takes sizes of all of the
+ * groups the structure contains and generates the final struct size.
+ */
+#define libeth_cacheline_struct_assert(type, ...)			      \
+	__libeth_cacheline_struct_assert(type, __libeth_cls(__VA_ARGS__));    \
+	static_assert(__alignof(type) >= SMP_CACHE_BYTES)
+
+/**
+ * libeth_cacheline_set_assert - make sure CL-based struct layout is expected
+ * @type: type of the struct
+ * @ro: expected size of the read-mostly group
+ * @rw: expected size of the read-write group
+ * @c: expected size of the cold group
+ *
+ * Check that each group size is expected and then do final struct size check.
+ */
+#define libeth_cacheline_set_assert(type, ro, rw, c)			      \
+	libeth_cacheline_group_assert(type, read_mostly, ro);		      \
+	libeth_cacheline_group_assert(type, read_write, rw);		      \
+	libeth_cacheline_group_assert(type, cold, c);			      \
+	libeth_cacheline_struct_assert(type, ro, rw, c)
+
+#endif /* __LIBETH_CACHE_H */
-- 
2.45.2

