Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 061E0AAA081
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 May 2025 00:35:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 812F04084D;
	Mon,  5 May 2025 22:35:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eAe_hhp6xv8z; Mon,  5 May 2025 22:35:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AD56E40860
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746484530;
	bh=mVl1iAvnd+snZCsANxYPy3Y3pns4DPbRaU4+Wn+MDcQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LU3VENfL4w9bd2RoFCyoup/dEo0l9YAJ4L2wtRSKZ5q6dCUgujE5QdtmJRln48H82
	 qUfrBWlt8gEWwnBPfNgSR/hh9a1N+eNQA5RGEsv64/oqLJYjxNIbzo5UdYGhot1xGp
	 m14H2AUZowD5cWjqlWczyvPfDNkw9U5ddKFTnEMSBzHGhNqAApB4ThilmIwbcRCQ6P
	 6EAse5WUC87scvafVQ+ybF11dC2T9MhNoa8ogQX6GQwDsumq3p2FCgT8RAAW8dl58a
	 UVmzP0RW8DbVEaUDSR2gSaofvxCpoGkecvMZeOAyd094HagmJib517FkZKr4FTAPGB
	 wqtvrzWXb80TQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD56E40860;
	Mon,  5 May 2025 22:35:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id B393F12E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 May 2025 22:35:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 95EE44084D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 May 2025 22:35:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B4eoG5at0e7V for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 May 2025 22:35:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=sashal@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D8FF640844
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D8FF640844
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D8FF640844
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 May 2025 22:35:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 597C55C3ECC;
 Mon,  5 May 2025 22:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F9EFC4CEEE;
 Mon,  5 May 2025 22:35:24 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Song Yoong Siang <yoong.siang.song@intel.com>,
 Avigail Dahan <avigailx.dahan@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Sasha Levin <sashal@kernel.org>,
 ast@kernel.org, daniel@iogearbox.net, davem@davemloft.net, kuba@kernel.org,
 hawk@kernel.org, john.fastabend@gmail.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, edumazet@google.com, pabeni@redhat.com,
 netdev@vger.kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Date: Mon,  5 May 2025 18:12:11 -0400
Message-Id: <20250505221419.2672473-515-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250505221419.2672473-1-sashal@kernel.org>
References: <20250505221419.2672473-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.14.5
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1746484526;
 bh=rPXg2sY7ZfWVK8DP/KT2YWCX2cEprik+eD4oek2lEXE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lcx3CuAx9kWyuEf2iKhiRmkR2AU9epXvIs6wb49zwtGVQcWH95qSsP3yEIY/3rDkH
 N6hDyUP/dua2oFC4cYy1V7XtsyiaN92GQDa9jS4kTPOLYbB8IulRp83sdKeEuQGs0n
 GoQ8QTUcl5NXZv2IMcMxJq7bG1LjhPNY2VkTB6rD49A+o5J+zdUFKjWIR82UzP7b+V
 Wd0KZkqW/bv9i4mPy8W4W+h9ERwAVCE9zFP+piRP2WW4j0lqUJWiFwcEclRxHBOato
 N5nJJvMXAQyiRqoWsKhU8kLP5hJEJ5uRMZ1DncSzHtz1HcpLC1hXad/IZbTbY2dT48
 0oHVBzSzOKJCA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=lcx3CuAx
Subject: [Intel-wired-lan] [PATCH AUTOSEL 6.14 515/642] igc: Avoid
 unnecessary link down event in XDP_SETUP_PROG process
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

From: Song Yoong Siang <yoong.siang.song@intel.com>

[ Upstream commit be324b790368c1522f07c6bb5654122e07b5e588 ]

The igc_close()/igc_open() functions are too drastic for installing a new
XDP prog because they cause undesirable link down event and device reset.

To avoid delays in Ethernet traffic, improve the XDP_SETUP_PROG process by
using the same sequence as igc_xdp_setup_pool(), which performs only the
necessary steps, as follows:
 1. stop the traffic and clean buffer
 2. stop NAPI
 3. install the XDP program
 4. resume NAPI
 5. allocate buffer and resume the traffic

This patch has been tested using the 'ip link set xdpdrv' command to attach
a simple XDP prog that always returns XDP_PASS.

Before this patch, attaching xdp program will cause ptp4l to lose sync for
few seconds, as shown in ptp4l log below:
  ptp4l[198.082]: rms    4 max    8 freq   +906 +/-   2 delay    12 +/-   0
  ptp4l[199.082]: rms    3 max    4 freq   +906 +/-   3 delay    12 +/-   0
  ptp4l[199.536]: port 1 (enp2s0): link down
  ptp4l[199.536]: port 1 (enp2s0): SLAVE to FAULTY on FAULT_DETECTED (FT_UNSPECIFIED)
  ptp4l[199.600]: selected local clock 22abbc.fffe.bb1234 as best master
  ptp4l[199.600]: port 1 (enp2s0): assuming the grand master role
  ptp4l[199.600]: port 1 (enp2s0): master state recommended in slave only mode
  ptp4l[199.600]: port 1 (enp2s0): defaultDS.priority1 probably misconfigured
  ptp4l[202.266]: port 1 (enp2s0): link up
  ptp4l[202.300]: port 1 (enp2s0): FAULTY to LISTENING on INIT_COMPLETE
  ptp4l[205.558]: port 1 (enp2s0): new foreign master 44abbc.fffe.bb2144-1
  ptp4l[207.558]: selected best master clock 44abbc.fffe.bb2144
  ptp4l[207.559]: port 1 (enp2s0): LISTENING to UNCALIBRATED on RS_SLAVE
  ptp4l[208.308]: port 1 (enp2s0): UNCALIBRATED to SLAVE on MASTER_CLOCK_SELECTED
  ptp4l[208.933]: rms  742 max 1303 freq   -195 +/- 682 delay    12 +/-   0
  ptp4l[209.933]: rms  178 max  274 freq   +387 +/- 243 delay    12 +/-   0

