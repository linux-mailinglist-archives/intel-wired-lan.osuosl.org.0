Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DCCA2037D0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2020 15:21:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1982E887B9;
	Mon, 22 Jun 2020 13:21:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zHi5hfOILayV; Mon, 22 Jun 2020 13:21:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 64186889F0;
	Mon, 22 Jun 2020 13:21:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 289671BF390
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 13:21:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2283A86D42
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 13:21:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z-oO-4IHjqpL for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2020 13:21:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7EF5F86D3C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 13:21:32 +0000 (UTC)
IronPort-SDR: AFWIW+dYBRoih6xBOz6ZXYqqO7ubBbA6aMtk28/3L0B42gyBwX6hZPHzmXdQff9nhKBkU44QDf
 WkJd4gK3fDOg==
X-IronPort-AV: E=McAfee;i="6000,8403,9659"; a="143714852"
X-IronPort-AV: E=Sophos;i="5.75,266,1589266800"; d="scan'208";a="143714852"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 06:21:31 -0700
IronPort-SDR: +faZkv575xRaTaIYiSbzI2FbIhmWuiugNq5gCXMwHgI3vfq2nuDqe05sLrJTuCIzybd0n32mtM
 SSS6Xy/451Pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,266,1589266800"; d="scan'208";a="422628508"
Received: from juergenr-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.33.83])
 by orsmga004.jf.intel.com with ESMTP; 22 Jun 2020 06:21:29 -0700
From: Magnus Karlsson <magnus.karlsson@intel.com>
To: magnus.karlsson@intel.com, bjorn.topel@intel.com,
 intel-wired-lan@lists.osuosl.org, jeffrey.t.kirsher@intel.com
Date: Mon, 22 Jun 2020 15:21:21 +0200
Message-Id: <1592832083-23249-1-git-send-email-magnus.karlsson@intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [Intel-wired-lan] [PATCH net-next 0/2] i40e: improve AF_XDP
 performance
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
Cc: maciejromanfijalkowski@gmail.com, maciej.fijalkowski@intel.com,
 netdev@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This small series improves AF_XDP performance for the i40e NIC. The
first patch optimizes the Tx completion path for AF_XDP and the second
one removes a division in the data path for the normal SKB path, XDP
as well as AF_XDP. Overall, the throughput of the l2fwd application in
xpdsock improves with around 4% on my machine.

This patch has been applied against commit 29a720c1042f ("Merge branch
'Marvell-mvpp2-improvements'")

Thanks: Magnus

Magnus Karlsson (2):
  i40e: optimize AF_XDP Tx completion path
  i40e: eliminate division in napi_poll data path

 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 15 +++++++++----
 drivers/net/ethernet/intel/i40e/i40e_txrx.h |  1 +
 drivers/net/ethernet/intel/i40e/i40e_xsk.c  | 34 ++++++++++++++++-------------
 3 files changed, 31 insertions(+), 19 deletions(-)

--
2.7.4
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
