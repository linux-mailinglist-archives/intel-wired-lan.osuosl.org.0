Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BB397DDF8
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Sep 2024 18:53:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C81DB4063E;
	Sat, 21 Sep 2024 16:53:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XiGaxfGzRm83; Sat, 21 Sep 2024 16:53:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0751A405AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726937592;
	bh=xGlHEAHL35QP8aj41FQozKU4SGvEbTjEc+gQoO/8OG8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=g9b3doMCpMKv7fM82faV7xk3jMF9KuWhvbldP+bhUxGHSD8uA8XiS3j9IIBv8jLI3
	 iNdllrDTit4DG1Eesx3FLir+0Z4hmojJLQxQK+czTg2Nq/hmZOCbPIpygUhKH7p2PI
	 lLy04/TI8vFaB0Izpy8KwYFEoWatxdMfWkb2gZ3fbMYKMPOoZvvnptcORGTK3XBMT5
	 4LSf3tSK5qSR0CMwJ4JKWCSmdPzAmyXJ8FSNsAHlEn7sMPs0Lsu9KL6+GPemZ9Edpn
	 brChnx2hqlPxxoFZfIC4QNav3CiYbCVg/1tW/vJtlOnRFUQD6P4173sniWOoTlMSyP
	 6XnQB1Dx/R3mQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0751A405AB;
	Sat, 21 Sep 2024 16:53:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 01C131BF373
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Sep 2024 16:53:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E2DF0405D9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Sep 2024 16:53:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QOIC6hqLzRIP for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Sep 2024 16:53:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=lorenzo@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0C130405AB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C130405AB
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0C130405AB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Sep 2024 16:53:08 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id BE3715C4C65;
 Sat, 21 Sep 2024 16:53:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85A4AC4CEC2;
 Sat, 21 Sep 2024 16:53:06 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: bpf@vger.kernel.org
Date: Sat, 21 Sep 2024 18:52:56 +0200
Message-ID: <cover.1726935917.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.46.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1726937587;
 bh=3DcqSOF/2OUCezVBG3TW/2mi74Vittpx3O4Bq7D530E=;
 h=From:To:Cc:Subject:Date:From;
 b=mvZgflTHVHw8FcQSB0HTmTUe0PReDu8ac0Ptt9TgciEUburqdfqLdHfKeUtAfXRp9
 dT/fR60pFaascXawuuChzCkLfALQErQ9NI+fxLZtf3ckjxq4NqvzR2WVv6bnXlD7n5
 46TQOWgSD76K+cQd6x95ZWOfSMcQG2x8iBW4jdZFoaZ8OMVxJ/e4UJqS/iQh2/swAe
 5HAkxJUEPg5hk0arYhWSEUfa7atczRZeo/lvmknUdbCm//aH1iINb0+qEIJnmslirS
 hQF00/n7PXc2gqoallb0faO/HSH69QHgcOxzDb0anGn3CJeehea0fUHEmDYP1ni82I
 9dl//9BFZ3zFA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=mvZgflTH
Subject: [Intel-wired-lan] [RFC bpf-next 0/4] Add XDP rx hw hints support
 performing XDP_REDIRECT
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
Cc: toke@toke.dk, mst@redhat.com, jasowang@redhat.com, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, sdf@google.com,
 daniel@iogearbox.net, przemyslaw.kitszel@intel.com, john.fastabend@gmail.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 hawk@kernel.org, alexandre.torgue@foss.st.com, netdev@vger.kernel.org,
 tariqt@nvidia.com, aleksander.lobakin@intel.com, mcoquelin.stm32@gmail.com,
 saeedm@nvidia.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series introduces the xdp_rx_meta struct in the xdp_buff/xdp_frame
one as a container to store the already supported xdp rx hw hints (rx_hash
and rx_vlan, rx_timestamp will be stored in skb_shared_info area) when the
eBPF program running on the nic performs XDP_REDIRECT. Doing so, we are able
to set the skb metadata converting the xdp_buff/xdp_frame to a skb.
Update xdp_metadata_ops callbacks for the following drivers:
- ice
- igc
- mlx5
- mlx4
- veth
- virtio_net
- stmmac

Lorenzo Bianconi (4):
  net: xdp: Add xdp_rx_meta structure
  net: xdp: Update rx_hash of xdp_rx_meta struct running xmo_rx_hash
    callback
  net: xdp: Update rx_vlan of xdp_rx_meta struct running xmo_rx_vlan_tag
    callback
  net: xdp: Update rx timestamp of xdp_rx_meta struct running
    xmo_rx_timestamp callback

 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  9 +++
 drivers/net/ethernet/intel/igc/igc_main.c     |  5 ++
 drivers/net/ethernet/mellanox/mlx4/en_rx.c    |  3 +
 .../net/ethernet/mellanox/mlx5/core/en/xdp.c  |  8 ++
 .../net/ethernet/stmicro/stmmac/stmmac_main.c |  3 +
 drivers/net/veth.c                            |  9 +++
 drivers/net/virtio_net.c                      |  3 +-
 include/net/xdp.h                             | 79 +++++++++++++++++++
 net/core/xdp.c                                | 29 ++++++-
 9 files changed, 146 insertions(+), 2 deletions(-)

-- 
2.46.1