After this patch, attaching xdp program no longer cause ptp4l to lose sync,
as shown in ptp4l log below:
  ptp4l[201.183]: rms    1 max    3 freq   +959 +/-   1 delay     8 +/-   0
  ptp4l[202.183]: rms    1 max    3 freq   +961 +/-   2 delay     8 +/-   0
  ptp4l[203.183]: rms    2 max    3 freq   +958 +/-   2 delay     8 +/-   0
  ptp4l[204.183]: rms    3 max    5 freq   +961 +/-   3 delay     8 +/-   0
  ptp4l[205.183]: rms    2 max    4 freq   +964 +/-   3 delay     8 +/-   0

Besides, before this patch, attaching xdp program will causes flood ping to
lose 10 packets, as shown in ping statistics below:
  --- 169.254.1.2 ping statistics ---
  100000 packets transmitted, 99990 received, +6 errors, 0.01% packet loss, time 34001ms
  rtt min/avg/max/mdev = 0.028/0.301/3104.360/13.838 ms, pipe 10, ipg/ewma 0.340/0.243 ms

After this patch, attaching xdp program no longer cause flood ping to loss
any packets, as shown in ping statistics below:
  --- 169.254.1.2 ping statistics ---
  100000 packets transmitted, 100000 received, 0% packet loss, time 32326ms
  rtt min/avg/max/mdev = 0.027/0.231/19.589/0.155 ms, pipe 2, ipg/ewma 0.323/0.322 ms

On the other hand, this patch has been tested with tools/testing/selftests/
bpf/xdp_hw_metadata app to make sure AF_XDP zero-copy is working fine with
XDP Tx and Rx metadata. Below is the result of last packet after received
10000 UDP packets with interval 1 ms:
  poll: 1 (0) skip=0 fail=0 redir=10000
  xsk_ring_cons__peek: 1
  0x55881c7ef7a8: rx_desc[9999]->addr=8f110 addr=8f110 comp_addr=8f110 EoP
  rx_hash: 0xFB9BB6A3 with RSS type:0x1
  HW RX-time:   1733923136269470866 (sec:1733923136.2695) delta to User RX-time sec:0.0000 (43.280 usec)
  XDP RX-time:   1733923136269482482 (sec:1733923136.2695) delta to User RX-time sec:0.0000 (31.664 usec)
  No rx_vlan_tci or rx_vlan_proto, err=-95
  0x55881c7ef7a8: ping-pong with csum=ab19 (want 315b) csum_start=34 csum_offset=6
  0x55881c7ef7a8: complete tx idx=9999 addr=f010
  HW TX-complete-time:   1733923136269591637 (sec:1733923136.2696) delta to User TX-complete-time sec:0.0001 (108.571 usec)
  XDP RX-time:   1733923136269482482 (sec:1733923136.2695) delta to User TX-complete-time sec:0.0002 (217.726 usec)
  HW RX-time:   1733923136269470866 (sec:1733923136.2695) delta to HW TX-complete-time sec:0.0001 (120.771 usec)
  0x55881c7ef7a8: complete rx idx=10127 addr=8f110

Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/igc/igc_xdp.c | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_xdp.c b/drivers/net/ethernet/intel/igc/igc_xdp.c
index 869815f48ac1d..9eb47b4beb062 100644
--- a/drivers/net/ethernet/intel/igc/igc_xdp.c
+++ b/drivers/net/ethernet/intel/igc/igc_xdp.c
@@ -14,6 +14,7 @@ int igc_xdp_set_prog(struct igc_adapter *adapter, struct bpf_prog *prog,
 	bool if_running = netif_running(dev);
 	struct bpf_prog *old_prog;
 	bool need_update;
+	unsigned int i;
 
 	if (dev->mtu > ETH_DATA_LEN) {
 		/* For now, the driver doesn't support XDP functionality with
@@ -24,8 +25,13 @@ int igc_xdp_set_prog(struct igc_adapter *adapter, struct bpf_prog *prog,
 	}
 
 	need_update = !!adapter->xdp_prog != !!prog;
-	if (if_running && need_update)
-		igc_close(dev);
+	if (if_running && need_update) {
+		for (i = 0; i < adapter->num_rx_queues; i++) {
+			igc_disable_rx_ring(adapter->rx_ring[i]);
+			igc_disable_tx_ring(adapter->tx_ring[i]);
+			napi_disable(&adapter->rx_ring[i]->q_vector->napi);
+		}
+	}
 
 	old_prog = xchg(&adapter->xdp_prog, prog);
 	if (old_prog)
@@ -36,8 +42,13 @@ int igc_xdp_set_prog(struct igc_adapter *adapter, struct bpf_prog *prog,
 	else
 		xdp_features_clear_redirect_target(dev);
 
-	if (if_running && need_update)
-		igc_open(dev);
+	if (if_running && need_update) {
+		for (i = 0; i < adapter->num_rx_queues; i++) {
+			napi_enable(&adapter->rx_ring[i]->q_vector->napi);
+			igc_enable_tx_ring(adapter->tx_ring[i]);
+			igc_enable_rx_ring(adapter->rx_ring[i]);
+		}
+	}
 
 	return 0;
 }
-- 
2.39.5

