Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A61B5389E13
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 May 2021 08:40:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0082E4049B;
	Thu, 20 May 2021 06:40:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RN0g5CseyDEZ; Thu, 20 May 2021 06:40:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0515F4017E;
	Thu, 20 May 2021 06:40:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 671B81BF23C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 May 2021 06:40:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5553582ED2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 May 2021 06:40:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cL0O288jbg7K for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 May 2021 06:40:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5DA3C83C6B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 May 2021 06:40:33 +0000 (UTC)
IronPort-SDR: QcIp7i5mS4gQ/W1g6tNoWcH7WtuAbiwe70U/XJObh4vfOP1+Qc62eXg7NQU4KYGK6PLGVLldHi
 gNkrMtCjJSeg==
X-IronPort-AV: E=McAfee;i="6200,9189,9989"; a="200855970"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="200855970"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 23:40:32 -0700
IronPort-SDR: Cl7kmvq3cLXqXSr/YwuY72/k/1LVchi5dhUveKlckqZa5wJZmHgml7H3qlsDpJStaFyA2i4UBB
 enbHRd5gwvCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="440182349"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga008.fm.intel.com with ESMTP; 19 May 2021 23:40:30 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 20 May 2021 08:28:05 +0200
Message-Id: <20210520062806.61684-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-net 0/2] ice XDP fixes
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

Hi,

here are two small fixes around XDP support in ice driver.

Jamal reported that ice driver does not support XDP on his side. This
got me really puzzling and I had no clue what was going on. Turned that
this is the case when device is in 'safe mode', so let's add a dedicated
ndo_bpf for safe mode ops and make it clear to user what needs to be
fixed. I've described that in the commit message of patch 1 more thoroughly.

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
