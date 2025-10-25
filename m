Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 85FB1C0EEA8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Oct 2025 16:22:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CEADE841EB;
	Mon, 27 Oct 2025 15:21:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6cem8hU3wRbW; Mon, 27 Oct 2025 15:21:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 38354841DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761578519;
	bh=3yl5ADTAgZ4qFPPfSsmp9DqkxB2aNEJ2RyJyGbf1Zm8=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ABXo+VEvkpeVlaz5oVVPasQ+rs/hkcUnnghInO15FSU9vwI9EnnftyZeQkPMCQMb5
	 C/2CDKcx0MBYQgxFoHIdawWfdH0GxF+IN2KTTP0ENNVaZaVxxOxrfo0RiagSglR4yw
	 VdXV0PXByVZGMiWxA+6FyQxbE1ANwyzMeIT9I27s1IERuGimea7jttPwTpcFyQVhq0
	 AFegJ1sQIEMF56q4LWAB527DqzaYfp6HBhaLInexN4Xhd2eV4he+a+ZIMehlbGJron
	 wYx2IJYzbZAv8PFKxcHS3xda3ZQbjFSmvMVM1Krm6oACMvSsHXRTDGaXCsC9xejNOL
	 cB5izLiyNBHDg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 38354841DF;
	Mon, 27 Oct 2025 15:21:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 858D2976
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 20:53:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 76EE360615
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 20:53:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tkRT7rfqXiJq for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Oct 2025 20:53:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=nathan@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C1C736060C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C1C736060C
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C1C736060C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 20:53:39 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 75459602E5;
 Sat, 25 Oct 2025 20:53:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E19D9C4CEF5;
 Sat, 25 Oct 2025 20:53:32 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
Date: Sat, 25 Oct 2025 21:53:17 +0100
Message-Id: <20251025-idpf-fix-arm-kcfi-build-error-v1-0-ec57221153ae@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAL04/WgC/x3MQQoCMQyF4auUrA3YajvoVcRFp001jM6UFEUov
 fsEF2/xwePv0EiYGlxNB6EvN95WhT0YSM+4Pgg5q8Ednbc6ZS1Y+IdR3rikwjh/+JWRRDbB4CP
 5S7DhNJ1BG1VIv//+7T7GDuPH3rVvAAAA
X-Change-ID: 20251025-idpf-fix-arm-kcfi-build-error-65ae59616374
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=939; i=nathan@kernel.org;
 h=from:subject:message-id; bh=rFP6/tMgv7qEPLocj8aUGISHZ+Qd8YkLgA3SOHA7IFg=;
 b=owGbwMvMwCUmm602sfCA1DTG02pJDBl/Lc6kLCj/wcq3yeGsWg7TjF1BU1OvzJSQmSEluq/5j
 HWb2Dr/jlIWBjEuBlkxRZbqx6rHDQ3nnGW8cWoSzBxWJpAhDFycAjARxxhGhpMGy3/Le1eG6FrY
 x++odOT0dJn48p5ImrV8U3D8r61Bbgx/+Lv3M71ZtCXF/VdhpWPpuyP58q4bnoSFhR9hYrlkFtP
 KCgA=
X-Developer-Key: i=nathan@kernel.org; a=openpgp;
 fpr=2437CB76E544CB6AB3D9DFD399739260CB6CB716
X-Mailman-Approved-At: Mon, 27 Oct 2025 15:21:57 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1761425616;
 bh=rFP6/tMgv7qEPLocj8aUGISHZ+Qd8YkLgA3SOHA7IFg=;
 h=From:Subject:Date:To:Cc:From;
 b=dO/6fv8UzBrVLHCd0fc5uz0cG4KMB4yZCCKfEv9PNfJyt84N4HvvFkr9SLnMqoDFq
 MC6eeGlHxKjdFusduqS7whF3+LI8uKHHteq3L9cWbYdyemGHfH0ZSATjn/+MON4nS+
 SGGq1Cu+x5RfhbSJy4JDd4k8QNud+Gl3MRmzbK3Ov/jHNuzYhE+y1BYrF3vbNNsq+Z
 VmnU+g43DmrJD1Yeb54OmFGrJsvhVL+6rzRnlCyQruroujbYpynmGyUkhljT/ulpWi
 Xeeaa19Wt57Ra1CCiMogevG+w3M2zt0PY0oPJYav6FKkRGvOhDbcTjcx4VqYVYJpKr
 0oc7OvhL9PEMA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=dO/6fv8U
Subject: [Intel-wired-lan] [PATCH 0/3] Resolve ARM kCFI build failure in
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

Hi all,

This series resolves a build failure that is seen in
drivers/net/ethernet/intel/idpf/xsk.c after commit 9705d6552f58 ("idpf:
implement Rx path for AF_XDP") in 6.18-rc1 with ARCH=arm and
CONFIG_CFI=y. See patch 3 for a simplified reproducer on top of
defconfig.

I think this could go via hardening or net.

---
Nathan Chancellor (3):
      compiler_types: Introduce __nocfi_generic
      ARM: Select ARCH_USES_CFI_GENERIC_LLVM_PASS
      libeth: xdp: Disable generic kCFI pass for libeth_xdp_tx_xmit_bulk()

 arch/Kconfig                   | 7 +++++++
 arch/arm/Kconfig               | 2 ++
 include/linux/compiler_types.h | 6 ++++++
 include/net/libeth/xdp.h       | 2 +-
 4 files changed, 16 insertions(+), 1 deletion(-)
---
base-commit: 211ddde0823f1442e4ad052a2f30f050145ccada
change-id: 20251025-idpf-fix-arm-kcfi-build-error-65ae59616374

Best regards,
--  
Nathan Chancellor <nathan@kernel.org>

