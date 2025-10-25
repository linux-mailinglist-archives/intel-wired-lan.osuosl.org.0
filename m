Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC30C0EEB5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Oct 2025 16:22:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CE874841EC;
	Mon, 27 Oct 2025 15:22:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RMSNFB9xqwpD; Mon, 27 Oct 2025 15:22:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 03CAE841F4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761578521;
	bh=/N/oLqkGW3BMgjpSmw/8uAUR56fVILDSc5y0jXf1qy0=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=syBbtP2Rj9N80VlF7cI7M5XXmQsUMY3/ynwjjlp9jjdXe9Rmn5oyE9zP9XUYKVkVg
	 NHA/N6LmXQXqPLuGAZ5pqXxsqoKo5BHbNPcokOpQaRsH+lm7S9Wz6FPhWWLhg+7X6t
	 wNa6DX7YnOpYxgfubPUyecLWt3nj4dwxn6xakwhwQZfR208vOqYm79IwDVbVnFQZHA
	 sPClldGZnvNT4V4TE0MiQjJRFeIJF++eviAW4z/pylhv4LBHQVjQZhxhzH9b6u2Dqt
	 zQNb8Wx+DH3KvQjV1Xn5h6K/x2xUdVSpQnbJidi926G9ygLB0PBJHGAXkNXd0IPYnX
	 EsgsN6nQfVskg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 03CAE841F4;
	Mon, 27 Oct 2025 15:22:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B987E43F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 20:53:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AB78240834
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 20:53:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cxz2c2f5SkMM for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Oct 2025 20:53:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=nathan@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B173E40819
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B173E40819
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B173E40819
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 20:53:51 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id BA291602EB;
 Sat, 25 Oct 2025 20:53:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6576AC4CEFB;
 Sat, 25 Oct 2025 20:53:46 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
Date: Sat, 25 Oct 2025 21:53:20 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251025-idpf-fix-arm-kcfi-build-error-v1-3-ec57221153ae@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2425; i=nathan@kernel.org;
 h=from:subject:message-id; bh=Mat9VxZHBL0yR1NJE0Sr7s9tFOz/Ujx/ASRcrsLo2u4=;
 b=owGbwMvMwCUmm602sfCA1DTG02pJDBl/Lc4s8byy2+zW+2tnI17aCb7y78nm1vC4yCC7xrr22
 K2NnbP9O0pZGMS4GGTFFFmqH6seNzScc5bxxqlJMHNYmUCGMHBxCsBEVt9h+B/6c9+7XWH/52jz
 y2bfy3zF/i3juG9i2YSqQJGdfM58/uyMDMt92Iu7Ah++Mld6tpGp2/hLEPse18vWllvakzwfrHT
 U4AUA
X-Developer-Key: i=nathan@kernel.org; a=openpgp;
 fpr=2437CB76E544CB6AB3D9DFD399739260CB6CB716
X-Mailman-Approved-At: Mon, 27 Oct 2025 15:21:57 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1761425630;
 bh=Mat9VxZHBL0yR1NJE0Sr7s9tFOz/Ujx/ASRcrsLo2u4=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=DzboqHNR6b7YAK/AUFIyjPlywlnGFoSVpIJamZ9O5dnKDJg8Imsrvq7i7iInHUJlC
 YuokKw1U2HEcROCUm2Jk/L4o65LXzgoFCXxpetdbAWeICJ01FujcA0wr6ZVJTMbHG3
 Muu2VovKrAV6hjuQSCLmfzU9tXwfuiG0nZsaBm0kdz300LONEUlvacAnqSMCgi0Q+s
 M/ChilFU/ewTw529F/2z8UEEldjxkze9lzkGOII6ExkIqFYE+tGmBjgRwEla+nkwXB
 XQWP3pThD1esuOMry27jV9gPBoSU0cAM1pq85WyXg++E3Ymk3ndg1smOSnUHRydYt/
 7yO6yHGiMtUMQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=DzboqHNR
Subject: [Intel-wired-lan] [PATCH 3/3] libeth: xdp: Disable generic kCFI
 pass for libeth_xdp_tx_xmit_bulk()
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

When building drivers/net/ethernet/intel/idpf/xsk.c for ARCH=arm with
CONFIG_CFI=y using a version of LLVM prior to 22.0.0, there is a
BUILD_BUG_ON failure:

  $ cat arch/arm/configs/repro.config
  CONFIG_BPF_SYSCALL=y
  CONFIG_CFI=y
  CONFIG_IDPF=y
  CONFIG_XDP_SOCKETS=y

  $ make -skj"$(nproc)" ARCH=arm LLVM=1 clean defconfig repro.config drivers/net/ethernet/intel/idpf/xsk.o
  In file included from drivers/net/ethernet/intel/idpf/xsk.c:4:
  include/net/libeth/xsk.h:205:2: error: call to '__compiletime_assert_728' declared with 'error' attribute: BUILD_BUG_ON failed: !__builtin_constant_p(tmo == libeth_xsktmo)
    205 |         BUILD_BUG_ON(!__builtin_constant_p(tmo == libeth_xsktmo));
        |         ^
  ...

libeth_xdp_tx_xmit_bulk() indirectly calls libeth_xsk_xmit_fill_buf()
but these functions are marked as __always_inline so that the compiler
can turn these indirect calls into direct ones and see that the tmo
parameter to __libeth_xsk_xmit_fill_buf_md() is ultimately libeth_xsktmo
from idpf_xsk_xmit().

Unfortunately, the generic kCFI pass in LLVM expands the kCFI bundles
from the indirect calls in libeth_xdp_tx_xmit_bulk() in such a way that
later optimizations cannot turn these calls into direct ones, making the
BUILD_BUG_ON fail because it cannot be proved at compile time that tmo
is libeth_xsktmo.

Disable the generic kCFI pass for libeth_xdp_tx_xmit_bulk() to ensure
these indirect calls can always be turned into direct calls to avoid
this error.

Closes: https://github.com/ClangBuiltLinux/linux/issues/2124
Fixes: 9705d6552f58 ("idpf: implement Rx path for AF_XDP")
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 include/net/libeth/xdp.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/net/libeth/xdp.h b/include/net/libeth/xdp.h
index bc3507edd589..898723ab62e8 100644
--- a/include/net/libeth/xdp.h
+++ b/include/net/libeth/xdp.h
@@ -513,7 +513,7 @@ struct libeth_xdp_tx_desc {
  * can't fail, but can send less frames if there's no enough free descriptors
  * available. The actual free space is returned by @prep from the driver.
  */
-static __always_inline u32
+static __always_inline __nocfi_generic u32
 libeth_xdp_tx_xmit_bulk(const struct libeth_xdp_tx_frame *bulk, void *xdpsq,
 			u32 n, bool unroll, u64 priv,
 			u32 (*prep)(void *xdpsq, struct libeth_xdpsq *sq),

-- 
2.51.1

