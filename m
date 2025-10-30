Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C8BF9C1E2F5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Oct 2025 04:06:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 80CC641081;
	Thu, 30 Oct 2025 03:06:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MGFXncG1vw4w; Thu, 30 Oct 2025 03:06:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C52AD4107D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761793576;
	bh=VFuC8RfE70bgOZewA1Z1YdN5oNtLTuOQ25IAfcVzoiE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AkjohtuNJK2fTZLAE96HNYzOxOndTUFnFHm42D427uiVuzSRXoQV+WxuN7XG0RoLA
	 Xbb7rAWWKcLTrvELOT9TqR56QtPUmP6HRTnGXRnzxzSBHbMJ4HBDpZ/qdW95qP17++
	 W5qB4ItUjj4hl8xngRLpXkQ7JVHa3XCuLYSDHzrQZenhCOf6PRc27893MKJRX63Wz7
	 Qrq/bLm5MKhelGN0nLSwQmL0a3Kix6SmSQfwXWPNMA2L9ORVKLOsSIXgIVlqva0zIM
	 LDkaDGCe0xxu0mzKOC++ASJxphaJY6RzCnHC4cBdRWKIzzgQG6tQDsEhQdM0eIXLHh
	 zQcEyVM9D1Asg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C52AD4107D;
	Thu, 30 Oct 2025 03:06:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id C123DCD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Oct 2025 03:06:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A6FBE401C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Oct 2025 03:06:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xH-h107X2iye for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Oct 2025 03:06:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=kees@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B16DF4007A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B16DF4007A
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B16DF4007A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Oct 2025 03:06:14 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 3557343B20;
 Thu, 30 Oct 2025 03:06:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1EE2C4CEF7;
 Thu, 30 Oct 2025 03:06:13 +0000 (UTC)
From: Kees Cook <kees@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Nathan Chancellor <nathan@kernel.org>
Cc: Kees Cook <kees@kernel.org>, Simon Horman <horms@kernel.org>,
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>,
 Sami Tolvanen <samitolvanen@google.com>,
 Russell King <linux@armlinux.org.uk>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>, linux-kernel@vger.kernel.org,
 llvm@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Date: Wed, 29 Oct 2025 20:06:09 -0700
Message-Id: <176179356659.2479588.16940248582240491111.b4-ty@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251025-idpf-fix-arm-kcfi-build-error-v1-0-ec57221153ae@kernel.org>
References: <20251025-idpf-fix-arm-kcfi-build-error-v1-0-ec57221153ae@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1761793574;
 bh=dVUd0kxP8SBgNKarJK8Wzf0YKtUqqRpN45iifynlBCo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=G460pf5wZhF+5PaPtXWKUHL7xcNeYSTZq5hk994ffhXrjkGhrgreSpGNZyneEKfoD
 PwDjfzcQDKLl4mDUwnv0v9ccHu48LXdI+LxeCtNmvPCEEJbLlaZ5k/ZFATc9bxk/79
 sPPII1vhsbTRFwgdxKyQnXM61r0Kf2nMvvLB7v5ZWlquSgOxG3zVFqIBiRq6rX+8Ra
 Bb6lAPLQSaYbv/9J6r8ZAwC066QnJMnbmdK5pTmgaFEDRUdXWwBgrFtkAwDpwHRpZL
 RyxMPd7Gq4YechklQOWL+7lWM55HuaYxKL1P/QUz7dFcEL2F2C+7l2DQ+Ff9PmgkXg
 CnMEEcH/JeC3A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=G460pf5w
Subject: Re: [Intel-wired-lan] [PATCH 0/3] Resolve ARM kCFI build failure in
 idpf xsk.c
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

On Sat, 25 Oct 2025 21:53:17 +0100, Nathan Chancellor wrote:
> This series resolves a build failure that is seen in
> drivers/net/ethernet/intel/idpf/xsk.c after commit 9705d6552f58 ("idpf:
> implement Rx path for AF_XDP") in 6.18-rc1 with ARCH=arm and
> CONFIG_CFI=y. See patch 3 for a simplified reproducer on top of
> defconfig.
> 
> I think this could go via hardening or net.
> 
> [...]

Applied to for-linus/hardening, thanks!

[1/3] compiler_types: Introduce __nocfi_generic
      https://git.kernel.org/kees/c/39c89ee6e9c4
[2/3] ARM: Select ARCH_USES_CFI_GENERIC_LLVM_PASS
      https://git.kernel.org/kees/c/1ed9e6b1004f
[3/3] libeth: xdp: Disable generic kCFI pass for libeth_xdp_tx_xmit_bulk()
      https://git.kernel.org/kees/c/c57f5fee54df

Take care,

-- 
Kees Cook

