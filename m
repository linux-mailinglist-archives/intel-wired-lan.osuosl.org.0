Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B989B845BD1
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Feb 2024 16:42:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 235EE6159C;
	Thu,  1 Feb 2024 15:42:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 235EE6159C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706802153;
	bh=5OHPML0YuzxUvh1mScoK5x/euRiHUCD1cnE2zK5rbNg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=QWaTvx1j9gloJh/tAHPSmEpg/40uxrhi6tT0ABz4P6UCzo8Wc4wNqKCXHh+YwaTIl
	 z/NEKOdkKbQ+AMQb1LysXvHHmJdcYSCLmKaVC5jmoQNSgWSSLzlAoZG0swaARBP3pZ
	 0ZWSCjFVUlXrrRj7Cm53tK1gwtIRTrDOJ8ciCXm7T4JJ2JEgnYgauBPfPfLb79j/9W
	 RYVx9n0tGAtTtNlVJRRrbOU1WPJnhfhTRpFAnRublWllVO+kIsRF21Eww4E/hJU6nT
	 60se16nTVl7kjqtDKJs+r8zShG+epIr0OkWyWzYs7B/a5HavEmJ7ckUbaFs2s5GR8q
	 lmg2UkjrnjbeQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lapcqYaAF4Rz; Thu,  1 Feb 2024 15:42:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2EA3B60B27;
	Thu,  1 Feb 2024 15:42:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2EA3B60B27
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3A2CB1BF97E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 15:42:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0FA2B84684
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 15:42:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0FA2B84684
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3Dgw1LOafL2Z for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Feb 2024 15:42:26 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4575C84682
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 15:42:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4575C84682
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="10551401"
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; d="scan'208";a="10551401"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 07:42:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; 
   d="scan'208";a="4418153"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmviesa005.fm.intel.com with ESMTP; 01 Feb 2024 07:42:24 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  1 Feb 2024 16:42:17 +0100
Message-Id: <20240201154219.607338-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706802146; x=1738338146;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=swRC6Qpw9COjx9ww7MlyDqVkOihziKADyrjB65UCFoc=;
 b=OqH96o2CKtD8HZva8Kb5PjJUV9fQdV/0wMKR15wmg7lp1MgIoeAwTnQa
 BVDrx/yWo5Dr98TVeUTfbXnI/zTv13X0/3QlB4VvwwPe03+T5SkDAroGN
 FYrYxAc//kkV+iFV4KgDRh+XBxnCiGPmx61ag1uRpDzjhNaPPgXhnPfv+
 z8GhLWmOB2FBGaZAan+VQ9OUnaDjqlRWmBZ3SFp0JcajlT/T+ZaqZToV0
 Hu8s4VU1vlYqK77nwY2xHW1I1p9FsZ6x0fhRRAYWQq4MdcIRbrNH2rMkf
 w2dNM8p6SkVx9Kwm73bde6cVnHZHU2WTR2tUbVSwHCF/3pC4F8rvKAKg+
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OqH96o2C
Subject: [Intel-wired-lan] [PATCH iwl-net 0/2] i40e: disable XDP Tx queues
 on ifdown
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
Cc: netdev@vger.kernel.org, Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 anthony.l.nguyen@intel.com, magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Seth reported in [0] that he couldn't get traffic flowing again after a
round of down/up of interface that i40e driver manages.

While looking into fixing Tx disable timeout issue I also noticed that
there is a doubled function call on Rx side which is fixed in patch 1.

Thanks,
Maciej

[0]: https://lore.kernel.org/netdev/ZbkE7Ep1N1Ou17sA@do-x1extreme/

Maciej Fijalkowski (2):
  i40e: avoid double calling i40e_pf_rxq_wait()
  i40e: take into account XDP Tx queues when stopping rings

 drivers/net/ethernet/intel/i40e/i40e_main.c | 21 ++++++++-------------
 1 file changed, 8 insertions(+), 13 deletions(-)

-- 
2.34.1

