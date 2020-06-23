Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F575204E44
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jun 2020 11:44:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2EAAC86C29;
	Tue, 23 Jun 2020 09:44:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w8Gjz69rWLEU; Tue, 23 Jun 2020 09:44:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5A0DE86A3C;
	Tue, 23 Jun 2020 09:44:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 61C371BF294
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2020 09:44:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5CB9D88FB0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2020 09:44:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CRvyx4b1jnCn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jun 2020 09:44:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A9B7088D67
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jun 2020 09:44:26 +0000 (UTC)
IronPort-SDR: Y2J3/INucMPxVkkGRtrsyN/Mnkcih9zsgFZtDg+JyWuXCaY9Bf+XG7McSUTlTybr+3afKr9/Ya
 rQqkbUmrc04A==
X-IronPort-AV: E=McAfee;i="6000,8403,9660"; a="162099548"
X-IronPort-AV: E=Sophos;i="5.75,270,1589266800"; d="scan'208";a="162099548"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2020 02:44:26 -0700
IronPort-SDR: 0z+W89ZQa5LaKnAFhUH+eLcTsWYsMLhtMCYGMM9UtrmMxjh4uXaNDSKaUZO1K7u+Fy5oQLsuw9
 +W27FpUUZlgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,270,1589266800"; d="scan'208";a="422947135"
Received: from mkarlsso-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.33.84])
 by orsmga004.jf.intel.com with ESMTP; 23 Jun 2020 02:44:22 -0700
From: Magnus Karlsson <magnus.karlsson@intel.com>
To: magnus.karlsson@intel.com, bjorn.topel@intel.com,
 intel-wired-lan@lists.osuosl.org, jeffrey.t.kirsher@intel.com,
 sridhar.samudrala@intel.com
Date: Tue, 23 Jun 2020 11:44:15 +0200
Message-Id: <1592905458-850-1-git-send-email-magnus.karlsson@intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [Intel-wired-lan] [PATCH net-next v2 0/3] i40e: improve AF_XDP
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
first patch optimizes the Tx completion path for AF_XDP. The second
one removes a division in the data path for the normal SKB path, XDP
as well as AF_XDP. Finally, the third one moves the test of a full Tx
ring to outside the send loop. Overall, the throughput of the l2fwd
application in xpdsock improves with around 8% on my machine.

v1->v2:
* Removed unnecessary variables in i40e_clean_xdp_tx_irq [Sridhar]
* Added one further optimization to Tx path in a new patch [Sridhar]
* Fixed two API documentation warnings with make W=1

This patch has been applied against commit 8af7b4525acf ("Merge branch
'net-atlantic-additional-A2-features'")

Thanks: Magnus

Magnus Karlsson (3):
  i40e: optimize AF_XDP Tx completion path
  i40e: eliminate division in napi_poll data path
  i40e: move check of full Tx ring to outside of send loop

 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 17 ++++++---
 drivers/net/ethernet/intel/i40e/i40e_txrx.h |  1 +
 drivers/net/ethernet/intel/i40e/i40e_xsk.c  | 57 +++++++++++++----------------
 drivers/net/ethernet/intel/i40e/i40e_xsk.h  |  3 +-
 4 files changed, 39 insertions(+), 39 deletions(-)

--
2.7.4
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
