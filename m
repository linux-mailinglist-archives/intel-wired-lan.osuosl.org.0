Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 26BBF781891
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Aug 2023 11:43:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BFE5760B9A;
	Sat, 19 Aug 2023 09:43:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BFE5760B9A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692438233;
	bh=Xyp4NgpOtLz+bXsTAOVxfRqkQa79Q1HuTYhptOJLIp8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=UBdHgk1w1W97Z44ZFdheB0fX8LQ2WmYimxvyE9W7yZb0VBnuefOfRPt+EuEl+LI3j
	 lJqi5kYfgDMHdH/rTdyhr92THDu8a9diZMz9aFgDiABDaM9aYfXb1A7svNRm8aVNQf
	 MZyLZUUjsfByZ18b0bb4aGEZLAK4F8xJuwOuN4rgvXR6zZZ8K4IzEsshd46WFpGhE7
	 BIEZnVB63W/Ce2d68QLF2MIzcN6U/wB1Lbtw8/Tcih2mF8nvvsAxwulk3YyQwwPwV3
	 QDNI+yHV+6lgAh9K7a+vQghQUfQxaW9fNp8QXpfrYI29r++BlgK7iEdXfEO2EmJD3K
	 6nayQ3+1TOQWw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NXWcPF4Bm0W4; Sat, 19 Aug 2023 09:43:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8179760B98;
	Sat, 19 Aug 2023 09:43:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8179760B98
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 741211BF306
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Aug 2023 09:43:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4953641918
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Aug 2023 09:43:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4953641918
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id awT8E8Ek3O9U for <intel-wired-lan@lists.osuosl.org>;
 Sat, 19 Aug 2023 09:43:45 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7D3DA4190B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Aug 2023 09:43:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7D3DA4190B
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="352870280"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="352870280"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2023 02:43:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="878937808"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.168])
 by fmsmga001.fm.intel.com with ESMTP; 19 Aug 2023 02:43:47 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sat, 19 Aug 2023 02:36:17 -0700
Message-Id: <20230819093617.14985-1-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692438225; x=1723974225;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tRw9dLHguy5e/5iRm9Mr/7nX4y/bvWhuuCW+9pQB8f0=;
 b=juX4+raSYq667wIGyRj7WzetOFs1STc6sRrFZJUPyYqH/4WS3T3MSgKp
 W0Vik6S2ezN302u3BfnVYwK5RGVdJR6weJvUVVQZojt31Dt5rxNIY2hC1
 jYxM3v52gQKGl1rmBBXVaes/83aGjqHe65KitsEiL2M5QB1FRVcoa07JI
 1ILfqHBN9PDUvDyQ0svAbTt18Hw2udWVUoDsQqjL+7SIoxvmbH8xP6A5W
 OkebmRIPNb5SEhC/VXNSI+5DCInA7B0A0wJ6h0TGu2QJIx2YgRCXpZjs2
 fdwiSTKqSsrJshAUplQ48lJ2pvM2rC47SOT70mJM1H6Na8/6Ei2jEGNQw
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=juX4+raS
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/9] ice: Add basic E830
 support
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
Cc: netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is an initial patchset adding the basic support for E830. E830 is
the 200G ethernet controller family that is a follow on to the E810
100G family. The series adds new devices IDs, a new MAC type, several
registers and a support for new link speeds. As the new devices use
another version of ice_aqc_get_link_status_data admin command, the
driver should use different buffer length for this AQ command when
loaded on E830.

Alice Michael (1):
  ice: Add 200G speed/phy type use

Dan Nowlin (1):
  ice: Add support for E830 DDP package segment

Paul Greenwalt (4):
  ice: Add E830 device IDs, MAC type and registers
  ethtool: Add forced speed to supported link modes maps
  ethtool: Add missing ETHTOOL_LINK_MODE_ to forced speed map
  ice: Add ice_get_link_status_datalen

Pawel Chmielewski (3):
  ice: Refactor finding advertised link speed
  ice: Remove redundant zeroing of the fields.
  ice: Enable support for E830 device IDs

Change log:

v2: move qede Ethtool speed to link modes mapping to be shared by other
drivers (Andrew)

 drivers/net/ethernet/intel/ice/ice.h          |   1 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  48 +-
 drivers/net/ethernet/intel/ice/ice_common.c   |  94 ++--
 drivers/net/ethernet/intel/ice/ice_ddp.c      | 426 +++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_ddp.h      |  27 +-
 drivers/net/ethernet/intel/ice/ice_devids.h   |  10 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 155 ++++---
 drivers/net/ethernet/intel/ice/ice_ethtool.h  |   8 +
 .../net/ethernet/intel/ice/ice_ethtool_fdir.c |  24 +-
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |  52 ++-
 drivers/net/ethernet/intel/ice/ice_main.c     |  71 +--
 drivers/net/ethernet/intel/ice/ice_type.h     |   6 +-
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    |  29 +-
 .../net/ethernet/qlogic/qede/qede_ethtool.c   |  92 +---
 include/linux/ethtool.h                       | 154 +++++++
 net/ethtool/ioctl.c                           |  15 +
 16 files changed, 896 insertions(+), 316 deletions(-)

-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
