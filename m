Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D84E8D1D64
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2024 15:49:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A795181A81;
	Tue, 28 May 2024 13:49:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eqWXJUMpVSBX; Tue, 28 May 2024 13:49:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9F6F181BA8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716904164;
	bh=YT6aTrV/985yq3O0hI86eInqu/mnXrlV3oyoYmXsTIU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xCRY03C+TEZShy5/gtf+ECFFXj1iPguJ9Nx+69QJWWnlzpqYzhpo+2r78qc+FS7fP
	 cvimAYiQNQ8s3USJfjOD0CothksM8Oxx8egX38a8cQ1HjafvKh5SQFodtDyCSb1mSs
	 0d2ehihGJiXWv7tMSb8U0HamefkaiVSRZu2RU8BF9cbs2F3aeF2w4NlkwPhr419tqs
	 SCW+EXlNw3CfQcjNy/OYprgC4GvSWo4WD9gGCdlkXePzlUmq/4A0Gv8lwXUsZTSzXK
	 SIVcTW1VCJCDzNRhGCZ0ngHCZaqbzkQOckabmlyREUfgDAzIbzRL/RvZ/EKaGVEgQj
	 H4n9YbSxSMuDg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9F6F181BA8;
	Tue, 28 May 2024 13:49:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 76B5D1D2873
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 13:49:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6345E60841
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 13:49:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wiU9IbdQSk48 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2024 13:49:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6DD0360784
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6DD0360784
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6DD0360784
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 13:49:21 +0000 (UTC)
X-CSE-ConnectionGUID: lRKyss+gTUKu6aENsrcfHA==
X-CSE-MsgGUID: QRUk3DQ3ST68pHeqz8iT7A==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13436981"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="13436981"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 06:49:21 -0700
X-CSE-ConnectionGUID: dJ9fxTzCQgGL5WEjCDNJpg==
X-CSE-MsgGUID: s3kPPNK/SAyeJolb1vTazw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="35577394"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa008.jf.intel.com with ESMTP; 28 May 2024 06:49:18 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 28 May 2024 15:48:35 +0200
Message-ID: <20240528134846.148890-2-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240528134846.148890-1-aleksander.lobakin@intel.com>
References: <20240528134846.148890-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716904162; x=1748440162;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0IFvzSRs4SBJ/8TliqJ0oinnzSDDG3rnCZiHPjpYM6E=;
 b=S8fC57C4t9hm4RX/jw7/VlTiA8kzaEZVT8ikyc5/m+tyMsc8IcGaOWaI
 uKSEoJg6kCFzvf9oKhUEXV/CxTSCb9W9JoANpEQhd43k82q62p1XH0Z6v
 6/YM9n3hFUYaEWNnGvPdwHKvIZGCQyQnAnF8hLIazgjZe32LWMrO0L7+I
 Lzf2FA7V6keJhuT/bA60/s83Esh4NBjuAiA0CL5GCKE4aYMIa3tUpA8vc
 uFXosqbZYOSyPzYGlpM5dIZKkH+nn8RcPNCelRwdOuFdn+C+X/WHmYh8X
 fEc2Fp+4Da/cyiGpC1+QDry4OjL3M7jTUkL25DYhHbSt2U8E44UeTJ6NJ
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=S8fC57C4
Subject: [Intel-wired-lan] [PATCH iwl-next 01/12] libeth: add cacheline /
 struct alignment helpers
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
Cc: Mina Almasry <almasrymina@google.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Alexander Lobakin <aleksander.lobakin@intel.com>,
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
 scripts/kernel-doc         |   1 +
 include/net/libeth/cache.h | 100 +++++++++++++++++++++++++++++++++++++
 2 files changed, 101 insertions(+)
 create mode 100644 include/net/libeth/cache.h

