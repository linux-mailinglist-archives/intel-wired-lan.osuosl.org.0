Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E42A60202B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Oct 2022 03:09:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DAC8860FAD;
	Tue, 18 Oct 2022 01:09:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DAC8860FAD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666055353;
	bh=5b/VAz5G4Bf0bcg5jnqCA+HBPuxtmYiRVpzYfg49FiU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=10rCpezshnAw4SNuwTHExqFkJCpx6V4wk/MCP6MkGC8WPX/S4znhSpme3aWEfSuHw
	 Hx0EmYy8bTkFSUuoHjXHHFM5KXarsMlsykAGvywVvCoGZZZ3b+uqlzRxGDMK8YyQr/
	 GzYWmoGGtDkQ8qWq5F31Iu0kU6m59EMy/ZGw8eRHrr9MiHp5ZKSMYxmeoGO1nWi+dK
	 UG9+QG8qzLt7Xn37BSLFMUE8yjgkMING2D+yKlVG8eaxRt7PRLmHrD4c3xG/odgWS0
	 oHwtbmO4Z2Aee9R2ni8y9IxXFV+6DB1X0RMszPOaf50keiyDDsezQ3ZVbmwNu+v1mv
	 /CwhH0bMj47gQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9e5I1al-t2ub; Tue, 18 Oct 2022 01:09:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C10F860FA1;
	Tue, 18 Oct 2022 01:09:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C10F860FA1
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B09791BF399
 for <intel-wired-lan@osuosl.org>; Tue, 18 Oct 2022 01:09:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8B891607C0
 for <intel-wired-lan@osuosl.org>; Tue, 18 Oct 2022 01:09:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8B891607C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CteQbD7ohdkA for <intel-wired-lan@osuosl.org>;
 Tue, 18 Oct 2022 01:09:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2417260776
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2417260776
 for <intel-wired-lan@osuosl.org>; Tue, 18 Oct 2022 01:09:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="307624101"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="307624101"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 18:09:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="717704389"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="717704389"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Oct 2022 18:09:01 -0700
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Tue, 18 Oct 2022 09:07:28 +0800
Message-Id: <20221018010733.4765-1-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666055346; x=1697591346;
 h=from:to:cc:subject:date:message-id;
 bh=0D9zTvrp8loy1p/wd/7ypz6za/bgpsN3QKuD9hC9aM4=;
 b=BPnXJDLhHsAvy3ZoT0/+YcriRO6/NPe0ofGIG1Uhskwf5ckDEq00f4Fr
 aEMXCEMzhTCYHpM2ZsLWmz5ZWtbq/yrsl6ufqbajKgUCQStYmzMOMhZWt
 y3SqBBergYpWExdPA3ZWg43j3MduPJ9DHoPhtJlXPVT/d+cI3mRUHUV1W
 cbMdH1Jic8gXpy+Hvf9PNQ7uajoZ1lKksi4NMtkTkPHxk1rENjbYpXmtw
 ofDwKtq3nNj36nTEevQXEcC2too9soufhFwVjZ+AiiqhdIFNWKTjOJp4L
 ms4b4DIpTIHMm9lx/aXkzw9pflJoqapMAtOFQAp5Das+oRHPJ5+WVNXxD
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BPnXJDLh
Subject: [Intel-wired-lan] [PATCH v2 0/5] Add support for DMA timestamp for
 non-PTP packets
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
Cc: leon@kernel.org, netdev@vger.kernel.org, richardcochran@gmail.com,
 saeed@kernel.org, edumazet@google.com, gal@nvidia.com, kuba@kernel.org,
 michael.chan@broadcom.com, muhammad.husaini.zulkifli@intel.com,
 davem@davemloft.net, andy@greyhouse.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The HW TX timestamps created by the NIC via socket options can be
requested using the current network timestamps generation capability of
SOF_TIMESTAMPING_TX_HARDWARE. The most common users of this socket flag
is PTP, however other packet applications that require tx timestamps might
also ask for it.

The problem is that, when there is a lot of traffic, there is a high chance
that the timestamps for a PTP packet will be lost if both PTP and Non-PTP
packets use the same SOF TIMESTAMPING TX HARDWARE causing the tx timeout.

DMA timestamps through socket options are not currently available to
the user. Because if the user wants to, they can configure the hwtstamp
config option to use the new introduced DMA Time Stamp flag through the
setsockopt().

With these additional socket options, users can continue to utilise
HW timestamps for PTP while specifying non-PTP packets to use DMA
timestamps if the NIC can support them.

This patch series also add a new HWTSTAMP_FILTER_DMA_TIMESTAMP receive
filters. This filter can be configured for devices that support/allow the
DMA timestamp retrieval on receive side.

Any socket application can be use to verify this.
TSN Ref SW application is been used for testing by changing as below:

	int timestamping_flags = SOF_TIMESTAMPING_TX_HARDWARE_DMA_FETCH;

	strncpy(hwtstamp.ifr_name, opt->ifname, sizeof(hwtstamp.ifr_name)-1);
	hwtstamp.ifr_data = (void *)&hwconfig;
	hwconfig.tx_type = HWTSTAMP_TX_ON;
	hwconfig.flags = HWTSTAMP_FLAG_DMA_TIMESTAMP;
	hwconfig.rx_filter = HWTSTAMP_FILTER_ALL;

	if (ioctl(sock, SIOCSHWTSTAMP, &hwtstamp) < 0) {
		fprintf(stderr, "%s: %s\n", "ioctl", strerror(errno));
		exit(1);
	}

	if (setsockopt(sock, SOL_SOCKET, SO_TIMESTAMPING, &timestamping_flags,
			sizeof(timestamping_flags)) < 0)
		exit_with_error("setsockopt SO_TIMESTAMPING");

v1 -> v2:
	- Move to the end for the new enum.
	- Add new HWTSTAMP_FILTER_DMA_TIMESTAMP receive filters.

Muhammad Husaini Zulkifli (4):
  ethtool: Add new hwtstamp flag
  net-timestamp: Increase the size of tsflags
  net: sock: extend SO_TIMESTAMPING for DMA Fetch
  ethtool: Add support for HWTSTAMP_FILTER_DMA_TIMESTAMP

Vinicius Costa Gomes (1):
  igc: Add support for DMA timestamp for non-PTP packets

 drivers/net/ethernet/intel/igc/igc.h         | 10 +++
 drivers/net/ethernet/intel/igc/igc_base.h    |  2 +-
 drivers/net/ethernet/intel/igc/igc_defines.h |  2 +
 drivers/net/ethernet/intel/igc/igc_ethtool.c |  5 +-
 drivers/net/ethernet/intel/igc/igc_main.c    | 24 ++++--
 drivers/net/ethernet/intel/igc/igc_ptp.c     | 84 ++++++++++++++++++++
 include/linux/skbuff.h                       |  3 +
 include/net/sock.h                           | 12 +--
 include/uapi/linux/ethtool.h                 |  3 +
 include/uapi/linux/ethtool_netlink.h         |  1 +
 include/uapi/linux/net_tstamp.h              | 14 +++-
 net/core/dev_ioctl.c                         |  1 +
 net/ethtool/common.c                         |  8 ++
 net/ethtool/common.h                         |  2 +
 net/ethtool/strset.c                         |  5 ++
 net/ethtool/tsinfo.c                         | 17 ++++
 net/socket.c                                 |  5 +-
 17 files changed, 181 insertions(+), 17 deletions(-)

--
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
