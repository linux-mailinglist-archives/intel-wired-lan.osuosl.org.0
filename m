Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0763AA02733
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Jan 2025 14:56:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AFE4680BE8;
	Mon,  6 Jan 2025 13:56:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ahgvVqWtV5Km; Mon,  6 Jan 2025 13:56:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3AD2480BDA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736171763;
	bh=cPAjUvdTLpQn88tQRHJPwHKkSXJWt8P3KcsIg2Us7Ug=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=POVWMYrfTc2D2mnwoXqWhutfc4+GjFOgIy9dAbuk0BqR7Z9YsIfrlspp6c4H1aUIt
	 Apx/ug8lCo2N5DqrbQj7iyhlbrEcgTAajxZ2Ra25ohxSWzmbxhyuJ+jZN6rBLL9b6U
	 c6XCuH+8ed9AG+7nynO72RQDnPBXbkCBk0jnfTWM5shFj6DZbJGWEV+jY1A2LDaXDt
	 SsxpkKozyvKjYrUZQNa+k92Dk0jSYTzoJHnX3MPfY6ci520wxgkoK4IcvrJbKfiBRO
	 4ia+sz1A96TWu/DGvmL1UPEcRplXNmVuX01GuJHChhe5FZ5EGz+kkOEfnpx44b+oRp
	 9rsrzxflpCMDg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3AD2480BDA;
	Mon,  6 Jan 2025 13:56:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3AF9BDB4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 13:56:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2923F80BD9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 13:56:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L3-U7f2EYF1L for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jan 2025 13:56:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=yoong.siang.song@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0195980BC4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0195980BC4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0195980BC4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 13:55:59 +0000 (UTC)
X-CSE-ConnectionGUID: JvoTglNfQR6yN+NiMBdmug==
X-CSE-MsgGUID: QrJN/sjkTB2E4mQ+BZN1lA==
X-IronPort-AV: E=McAfee;i="6700,10204,11307"; a="36473731"
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; d="scan'208";a="36473731"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2025 05:55:59 -0800
X-CSE-ConnectionGUID: A4LxAHlWSWC9cCNEMxi8Kw==
X-CSE-MsgGUID: QReHGKT/TvOdkEroFunAVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; d="scan'208";a="107407969"
Received: from unknown (HELO P12ILL20yoongsia.png.intel.com) ([10.88.227.38])
 by orviesa004.jf.intel.com with ESMTP; 06 Jan 2025 05:55:48 -0800
From: Song Yoong Siang <yoong.siang.song@intel.com>
To: "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Willem de Bruijn <willemb@google.com>,
 Florian Bezdeka <florian.bezdeka@siemens.com>,
 Donald Hunter <donald.hunter@gmail.com>, Jonathan Corbet <corbet@lwn.net>,
 Bjorn Topel <bjorn@kernel.org>,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Joe Damato <jdamato@fastly.com>,
 Stanislav Fomichev <sdf@fomichev.me>,
 Xuan Zhuo <xuanzhuo@linux.alibaba.com>,
 Mina Almasry <almasrymina@google.com>, Daniel Jurgens <danielj@nvidia.com>,
 Song Yoong Siang <yoong.siang.song@intel.com>,
 Amritha Nambiar <amritha.nambiar@intel.com>,
 Andrii Nakryiko <andrii@kernel.org>, Eduard Zingerman <eddyz87@gmail.com>,
 Mykola Lysenko <mykolal@fb.com>, Martin KaFai Lau <martin.lau@linux.dev>,
 Song Liu <song@kernel.org>, Yonghong Song <yonghong.song@linux.dev>,
 KP Singh <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>,
 Jiri Olsa <jolsa@kernel.org>, Shuah Khan <shuah@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org, bpf@vger.kernel.org,
 linux-kselftest@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, intel-wired-lan@lists.osuosl.org,
 xdp-hints@xdp-project.net
Date: Mon,  6 Jan 2025 21:55:06 +0800
Message-Id: <20250106135506.9687-1-yoong.siang.song@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736171760; x=1767707760;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Fe/o7Mk5+uc0GHrVMRFeiFpbIufBfq1Z8jHhoCn17v8=;
 b=kptByn4BE0vUo+VLRgNIWrBhemi8AZoztVi1MmXWfsAZUq4r2ke4kT6v
 PNzhhuQ5dbmI2QsHAwTiIGCUzajqhU5Ns4SKBQIRxodYArGP8aInukIAh
 FpgSP4xIDVvP9UyYEvZBo1HS5eQ/CLHtA4PTGQJMU92qL/zCzw4FsKc1P
 6eAvoIr0waEXQn/+kJyzCsncTJdAmDJJvVLXGcUAu/4ZXFru//fWv9eWM
 BATvFLfgOvrkYhPC8U81BezMw8vgzuT4eU54YaV8gYeMrjTZgHstlq1tf
 kxjExJz2O+hv0BokTYqgOpF4N5qIjKjlt4D1prQQ8FLxovyVqBNIOABHP
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kptByn4B
Subject: [Intel-wired-lan] [PATCH bpf-next v4 0/4] xsk: TX metadata Launch
 Time support
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

