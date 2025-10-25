Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 96FC4C0EEB1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Oct 2025 16:22:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 00D9283D95;
	Mon, 27 Oct 2025 15:22:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2OLEsS6rvJ0F; Mon, 27 Oct 2025 15:22:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C3CB3822F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761578519;
	bh=IKZzFH9baPhuiDV4/UyjYPxffM2N3XsDNJhdMtNChJA=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=D1g7LiMRR51EDbaNwaEeauaH74SN2Y6tAO5s9/E9Tz4Z+3COrQeW1tGSpgVbmsXA5
	 phO7JtsWZqJo1pVfWpPgoVS+Q46HEADSOFe9aUCepsWFJ4hEWK31Qllhil91a1LIGF
	 k3nN5wMQW8ZBj8I5Wcnbu3SX1ls8eXVtcViSniWzdCr9gx0aeAlaYdW76ypaTXB+G8
	 B2DIZvDzRp4bYCJ2YFgon9Znr9cJv85LKQ/9vTFpaR8bJdsZ1ONrCcZzjCqLX77KId
	 DNYiectEiX+s7FkvzoqvHqqg3yzygJQyeDwFvjCFFZ0e2J7vS+EKCSPftiXZudM8MY
	 0ZhXn0YY/HogQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C3CB3822F5;
	Mon, 27 Oct 2025 15:21:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1D91A976
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 20:53:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0382C60663
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 20:53:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tIxP5ryVoKM3 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Oct 2025 20:53:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=nathan@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3A5846060C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A5846060C
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3A5846060C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 20:53:42 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 8BE2C43DE7;
 Sat, 25 Oct 2025 20:53:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 677E7C113D0;
 Sat, 25 Oct 2025 20:53:37 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
Date: Sat, 25 Oct 2025 21:53:18 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251025-idpf-fix-arm-kcfi-build-error-v1-1-ec57221153ae@kernel.org>
References: <20251025-idpf-fix-arm-kcfi-build-error-v1-0-ec57221153ae@kernel.org>
In-Reply-To: <20251025-idpf-fix-arm-kcfi-build-error-v1-0-ec57221153ae@kernel.org>
To: Kees Cook <kees@kernel.org>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: Simon Horman <horms@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>, 
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>, 
 Sami Tolvanen <samitolvanen@google.com>, 
 Russell King <linux@armlinux.org.uk>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Michal Kubiak <michal.kubiak@intel.com>, linux-kernel@vger.kernel.org, 
 llvm@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=2120; i=nathan@kernel.org;
 h=from:subject:message-id; bh=k3f56oOKXrHPQQfnFbh//sCNF5j+f6kxvvopfboCJxQ=;
 b=owGbwMvMwCUmm602sfCA1DTG02pJDBl/Lc5InyyKcb3JcHTHf8mWDxptnkqzlkza4fp4wuf3C
 y70+sbs7ShlYRDjYpAVU2Spfqx63NBwzlnGG6cmwcxhZQIZwsDFKQATEYxgZLhgKXhcWan09CFZ
 rfM/z319Pnl1bPAMkYg83hl63neLNTIZ/lmsZ9aZkmEVs8JC9pVNn9NCf3O+vncMWzprc9f/3ea
 0iwsA
X-Developer-Key: i=nathan@kernel.org; a=openpgp;
 fpr=2437CB76E544CB6AB3D9DFD399739260CB6CB716
X-Mailman-Approved-At: Mon, 27 Oct 2025 15:21:57 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1761425621;
 bh=k3f56oOKXrHPQQfnFbh//sCNF5j+f6kxvvopfboCJxQ=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=gyBS+m3+QuJhhVlVHOUu0JiISZ/k5A2IXJFsl4NJpggJCKVvIjEa5DDaYcuanepEl
 ZX8qFwgLj5h05w3VNQIwz095yPKdIr0J5hR9EYXxYcccTZgWrEYO5mBRVxL5xjP1SO
 e1vM74f58O9uKTNpKGok29peiZRWauNITxgfFEv4bGO5LjmYkZjTGFSsRpyvTVywkm
 o8XZXwwutNJLzUUdXK8JQMrWlxwFwbJAgv7rVCE7Bd97fyfmilTCi84cM/+WbrgSaD
 NJiBenCNc79SH8VjATqKJUrXw9UEcHG5CxPFvfdcSjyz6Mpkkqd3DNIoEe58TCEw0a
 IWJ/jpi1hdY8Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=gyBS+m3+
Subject: [Intel-wired-lan] [PATCH 1/3] compiler_types: Introduce
 __nocfi_generic
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There are two different ways that LLVM can expand kCFI operand bundles
in LLVM IR: generically in the middle end or using an architecture
specific sequence when lowering LLVM IR to machine code in the backend.
The generic pass allows any architecture to take advantage of kCFI but
the expansion of these bundles in the middle end can mess with
optimizations that may turn indirect calls into direct calls when the
call target is known at compile time, such as after inlining.

Add __nocfi_generic, dependent on an architecture selecting
CONFIG_ARCH_USES_CFI_GENERIC_LLVM_PASS, to disable kCFI bundle
generation in functions where only the generic kCFI pass may cause
problems.

Link: https://github.com/ClangBuiltLinux/linux/issues/2124
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 arch/Kconfig                   | 7 +++++++
 include/linux/compiler_types.h | 6 ++++++
 2 files changed, 13 insertions(+)

diff --git a/arch/Kconfig b/arch/Kconfig
index 74ff01133532..61130b88964b 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -917,6 +917,13 @@ config ARCH_USES_CFI_TRAPS
 	  An architecture should select this option if it requires the
 	  .kcfi_traps section for KCFI trap handling.
 
+config ARCH_USES_CFI_GENERIC_LLVM_PASS
+	bool
+	help
+	  An architecture should select this option if it uses the generic
+	  KCFIPass in LLVM to expand kCFI bundles instead of architecture-specific
+	  lowering.
+
 config CFI
 	bool "Use Kernel Control Flow Integrity (kCFI)"
 	default CFI_CLANG
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index 59288a2c1ad2..1414be493738 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -461,6 +461,12 @@ struct ftrace_likely_data {
 # define __nocfi
 #endif
 
+#if defined(CONFIG_ARCH_USES_CFI_GENERIC_LLVM_PASS)
+# define __nocfi_generic	__nocfi
+#else
+# define __nocfi_generic
+#endif
+
 /*
  * Any place that could be marked with the "alloc_size" attribute is also
  * a place to be marked with the "malloc" attribute, except those that may

-- 
2.51.1

