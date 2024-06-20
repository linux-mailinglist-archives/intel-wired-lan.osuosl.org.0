Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 515BA9106E6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jun 2024 15:56:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3D2E3846F7;
	Thu, 20 Jun 2024 13:56:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Nu-ndO-3B-jL; Thu, 20 Jun 2024 13:56:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 442F18472B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718891789;
	bh=20EHaj1mmXJo9AzVfttQvIKTxKWVKvQGEQoKD1/CzzY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eqztvO67/toGt58qt/hznXsDZKTMs5jNg1vaY2l7Jc0dMHwKlOc2h4KtE1UldTou1
	 flQTy7TOjYnSaG48seSNoJXbPFpoii4E6DeLw9eDZDDRDYrXTX/J8pj+k6x0PgbW61
	 HKqJWhXAxpgOfQaK7ccWkohKi4p9fz199FQ30yB2y0bYK/WRjyEKJ1FCDaszZT2vBF
	 Qc5I222AdrGrZ28g3OWkcy9Ud71dajpeJN8NZzN06MQEY/Ly7thp0GOTJp5AAJEQM1
	 jyDnH4/qJm/fukVv8TwvgLd56L+HeiZI2H3fHzBsVN7rz99K3SvcCu/SllEsDZ9as5
	 rsRWuNcVEt0DQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 442F18472B;
	Thu, 20 Jun 2024 13:56:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C3F731BF315
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 13:56:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BD0EC42EE5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 13:56:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6XZ8lo__yy9m for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jun 2024 13:56:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4829742E6A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4829742E6A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4829742E6A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 13:56:26 +0000 (UTC)
X-CSE-ConnectionGUID: K8NdPg4YS3G/iYHyRztJpg==
X-CSE-MsgGUID: gR9N5vZeQfWhrRk04fqhQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11108"; a="15987790"
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="15987790"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2024 06:56:24 -0700
X-CSE-ConnectionGUID: C557Hqh0THe05/bEu5YgCg==
X-CSE-MsgGUID: 7LK4REJQQL6q5bxHxjlrlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="46772037"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa004.fm.intel.com with ESMTP; 20 Jun 2024 06:56:21 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 20 Jun 2024 15:53:34 +0200
Message-ID: <20240620135347.3006818-2-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240620135347.3006818-1-aleksander.lobakin@intel.com>
References: <20240620135347.3006818-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718891787; x=1750427787;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mwpCFI7BY9vBTW5d7y194ARYTbqj1TULr8pdoFCGRmY=;
 b=EGY+aiMxH5t0e21Lv6kUTkQsN7AXn3jlA0gJ3051IkC8Km7Vhv8E0tTe
 0Pi5+3/7j+mjrYOJm2fRQN0qKuT1Ym7a0ZIbT0AOupGs8xn+Ugg5YfApb
 0H/wZ+CntsYm9b6JcqK4ppjzY+4V+wDeY1qJasJx8Hg9miQ7SzZx4Oooc
 XRpQk/rAf2OBKAP7+Ch0kaIdtFirulRYfi44NFpbD0N5OL+UBZpbnOYEX
 thVbtl+0X5/JBHFiMC000Fwt53ERs+/Jt4VrZ/zBVKPLZDoHJIpuVI6o+
 kvqyMtMj4K5dhTnliJnueLYdKqwM6OrV9gW3ZE5uiQ8CJYviqQEiWmU59
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EGY+aiMx
Subject: [Intel-wired-lan] [PATCH iwl-next v2 01/14] cache: add
 __cacheline_group_{begin, end}_aligned() (+ couple more)
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

__cacheline_group_begin(), unfortunately, doesn't align the group
anyhow. If it is wanted, then you need to do something like

__cacheline_group_begin(grp) __aligned(ALIGN)

which isn't really convenient nor compact.
Add the _aligned() counterparts to align the groups automatically to
either the specified alignment (optional) or ``SMP_CACHE_BYTES``.
Note that the actual struct layout will then be (on x64 with 64-byte CL):

struct x {
	u32 y;				// offset 0, size 4, padding 56
	__cacheline_group_begin__grp;	// offset 64, size 0
	u32 z;				// offset 64, size 4, padding 4
	__cacheline_group_end__grp;	// offset 72, size 0
	__cacheline_group_pad__grp;	// offset 72, size 0, padding 56
	u32 w;				// offset 128
};

