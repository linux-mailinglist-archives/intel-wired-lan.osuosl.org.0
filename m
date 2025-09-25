Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 891C0B9E594
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Sep 2025 11:30:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4619884002;
	Thu, 25 Sep 2025 09:30:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RIk1OD2b9bsF; Thu, 25 Sep 2025 09:30:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B37DC83C4B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758792652;
	bh=cJAfoFXsnMSQaqpBbrb6elyMNuhx6Q34NUfSudwkaMg=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=qMJfJrKGfglI+cY/iIdsXI2bmAflO+S7bGzRBGfN4xV2sCSNg6FEA31/XKxP1yerC
	 B+cimUhyvnj1BLQYWger63TEej/aYR/ImgICY/eCngsjpF55qMneiA16rAMWtTSnN8
	 btP2tAcxslGjk8xrYsjKySlYqygBqsLmUlXCkx0G5yRb+8wJE7buKStsHOSdKNPGfd
	 AZDvYnJmLRq5su38YqGRzgE+NurQDmy39y42QsquvPofRMEuacMgFYZlqONO9uYfiJ
	 yOfToD7V9b17KZi2hk4NLKDv2bKQv2uAQtHuhpCTVvJTxVHyqJRkHPF05XUugJxo9O
	 qZAKgRpFoZS0A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B37DC83C4B;
	Thu, 25 Sep 2025 09:30:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id F292812D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 09:30:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E485E83C3B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 09:30:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PRFHcdDSzYa3 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Sep 2025 09:30:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=lorenzo@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 48852836AE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 48852836AE
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 48852836AE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 09:30:50 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 7B38144F8B;
 Thu, 25 Sep 2025 09:30:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1B68C4CEF7;
 Thu, 25 Sep 2025 09:30:48 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Thu, 25 Sep 2025 11:30:32 +0200
Message-Id: <20250925-bpf-xdp-meta-rxcksum-v2-0-6b3fe987ce91@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALgL1WgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyjHQUlJIzE
 vPSU3UzU4B8JSMDI1MDSyNT3aSCNN2KlALd3NSSRN2iiuTs4tJcXUsDAzML01QjSwPLFCWg1oK
 i1LTMCrCx0UpBbs4KIF15qRUlSrG1tQAjnIsCdAAAAA==
X-Change-ID: 20250925-bpf-xdp-meta-rxcksum-900685e2909d
To: Donald Hunter <donald.hunter@gmail.com>, 
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, 
 Simon Horman <horms@kernel.org>, Alexei Starovoitov <ast@kernel.org>, 
 Daniel Borkmann <daniel@iogearbox.net>, 
 Jesper Dangaard Brouer <hawk@kernel.org>, 
 John Fastabend <john.fastabend@gmail.com>, 
 Stanislav Fomichev <sdf@fomichev.me>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>, 
 Andrii Nakryiko <andrii@kernel.org>, 
 Martin KaFai Lau <martin.lau@linux.dev>, 
 Eduard Zingerman <eddyz87@gmail.com>, Song Liu <song@kernel.org>, 
 Yonghong Song <yonghong.song@linux.dev>, KP Singh <kpsingh@kernel.org>, 
 Hao Luo <haoluo@google.com>, Jiri Olsa <jolsa@kernel.org>, 
 Shuah Khan <shuah@kernel.org>, 
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, linux-kselftest@vger.kernel.org, 
 Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1758792649;
 bh=ydju+tpSwXw5mzfVJvHmui6phZSUI1Dnie6FljNls88=;
 h=From:Subject:Date:To:Cc:From;
 b=Vhqk1UrdoyWEdlEKcvryz+wZQuc1+abq6h07yJqir7W87dZkiYbEiaz/C5XZb0YZP
 OoTi1Hodp8DeX/x1JeOliZ+dGLy+sHZIL++5Te5+L7t3yHxvxzhjt6G86cEOV8RfSk
 WGFRbp3C+Q6n9o17jlHnofIz22n4XKuz4MX9DwMVxX6ojaVKC/SaWjdZ9sTpkBSSmu
 Py8s7V2+OfWzk8AJCw5FGIfvbNwihu5RoR2MYczC3sd1e7lhp4Jlh/zWmzLtdnFEZP
 Lm7TQr6BBLxZFuQneJesq+7R2TPRFbcT9z146mnkOeY2OSHRRAg9iq+Ba7ooe56sc4
 nRX1T5Fsqi98w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Vhqk1Urd
Subject: [Intel-wired-lan] [PATCH RFC bpf-next v2 0/5] Add the the
 capability to load HW RX checsum in eBPF programs
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

Introduce bpf_xdp_metadata_rx_checksum() kfunc in order to load the HW
RX cheksum results in the eBPF program binded to the NIC.
Implement xmo_rx_checksum callback for veth and ice drivers.

Please note ice support changes are just compile-tested at the moment.

---
Changes in RFC v2:
- Squash patch 1/6 and 2/6
- Introduce enum xdp_checksum definitions
- Rework ice support to reuse ice_rx_csum codebase

---
Lorenzo Bianconi (5):
      netlink: specs: Add XDP RX checksum capability to XDP metadata specs
      net: veth: Add xmo_rx_checksum callback to veth driver
      net: ice: Add xmo_rx_checksum callback
      selftests/bpf: Add selftest support for bpf_xdp_metadata_rx_checksum
      selftests/bpf: Add bpf_xdp_metadata_rx_checksum support to xdp_hw_metadat prog

 Documentation/netlink/specs/netdev.yaml            |   5 +
 drivers/net/ethernet/intel/ice/ice_base.c          |   1 +
 drivers/net/ethernet/intel/ice/ice_txrx.h          |   1 +
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c      | 125 +++++++++++++--------
 drivers/net/veth.c                                 |  20 ++++
 include/net/xdp.h                                  |  14 +++
 net/core/xdp.c                                     |  29 +++++
 .../selftests/bpf/prog_tests/xdp_metadata.c        |   7 ++
 .../testing/selftests/bpf/progs/xdp_hw_metadata.c  |   7 ++
 tools/testing/selftests/bpf/progs/xdp_metadata.c   |   1 +
 tools/testing/selftests/bpf/xdp_hw_metadata.c      |  27 +++++
 tools/testing/selftests/bpf/xdp_metadata.h         |  13 +++
 12 files changed, 206 insertions(+), 44 deletions(-)
---
base-commit: 5e3fee34f626a8cb8715f5b5409416c481714ebf
change-id: 20250925-bpf-xdp-meta-rxcksum-900685e2909d

Best regards,
-- 
Lorenzo Bianconi <lorenzo@kernel.org>

