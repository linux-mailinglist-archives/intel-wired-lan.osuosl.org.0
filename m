Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79BE388C992
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Mar 2024 17:42:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2EB2541555;
	Tue, 26 Mar 2024 16:42:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OdaaCQlN4OFt; Tue, 26 Mar 2024 16:42:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 458EB40196
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711471323;
	bh=+3u80osllA5bXqBjW+TfyLjU+e/Biv5uQy+ppjZ3NtE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vamkGOksBJ+nT2CgSLzpyPvN3P0OYSbd9e2q/8dM8Ai1fc/PWY2hCS460Z1RLFs91
	 nMpECfCWL8u4ccM1XfLcneBtsskwgz4PrbJCqH9MOHKyJgzpy0zT3nnqO028RXaPr3
	 3+eycDczRtLRatQrGBVBcQRmkZG9t5xfYCQk4bE4X7wKqMhdwCW8PISyUX0RAoLmA3
	 /83mq50HTGG7woDGIOrtxkjmaIwxigBB++KtHXt3wbyjgtmZkL3oo8lZBwPRKs41pp
	 oFid/fUp57GDhhVgEN41miCbnssb4J+faZnAGbmj6+L4fXG8An8Fv8e2cVhiTBi+EL
	 plx7QS5+hfJaA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 458EB40196;
	Tue, 26 Mar 2024 16:42:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F29C61BF364
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 16:42:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EA16860ABE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 16:41:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W0oh8Jv6_4_B for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Mar 2024 16:41:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4677A605DE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4677A605DE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4677A605DE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 16:41:59 +0000 (UTC)
X-CSE-ConnectionGUID: 1yVD7NLPTEmMOidBAhHQLA==
X-CSE-MsgGUID: aJb6AhmKQ7qNdvZNdWFU8g==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="24023307"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="24023307"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 09:41:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="20667393"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa003.jf.intel.com with ESMTP; 26 Mar 2024 09:41:45 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Tue, 26 Mar 2024 17:41:14 +0100
Message-ID: <20240326164116.645718-2-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240326164116.645718-1-aleksander.lobakin@intel.com>
References: <20240326164116.645718-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711471319; x=1743007319;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WzwSFT39ppUt+G6VUM5qkC+LZ2l/47JC71a7MRgYP54=;
 b=DCIx1zgSW0D15XM2zWiKQIfPV1SR6JqlAhfN0+CBewZu1t4sxab5HbJ2
 ElCqFyuypR11btLuN5IKDvLw+jNPE8CJwRUeEDXBmb2NfV9bUvIWCnajp
 cJCX9GV0EaIw9xH1j0cXlfARgq4alkmdbtJ3QfvK2t5Qh7CHbA9tee71Z
 5vdAH6+rCHFj8ZQ/Jmpg2J8OX66lJivSsPgzRPHFtZ/83F0lmKaQz/9Fx
 NYoCUQvYXcjuoI3ESYu5tqQFf/O2eRyJPpXqytID9fvvnLjccrCZInyrO
 Q3GgsEjvcVlDDeFEG5DzAvOLEbYRvRab3zl7L1di2zi4JVBd2uKXrstrw
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DCIx1zgS
Subject: [Intel-wired-lan] [PATCH net-next 1/3] compiler_types: add
 Endianness-dependent __counted_by_{le, be}
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
Cc: Kees Cook <keescook@chromium.org>, netdev@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, linux-kernel@vger.kernel.org,
 Nathan Chancellor <nathan@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 Simon Horman <horms@kernel.org>, nex.sw.ncis.osdt.itp.upstreaming@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Some structures contain flexible arrays at the end and the counter for
them, but the counter has explicit Endianness and thus __counted_by()
can't be used directly.

To increase test coverage for potential problems without breaking
anything, introduce __counted_by_{le,be}() defined depending on
platform's Endianness to either __counted_by() when applicable or noop
otherwise.
Maybe it would be a good idea to introduce such attributes on compiler
level if possible, but for now let's stop on what we have.

Acked-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 Documentation/conf.py          |  2 ++
 scripts/kernel-doc             |  1 +
 include/linux/compiler_types.h | 11 +++++++++++
 3 files changed, 14 insertions(+)

diff --git a/Documentation/conf.py b/Documentation/conf.py
index d148f3e8dd57..0c2205d536b3 100644
--- a/Documentation/conf.py
+++ b/Documentation/conf.py
@@ -75,6 +75,8 @@ if major >= 3:
             "__rcu",
             "__user",
             "__force",
+            "__counted_by_le",
+            "__counted_by_be",
 
             # include/linux/compiler_attributes.h:
             "__alias",
diff --git a/scripts/kernel-doc b/scripts/kernel-doc
index 967f1abb0edb..1474e95dbe4f 100755
--- a/scripts/kernel-doc
+++ b/scripts/kernel-doc
@@ -1143,6 +1143,7 @@ sub dump_struct($$) {
         $members =~ s/\s*$attribute/ /gi;
         $members =~ s/\s*__aligned\s*\([^;]*\)/ /gos;
         $members =~ s/\s*__counted_by\s*\([^;]*\)/ /gos;
+        $members =~ s/\s*__counted_by_(le|be)\s*\([^;]*\)/ /gos;
         $members =~ s/\s*__packed\s*/ /gos;
         $members =~ s/\s*CRYPTO_MINALIGN_ATTR/ /gos;
         $members =~ s/\s*____cacheline_aligned_in_smp/ /gos;
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index 2abaa3a825a9..a29ba6ef1e27 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -282,6 +282,17 @@ struct ftrace_likely_data {
 #define __no_sanitize_or_inline __always_inline
 #endif
 
+/*
+ * Apply __counted_by() when the Endianness matches to increase test coverage.
+ */
+#ifdef __LITTLE_ENDIAN
+#define __counted_by_le(member)	__counted_by(member)
+#define __counted_by_be(member)
+#else
+#define __counted_by_le(member)
+#define __counted_by_be(member)	__counted_by(member)
+#endif
+
 /* Do not trap wrapping arithmetic within an annotated function. */
 #ifdef CONFIG_UBSAN_SIGNED_WRAP
 # define __signed_wrap __attribute__((no_sanitize("signed-integer-overflow")))
-- 
2.44.0

