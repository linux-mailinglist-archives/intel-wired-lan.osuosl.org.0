Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F40EB6A5D6C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Feb 2023 17:48:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 85F0D81256;
	Tue, 28 Feb 2023 16:48:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 85F0D81256
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677602894;
	bh=Gp57vdH7B6FsHme+d63j0TcVL5gXR234ZK4r1bfo3xI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=E1t+9iQFX3K0px0Ffbm+SEjppIMD/uxI6+QDq7muLos3wDiu2qJoe2RiXr16W3zBI
	 9bPjdlvOBmHchffTu0t1XBGfZd+WopuDbxOniu/ZoCnAhEHxC+UdoZJs0Pr245SH/B
	 fQljsXUc0t6YiHNCKDFSwqzySIy8N7I7juPiAuhc4pqWJcu9BYIZ0w7Lkh9ZGsc3qC
	 9qVYV51K0p/CnY68eiQJGRfDGRXN9jg2w5oSQ5Olryg5vRfAFOyiDLcu9w0BYhpi/a
	 XI1Zwi6ApxlzXSL7sez/2JdtBvoWohm4cKUX5qg9El73gnO0E8MDWwXc91GDGGUiMO
	 1GbC5ck5iOORg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PPxlceW05fV0; Tue, 28 Feb 2023 16:48:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8A88981207;
	Tue, 28 Feb 2023 16:48:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A88981207
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1742B1BF5A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 16:48:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AB57F60E83
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 16:48:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB57F60E83
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tmP4A9KXWWsY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Feb 2023 16:48:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D5D92607E1
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D5D92607E1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 16:48:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="317986831"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="317986831"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2023 08:48:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="624107465"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="624107465"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga003.jf.intel.com with ESMTP; 28 Feb 2023 08:48:03 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 07A41369ED;
 Tue, 28 Feb 2023 16:48:01 +0000 (GMT)
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Tue, 28 Feb 2023 17:46:11 +0100
Message-Id: <20230228164613.1360409-1-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677602886; x=1709138886;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WRHLtls8wXHkKG0wPUdAzJHiEECJD6P2u5mrgkq32og=;
 b=GIITSovHGRKPNNTtFu04OQGPMroln0wHW/qqp0zCw8RKm17eppp+CFws
 /PUYx1LkfG9HzeeORUnfDR2tB0YnNvcsKjlmd14wsubbFTadTjxdS7klW
 n9oTsrlgL7i41IbRyNU/A/K9xeXlMmTy0OYlHv7BMZ6gJv8uWL21EvvBD
 icJ+BV2gcU7tlii29k/2gyfhtaBBsiOXwQFzoX5TjPuuTTEtHfHF+7jdi
 SaK0GFNAczUaWQbkh0/rKSVg/0JeN1s8xl4Cbdtcxfz3v5LaZoV4aNw2v
 FThPn5cmwovc4gLUJYnb07o152pMgB0iYdhnmie0jWGd+/5Gbs6tGEKlF
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GIITSovH
Subject: [Intel-wired-lan] [PATCH net 0/2] iavf: fix double-broken HW hash
 report
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
Cc: Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently, passing HW hash from descriptors to skb is broken two times.
The first bug effectively disables hash from being filled at all, unless
%NETIF_F_RXHASH is *disabled* via Ethtool. The second incorrectly says
that IPv6 UDP packets are L3, which also triggers CPU hashing when
needed (the networking core treats only L4 HW hash as "true").
The very same problems were fixed in i40e and ice, but not in iavf,
although each of the original commits bugged at least two drivers.
It's never too late (I hope), so fix iavf this time.

Alexander Lobakin (2):
  iavf: fix inverted Rx hash condition leading to disabled hash
  iavf: fix non-tunneled IPv6 UDP packet type and hashing

 drivers/net/ethernet/intel/iavf/iavf_common.c | 2 +-
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

---
To Tony: this is very trivial and tested for a while already, I hope it
could hit one of the first couple RCs :p
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