diff --git a/scripts/kernel-doc b/scripts/kernel-doc
index 95a59ac78f82..d0cf9a2d82de 100755
--- a/scripts/kernel-doc
+++ b/scripts/kernel-doc
@@ -1155,6 +1155,7 @@ sub dump_struct($$) {
         $members =~ s/\bstruct_group_attr\s*\(([^,]*,){2}/STRUCT_GROUP(/gos;
         $members =~ s/\bstruct_group_tagged\s*\(([^,]*),([^,]*),/struct $1 $2; STRUCT_GROUP(/gos;
         $members =~ s/\b__struct_group\s*\(([^,]*,){3}/STRUCT_GROUP(/gos;
+        $members =~ s/\blibeth_cacheline_group\s*\(([^,]*,)/struct { } $1; STRUCT_GROUP(/gos;
         $members =~ s/\bSTRUCT_GROUP(\(((?:(?>[^)(]+)|(?1))*)\))[^;]*;/$2/gos;
 
         my $args = qr{([^,)]+)};
diff --git a/include/net/libeth/cache.h b/include/net/libeth/cache.h
new file mode 100644
index 000000000000..5579240913d2
--- /dev/null
+++ b/include/net/libeth/cache.h
@@ -0,0 +1,100 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* Copyright (C) 2024 Intel Corporation */
+
+#ifndef __LIBETH_CACHE_H
+#define __LIBETH_CACHE_H
+
+#include <linux/cache.h>
+
+/* ``__aligned_largest`` is architecture-dependent. Get the actual alignment */
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
+	__cacheline_group_end(grp) __aligned(sizeof(long))
+
+/**
+ * libeth_cacheline_group - declare a cacheline-aligned field group
+ * @grp: name of the group (usually 'read_mostly', 'read_write', or 'cold')
+ * @...: struct fields inside the group
+ *
+ * Note that the whole group is cacheline-aligned, but the end marker is
+ * aligned to long, so that you pass the (almost) actual field size sum to
+ * the assertion macros below instead of CL-aligned values.
+ * Each cacheline group must be described in struct's kernel-doc.
+ */
+#define libeth_cacheline_group(grp, ...)				   \
+	struct_group(grp,						   \
+		__libeth_cacheline_group_begin(grp);			   \
+		__VA_ARGS__						   \
+		__libeth_cacheline_group_end(grp);			   \
+	)
+
+/**
+ * libeth_cacheline_group_assert - make sure cacheline group size is expected
+ * @type: type of the structure containing the group
+ * @grp: group name inside the struct
+ * @sz: expected group size
+ */
+#if defined(CONFIG_64BIT) && SMP_CACHE_BYTES == 64
+#define libeth_cacheline_group_assert(type, grp, sz)			   \
+	static_assert(offsetof(type, __cacheline_group_end__##grp) -	   \
+		      offsetofend(type, __cacheline_group_begin__##grp) == \
+		      (sz))
+#define __libeth_cacheline_struct_assert(type, sz)			   \
+	static_assert(sizeof(type) == (sz))
+#else /* !CONFIG_64BIT || SMP_CACHE_BYTES != 64 */
+#define libeth_cacheline_group_assert(type, grp, sz)			   \
+	static_assert(offsetof(type, __cacheline_group_end__##grp) -	   \
+		      offsetofend(type, __cacheline_group_begin__##grp) <= \
+		      (sz))
+#define __libeth_cacheline_struct_assert(type, sz)			   \
+	static_assert(sizeof(type) <= (sz))
+#endif /* !CONFIG_64BIT || SMP_CACHE_BYTES != 64 */
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
+#define libeth_cacheline_struct_assert(type, ...)			   \
+	__libeth_cacheline_struct_assert(type, __libeth_cls(__VA_ARGS__)); \
+	static_assert(__alignof(type) >= __LIBETH_LARGEST_ALIGN)
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
+#define libeth_cacheline_set_assert(type, ro, rw, c)			   \
+	libeth_cacheline_group_assert(type, read_mostly, ro);		   \
+	libeth_cacheline_group_assert(type, read_write, rw);		   \
+	libeth_cacheline_group_assert(type, cold, c);			   \
+	libeth_cacheline_struct_assert(type, ro, rw, c)
+
+#endif /* __LIBETH_CACHE_H */
-- 
2.45.1

