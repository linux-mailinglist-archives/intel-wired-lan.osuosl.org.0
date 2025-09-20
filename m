Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 49944B8C7C2
	for <lists+intel-wired-lan@lfdr.de>; Sat, 20 Sep 2025 14:21:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EF5D141287;
	Sat, 20 Sep 2025 12:21:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XVjR4ruBsFQr; Sat, 20 Sep 2025 12:21:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2528C41296
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758370880;
	bh=F3q3muQtU3LMfAdOD8lJ7FMiyUOMff0UicsNYL/WmI0=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=p7s8CzVhFykoDfE8Xv0fSFzgNtmD/4NHeIFJacGebzKYWJwRaUwWbExEfHJ6TrAls
	 Ie/Y9InGs4ZXrXRIeg4asti/X/yq9BT+B/mRQXCgeoDHPxSLe+zD+2jMEZgZHJ9VDZ
	 5+gd92wWIXUGROZa26Ga87am2PiJeKHMgTkDo+bd3UU6aAE2sKG/OSDD1+/mMhGDgr
	 ok7AAgAgkMR8jHUEP4G6jnmFvMVLCwrR//XswNuDR60CmUP7PFuLHL0+vNkKvwHXUe
	 wQFhDMboAgNUd22u3IeFG9Q3PStj2Sqcol14yYnSJ8psH/UahxC9xh/H7dvjpnlmMT
	 LI1g5kg2i8Duw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2528C41296;
	Sat, 20 Sep 2025 12:21:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4200A219
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Sep 2025 12:21:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 33F9941247
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Sep 2025 12:21:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y2dCmcToZHT4 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 20 Sep 2025 12:21:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=lorenzo@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7E6804121B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E6804121B
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7E6804121B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Sep 2025 12:21:17 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 6CFE243DE3;
 Sat, 20 Sep 2025 12:21:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB0FFC4CEEB;
 Sat, 20 Sep 2025 12:21:15 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Sat, 20 Sep 2025 14:20:26 +0200
Message-Id: <20250920-xdp-meta-rxcksum-v1-0-35e76a8a84e7@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAqczmgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDS0NT3YqUAt3c1JJE3aKK5Ozi0lxdSzPj5CTjRHNL41RzJaC2gqLUtMw
 KsJHRSkFuzgpJBWm6eakVJUqxtbUAj3v4u3AAAAA=
X-Change-ID: 20250915-xdp-meta-rxcksum-963cb3a793e7
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
 Shuah Khan <shuah@kernel.org>
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, linux-kselftest@vger.kernel.org, 
 Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1758370876;
 bh=NVkdqho2RdfTtEnWss8fjPZFDr1k2Eqt+Ul7r1LYIuk=;
 h=From:Subject:Date:To:Cc:From;
 b=q/JB0FbBMl4rB04+QGbeN8J4+rpknWk6BuHkq9rFseP8jSMo/5S1Od2sjkKni4dL4
 KUopOuyc7VpDlvBZkBUeJZREtGeMzsYCIxUQ8a0IaLiiLhw1g64PQV5/vDHlvZBetJ
 VC0fi0HFghH3uzqVmZwnreqeNdElcvH4+kseI1zBNnUwBpjb24NIo2hY98Pq9YQJ7f
 uKsj4eRAWfd5iQmcV+DqMcKqvB5tBrQnfuXYQiDznLyL50q5QlJPsTU664c1dEiB7n
 yqQe/lK01oiNl+c0+l88NAyMKK+adcDfaxpqhwKuYP3vUiMy529F5Zp7S1oO3o0fZV
 dfAfalQxKCstQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=q/JB0FbB
Subject: [Intel-wired-lan] [PATCH RFC bpf-next 0/6] Add the the capability
 to load HW RX checsum in eBPF programs
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

---
Lorenzo Bianconi (6):
      netlink: specs: Add XDP RX checksum capability to XDP metadata specs
      net: xdp: Add xmo_rx_checksum callback
      veth: Add xmo_rx_checksum callback to veth driver
      net: ice: Add xmo_rx_checksum callback
      selftests/bpf: Add selftest support for bpf_xdp_metadata_rx_checksum
      selftests/bpf: Add bpf_xdp_metadata_rx_checksum support to xdp_hw_metadat prog

 Documentation/netlink/specs/netdev.yaml            |  5 ++
 drivers/net/ethernet/intel/ice/ice_base.c          |  1 +
 drivers/net/ethernet/intel/ice/ice_txrx.h          |  1 +
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c      | 82 ++++++++++++++++++++++
 drivers/net/veth.c                                 | 19 +++++
 include/net/xdp.h                                  |  6 ++
 net/core/xdp.c                                     | 29 ++++++++
 .../selftests/bpf/prog_tests/xdp_metadata.c        |  7 ++
 .../testing/selftests/bpf/progs/xdp_hw_metadata.c  |  7 ++
 tools/testing/selftests/bpf/progs/xdp_metadata.c   |  1 +
 tools/testing/selftests/bpf/xdp_hw_metadata.c      | 27 +++++++
 tools/testing/selftests/bpf/xdp_metadata.h         | 13 ++++
 12 files changed, 198 insertions(+)
---
base-commit: 315f423be0d1ebe720d8fd4fa6bed68586b13d34
change-id: 20250915-xdp-meta-rxcksum-963cb3a793e7

Best regards,
-- 
Lorenzo Bianconi <lorenzo@kernel.org>

