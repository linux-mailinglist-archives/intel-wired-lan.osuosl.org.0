Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B96379172D
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Sep 2023 14:34:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 085B040953;
	Mon,  4 Sep 2023 12:34:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 085B040953
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693830877;
	bh=OhGFG25JicobmtRQu5rcvuIgbXDjyCKJfWtvcBsOeQM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tnrq91EYxItuhYycdCWoQ8pQilK3H8P+hwzs+h+RTeD7VbukoLUxOhr9Gt4lKqVSy
	 ty+tXu8uAl0jGE5bNE5SnNcL2VfwVgYPHnyk2Jofi9wkQNTJUmXCpKyf3K3GSin0EH
	 S7H59xx9nvRYNGFStbTnyIDjHC1+8jUG+DnbDCVlhBabCc0vtpNRpL3sVTDSUjSNN4
	 3REhxmGwSWp27BGXg2V/igAvmLKRdQhZgGReSP8JxR3AjN1y7XnQb0ndsKGk13yVaU
	 deD3JIBaF4kfB7hrxZb4QhVCnhT+uIhXirKMBdPiRJcb5lfJ+d6Zp1Xo+wPU/6P+LA
	 Xd5foRkIq5ufA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7zadAUqoG54n; Mon,  4 Sep 2023 12:34:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4B33140876;
	Mon,  4 Sep 2023 12:34:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4B33140876
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 274AC1BF2B4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 12:34:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C9EAC4020B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 12:34:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C9EAC4020B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KNl3AL34P589 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Sep 2023 12:34:20 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ABC6F40AB6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Sep 2023 12:34:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ABC6F40AB6
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="373977134"
X-IronPort-AV: E=Sophos;i="6.02,226,1688454000"; d="scan'208";a="373977134"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2023 05:34:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="740749744"
X-IronPort-AV: E=Sophos;i="6.02,226,1688454000"; d="scan'208";a="740749744"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga002.jf.intel.com with ESMTP; 04 Sep 2023 05:34:16 -0700
Received: from pelor.igk.intel.com (pelor.igk.intel.com [10.123.220.13])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id B6A2A33E93;
 Mon,  4 Sep 2023 13:34:14 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: netdev@vger.kernel.org
Date: Mon,  4 Sep 2023 08:31:01 -0400
Message-Id: <20230904123107.116381-2-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230904123107.116381-1-przemyslaw.kitszel@intel.com>
References: <20230904123107.116381-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693830860; x=1725366860;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GLCtZy2q8d+I9Afwmb1nrr2Y95bhv3oUqLsaLvdHSI4=;
 b=JRbzzqA4zBq0IPmd6msIp2C8+cfNgsUFTtI/lCjfePBc/0gkQWPMHQTN
 Cspg17eOsPOXl+RbnOsn1VjKtB0F/udnx2mD69u8BxWmG/7iiYBRoNYtt
 oaAgvThCkI8akwBgEuwHuPICbW9hNUVigsHR8sm8HA6oRlLvQJNrMQ3Zj
 G38eTGIX8UIn8PytM6EL/smjWuia4wQO8qrzEmcPDh1ebIS9Gubyc2rh7
 rj0euWCS3zmeZZZsRe3W4H0PNMhGBUohAED1MZIoJegk/wbi2rIhMEh50
 L5BxF8K89Fci7H/gzB3rVHOWfchqMhT7M/SxBM5vly2GgtBwVTCV475Wr
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JRbzzqA4
Subject: [Intel-wired-lan] [RFC net-next v4 1/7] overflow: add DEFINE_FLEX()
 for on-stack allocs
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
Cc: Kees Cook <keescook@chromium.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Steven Zou <steven.zou@intel.com>, Anthony Nguyen <anthony.l.nguyen@intel.com>,
 David Laight <David.Laight@ACULAB.COM>, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>
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

Missing __has_builtin() workaround is moved up to serve also assembly
compilation with m68k-linux-gcc, see [1].
Error was (note the .S file extension):
In file included from ../include/linux/linkage.h:5,
                 from ../arch/m68k/fpsp040/skeleton.S:40:
../include/linux/compiler_types.h:331:5: warning: "__has_builtin" is not defined, evaluates to 0 [-Wundef]
  331 | #if __has_builtin(__builtin_dynamic_object_size)
      |     ^~~~~~~~~~~~~
