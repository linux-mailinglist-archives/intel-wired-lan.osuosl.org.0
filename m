Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E257A268E7
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Feb 2025 01:49:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 81A8740C2B;
	Tue,  4 Feb 2025 00:49:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 60tBEX3KUhDO; Tue,  4 Feb 2025 00:49:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F25F140C47
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738630188;
	bh=qvD+7qYUnDD1+kg/tnzVkk+U7TjuDekQ6u0fVYSwSG8=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=MV4goeSSzmvgCc+5pAelucQm371UQUQV8NcS86EB9HBhplH4g7Wd4KkidsLreK02w
	 ji7cwHHV+JkytiAOPsmjhRPfv3JerFEoGV3MVjuCywX8almgUvllSN0wo9vVxh/lgg
	 JIhnAQkBAoTOA/dKC44d/gPAkQLzYrZN6bqgPukp1bXclTHCWqHtlArGAAIaQ/z3yb
	 k7vbc7aIK+1SXkdbGD1L1vweDR0+DcKedOw79aYZEJRfuWMcPUjSzCCPe//geH/uzw
	 oyOa3oPb05g4OHIlVyBr4bk/d6YBIOgzVt1xZH6IjjZGcIGG1yPh5S67tfUNpc+aRP
	 Jo634qXQpj4ag==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id F25F140C47;
	Tue,  4 Feb 2025 00:49:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C0E26185
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 00:49:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B11568188A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 00:49:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZCHY4Bqpf5NE for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Feb 2025 00:49:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=yoong.siang.song@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 855CF817AB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 855CF817AB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 855CF817AB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 00:49:44 +0000 (UTC)
X-CSE-ConnectionGUID: KkxTiHluQ4yscTT5iagpJQ==
X-CSE-MsgGUID: QqQ9Vuu6TKakdU5oxtD1TA==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="39296419"
X-IronPort-AV: E=Sophos;i="6.13,257,1732608000"; d="scan'208";a="39296419"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 16:49:43 -0800
X-CSE-ConnectionGUID: wlLn7DXWQMqaEXAYJOk9BA==
X-CSE-MsgGUID: Jbpkn1X2TrOoyrkx37vZ8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="115605104"
Received: from p12ill20yoongsia.png.intel.com ([10.88.227.38])
 by orviesa005.jf.intel.com with ESMTP; 03 Feb 2025 16:49:32 -0800
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
 Andrii Nakryiko <andrii@kernel.org>, Eduard Zingerman <eddyz87@gmail.com>,
 Mykola Lysenko <mykolal@fb.com>, Martin KaFai Lau <martin.lau@linux.dev>,
 Song Liu <song@kernel.org>, Yonghong Song <yonghong.song@linux.dev>,
 KP Singh <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>,
 Jiri Olsa <jolsa@kernel.org>, Shuah Khan <shuah@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Bouska Zdenek <zdenek.bouska@siemens.com>
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org, bpf@vger.kernel.org,
 linux-kselftest@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, intel-wired-lan@lists.osuosl.org,
 xdp-hints@xdp-project.net
Date: Tue,  4 Feb 2025 08:49:02 +0800
Message-Id: <20250204004907.789330-1-yoong.siang.song@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738630184; x=1770166184;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2KzKPgEaxeySCBRJkboUarqwEgHBPRsk0j45K+3gc/c=;
 b=IagGHnc2TAamdYTRV4xWFLT4FsMUoMPPaV3sePclKVNvWXw+5AVRVYbI
 Ox7OGE9eUnOzLjdIZPyTUqFJxw3zejH+seaBuf9Oks67criQdHZ+rZwlf
 tXfSNm55M4axDdyJB1fE8hNgmP1R2bTAMt1OFx+FV1O0+rdkWlKNx9Nio
 FDgFyzhB20C2ig0K+fW7tpD7K9um06Z7LiK7ejUF9zY8hO+NQJM/W35d6
 HuDKiQvMc7DkKLbVxVc7nWZPkM4tpAo/OSwBvUtJe7WWM1D1jTPKbzH4+
 ZUe40+PvnGus0209NlDOSaoWTlW6S2cy8pawLinyoW6L2KLf0/ypQdTWo
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IagGHnc2
Subject: [Intel-wired-lan] [PATCH bpf-next v7 0/5] xsk: TX metadata Launch
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

