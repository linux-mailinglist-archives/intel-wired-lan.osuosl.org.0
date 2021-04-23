Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3343C36916A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Apr 2021 13:42:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8744340617;
	Fri, 23 Apr 2021 11:42:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 99SuO3Xtp-wR; Fri, 23 Apr 2021 11:42:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 96A4D4060B;
	Fri, 23 Apr 2021 11:42:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 094621BF33F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 11:42:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E870440610
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 11:42:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nocygdPcogO8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Apr 2021 11:42:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 57C41403F8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Apr 2021 11:42:36 +0000 (UTC)
IronPort-SDR: 9kQSKPQHIl4a/OuDTEbnAxd/7nPzxaVuarjEJdvjvx6BmakvdMx/FaxtgJOzO5ZO72/y+6lZmC
 iFUkA+BQsREQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9962"; a="175539752"
X-IronPort-AV: E=Sophos;i="5.82,245,1613462400"; d="scan'208";a="175539752"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2021 04:42:35 -0700
IronPort-SDR: lxVdPmafCm/WUW99QQ1Q22grv+3gsk+5fr1QtAV/HHmaG8Tnixnl1U08hbrrlV/VE8p27fRGiY
 sOIHDJdccNWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,245,1613462400"; d="scan'208";a="385072428"
Received: from amlin-018-147.igk.intel.com ([10.102.18.147])
 by orsmga003.jf.intel.com with ESMTP; 23 Apr 2021 04:42:34 -0700
From: Eryk Rybak <eryk.roch.rybak@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 23 Apr 2021 13:43:24 +0200
Message-Id: <20210423114326.22393-1-eryk.roch.rybak@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 0/2] Fix ping is lost after
 configuring ADq on VF
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
Cc: Eryk Rybak <eryk.roch.rybak@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Properly reconfigure VF VSIs after VF request ADq.
Previously, VF main VSI in ADq had configured too many queues and had wrong
RSS size, which lead to packets not being consumed and drops 
in connectivity. Additionally, added setting vsi-> req_queue_pairs as 
the number of queues that will be distributed among the various TCs. 
Do it for non-zero values,which means the user requested a new number 
of queues.

The result is VF has ability to ping with ADq configured.

Eryk Rybak (2):
  i40e: Fix changing previously set num_queue_pairs for PFs
  i40e: Fix ping is lost after configuring ADq on VF

 drivers/net/ethernet/intel/i40e/i40e.h        |  1 +
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 89 ++++++++++++++++---
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 17 ++--
 3 files changed, 91 insertions(+), 16 deletions(-)


base-commit: 5ee9f22fb30f02076233f8fb105f83ff68fe6dbc
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
