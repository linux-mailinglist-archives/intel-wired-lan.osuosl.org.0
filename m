Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F5B92F75B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jul 2024 10:56:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6DAA3412B7;
	Fri, 12 Jul 2024 08:56:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qlIj4kCJz846; Fri, 12 Jul 2024 08:56:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 68A20412D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720774561;
	bh=4Z/Fz9ARX3TbHcqBtR1E6kdAR1Rn0Sr+B9M8f/oJ2vk=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=TH77y+77q6Y46T1/MIPbkNWB2sv+t3FTyRsS5h+3N3KdkF813LzFJZK3ZwI1ktpgP
	 kfUIQXujHmLtD6afYK09nBpxM3LstRi7JnhmRB8HwYRaqP0tTiPMy4TMXTC/pkq4yP
	 tEjutqvbIngSPQGQ69ETGTzMWbap5zZ+bVLHGMOHrYsh7XYmaIY7SnqBZBcuzrBgo5
	 TS2jtzdwMZBfthEAcWOxsFKvMr6puWLIs11yTyAGJGK2cQCg7234k4ewY8GQyvI25h
	 ruCTCqG1r3jFgc1hjXUZKj2MQgoj6F+yhHTNLfyvgEFAxAz5G3Yxda6epA7oWKjvN1
	 n0tV+lIK+8yfg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 68A20412D3;
	Fri, 12 Jul 2024 08:56:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E15561BF995
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2024 08:55:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DBB8B60B0E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2024 08:55:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L1qvYT1V0_Dk for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Jul 2024 08:55:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7E378608C3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E378608C3
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7E378608C3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jul 2024 08:55:56 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Fri, 12 Jul 2024 10:55:28 +0200
Message-Id: <20240711-b4-igb_zero_copy-v5-0-f3f455113b11@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIDvkGYC/x2N0QrCMAwAf2Xk2UA7JwN/RWQ0NdsCpR2p0+nYv
 xt8vIPjdqiswhWuzQ7KL6lSssHl1ECcQ54Y5WEMrWs713uP1KFMNHxZyxDL8kGi3oWz50huBMs
 oVEbSkONsYV5TMrkoj7L9PzeQd8LM2xPux/EDEjdwyIEAAAA=
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
X-Developer-Signature: v=1; a=openpgp-sha256; l=2983; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=bzZ/1VBPkM1Y2l73oHvsrDybWmcjoURQWVULOSP7hAQ=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBmkO+V+xXly1mMzX8r36JIFCPESwSq+6+l1mJNR
 4TYFZNWPkqJAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCZpDvlQAKCRDBk9HyqkZz
 gk+7EACInF4oC1+RbgHdj9yu93XqJE7Qx+bSmOJwzbZY6QG0fkzw9/sTQfXnj+QmNmeKHzAK3As
 fYCDb0dyi2cfglpFy2WS0MHSWPdzVkJmbtPS1gUHTF+w19nftS8on90te2olQaSxjeuJ7u91C20
 SMwXsXH8ErKsZSJ5Xethl3pPR49uDq3D8tDjVoW60LYwOxRVJ71v/VJMlqVT9gkaKVpmyhcGi8M
 PmZs9jWF61304AeI4XYFXq9oJ//dPT/ET6U6oN1p0nxcwsFfjgabgDIGx6PwWPcbpZaEwh2d9gQ
 5VFGnRnzq1PRmBI+MZit5xbiyWYhZWb9omsIHoKB/zgQOPORraZy5PgBdiEo66hi1pr4lPhI7y5
 CY2F7ill3v6Oa3PgZfmlhDtg4wgtgO4XsPMHzJslVsmuUdoUolcQssG0hknOmJTWH65zB0ezDYW
 13tfngMJ68bwwNB6gwR5+6hvo8oU/VaSurXryyY0JKbiE3Yhw+NA5L7AMJRyoAbS0WxCbQ1Ni8H
 XLPv7g8vltRspA2xxRxuvIKdYe2g/m8TCfGRnxzaZnHyhH8aLkKdHsScM2a+CJRWdSNIehSJHUR
 wzrDPJGGPX4UQc5N7V2gF5Ic9455Sw/fRxo3ob+rZrIBcrhEnJF4uVp78hQneu/CVk9aEe3bivD
 W9u8JDUX/GccYgA==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1720774552;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=4Z/Fz9ARX3TbHcqBtR1E6kdAR1Rn0Sr+B9M8f/oJ2vk=;
 b=um9lUo348lxFZFvB3wzvTPZJKIjJ2IjeQUu2BCS5DAlIkdAzGGHYxHutGER+8i2SGxMaGm
 rkEJyzH8yE0d/NKFK7MNbepB8O2Vc1GXpXnTLXENQ2LU5BUtHfwYKReTbvq3aEJsBy+ieP
 FV3kx8bzFbKIYwPZgFz0G+CrURyxg2MyN8qXxbMQEj4ljZVHXVYHYahKera26oAUzx3tWr
 c+LI9jCrKzRdY78XRdcYOYRJa3XcnN/BAby1kVKXRMnBh53f9KRDeW/skgkGNtDA9V1iIO
 QIS4HyMoNe6ue4myIH6i+aLYwEPoXOMuYppIxeMZ6HyMMykCBhsM0HuLgXKt8Q==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1720774552;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=4Z/Fz9ARX3TbHcqBtR1E6kdAR1Rn0Sr+B9M8f/oJ2vk=;
 b=+I5gGEvCnszFkumtMEYHEnq+kaNihomMmBESMr9BGswdGr0C7tc0UXKB7hKYMWLeKV7ba7
 gktKEr1/KbKbfGAQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=um9lUo34; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=+I5gGEvC
Subject: [Intel-wired-lan] [PATCH iwl-next v5 0/4] igb: Add support for
 AF_XDP zero-copy
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Sriram Yagnaraman <sriram.yagnaraman@ericsson.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Benjamin Steinke <benjamin.steinke@woks-audio.com>,
 Eric Dumazet <edumazet@google.com>,
 Sriram Yagnaraman <sriram.yagnaraman@est.tech>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is version 5 of the AF_XDP zero-copy support for igb. Since Sriram's
duties changed I am sending this instead. Additionally, I've tested this on
real hardware, Intel i210 [1].

Changes since v4:

 - Rebase to v6.10
 - Fix issue reported by kernel test robot
 - Provide napi_id for for xdp_rxq_info_reg() so that busy polling works
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
Sriram Yagnaraman (4):
      igb: prepare for AF_XDP zero-copy support
      igb: Introduce XSK data structures and helpers
      igb: add AF_XDP zero-copy Rx support
      igb: add AF_XDP zero-copy Tx support

 drivers/net/ethernet/intel/igb/Makefile   |   2 +-
 drivers/net/ethernet/intel/igb/igb.h      |  35 +-
 drivers/net/ethernet/intel/igb/igb_main.c | 189 ++++++++---
 drivers/net/ethernet/intel/igb/igb_xsk.c  | 522 ++++++++++++++++++++++++++++++
 4 files changed, 700 insertions(+), 48 deletions(-)
---
base-commit: 2a4183f864dad50f84edb6b67a2807a438f944fd
change-id: 20240711-b4-igb_zero_copy-bb70a31ecb0f

Best regards,
-- 
Kurt Kanzenbach <kurt@linutronix.de>

