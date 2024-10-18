Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 481569A38C0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Oct 2024 10:40:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ED89B4014C;
	Fri, 18 Oct 2024 08:40:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gIEfAvU6ylNs; Fri, 18 Oct 2024 08:40:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 36E7340123
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729240811;
	bh=JuSQo+cAJ+ATgR0G5iF19ucUo7nc6NMgvSPCdLVt+qE=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ojHC6sILJ+zNoZaSKldyf5Ei2lrp/pYPwufxSWYFR/6MDLGj0sjI4gQYaZ8eNTdgI
	 uTnUEbETgrNfxcVR4/4QgCADbRA55mzmbUdmzB+fEOUAVziHVKRIiYTXtOyT0fwlN6
	 mI3LcHD47xxyaAMH570RacEISjF9ne339hlb/ptHVf6Ksj2SE2X8vaI4goD+xz5u5q
	 cVsxClHmt8YVfu7Y/TGsLFaLh0uvDmLchztvSghGLm79sXxH821ADQ8ItE7q0WUI+6
	 3/qEQjnM7EmGFCVNQQfUTq9yUL/g8Gn9K8cas9Eg3LgC3gxx7EKOpBjiIcoDoFXMlC
	 DiC/iO42SaCoQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 36E7340123;
	Fri, 18 Oct 2024 08:40:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C70E42804
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 08:40:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A239A80BAA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 08:40:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EjmvVMnQCJsi for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Oct 2024 08:40:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3BA3180BA9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3BA3180BA9
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3BA3180BA9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 08:40:08 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Fri, 18 Oct 2024 10:39:56 +0200
Message-Id: <20241018-b4-igb_zero_copy-v9-0-da139d78d796@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANweEmcC/4XOy2rDMBAF0F8JWldFD+uRrvofJQRJHsUDRgqS4
 zoJ/vcKL0opLl3OXObceZIKBaGSt8OTFJixYk5tOL4cSBhcugDFvs1EMNExwzn1HcWLPz+g5HP
 I1zv13jAnOQTPImln3lWgvrgUhnaYbuPYltcCEZet54Pg50gTLBM5tWTAOuVy3x6Y1Zb/3TUry
 miUsVOKc+k5fx8x3aaSEy6vPWzgrP9DdEM6H722xjTE7iHmG+GMmR3ENERIpbTW1vVB7yH2B7L
 7iW2IlVaLaIR2R/iNrOv6BY3+ms6iAQAA
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, 
 Daniel Borkmann <daniel@iogearbox.net>, 
 Jesper Dangaard Brouer <hawk@kernel.org>, 
 John Fastabend <john.fastabend@gmail.com>, 
 Richard Cochran <richardcochran@gmail.com>, 
 Sriram Yagnaraman <sriram.yagnaraman@ericsson.com>, 
 Benjamin Steinke <benjamin.steinke@woks-audio.com>, 
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 bpf@vger.kernel.org, Sriram Yagnaraman <sriram.yagnaraman@est.tech>, 
 Kurt Kanzenbach <kurt@linutronix.de>
