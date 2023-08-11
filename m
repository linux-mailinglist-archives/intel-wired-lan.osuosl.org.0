Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DB493778EBE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Aug 2023 14:11:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 42F6083F70;
	Fri, 11 Aug 2023 12:11:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 42F6083F70
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691755883;
	bh=rhleffjNprJlD3whmM6MxUxCPuieIWVhtLJFEeE3I3w=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6zBjSZYNCNGEMgyX7isX2hAsJnrGlSlaMD3Gmt0PFZ4sUtA70noEWd5OeoNG5UtAc
	 4aA4eNgnSqjxLIiYgIB+pZUVVNHM99m5iDwht5U6kZlUj7+/0Kcz2F5AcHfTQE51vZ
	 MCJGMoTVYfvwHgxqqd8Y3r+FrrWYThHmAL3ronTty8SRWI6yM0shkitsVlBFjEGGdA
	 NWCEMMwNNtRYGtIerCg/b+23ZNiICbQB/nz1zLEiLjFAQxJ8NUaJjpBqica06Tqm3k
	 Av8HD6AMXtV83DtJbDQGI5gF6LEeYaPlBv2lDx45zLRXiT3KSycRS8LoGgxVJsI8zl
	 HslMHyYIpZdBQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3lpHPjlHcblu; Fri, 11 Aug 2023 12:11:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0914383BB2;
	Fri, 11 Aug 2023 12:11:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0914383BB2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 854631BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 12:11:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B362860A9E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 12:11:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B362860A9E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LG1mh2C336AQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Aug 2023 12:11:12 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B3F5560BA5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 12:11:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B3F5560BA5
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="435557387"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="435557387"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2023 05:11:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="979222054"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="979222054"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga006.fm.intel.com with ESMTP; 11 Aug 2023 05:11:09 -0700
Received: from pelor.igk.intel.com (pelor.igk.intel.com [10.123.220.13])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 23021312F9;
 Fri, 11 Aug 2023 13:11:08 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: Kees Cook <keescook@chromium.org>,
	netdev@vger.kernel.org
Date: Fri, 11 Aug 2023 08:08:08 -0400
Message-Id: <20230811120814.169952-2-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230811120814.169952-1-przemyslaw.kitszel@intel.com>
References: <20230811120814.169952-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691755872; x=1723291872;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4rOsufvLPYdZXsrfd5kqWLR/VSdJZG4Hxu+Qp7SlvAo=;
 b=kUoA/pXo6Sbt5a+bs708usFBFrBuNPQ4osdlE88oeX6A76SCAcXEMUdF
 PkFuJicIJb4zIzuRX1hjj0t2wNF+Yn56I7tS8RPl7o+CMzorx72cu6bCS
 w/aQ7BXQ64fzXiyeHQ83aL6Jkh0WyLU04IMPQAQy90acGnrGdeMLbRk86
 8gsjNX3lCVRFR7JeuNZPJIdQY9C/P43y43IQjNHkpC8qQNKcC+Nc5bOey
 xyB8oAYlWN8pTYiocCult8X+nLdzgXPCeNTbYbQngFWDBJUKbr+TJoZ2y
 0POcpjJMQYM7O17ZQiCxm8sZAgCq0YFaKV4Vy28QXRiSdnJiQGWrjQ0JU
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kUoA/pXo
Subject: [Intel-wired-lan] [PATCH net-next v2 1/7] overflow: add
 DEFINE_FLEX() for on-stack allocs
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Steven Zou <steven.zou@intel.com>, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add DEFINE_FLEX() macro for on-stack allocations of structs with
flexible array member.

Expose __struct_size() macro outside of fortify-string.h, as it could be
used to read size of structs allocated by DEFINE_FLEX().
Move __member_size() alongside it.
-Kees

Using underlying array for on-stack storage lets us to declare
known-at-compile-time structures without kzalloc().

