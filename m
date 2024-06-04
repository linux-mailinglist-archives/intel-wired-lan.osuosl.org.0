Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D128FB37E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jun 2024 15:22:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1C0816122E;
	Tue,  4 Jun 2024 13:22:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2LRvbd8UJvac; Tue,  4 Jun 2024 13:22:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3F3C7611F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717507334;
	bh=PydXO3m0yG0q6OmRlQCCaIHdKT5pYWZnOgJCqD4Ixpg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=z34U5FA+HhY+6tMBG6YDBaTRwshtcFmVQWZTePCH/OdePY4buD1Q9BX+kR2DGFell
	 kCeVkEL33mvhC1Br+vOkJMdGEWNSOyKHJMNg1OvreiVT7eDsMagNE7dBR4wiQKWrQI
	 /zgcQ1V5LZ48zy2dGyZBgZ98Z01tRjwl+UsEkdQ/QztXqD2DLDvJwkYB9yYJg0rj3Z
	 XtGsL1ooKpmvZHG03Jlssl7L7ijvzTY0By/nUs2Qqj3E9xQrpuQlH/Ebgs20NolwkP
	 RPxErlPT60eSrtHy+eJSfIUjkQIuYRwnym1VAflEvePdDnxeRDHvenz+b2tVtwKKki
	 tw1exbdSvJaOQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F3C7611F2;
	Tue,  4 Jun 2024 13:22:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 967371BF2A2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 13:22:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8262640511
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 13:22:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9KTMOxfGTG40 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jun 2024 13:22:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 12610404B4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 12610404B4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 12610404B4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 13:22:09 +0000 (UTC)
X-CSE-ConnectionGUID: bulASic+QO6wAUlnfQTKVw==
X-CSE-MsgGUID: HnMXazpcSUCc6G6A6G2d0A==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="31552835"
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="31552835"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 06:22:09 -0700
X-CSE-ConnectionGUID: 8Hm37LyARG2LAxP12L0XDw==
X-CSE-MsgGUID: 5UvhuG29TNqg6ELoUKN1VQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="37350091"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmviesa009.fm.intel.com with ESMTP; 04 Jun 2024 06:22:07 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  4 Jun 2024 15:21:47 +0200
Message-Id: <20240604132155.3573752-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717507330; x=1749043330;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bjzwZh4LunZ2cpdfC/fNWkWwzMQXMBwkURvSvjTCarI=;
 b=YkM9Pk3vQW7Q9MdTanfXSaYS4Ap6gLBblnZ5C8J+grLeOgU6EgB4gjr5
 WjqEQ8eSn1ZA/dFv0KlJ0Tg2ZRIsPZXTykPlhdopRnhcDHQmhQcw+Z6vn
 ppo59wbfMVPvATagBEAVLOek5GYmdqedzIWgM+URjBn2g1gTV106bLnWU
 C8zGj5/rVu9uESaF4u/9vRp17MPHNROLCri5bvySX2pJ7DFCfSPnBjmnz
 lvCPbXN+2GFcAKR3yUOUlPJH0UV3Ph2FgYpq5i+naG0denkXZMJKjkn/o
 7RmA9PgVqIew1GgCCasuA0m3pH/+OlT01wae75A4ouc7L6GS2ofpGHnJC
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YkM9Pk3v
Subject: [Intel-wired-lan] [PATCH v3 iwl-net 0/8] ice: fix AF_XDP ZC timeout
 and concurrency issues
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, larysa.zaremba@intel.com,
 netdev@vger.kernel.org, michal.kubiak@intel.com, anthony.l.nguyen@intel.com,
 jacob.e.keller@intel.com, magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

changes included in this patchset address an issue that customer has
been facing when AF_XDP ZC Tx sockets were used in combination with flow
control and regular Tx traffic.

After executing:
ethtool --set-priv-flags $dev link-down-on-close on
ethtool -A $dev rx on tx on

launching multiple ZC Tx sockets on $dev + pinging remote interface (so
that regular Tx traffic is present) and then going through down/up of
$dev, Tx timeout occured and then most of the time ice driver was unable
to recover from that state.

These patches combined together solve the described above issue on
customer side. Main focus here is to forbid producing Tx descriptors
when either carrier is not yet initialized or process of bringing
interface down has already started.

Thanks,
Maciej

v2->v3:
- drop redundant braces in patch 3 [Shannon]
- fix naming of ice_xsk_pool() in patch 6 [Shannon]
- add review and test tags

v1->v2:
- fix kdoc issues in patch 6 and 8
- drop Larysa's patches for now

Maciej Fijalkowski (7):
  ice: don't busy wait for Rx queue disable in ice_qp_dis()
  ice: replace synchronize_rcu with synchronize_net
  ice: modify error handling when setting XSK pool in ndo_bpf
  ice: toggle netif_carrier when setting up XSK pool
  ice: improve updating ice_{t,r}x_ring::xsk_pool
  ice: add missing WRITE_ONCE when clearing ice_rx_ring::xdp_prog
  ice: xsk: fix txq interrupt mapping

Michal Kubiak (1):
  ice: respect netif readiness in AF_XDP ZC related ndo's

 drivers/net/ethernet/intel/ice/ice.h      |  11 +-
 drivers/net/ethernet/intel/ice/ice_base.c |   4 +-
 drivers/net/ethernet/intel/ice/ice_main.c |   2 +-
 drivers/net/ethernet/intel/ice/ice_txrx.c |   6 +-
 drivers/net/ethernet/intel/ice/ice_xsk.c  | 153 +++++++++++++---------
 drivers/net/ethernet/intel/ice/ice_xsk.h  |   4 +-
 6 files changed, 104 insertions(+), 76 deletions(-)

-- 
2.34.1