V7:
  - split the refactoring code of igc empty packet insertion into a separate
    commit (Faizal)
  - add explanation on why the value "4" is used as igc transmit budget
    (Faizal)
  - perform a stress test by sending 1000 packets with 10ms interval and
    launch time set to 500us in the future (Faizal & Yong Liang)

V6: https://lore.kernel.org/netdev/20250116155350.555374-1-yoong.siang.song@intel.com/
  - fix selftest build errors by using asprintf() and realloc(), instead of
    managing the buffer sizes manually (Daniel, Stanislav)

V5: https://lore.kernel.org/netdev/20250114152718.120588-1-yoong.siang.song@intel.com/
  - change netdev feature name from tx-launch-time to tx-launch-time-fifo
    to explicitly state the FIFO behaviour (Stanislav)
  - improve the looping of xdp_hw_metadata app to wait for packet tx
    completion to be more readable by using clock_gettime() (Stanislav)
  - add launch time setup steps into xdp_hw_metadata app (Stanislav)

V4: https://lore.kernel.org/netdev/20250106135506.9687-1-yoong.siang.song@intel.com/
  - added XDP launch time support to the igc driver (Jesper & Florian)
  - added per-driver launch time limitation on xsk-tx-metadata.rst (Jesper)
  - added explanation on FIFO behavior on xsk-tx-metadata.rst (Jakub)
  - added step to enable launch time in the commit message (Jesper & Willem)
  - explicitly documented the type of launch_time and which clock source
    it is against (Willem)

V3: https://lore.kernel.org/netdev/20231203165129.1740512-1-yoong.siang.song@intel.com/
  - renamed to use launch time (Jesper & Willem)
  - changed the default launch time in xdp_hw_metadata apps from 1s to 0.1s
    because some NICs do not support such a large future time.

V2: https://lore.kernel.org/netdev/20231201062421.1074768-1-yoong.siang.song@intel.com/
  - renamed to use Earliest TxTime First (Willem)
  - renamed to use txtime (Willem)

V1: https://lore.kernel.org/netdev/20231130162028.852006-1-yoong.siang.song@intel.com/

Song Yoong Siang (5):
  xsk: Add launch time hardware offload support to XDP Tx metadata
  selftests/bpf: Add launch time request to xdp_hw_metadata
  net: stmmac: Add launch time support to XDP ZC
  igc: Refactor empty packet insertion into a reusable function
  igc: Add launch time support to XDP ZC

 Documentation/netlink/specs/netdev.yaml       |   4 +
 Documentation/networking/xsk-tx-metadata.rst  |  62 +++++++
 drivers/net/ethernet/intel/igc/igc_main.c     |  84 ++++++---
 drivers/net/ethernet/stmicro/stmmac/stmmac.h  |   2 +
 .../net/ethernet/stmicro/stmmac/stmmac_main.c |  13 ++
 include/net/xdp_sock.h                        |  10 ++
 include/net/xdp_sock_drv.h                    |   1 +
 include/uapi/linux/if_xdp.h                   |  10 ++
 include/uapi/linux/netdev.h                   |   3 +
 net/core/netdev-genl.c                        |   2 +
 net/xdp/xsk.c                                 |   3 +
 tools/include/uapi/linux/if_xdp.h             |  10 ++
 tools/include/uapi/linux/netdev.h             |   3 +
 tools/testing/selftests/bpf/xdp_hw_metadata.c | 168 +++++++++++++++++-
 14 files changed, 348 insertions(+), 27 deletions(-)

-- 
2.34.1

