Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 36888C0EEAB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Oct 2025 16:22:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1959A610E9;
	Mon, 27 Oct 2025 15:22:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EoUH9bWudwn1; Mon, 27 Oct 2025 15:22:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5EE44610B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761578520;
	bh=BwAdxCHRgEQ+91R3lmIAM0trfHzgVfiaQ7nM5FiQFM8=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0RixpmnyUIF0gEsUeKbPoqJZ4KjvW7wtePYdEbDBohes3LoQfbr+F0EkwtsdGvjhd
	 G1ddSn38QOppgvaQWpxoGFxsrl+b9LNSwoTsUgpLb4JvuVOfT/GHCoAbFrDPbrsW6L
	 Jcw9br/HK0vRNT/oxAuzRrJGGEqah4qgOFv79S+wQpNx1Mao433CrgZ0/D1wdmTiHV
	 xmfVVVW+coVoKJGlgfV+0o23RMshsT7J7V7XlFQVDCBxdfuqFNjfmKJMRA+8pCaaRF
	 03Hyibh4BTabKzPuWb4irBmbx+o7U0tfPMaQWeUiYbJ9PAIt04wL4phNwKpWDLGiGo
	 2pn6yTWLe1jRw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5EE44610B6;
	Mon, 27 Oct 2025 15:22:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8B8A9976
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 20:53:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7C6C040825
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 20:53:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7FtuxLBYNm2w for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Oct 2025 20:53:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=nathan@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 80A1D40819
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 80A1D40819
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 80A1D40819
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 20:53:47 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 469FA602E6;
 Sat, 25 Oct 2025 20:53:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0286C4CEFF;
 Sat, 25 Oct 2025 20:53:41 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
Date: Sat, 25 Oct 2025 21:53:19 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251025-idpf-fix-arm-kcfi-build-error-v1-2-ec57221153ae@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1058; i=nathan@kernel.org;
 h=from:subject:message-id; bh=iG5SfyTk4AKapcKPPrgaFC/L53w+793p/xw4lohb8j4=;
 b=owGbwMvMwCUmm602sfCA1DTG02pJDBl/Lc7cXRGgEvFzhe+9sFOGP38axfW9tZlhLmOZX/NkW
 wwnw6SbHaUsDGJcDLJiiizVj1WPGxrOOct449QkmDmsTCBDGLg4BWAiySwM/wxDz1zd/XRjSMYZ
 vym50b0nP25112lec31i1Ha1lzW5idmMDF3XTz96kqbppmE8gT+FIdqm4Ne2c1cVVkeGynAsFN3
 FxQ4A
X-Developer-Key: i=nathan@kernel.org; a=openpgp;
 fpr=2437CB76E544CB6AB3D9DFD399739260CB6CB716
X-Mailman-Approved-At: Mon, 27 Oct 2025 15:21:57 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1761425625;
 bh=iG5SfyTk4AKapcKPPrgaFC/L53w+793p/xw4lohb8j4=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=tIOI0fBX3xZrYkIIJKOTTujgZFS5HWbD5Fq0jy1bprFv8lhHtqpaHaNXYfigNsuvV
 IPJSVSUUb/H19XVseECrJfWHff5FzANCf/bFsgYXSmZ/XitcJLQDCQGQ202ZyXySnC
 djE0aeNgokJhBAFjxVoNpURGUPu2DzKnoiu2vgAb900a+kKkBB0z2R6qGyQHX9QfRF
 1U4yvR2tstfL8mdlQBpehKXVDp/ifN51kZf6nVyfEZIRrNPsGSDhaEalZBTe+tnZ9h
 A+qqxJAg6ovg04sN7aHZT34rLlamKBuPYTeqC6s31CrnnGAbsnTjvE6oV5d2oD76aQ
 ctQrpfhR7nA/w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=tIOI0fBX
Subject: [Intel-wired-lan] [PATCH 2/3] ARM: Select
 ARCH_USES_CFI_GENERIC_LLVM_PASS
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

Prior to clang 22.0.0 [1], ARM did not have an architecture specific
kCFI bundle lowering in the backend, which may cause issues. Select
CONFIG_ARCH_USES_CFI_GENERIC_LLVM_PASS to enable use of __nocfi_generic.

Link: https://github.com/llvm/llvm-project/commit/d130f402642fba3d065aacb506cb061c899558de [1]
Link: https://github.com/ClangBuiltLinux/linux/issues/2124
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 arch/arm/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 2e3f93b690f4..4fb985b76e97 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -44,6 +44,8 @@ config ARM
 	select ARCH_USE_BUILTIN_BSWAP
 	select ARCH_USE_CMPXCHG_LOCKREF
 	select ARCH_USE_MEMTEST
+	# https://github.com/llvm/llvm-project/commit/d130f402642fba3d065aacb506cb061c899558de
+	select ARCH_USES_CFI_GENERIC_LLVM_PASS if CLANG_VERSION < 220000
 	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
 	select ARCH_WANT_GENERAL_HUGETLB
 	select ARCH_WANT_IPC_PARSE_VERSION

-- 
2.51.1

