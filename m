Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 09773389E2A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 May 2021 08:47:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6842C83C80;
	Thu, 20 May 2021 06:47:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a1LbmO9PU4yH; Thu, 20 May 2021 06:47:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 77C5D83C6B;
	Thu, 20 May 2021 06:47:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7A3B11BF23C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 May 2021 06:47:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6904A4017E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 May 2021 06:47:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iMzqmWp7vefK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 May 2021 06:47:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D4FCB400AB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 May 2021 06:47:01 +0000 (UTC)
IronPort-SDR: ekjCCU3+rlMhX6y/zd+O4A1HOUk3b+in/i1DVTYhrRdXW41PuBDPGiFLIq/tymFz1rPGXXXHdz
 NHsSZvJupZLQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9989"; a="265072131"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="265072131"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 23:47:00 -0700
IronPort-SDR: Vq/jT1J3z7ztUugLsJzOWxxm6AyP6qVflRGJk4L/Dr2auV/vRk5aWGtmD2gnXMkmaJMue8Qd5h
 2Ckag79hchAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="543203120"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga001.fm.intel.com with ESMTP; 19 May 2021 23:46:58 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 20 May 2021 08:34:58 +0200
Message-Id: <20210520063500.62037-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 intel-net 0/2] ice XDP fixes
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
Cc: netdev@vger.kernel.org, bjorn@kernel.org, kuba@kernel.org,
 bpf@vger.kernel.org, davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

[resending as v2, vim session got broken while editing patch]

Hi,

here are two small fixes around XDP support in ice driver.

Jamal reported that ice driver does not support XDP on his side. This
got me really puzzling and I had no clue what was going on. Turned that
this is the case when device is in 'safe mode', so let's add a dedicated
ndo_bpf for safe mode ops and make it clear to user what needs to be
fixed. I've described that in the commit message of patch 1 more
thoroughly.

Second issue was found during implementing XDP Tx fallback path for
unsufficient queue count case, which I will send on next week once I'm
back from woods. Hopefully.

Thanks!

Maciej Fijalkowski (2):
  ice: add ndo_bpf callback for safe mode netdev ops
  ice: parametrize functions responsible for Tx ring management

 drivers/net/ethernet/intel/ice/ice_lib.c  | 18 ++++++++++--------
 drivers/net/ethernet/intel/ice/ice_main.c | 15 +++++++++++++++
 2 files changed, 25 insertions(+), 8 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
