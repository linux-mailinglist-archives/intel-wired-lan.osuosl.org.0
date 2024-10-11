Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 625CD999F8F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Oct 2024 11:01:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 01DD3415A5;
	Fri, 11 Oct 2024 09:01:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WBwbwElvjeZb; Fri, 11 Oct 2024 09:01:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2FC9E415A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728637275;
	bh=SNoU83pdmMYp5IKr04g1xQTk3F9nU+Iqgxe0aJZi9iw=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=T75XJLU7Qpo7CKOW+VfYOPyFd15silGN4MdLC1Rd8Y7jvPMzn9YtQ0LxevYVmYhCq
	 CWfTFj5IvIcB0vcdWq99aRTWd/k5wDrj1hr1IAkG5T76XhGZddimU+6zIFIiHYnJqr
	 kpiaq7+MbVY6uFEMoc9a7HdtipFCsFER8iTe2i4Inq7a4DpFzezorrv1xUd60wZN6H
	 UKVAqM9YlR1D4lV3gjlI6O3xcJHc/mI4Ren/SA5eu/+AmFNZMsRqCaonMzyy5BdIte
	 8vwe/mudtOZeVaGqN9CcfzAFQkQRbXhmcSpZlqtaTWPknRUjV50gsybKGAFa2bTJpU
	 lC7ExsQYEdiqw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2FC9E415A1;
	Fri, 11 Oct 2024 09:01:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 786E21BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 09:01:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5E10E415A3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 09:01:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kEdfEWbEgTFK for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Oct 2024 09:01:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6FBB041554
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6FBB041554
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6FBB041554
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 09:01:11 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Fri, 11 Oct 2024 11:00:58 +0200
Message-Id: <20241011-b4-igb_zero_copy-v8-0-83862f726a9e@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAErpCGcC/4XOwWrDMAwG4FcpPs/DTmI77NT3GKNYjtwIgl3sN
 E1b8u4TOewwOnb8JfT9eoqKhbCKj8NTFFyoUk4c+reDCKNPZ5Q0cBaNajrltJbQSTrD6YEln0K
 +3CWAU77VGEBFwWfgK0ooPoWRD9N1mnh4KRhp3Xs+Bd0mmXCdxRdvRqpzLvf9gcXs+7+7FiOVj
 G3sjNG6Ba2PE6XrXHKi9X3AHVzsf4hlpIMItneOkf4V4n4QrZR7gThGmtYYa23vh2B/I9u2fQO
 NyWupXQEAAA==
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
X-Developer-Signature: v=1; a=openpgp-sha256; l=4346; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=zRsBZmcR44mwRdEcxQ8uNtRRLKAB0Wf+n8rpm6sYX0Q=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBnCOlS3eky7C00qRl6tH9wz1qVg4PJXePyuWaMd
 MUF7SjV9OOJAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCZwjpUgAKCRDBk9HyqkZz
 gjJgD/9qenkSprkR07E3a9KWjoJg4Nli8NZaKH4dZPtW4a2pFkYcFLwGF3QXHqfNKzqyKmeLpNW
 gKhQCEbkIay0f/qY1+P0FasHeie+gFvqUFHkHV60UTn4FtDpY5KvITidNnGr0jOlEcPXmzpbHCb
 9/O/sGav/A8zj+Wa9rrcWCs85QOKj2bodTNw4HyockPjzaKnzD4apuLi0ca+2cscRBjUkLgdWuh
 PtnQS4rIJ5INJ+Y+lfzLYqYVQ853Q9mzs3jysmmRv++bH9CCSfImgzhxKyqwXk+fDXqhtRxzNlL
 SG6o0iaa/gyLrOyX93qtiPhc2RnoXz83cdH64gq2Uj+JG/gT/ZtVlENFozODk3hiK4oMV5spsus
 m+jNoDC9X47x8Ig9Q+xcntYvZH9d3cRs3BakQrWJv6Pw2plDKCYlp3IA+Pr8WsavSm1HPOqcGYc
 pRneUcSdD05fNS6P6rkxlvhQ2TTZDTitVRDrUTwfMMcrhj3MuT5HoO1yp+x2Gdp14ZEx7hjb2hM
 kM0/LwykJck8pezscrfiJ7QoXslCE/ug4NwpRNLUarTjG21Q0XF0AdxsjB0V895lAJ+IGiyGvPZ
 MTlMw1FMxGoKoTqsQSXW9Qyk/qbbn0XPgU5xVLPH5Z2tV8l8FssYS9iuNvo1bTIBAkBydbEa5rS
 dhJBsscAFVoCZqg==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1728637269;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=SNoU83pdmMYp5IKr04g1xQTk3F9nU+Iqgxe0aJZi9iw=;
 b=ooNSTFEP6Ppu0CV2vMF1T4rqCPDatCZV82WtOtEimdBd4Ce5B+FwmdH6AiWt0nSJ4MggKz
 +WNE8czKRWGaCFISZ1Ay7sAIVLhVYwr/PDhBtczcH/XmIfXJqlNrQfB4Fw+4c5HiSiXlpk
 MM1qO/PiOCVX3LpooC6mOq/E66iMMutUufmwXLQoxMM/F8d56KdzZgF7B8S/nSwPR+k7Qx
 1qXefdUeTN99sSSSnPQmquxemsQBOGS5JySDz7c0GWwQvJ7pxmtKd74LKlSPtH5EJT1MeY
 KPRy4ntfUuV3eZexBzpbU5AM0SgM2QNbDFXLdQMvlxZ2pqii0XKBZ7tMphpOzA==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1728637269;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=SNoU83pdmMYp5IKr04g1xQTk3F9nU+Iqgxe0aJZi9iw=;
 b=i1LeZAFiJQYCBjQcewW0IA/jA2nuHfkFZ/Om+K3Cx7lxV2/Bed3MRIYOwzhLSKwI0Z6NnR
 UqjGcPCKZLM/AgCA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=ooNSTFEP; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=i1LeZAFi
Subject: [Intel-wired-lan] [PATCH iwl-next v8 0/6] igb: Add support for
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
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

This is version v8 of the AF_XDP zero-copy support for igb. Since Sriram's
duties changed I am sending this instead. Additionally, I've tested this on
real hardware, Intel i210 [1].

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
 drivers/net/ethernet/intel/igb/igb_xsk.c  | 567 ++++++++++++++++++++++++++++++
 4 files changed, 792 insertions(+), 83 deletions(-)
---
base-commit: f5cae3d7f24df1e8ebcc8b5890a655fa151f3461
change-id: 20240711-b4-igb_zero_copy-bb70a31ecb0f

Best regards,
-- 
Kurt Kanzenbach <kurt@linutronix.de>

