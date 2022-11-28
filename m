Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EC9B563AE53
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Nov 2022 18:04:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8622760C14;
	Mon, 28 Nov 2022 17:04:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8622760C14
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669655051;
	bh=NNMioCE1wKT2g6E42iexpfHQeN0iNMI+hpH5/R5zDTA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=SBE4NLiyL84dscaykIeYBqnn92VVI5meV1r/ixJ5RfrxN/vHrJJypkApBsbRp5fCv
	 Gee9N+mmT8iicQp2YzSu/KhBFXwHV1O4sUWxqRBbqLRFovCWKOrtlpqXKPieFzQ3F5
	 dZX4UH/umo9ceIReoukjoXH1ygw6LX7ry8a1Rl9GWgQ3gtcKMZqRofMkonbtu2uoZe
	 8LZ8pN8F0rWanO8h+HS6gBhQXz0Awtzo94FwJIwe9SbHqgq7/ES4mH29bsmJm5j5d7
	 edd3mv75DtDFY1EJ+EzW9V4N7jkXA8SNsDsUQ1z+iVKAd9oJgo2fZtWKm/qxWhb+xy
	 0RVSyyk5zjUQg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NJDX66oZ3edq; Mon, 28 Nov 2022 17:04:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 815E760C13;
	Mon, 28 Nov 2022 17:04:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 815E760C13
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 38E401BF2C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 17:04:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 12CC1813B9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 17:04:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 12CC1813B9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m4YvbsPbEhvG for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Nov 2022 17:04:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 933C1813AC
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 933C1813AC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 17:04:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="379149291"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="379149291"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 09:03:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="676111114"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="676111114"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga001.jf.intel.com with ESMTP; 28 Nov 2022 09:03:33 -0800
Received: from kord.igk.intel.com (kord.igk.intel.com [10.123.220.9])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 2ASH3VNr017147; Mon, 28 Nov 2022 17:03:31 GMT
From: Mikael Barsehyan <mikael.barsehyan@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 28 Nov 2022 18:03:52 +0100
Message-Id: <20221128170354.2537171-1-mikael.barsehyan@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669655043; x=1701191043;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ISuGzeO0pB/4hpV7uZBjHJFGwo4SXNyJdmWWemWOEzM=;
 b=dEEBqcdSMZ1N7ebqsYgoLBzVxhqaDpploU34fNpJuzWFHF1KM2a6nRi3
 XgblaV/YSQ+ouVYiUBJz0YoUeUJP8AH/GQDoLmdg5FHu+U0n+xLHtMt7k
 X0EpwtyZ3ZPB3ofKTNg9oVVBFaYU+qhTUk6NlMQ8wtx7bl3Aa2OAr1wdc
 wREAnFGyihRgYNCNTvJYwRBOFamzFKROGuN05Nu4qCTe6YcRDe/LI5Mg8
 P2UeusjVVZePWEafVczIrx6Eru5SDL5noNJ6hqwyHPlPyfc80SojUAl7L
 kzoEB9zoa3X7xaY1XD8fcHLeK8qOTU2DaDf7bCK9VfqJDSeAS9T5ibj9D
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dEEBqcdS
Subject: [Intel-wired-lan] [PATCH net-next v1 0/2] add ethtool FEC-all option
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
Cc: Mikael Barsehyan <mikael.barsehyan@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This change introduces the new "all" mode into the Link Establishment
State Machine for ICE. Currently we have options to set FEC configuration:
force one of the supported FEC modes, no-FEC or auto-FEC. To establish
link we need to be able to add no-FEC mode into LESM procedure when the
user has set Auto-FEC. Basically, the idea is "automatically select a
suitable FEC mode, no FEC is also allowed". After that the LESM procedure
will cycle through all available modes (including No-FEC) during link
establishment process w/ LR/SR modules. However, the approach of using
two flags at once (AUTO and NO_FEC) was rejected by the community [1].
This results in a change to kernel side ethtool adding a new
ETHTOOL_A_FEC_ALL bool flag. For ETHTOOL_A_FEC_ALL the behavior is
similar to ETHTOOL_A_FEC_AUTO except no-FEC is one of the valid options.

The user is able to change FEC behavior at runtime - by sending an
appropriate command to the base driver.
Example usage:
 # ethtool --set-fec <device> encoding All

[1] https://lore.kernel.org/netdev/20220823150438.3613327-1-jacob.e.keller@intel.com/

Mikael Barsehyan (1):
  ethtool: add ETHTOOL_A_FEC_ALL request for FEC

Wojciech Drewek (1):
  ice: Implement ETHTOOL_FEC_ALL support

 Documentation/networking/ethtool-netlink.rst  | 14 +++--
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  1 +
 drivers/net/ethernet/intel/ice/ice_common.c   | 53 ++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_common.h   |  1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 13 ++++-
 drivers/net/ethernet/intel/ice/ice_main.c     |  3 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |  9 +++-
 include/uapi/linux/ethtool.h                  |  3 ++
 include/uapi/linux/ethtool_netlink.h          |  1 +
 net/ethtool/fec.c                             | 26 ++++++---
 net/ethtool/netlink.h                         |  2 +-
 11 files changed, 111 insertions(+), 15 deletions(-)

-- 
2.35.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
