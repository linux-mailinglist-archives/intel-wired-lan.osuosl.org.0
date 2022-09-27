Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ECCF15EC3B1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Sep 2022 15:08:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 71BAA417B1;
	Tue, 27 Sep 2022 13:08:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 71BAA417B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664284085;
	bh=Eh5esxgip8Xnhy2xL1tvQXFeHNUwSWWN0mPRrZjJ40g=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=OvVTTmPfAHVBzor+AmVqdaZuewtknacukdqq6yghtQT5irYYhKEi81UkqMnxj0Gw2
	 Xpp9iBsTM2M+QNK+iBAndV5D5v9tZpo/9K5/80D2EbXvB6LtaIHCGGZesiOauqxImD
	 Rpsv7o0/L7Rjq2n8ayTLf9FIrOEN923W1SBfp40PsyWLW723bpVkNc1zSaCZ4M3eUx
	 Qr580Fj2fwJk6VSrWyFRICsRbXGrIdeYs7m2BdKfWLrw+RByJs1FBhwbegA/HJNnf7
	 lKMC8axpFgIM1gvfmMvot3OMxFYjNSmGLYg4+PtREv+SFI+ZoDtfkNv2EggFHM1gAz
	 jElVs8Pgkq3AA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XsYKvY7SGn5V; Tue, 27 Sep 2022 13:08:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9CE5441745;
	Tue, 27 Sep 2022 13:08:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9CE5441745
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6EC441BF47A
 for <intel-wired-lan@osuosl.org>; Tue, 27 Sep 2022 13:07:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 45892825B9
 for <intel-wired-lan@osuosl.org>; Tue, 27 Sep 2022 13:07:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 45892825B9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S1B0XYL_aeib for <intel-wired-lan@osuosl.org>;
 Tue, 27 Sep 2022 13:07:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3434B826BF
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3434B826BF
 for <intel-wired-lan@osuosl.org>; Tue, 27 Sep 2022 13:07:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="327667748"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="327667748"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 06:07:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="689984900"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="689984900"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by fmsmga004.fm.intel.com with ESMTP; 27 Sep 2022 06:07:53 -0700
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Tue, 27 Sep 2022 21:06:52 +0800
Message-Id: <20220927130656.32567-1-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664284077; x=1695820077;
 h=from:to:cc:subject:date:message-id;
 bh=LckD10FgykrV7aKsGyhhcdj30WJ7hHizfIuU2xDd8Cc=;
 b=XNfgwXzV/fwx77jNgY4sfAe744AjC0LXcvduHdBWnPbf70+BrfQANkBI
 DJ9g0vpY4i2xqHCjfqGZMEkfcAgUr8hUbBNsmL0Xg/+GH2XqHOvRQObCI
 p/sl9Xd3EVbVzyv1eyYOLCuPrk3Uv06NXGH1/A7D4gUAUmHuQ0uR2XrkR
 uExv+zWe/DpJzFPxGkjb6sL6pAi4rn5Pf9bAjUXlrBk5pi3wKcEG6BZpv
 kZoV/A2yh5IGKtGYpFf8YRQN3/IMKs0ChdovB9nuy0245lci5RQloXfCA
 Vr5wYFAt2Gf5INlA5tKaKhJkeR95rDlx7IGCo80Bllvb+3ovcAcqMjAYJ
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XNfgwXzV
Subject: [Intel-wired-lan] [PATCH v1 0/4] Add support for DMA timestamp for
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
Cc: netdev@vger.kernel.org, edumazet@google.com,
 noor.azura.ahmad.tarmizi@intel.com, kuba@kernel.org,
 muhammad.husaini.zulkifli@intel.com, davem@davemloft.net
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

Muhammad Husaini Zulkifli (3):
  ethtool: Add new hwtstamp flag
  net-timestamp: Increase the size of tsflags
  net: sock: extend SO_TIMESTAMPING for DMA Fetch

Vinicius Costa Gomes (1):
  igc: Add support for DMA timestamp for non-PTP packets

 drivers/net/ethernet/intel/igc/igc.h         | 10 +++
 drivers/net/ethernet/intel/igc/igc_base.h    |  2 +-
 drivers/net/ethernet/intel/igc/igc_defines.h |  2 +
 drivers/net/ethernet/intel/igc/igc_ethtool.c |  5 +-
 drivers/net/ethernet/intel/igc/igc_main.c    | 24 ++++--
 drivers/net/ethernet/intel/igc/igc_ptp.c     | 83 ++++++++++++++++++++
 include/linux/skbuff.h                       |  3 +
 include/net/sock.h                           | 12 +--
 include/uapi/linux/ethtool.h                 |  3 +
 include/uapi/linux/ethtool_netlink.h         |  1 +
 include/uapi/linux/net_tstamp.h              | 11 ++-
 net/ethtool/common.c                         |  7 ++
 net/ethtool/common.h                         |  2 +
 net/ethtool/strset.c                         |  5 ++
 net/ethtool/tsinfo.c                         | 17 ++++
 net/socket.c                                 |  5 +-
 16 files changed, 175 insertions(+), 17 deletions(-)

--
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
