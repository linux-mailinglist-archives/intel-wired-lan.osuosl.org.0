Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B9424A37342
	for <lists+intel-wired-lan@lfdr.de>; Sun, 16 Feb 2025 10:35:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CB487821C2;
	Sun, 16 Feb 2025 09:35:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PIrlWinoTx58; Sun, 16 Feb 2025 09:35:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0F9AE82062
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739698517;
	bh=7Nu7XxJyf3m+ozShEspv2PlO+L3yCS0dook1JpPtHME=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DOKAtCVaLw8lRo1QJeoskwoCpeQdbUZuxOzZQXEM5witzyQOF/RzPhag8uL2E4HEj
	 O1mqrnPjh2er5couDj2stM0VcvMnQFuc/gi4FRaC0+Nrc/pdS0asBWVwpaoV1RCCLf
	 b/zGhHS8T+BgEI6GElo/vinr/FQdC8o2+xzBJYoGLMsSlCld82U9X2KqdbZJETgpIv
	 mhtliviLv6HkuiWe+VkqUL+3YIlrc8PYo8B9HaQByr6+cd874PuYMOSdbhwy0+AgW2
	 YUBRfTcAGH1goNTBXmRpHXU4RKYCxMK0xhFiUJFvLAJmvueZv0Fcne3DE/Iu6SKn89
	 SV+/8KVwsJp9A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0F9AE82062;
	Sun, 16 Feb 2025 09:35:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 6077CDE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Feb 2025 09:35:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4533582031
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Feb 2025 09:35:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Fnf2ySY7AJxf for <intel-wired-lan@lists.osuosl.org>;
 Sun, 16 Feb 2025 09:35:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=yoong.siang.song@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EFBF882028
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EFBF882028
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EFBF882028
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Feb 2025 09:35:12 +0000 (UTC)
X-CSE-ConnectionGUID: 0sBDqoysTHKacbiKVS1YmQ==
X-CSE-MsgGUID: QQhHk4PFSyuBmWhh3rGYIw==
X-IronPort-AV: E=McAfee;i="6700,10204,11346"; a="51812260"
X-IronPort-AV: E=Sophos;i="6.13,290,1732608000"; d="scan'208";a="51812260"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2025 01:35:12 -0800
X-CSE-ConnectionGUID: zefYiCfCR7WazzLG7yyJTg==
X-CSE-MsgGUID: ROWtwjiYSPm5AewPy+1kjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="117999054"
Received: from p12ill20yoongsia.png.intel.com ([10.88.227.38])
 by fmviesa003.fm.intel.com with ESMTP; 16 Feb 2025 01:35:00 -0800
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
Date: Sun, 16 Feb 2025 17:34:28 +0800
Message-Id: <20250216093430.957880-4-yoong.siang.song@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250216093430.957880-1-yoong.siang.song@intel.com>
References: <20250216093430.957880-1-yoong.siang.song@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739698513; x=1771234513;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Z3OIrwsUmYtJjqFW5lrZWuTp/tPSpI1Ry+5T/TtxFZ8=;
 b=U6W2iN3Zsw5B0ds7u5FkLLbpurK26hNIpWxSMameftg8rwPVCdi+8hZd
 PFhrbhZ/zluBGDJpkBpP3dmkbjA7A2WUF4DQWO3EXedsE9tfDkdM2DkE6
 959e404y63B9pGBT0ZAvuPH3MCkJfdDuUWO7aQFu7kZgtge6Y2me7+MqQ
 dBmVodXcYEQ7uS6Y37wXsnWhNbhsQJ4LTmPZkVVETnLfpF/ruVynmHFw2
 8srvofksNOKYwefnFm6YSGINbk565g7fgpemRE30x10MFgG/STRgO11Q1
 t0k+ofL6iHTmMBL+1GtlqduVFUMMMDxa0EGrF+DkGozyw4+1jYY5G1yYa
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U6W2iN3Z
Subject: [Intel-wired-lan] [PATCH bpf-next v12 3/5] net: stmmac: Add launch
 time support to XDP ZC
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

Enable launch time (Time-Based Scheduling) support for XDP zero copy via
the XDP Tx metadata framework.

This patch has been tested with tools/testing/selftests/bpf/xdp_hw_metadata
on Intel Tiger Lake platform. Below are the test steps and result.

Test 1: Send a single packet with the launch time set to 1 s in the future.

Test steps:
1. On the DUT, start the xdp_hw_metadata selftest application:
   $ sudo ./xdp_hw_metadata enp0s30f4 -l 1000000000 -L 1

2. On the Link Partner, send a UDP packet with VLAN priority 1 to port 9091
   of the DUT.

