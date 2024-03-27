Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD9B88E5FD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Mar 2024 15:30:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8DB1F81FEB;
	Wed, 27 Mar 2024 14:30:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QVtOKZRruTRE; Wed, 27 Mar 2024 14:30:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A126981FC9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711549830;
	bh=bhtrMxRIBaBdE7YxwV2QkkpGLkKtGlJ4PAWik8sHAL8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mzC6VrQR8y1EAFbMZLhfSZxDIfcjEmBOvb+UErS5Y18yccakFEALhm5udXnriwOA7
	 G6NKJtRTNTT6UlyZ3ZHVyxfnP1IZq+3asFbpHb4jo41+3KyC2aqdLRebJY/caPUCdo
	 Lt93OaYjdyX+dqTvwRpkbaI3vz+IMQwG19BplfjGwdkGPNneI1RVzZOq2jLswb0EI2
	 fWPj3BnLOr+c8ZOzVxBSW7X0NsRhFM+jlNLpaNai3WnRN0lu73+1w/XSBhcclwzx1C
	 SpCHrVisB4YUgCR65pDln02Tqdm2IgFHz7may5kHOFO7Yxpr3rZ66wTJtHO+c7FGfo
	 OepvczaDR4FvQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A126981FC9;
	Wed, 27 Mar 2024 14:30:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BDD3E1BF279
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 14:30:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B34E581FC7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 14:30:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rw-8UR6vDvq3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Mar 2024 14:30:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3AF1181F88
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3AF1181F88
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3AF1181F88
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 14:30:21 +0000 (UTC)
X-CSE-ConnectionGUID: 5XkUH/aWSyukDcoatrx3Aw==
X-CSE-MsgGUID: 1KFZCkgMSAKTKh0Y9xDCiA==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6592526"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; 
   d="scan'208";a="6592526"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 07:23:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="20973064"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa004.fm.intel.com with ESMTP; 27 Mar 2024 07:23:13 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Wed, 27 Mar 2024 15:22:39 +0100
Message-ID: <20240327142241.1745989-2-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240327142241.1745989-1-aleksander.lobakin@intel.com>
References: <20240327142241.1745989-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711549821; x=1743085821;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7vqygDDKbWmFw/FAY/rPhdZQEFODtjXCpRmC6ygQulQ=;
 b=ABoQ932FpObMU3svpOu8YlDknHUDY8c19Bh+muYElSSsyK2F3+5LX7yr
 BH2JTJ3Qk25d31lfnT7AYP9jY0XvaYP26jK/6eGNMIrtpbqoU1IBIp+2R
 L9mdtzT539e/vx4YGgJ1AIID/9LLte6N7ZD2Si/FW7MgbnK0Z+NakC/EZ
 EJP7yFxjwxAiLLOj9rvj5TIOsDP6p+DYapYe7FYhw8grmETXKWgoWQ6Ki
 pYD/RZNnI50jLBuvfHV25Qu9zBwiC2bfwDWWVFxdfHXYDlYbMndOBiBZ3
 /hgrmTL5FNLrVBRNXKYzQkvD3ZevkApAyxY5jxd+hL/lNguwDg6hNImu7
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ABoQ932F
Subject: [Intel-wired-lan] [PATCH net-next v2 1/3] compiler_types: add
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
Acked-by: Gustavo A. R. Silva <gustavoars@kernel.org>
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