The end marker is aligned to long, so that you can assert the struct
size more strictly, but the offset of the next field in the structure
will be aligned to the group alignment, so that the next field won't
fall into the group it's not intended to.

Add __LARGEST_ALIGN definition and LARGEST_ALIGN() macro.
__LARGEST_ALIGN is the value to which the compilers align fields when
__aligned_largest is specified. Sometimes, it might be needed to get
this value outside of variable definitions. LARGEST_ALIGN() is macro
which just aligns a value to __LARGEST_ALIGN.
Also add SMP_CACHE_ALIGN(), similar to L1_CACHE_ALIGN(), but using
``SMP_CACHE_BYTES`` instead of ``L1_CACHE_BYTES`` as the former
also accounts L2, needed in some cases.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/linux/cache.h | 59 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 59 insertions(+)

diff --git a/include/linux/cache.h b/include/linux/cache.h
index 0ecb17bb6883..ca2a05682a54 100644
--- a/include/linux/cache.h
+++ b/include/linux/cache.h
@@ -13,6 +13,32 @@
 #define SMP_CACHE_BYTES L1_CACHE_BYTES
 #endif
 
+/**
+ * SMP_CACHE_ALIGN - align a value to the L2 cacheline size
+ * @x: value to align
+ *
+ * On some architectures, L2 ("SMP") CL size is bigger than L1, and sometimes,
+ * this needs to be accounted.
+ *
+ * Return: aligned value.
+ */
+#ifndef SMP_CACHE_ALIGN
+#define SMP_CACHE_ALIGN(x)	ALIGN(x, SMP_CACHE_BYTES)
+#endif
+
+/*
+ * ``__aligned_largest`` aligns a field to the value most optimal for the
+ * target architecture to perform memory operations. Get the actual value
+ * to be able to use it anywhere else.
+ */
+#ifndef __LARGEST_ALIGN
+#define __LARGEST_ALIGN		sizeof(struct { long x; } __aligned_largest)
+#endif
+
+#ifndef LARGEST_ALIGN
+#define LARGEST_ALIGN(x)	ALIGN(x, __LARGEST_ALIGN)
+#endif
+
 /*
  * __read_mostly is used to keep rarely changing variables out of frequently
  * updated cachelines. Its use should be reserved for data that is used
@@ -95,6 +121,39 @@
 	__u8 __cacheline_group_end__##GROUP[0]
 #endif
 
+/**
+ * __cacheline_group_begin_aligned - declare an aligned group start
+ * @GROUP: name of the group
+ * @...: optional group alignment
+ *
+ * The following block inside a struct:
+ *
+ *	__cacheline_group_begin_aligned(grp);
+ *	field a;
+ *	field b;
+ *	__cacheline_group_end_aligned(grp);
+ *
+ * will always be aligned to either the specified alignment or
+ * ``SMP_CACHE_BYTES``.
+ */
+#define __cacheline_group_begin_aligned(GROUP, ...)		\
+	__cacheline_group_begin(GROUP)				\
+	__aligned((__VA_ARGS__ + 0) ? : SMP_CACHE_BYTES)
+
+/**
+ * __cacheline_group_end_aligned - declare an aligned group end
+ * @GROUP: name of the group
+ * @...: optional alignment (same as was in __cacheline_group_begin_aligned())
+ *
+ * Note that the end marker is aligned to sizeof(long) to allow more precise
+ * size assertion. It also declares a padding at the end to avoid next field
+ * falling into this cacheline.
+ */
+#define __cacheline_group_end_aligned(GROUP, ...)		\
+	__cacheline_group_end(GROUP) __aligned(sizeof(long));	\
+	struct { } __cacheline_group_pad__##GROUP		\
+	__aligned((__VA_ARGS__ + 0) ? : SMP_CACHE_BYTES)
+
 #ifndef CACHELINE_ASSERT_GROUP_MEMBER
 #define CACHELINE_ASSERT_GROUP_MEMBER(TYPE, GROUP, MEMBER) \
 	BUILD_BUG_ON(!(offsetof(TYPE, MEMBER) >= \
-- 
2.45.2