Result:
When the launch time is set to 1 s in the future, the delta between the
launch time and the transmit hardware timestamp is 16.963 us, as shown in
printout of the xdp_hw_metadata application below.
  0x55b5864717a8: rx_desc[4]->addr=88100 addr=88100 comp_addr=88100 EoP
  No rx_hash, err=-95
  HW RX-time:   1734579065767717328 (sec:1734579065.7677)
                delta to User RX-time sec:0.0004 (375.624 usec)
  XDP RX-time:   1734579065768004454 (sec:1734579065.7680)
                 delta to User RX-time sec:0.0001 (88.498 usec)
  No rx_vlan_tci or rx_vlan_proto, err=-95
  0x55b5864717a8: ping-pong with csum=5619 (want 0000)
                  csum_start=34 csum_offset=6
  HW RX-time:   1734579065767717328 (sec:1734579065.7677)
                delta to HW Launch-time sec:1.0000 (1000000.000 usec)
  0x55b5864717a8: complete tx idx=4 addr=4018
  HW Launch-time:   1734579066767717328 (sec:1734579066.7677)
                    delta to HW TX-complete-time sec:0.0000 (16.963 usec)
  HW TX-complete-time:   1734579066767734291 (sec:1734579066.7677)
                         delta to User TX-complete-time sec:0.0001
                         (130.408 usec)
  XDP RX-time:   1734579065768004454 (sec:1734579065.7680)
                 delta to User TX-complete-time sec:0.9999
                (999860.245 usec)
  HW RX-time:   1734579065767717328 (sec:1734579065.7677)
                delta to HW TX-complete-time sec:1.0000 (1000016.963 usec)
  0x55b5864717a8: complete rx idx=132 addr=88100

Test 2: Send 1000 packets with a 10 ms interval and the launch time set to
        500 us in the future.

Test steps:
1. On the DUT, start the xdp_hw_metadata selftest application:
   $ sudo chrt -f 99 ./xdp_hw_metadata enp0s30f4 -l 500000 -L 1 > \
     /dev/shm/result.log

2. On the Link Partner, send 1000 UDP packets with a 10 ms interval and
   VLAN priority 1 to port 9091 of the DUT.

Result:
When the launch time is set to 500 us in the future, the average delta
between the launch time and the transmit hardware timestamp is 13.854 us,
as shown in the analysis of /dev/shm/result.log below. The XDP launch time
works correctly in sending 1000 packets continuously.
  Min delta: 08.410 us
  Avr delta: 13.854 us
  Max delta: 17.076 us
  Total packets forwarded: 1000

Reviewed-by: Choong Yong Liang <yong.liang.choong@linux.intel.com>
Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
---
 drivers/net/ethernet/stmicro/stmmac/stmmac.h      |  2 ++
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 13 +++++++++++++
 2 files changed, 15 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac.h b/drivers/net/ethernet/stmicro/stmmac/stmmac.h
index f05cae103d83..925d8b97a42b 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac.h
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac.h
@@ -106,6 +106,8 @@ struct stmmac_metadata_request {
 	struct stmmac_priv *priv;
 	struct dma_desc *tx_desc;
 	bool *set_ic;
+	struct dma_edesc *edesc;
+	int tbs;
 };
 
 struct stmmac_xsk_tx_complete {
diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
index d04543e5697b..ff67dc4ecf72 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
@@ -2514,9 +2514,20 @@ static u64 stmmac_xsk_fill_timestamp(void *_priv)
 	return 0;
 }
 
+static void stmmac_xsk_request_launch_time(u64 launch_time, void *_priv)
+{
+	struct timespec64 ts = ns_to_timespec64(launch_time);
+	struct stmmac_metadata_request *meta_req = _priv;
+
+	if (meta_req->tbs & STMMAC_TBS_EN)
+		stmmac_set_desc_tbs(meta_req->priv, meta_req->edesc, ts.tv_sec,
+				    ts.tv_nsec);
+}
+
 static const struct xsk_tx_metadata_ops stmmac_xsk_tx_metadata_ops = {
 	.tmo_request_timestamp		= stmmac_xsk_request_timestamp,
 	.tmo_fill_timestamp		= stmmac_xsk_fill_timestamp,
+	.tmo_request_launch_time	= stmmac_xsk_request_launch_time,
 };
 
 static bool stmmac_xdp_xmit_zc(struct stmmac_priv *priv, u32 queue, u32 budget)
@@ -2600,6 +2611,8 @@ static bool stmmac_xdp_xmit_zc(struct stmmac_priv *priv, u32 queue, u32 budget)
 		meta_req.priv = priv;
 		meta_req.tx_desc = tx_desc;
 		meta_req.set_ic = &set_ic;
+		meta_req.tbs = tx_q->tbs;
+		meta_req.edesc = &tx_q->dma_entx[entry];
 		xsk_tx_metadata_request(meta, &stmmac_xsk_tx_metadata_ops,
 					&meta_req);
 		if (set_ic) {
-- 
2.34.1