Actual usage for ice driver is in following patches of the series.

Co-developed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
v2: Kees: reuse __struct_size() instead of adding new macro
    (adding Kees as Co-dev here)
v1: change macro name; add macro for size read;
    accept struct type instead of ptr to it; change alignment;
---
 include/linux/compiler_types.h | 12 ++++++++++++
 include/linux/fortify-string.h |  4 ----
 include/linux/overflow.h       | 27 +++++++++++++++++++++++++++
 3 files changed, 39 insertions(+), 4 deletions(-)

diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index 547ea1ff806e..d880c1180de2 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -324,6 +324,18 @@ struct ftrace_likely_data {
 # define __realloc_size(x, ...)
 #endif
 
+/*
+ * When the size of an allocated object is needed, use the best available
+ * mechanism to find it. (For cases where sizeof() cannot be used.)
+ */
+#if __has_builtin(__builtin_dynamic_object_size)
+#define __struct_size(p)	__builtin_dynamic_object_size(p, 0)
+#define __member_size(p)	__builtin_dynamic_object_size(p, 1)
+#else
+#define __struct_size(p)	__builtin_object_size(p, 0)
+#define __member_size(p)	__builtin_object_size(p, 1)
+#endif
+
 #ifndef asm_volatile_goto
 #define asm_volatile_goto(x...) asm goto(x)
 #endif
diff --git a/include/linux/fortify-string.h b/include/linux/fortify-string.h
index da51a83b2829..1e7711185ec6 100644
--- a/include/linux/fortify-string.h
+++ b/include/linux/fortify-string.h
@@ -93,13 +93,9 @@ extern char *__underlying_strncpy(char *p, const char *q, __kernel_size_t size)
 #if __has_builtin(__builtin_dynamic_object_size)
 #define POS			__pass_dynamic_object_size(1)
 #define POS0			__pass_dynamic_object_size(0)
-#define __struct_size(p)	__builtin_dynamic_object_size(p, 0)
-#define __member_size(p)	__builtin_dynamic_object_size(p, 1)
 #else
 #define POS			__pass_object_size(1)
 #define POS0			__pass_object_size(0)
-#define __struct_size(p)	__builtin_object_size(p, 0)
-#define __member_size(p)	__builtin_object_size(p, 1)
 #endif
 
 #define __compiletime_lessthan(bounds, length)	(	\
diff --git a/include/linux/overflow.h b/include/linux/overflow.h
index f9b60313eaea..21a4410799eb 100644
--- a/include/linux/overflow.h
+++ b/include/linux/overflow.h
@@ -309,4 +309,31 @@ static inline size_t __must_check size_sub(size_t minuend, size_t subtrahend)
 #define struct_size_t(type, member, count)					\
 	struct_size((type *)NULL, member, count)
 
+/**
+ * DEFINE_FLEX() - Define a zeroed, on-stack, instance of @type structure with
+ * a trailing flexible array member.
+ *
+ * @type: structure type name, including "struct" keyword.
+ * @name: Name for a variable to define.
+ * @member: Name of the array member.
+ * @count: Number of elements in the array; must be compile-time const.
+ */
+#define DEFINE_FLEX(type, name, member, count)					\
+	union {									\
+		u8 bytes[struct_size_t(type, member, count)];			\
+		type obj;							\
+	} name##_u __aligned(_Alignof(type)) = {};				\
+	type *name = (type *)&name##_u
+
+/**
+ * const_flex_size() - Get size of on-stack instance of structure with
+ * a trailing flexible array member.
+ *
+ * @name: Name of the variable, the one defined by DEFINE_FLEX() macro above.
+ *
+ * Get size of @name, which is equivalent to struct_size(name, array, count),
+ * but does not require (repeating) last two arguments.
+ */
+#define const_flex_size(name)	__builtin_object_size(name, 1)
+
 #endif /* __LINUX_OVERFLOW_H */
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
