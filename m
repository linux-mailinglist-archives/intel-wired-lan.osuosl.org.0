Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 463EF696ECD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Feb 2023 22:01:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BD78E60FAD;
	Tue, 14 Feb 2023 21:01:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD78E60FAD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676408491;
	bh=xP5JfRj/vyk/emZRLd0X4imWUDU5+AG/rObd0Q7CMj4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QAg7dreutloyNSlFt5NfpYlIJjVz3CM4S/nQ1brJzeaLQDM00IbjciY4pj3nZpO4s
	 RGgwGaG2cWIFfkHHx404+ZkUbkSs8IGB5VD5fvOz3B01O5IVolGp4gbnc4p7aUzrMQ
	 S9q5rjLUy/aM0D+xpuUA2todJjwGhqhvPaL1NgKhs571TuaspIXJeJ7lOo4UwzqrWL
	 1nh9Pwc0FAVzuji1tTC8fqnU9hboKGcJ9h7V3tpALTrf5BOtCrAdiVSmVb8F//xqMe
	 jixZ5QKrIT+bOAf7pcAuShULmK2UDTqzGfWjo6vrqaD/4CQ9piuMgyGZ+jb6fM1vzt
	 eXKhW1/LQNoxA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XNW31ZVJ8vIV; Tue, 14 Feb 2023 21:01:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BACC260F80;
	Tue, 14 Feb 2023 21:01:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BACC260F80
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4B6AB1BF299
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 21:01:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 22C1B81E59
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 21:01:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 22C1B81E59
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8ieJYxhQJ2qZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Feb 2023 21:01:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0D14D81E4F
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0D14D81E4F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 21:01:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="417490086"
X-IronPort-AV: E=Sophos;i="5.97,297,1669104000"; d="scan'208";a="417490086"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 13:01:24 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="699677921"
X-IronPort-AV: E=Sophos;i="5.97,297,1669104000"; d="scan'208";a="699677921"
Received: from jbrandeb-coyote30.jf.intel.com ([10.166.29.19])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 13:01:23 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: kuba@kernel.org,
	davem@davemloft.net,
	pabeni@redhat.com
Date: Tue, 14 Feb 2023 13:01:16 -0800
Message-Id: <20230214210117.23123-2-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230214210117.23123-1-jesse.brandeburg@intel.com>
References: <20230214210117.23123-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676408485; x=1707944485;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GXLHiMIDgAttvwbqRAYYGaig24AOFGRXzHGq4FyP91Y=;
 b=oLEgHnmEMj5keP4at0u+zTYbYg8Cg3pT+jFnXM+gKvo01T6oO68hUHzX
 SARLLZZw8oCHBF8cQoc3rN9LiDzSVjq2TmAbT0ocn7ri3rjyt3Fe6enKm
 DjJJzD1LgFTY/8Q6eG3hxsH04QeZva7ZnbgsdtkEsFykL6vxotP0whRse
 s3bNRmMJ+pw5MShS4+3SfcVUiR5aXOkC1BWkPXxg/yQafe8jMZ6WoBjm0
 BfhKbMyvnXyBhuo/0hQd0csXRmTiqxjRa3W9QnC4stt3awjLl9tCO+6Xr
 OyLn4rknCeG7fW4XOSEb8mnr+SXOymSEa48F0xxVZfMbRxRDyAxZb3GMh
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=oLEgHnmE
Subject: [Intel-wired-lan] [PATCH net-next v1 1/2] net/core: print message
 for allmulticast
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
 intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When the user sets or clears the IFF_ALLMULTI flag in the netdev, there are
no log messages printed to the kernel log to indicate anything happened.
This is inexplicably different from most other dev->flags changes, and
could suprise the user.

Typically this occurs from user-space when a user:
ip link set eth0 allmulticast <on|off>

However, other devices like bridge set allmulticast as well, and many
other flows might trigger entry into allmulticast as well.

The new message uses the standard netdev_info print and looks like:
[  413.246110] ixgbe 0000:17:00.0 eth0: entered allmulticast mode
[  415.977184] ixgbe 0000:17:00.0 eth0: left allmulticast mode

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 net/core/dev.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/net/core/dev.c b/net/core/dev.c
index 7307a0c15c9f..ad1e6482e1c1 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -8391,6 +8391,8 @@ static int __dev_set_allmulti(struct net_device *dev, int inc, bool notify)
 		}
 	}
 	if (dev->flags ^ old_flags) {
+		netdev_info(dev, "%s allmulticast mode\n",
+			    dev->flags & IFF_ALLMULTI ? "entered" : "left");
 		dev_change_rx_flags(dev, IFF_ALLMULTI);
 		dev_set_rx_mode(dev);
 		if (notify)
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
