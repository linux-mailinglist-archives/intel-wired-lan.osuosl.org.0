Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB6644DCDB2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Mar 2022 19:37:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 459F740AFB;
	Thu, 17 Mar 2022 18:37:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E_V-_TWgZe04; Thu, 17 Mar 2022 18:37:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2009A402A8;
	Thu, 17 Mar 2022 18:37:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 474281BF349
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Mar 2022 18:37:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3387660AF2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Mar 2022 18:37:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i3OwCHaYo0Ew for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Mar 2022 18:37:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E279860AEC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Mar 2022 18:37:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647542256; x=1679078256;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3Qy5Jfak+WfSH4cvrk8j+KOknstRSeTtdDojbU/Stvc=;
 b=YwNcpYl7Lv6qmMO9KkAnF0fClq3wMX7JpjZ1BPiSlaeQsP37uQDQGdSr
 w+U+dw2sIVEPcNw3+u3k7LaBCKKDAXp4YDPGqTXuluNI2Pe0TvzCPQ2nB
 c9zsyrKfaa7CGL/UC8LtiX5JBFl8CDNTo3gH1yjWN2rGR8rj2lfGV/s2U
 WJr0QdHYyCNpP/P4/UdpEhThrvGeorP6R3UNi1p9kacHvq5T9oQKXaSwS
 rxFGAEjvW08FChJXFhYlEnlWzwwefk9Qf9rBpTbPw7w6ftGfsCKvJCdVQ
 Js4aCb6fMj86qCfA9U62mpUqT7d5oiYojuff6b1I+I5hPXXp9ZN4JoNGm w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="317669447"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="317669447"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 11:37:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="558057172"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orsmga008.jf.intel.com with ESMTP; 17 Mar 2022 11:37:33 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 17 Mar 2022 19:36:26 +0100
Message-Id: <20220317183629.340350-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-net 0/3] ice: xsk: various fixes
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
Cc: netdev@vger.kernel.org, kuba@kernel.org, bpf@vger.kernel.org,
 davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

We were solving issues around AF_XDP busy poll's not-so-usual scenarios,
such as very big busy poll budgets applied to very small HW rings. This
set carries the things that were found during that work that apply to
net tree.

One thing that was fixed for all in-tree ZC drivers was missing on ice
side all the time - it's about syncing RCU before destroying XDP
resources. Next one fixes the bit that is checked in ice_xsk_wakeup and
third one avoids false setting of DD bits on Tx descriptors.

Thanks!

Maciej Fijalkowski (3):
  ice: synchronize_rcu() when terminating rings
  ice: xsk: fix VSI state check in ice_xsk_wakeup()
  ice: clear cmd_type_offset_bsz for TX rings

 drivers/net/ethernet/intel/ice/ice.h      | 2 +-
 drivers/net/ethernet/intel/ice/ice_main.c | 6 ++++--
 drivers/net/ethernet/intel/ice/ice_xsk.c  | 6 ++++--
 3 files changed, 9 insertions(+), 5 deletions(-)

-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