X-Developer-Signature: v=1; a=openpgp-sha256; l=4617; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=Jr8FAjEHF8/useGU3Xm5g8JlQRy0EXS1ErSG02j6z7I=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBnEh7h0+BOcUkujVXhKF4HPDiOqZKOIRTo82/mQ
 69RcMPe556JAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCZxIe4QAKCRDBk9HyqkZz
 ghZ9EACVMJbyYoK3NSo2AtvGdWxmZU8fTGpBJXipDJmliW/1/CXOZsM77/WlSfeK4t4uMDqdtX7
 T/DhaYtTKoIc4zfH1jZAN81ZSX+26BnBpCgcDgx3zhWcU1lpA8VP54Tasw/bB0vzjPfTQ0SvrJn
 D80BZxROsX7YamN+Cil5iNrkM7ltmexR5cZ7f+P1lJ7pCCVvsF2wKhLUesbBAAI4dlFsQaAAJJz
 mavkCRRYNz6ROQmIGwFFuHrK3+FmA7oFRNQx0CXVfPr/GZnhrhvHvKQoSicOMQgK1iQgGtjtZ7S
 /xFEyHdFKiMrIN0M5ExeCYu0qkJs1MpcDMAwxoBrhGYbSTCnwF8MGdoRMmsxzLemgkC9s/HbbTK
 ymnNOltIZx/L1ImOFdpryygLG8035Csd+BojAD/IP97SaHAiBlQ3kQHpy/GsoWbqd5VZaKtHRqZ
 iqznD3xSvR0cW/qNq8YJ5nlbO/WGWzMz/NDVbtctXl5urK9dliArjc97XtSPchJhxKOp6eIKuEE
 ix19QgPQLDgRkZPTD7QME2ctysic4slnfvl1m+OHWPO6Dm8kXXgX3mlJStvR0GVn79fv39NMNSQ
 HLjSvJAYAVlqDmEDFTrzk466whfFGocpPAuCnLNsUc6dbJiyIqku1OnZuFagniDgRDA3saxB4jy
 jtGL4T8gQ5gqw8Q==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1729240804;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=JuSQo+cAJ+ATgR0G5iF19ucUo7nc6NMgvSPCdLVt+qE=;
 b=zxL2kmxn25piCC1vI5Kb6qrSg1hq0hkSA4H9HIB2koHtUxYKB/o9CkfVcsYvDj4Bg4nNKm
 J7Ai66U9wbDq15taNSuXNWbPwvGxACBPg8X+SGeHSSLo52sh1a/f+Kr1yK74hoPfrFFObF
 EwyRIj8epvZV4OFflHytubwSGvaOupV7GBHDpg4B3s0BKsYPjX9tckHVmRo3PjQC62xdBa
 /0TZgzB47vULYZqRbatfRHCEbaQaAgexv3KnnxEC7gCPx/WOVNUWYbHOaeqH65yi+pomjk
 9zrJHzVxMzA/c2eSSsBdnQgHyyY1/nqrQ+k/0+IKCO5pQtmVjYtpnSYJPs3whQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1729240804;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=JuSQo+cAJ+ATgR0G5iF19ucUo7nc6NMgvSPCdLVt+qE=;
 b=MENeXR8pNiZ+CSI+dV22Gn6nAYm6pANyJM7QqBRMo0wrtqKA5Jz6fmHiHib9ZlCTVKbKiq
 1x2WOwAm2r69O2BQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=zxL2kmxn; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=MENeXR8p
Subject: [Intel-wired-lan] [PATCH iwl-next v9 0/6] igb: Add support for
 AF_XDP zero-copy
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

This is version v8 of the AF_XDP zero-copy support for igb. Since Sriram's
duties changed I am sending this instead. Additionally, I've tested this on
real hardware, Intel i210 [1].

Changes since v8:

 - Collect tags
 - Pass read once xsk_pool pointer to igb_xmit_zc() (Maciej)
 - Change return type of igb_run_xdp_zc() from skb* to int (Maciej)
 - Link to v8: https://lore.kernel.org/r/20241011-b4-igb_zero_copy-v8-0-83862f726a9e@linutronix.de

Changes since v7:

 - Collect tags
 - Split patches (Maciej)
 - Use read once xsk_pool pointer in igb_alloc_rx_buffers_zc() (Maciej)
 - Add FIXME about RS bit in Tx path (Maciej)
 - Link to v7: https://lore.kernel.org/r/20241007-b4-igb_zero_copy-v7-0-23556668adc6@linutronix.de

Changes since v6:

 - Rebase to v6.12
 - Collect tags
 - Merged first patch via -net
 - Inline small functions (Maciej)
 - Read xdp_prog only once per NAPI cycle (Maciej)
 - Use u32 for stack based variables (Maciej)
 - Link to v6: https://lore.kernel.org/r/20240711-b4-igb_zero_copy-v6-0-4bfb68773b18@linutronix.de