This series expands the XDP TX metadata framework to allow user
applications to pass per packet 64-bit launch time directly to the kernel
driver, requesting launch time hardware offload support. The XDP TX
metadata framework will not perform any clock conversion or packet
reordering.

Please note that the role of Tx metadata is just to pass the launch time,
not to enable the offload feature. Users will need to enable the launch
time hardware offload feature of the device by using the respective
command, such as the tc-etf command.

Although some devices use the tc-etf command to enable their launch time
hardware offload feature, xsk packets will not go through the etf qdisc.
Therefore, in my opinion, the launch time should always be based on the PTP
Hardware Clock (PHC). Thus, i did not include a clock ID to indicate the
clock source.

To simplify the test steps, I modified the xdp_hw_metadata bpf self-test
tool in such a way that it will set the launch time based on the offset
provided by the user and the value of the Receive Hardware Timestamp, which
is against the PHC. This will eliminate the need to discipline System Clock
with the PHC and then use clock_gettime() to get the time.

Please note that AF_XDP lacks a feedback mechanism to inform the
application if the requested launch time is invalid. So, users are expected
to familiar with the horizon of the launch time of the device they use and
not request a launch time that is beyond the horizon. Otherwise, the driver
might interpret the launch time incorrectly and react wrongly. For stmmac
and igc, where modulo computation is used, a launch time larger than the
horizon will cause the device to transmit the packet earlier that the
requested launch time.

Although there is no feedback mechanism for the launch time request
for now, user still can check whether the requested launch time is
working or not, by requesting the Transmit Completion Hardware Timestamp.

Changes since v1:
- renamed to use Earliest TxTime First (Willem)
- renamed to use txtime (Willem)

Changes since v2:
- renamed to use launch time (Jesper & Willem)
- changed the default launch time in xdp_hw_metadata apps from 1s to 0.1s
  because some NICs do not support such a large future time.

Changes since v3:
- added XDP launch time support to the igc driver (Jesper & Florian)
- added per-driver launch time limitation on xsk-tx-metadata.rst (Jesper)
- added explanation on FIFO behavior on xsk-tx-metadata.rst (Jakub)
- added step to enable launch time in the commit message (Jesper & Willem)
- explicitly documented the type of launch_time and which clock source
  it is against (Willem)

v1: https://patchwork.kernel.org/project/netdevbpf/cover/20231130162028.852006-1-yoong.siang.song@intel.com/
v2: https://patchwork.kernel.org/project/netdevbpf/cover/20231201062421.1074768-1-yoong.siang.song@intel.com/
v3: https://patchwork.kernel.org/project/netdevbpf/cover/20231203165129.1740512-1-yoong.siang.song@intel.com/

Song Yoong Siang (4):
  xsk: Add launch time hardware offload support to XDP Tx metadata
  selftests/bpf: Add Launch Time request to xdp_hw_metadata
  net: stmmac: Add launch time support to XDP ZC
  igc: Add launch time support to XDP ZC

 Documentation/netlink/specs/netdev.yaml       |  4 +
 Documentation/networking/xsk-tx-metadata.rst  | 64 +++++++++++++++
 drivers/net/ethernet/intel/igc/igc_main.c     | 78 +++++++++++++------
 drivers/net/ethernet/stmicro/stmmac/stmmac.h  |  2 +
 .../net/ethernet/stmicro/stmmac/stmmac_main.c | 13 ++++
 include/net/xdp_sock.h                        | 10 +++
 include/net/xdp_sock_drv.h                    |  1 +
 include/uapi/linux/if_xdp.h                   | 10 +++
 include/uapi/linux/netdev.h                   |  3 +
 net/core/netdev-genl.c                        |  2 +
 net/xdp/xsk.c                                 |  3 +
 tools/include/uapi/linux/if_xdp.h             | 10 +++
 tools/include/uapi/linux/netdev.h             |  3 +
 tools/testing/selftests/bpf/xdp_hw_metadata.c | 30 ++++++-
 14 files changed, 208 insertions(+), 25 deletions(-)

-- 
2.34.1