../include/linux/compiler_types.h:331:18: error: missing binary operator before token "("
  331 | #if __has_builtin(__builtin_dynamic_object_size)
      |                  ^

[1] https://lore.kernel.org/netdev/202308112122.OuF0YZqL-lkp@intel.com/
Co-developed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
Acked-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
Prev versions, [v3] with Kees ACK:
[v3] https://lore.kernel.org/netdev/202308161337.975C93F163@keescook

v4: David: add _Static_assert to give better error message
    for non-const counts; add one more lvl of macros to ease up adding
    non-zeroing (or other) variant in the future;
v3: remove old macro needlessly kept in v2; fix build warning;
    reword doc comment;
v2: Kees: reuse __struct_size() instead of adding new macro
    (adding Kees as Co-dev here);
v1: change macro name; add macro for size read;
    accept struct type instead of ptr to it; change alignment;
---
 include/linux/compiler_types.h | 32 ++++++++++++++++++++-----------
 include/linux/fortify-string.h |  4 ----
 include/linux/overflow.h       | 35 ++++++++++++++++++++++++++++++++++
 3 files changed, 56 insertions(+), 15 deletions(-)

diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index c523c6683789..6f1ca49306d2 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -2,6 +2,15 @@
 #ifndef __LINUX_COMPILER_TYPES_H
 #define __LINUX_COMPILER_TYPES_H
 
+/*
+ * __has_builtin is supported on gcc >= 10, clang >= 3 and icc >= 21.
+ * In the meantime, to support gcc < 10, we implement __has_builtin
+ * by hand.
+ */
+#ifndef __has_builtin
+#define __has_builtin(x) (0)
+#endif
+
 #ifndef __ASSEMBLY__
 
 /*
@@ -134,17 +143,6 @@ static inline void __chk_io_ptr(const volatile void __iomem *ptr) { }
 # define __preserve_most
 #endif
 
-/* Builtins */
-
-/*
- * __has_builtin is supported on gcc >= 10, clang >= 3 and icc >= 21.
- * In the meantime, to support gcc < 10, we implement __has_builtin
- * by hand.
- */
-#ifndef __has_builtin
-#define __has_builtin(x) (0)
-#endif
-
 /* Compiler specific macros. */
 #ifdef __clang__
 #include <linux/compiler-clang.h>
@@ -352,6 +350,18 @@ struct ftrace_likely_data {
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
index f9b60313eaea..7b5cf4a5cd19 100644
--- a/include/linux/overflow.h
+++ b/include/linux/overflow.h
@@ -309,4 +309,39 @@ static inline size_t __must_check size_sub(size_t minuend, size_t subtrahend)
 #define struct_size_t(type, member, count)					\
 	struct_size((type *)NULL, member, count)
 
+/**
+ * _DEFINE_FLEX() - helper macro for DEFINE_FLEX() family.
+ * Enables caller macro to pass (different) initializer.
+ *
+ * @type: structure type name, including "struct" keyword.
+ * @name: Name for a variable to define.
+ * @member: Name of the array member.
+ * @count: Number of elements in the array; must be compile-time const.
+ * @initializer: initializer expression (could be empty for no init).
+ */
+#define _DEFINE_FLEX(type, name, member, count, initializer)			\
+	_Static_assert(__builtin_constant_p(count),				\
+		       "onstack flex array members require compile-time const count"); \
+	union {									\
+		u8 bytes[struct_size_t(type, member, count)];			\
+		type obj;							\
+	} name##_u initializer;							\
+	type *name = (type *)&name##_u
+
+/**
+ * DEFINE_FLEX() - Define an on-stack instance of structure with a trailing
+ * flexible array member.
+ *
+ * @type: structure type name, including "struct" keyword.
+ * @name: Name for a variable to define.
+ * @member: Name of the array member.
+ * @count: Number of elements in the array; must be compile-time const.
+ *
+ * Define a zeroed, on-stack, instance of @type structure with a trailing
+ * flexible array member.
+ * Use __struct_size(@name) to get compile-time size of it afterwards.
+ */
+#define DEFINE_FLEX(type, name, member, count)			\
+	_DEFINE_FLEX(type, name, member, count, = {})
+
 #endif /* __LINUX_OVERFLOW_H */
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