Changes since v5:

 - Rebase to 6.11
 - Fix set-but-unused variable warnings
 - Split first patches (Maciej)
 - Add READ/WRITE_ONCE() for xsk_pool and xdp_prog (Maciej)
 - Add synchronize_net() (Maciej)
 - Remove IGB_RING_FLAG_AF_XDP_ZC (Maciej)
 - Add NETDEV_XDP_ACT_XSK_ZEROCOPY to last patch (Maciej)
 - Update Rx ntc handling (Maciej)
 - Move stats update and xdp finalize to common functions (Maciej)
 - "Likelyfy" XDP_REDIRECT case (Maciej)
 - Check Tx disabled and carrier in igb_xmit_zc() (Maciej)
 - RCT (Maciej)
 - Link to v5: https://lore.kernel.org/r/20240711-b4-igb_zero_copy-v5-0-f3f455113b11@linutronix.de

Changes since v4:

 - Rebase to v6.10
 - Fix issue reported by kernel test robot
 - Provide napi_id for xdp_rxq_info_reg() so that busy polling works
 - Set olinfo_status in igb_xmit_zc() so that frames are transmitted

Link to v4: https://lore.kernel.org/intel-wired-lan/20230804084051.14194-1-sriram.yagnaraman@est.tech/

[1] - https://github.com/Linutronix/TSN-Testbench/tree/main/tests/busypolling_i210

Original cover letter:

The first couple of patches adds helper funcctions to prepare for AF_XDP
zero-copy support which comes in the last couple of patches, one each
for Rx and TX paths.

As mentioned in v1 patchset [0], I don't have access to an actual IGB
device to provide correct performance numbers. I have used Intel 82576EB
emulator in QEMU [1] to test the changes to IGB driver.

The tests use one isolated vCPU for RX/TX and one isolated vCPU for the
xdp-sock application [2]. Hope these measurements provide at the least
some indication on the increase in performance when using ZC, especially
in the TX path. It would be awesome if someone with a real IGB NIC can
test the patch.

AF_XDP performance using 64 byte packets in Kpps.
Benchmark:	XDP-SKB		XDP-DRV		XDP-DRV(ZC)
rxdrop		220		235		350
txpush		1.000		1.000		410
l2fwd 		1.000		1.000		200

AF_XDP performance using 1500 byte packets in Kpps.
Benchmark:	XDP-SKB		XDP-DRV		XDP-DRV(ZC)
rxdrop		200		210		310
txpush		1.000		1.000		410
l2fwd 		0.900		1.000		160

[0]: https://lore.kernel.org/intel-wired-lan/20230704095915.9750-1-sriram.yagnaraman@est.tech/
[1]: https://www.qemu.org/docs/master/system/devices/igb.html
[2]: https://github.com/xdp-project/bpf-examples/tree/master/AF_XDP-example

v3->v4:
- NULL check buffer_info in igb_dump before dereferencing (Simon Horman)

v2->v3:
- Avoid TX unit hang when using AF_XDP zero-copy by setting time_stamp
  on the tx_buffer_info
- Fix uninitialized nb_buffs (Simon Horman)

v1->v2:
- Use batch XSK APIs (Maciej Fijalkowski)
- Follow reverse xmas tree convention and remove the ternary operator
  use (Simon Horman)

---
Kurt Kanzenbach (1):
      igb: Add XDP finalize and stats update functions

Sriram Yagnaraman (5):
      igb: Remove static qualifiers
      igb: Introduce igb_xdp_is_enabled()
      igb: Introduce XSK data structures and helpers
      igb: Add AF_XDP zero-copy Rx support
      igb: Add AF_XDP zero-copy Tx support

 drivers/net/ethernet/intel/igb/Makefile   |   2 +-
 drivers/net/ethernet/intel/igb/igb.h      |  58 ++-
 drivers/net/ethernet/intel/igb/igb_main.c | 248 ++++++++-----
 drivers/net/ethernet/intel/igb/igb_xsk.c  | 562 ++++++++++++++++++++++++++++++
 4 files changed, 787 insertions(+), 83 deletions(-)
---
base-commit: 283f6fbb370dc1adf455be5d5ac41d58d215fd8b
change-id: 20240711-b4-igb_zero_copy-bb70a31ecb0f

Best regards,
-- 
Kurt Kanzenbach <kurt@linutronix.de>

