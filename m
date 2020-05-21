Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A711DDA46
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 May 2020 00:32:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 361AF24F88;
	Thu, 21 May 2020 22:32:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rbtaxsyyNiUc; Thu, 21 May 2020 22:32:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3952F24F0B;
	Thu, 21 May 2020 22:32:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B387B1BF3A0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2020 17:58:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A436E2040A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2020 17:58:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lr3MQCblitiU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 May 2020 17:58:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id 3038D20406
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2020 17:58:15 +0000 (UTC)
IronPort-SDR: kCPYn0RC0ktBqSqdxhjT/tzDrWE2yVY5BM+qHCSBD5aimNZ/HdU5qeFDqnRQAIICXuSEuzYnJE
 K5LB+vSz8pmQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2020 10:58:14 -0700
IronPort-SDR: TcfMhpGw3LfGf0eahhdlMV9ev/8N/Xltjf0NJSvAFjXaminb+VNw5h8b/ssbIBAipk9ek+wVFH
 lAWktAqTPb0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,418,1583222400"; d="scan'208";a="254058362"
Received: from chenyu-office.sh.intel.com ([10.239.158.173])
 by orsmga007.jf.intel.com with ESMTP; 21 May 2020 10:58:11 -0700
From: Chen Yu <yu.c.chen@intel.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Auke Kok <auke-jan.h.kok@intel.com>, Jeff Garzik <jeff@garzik.org>
Date: Fri, 22 May 2020 01:58:02 +0800
Message-Id: <cover.1590081982.git.yu.c.chen@intel.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Thu, 21 May 2020 22:32:40 +0000
Subject: [Intel-wired-lan] [PATCH 0/2] Make WOL of e1000e consistent with
 sysfs device wakeup
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
Cc: Len Brown <len.brown@intel.com>, "Shevchenko,
 Andriy" <andriy.shevchenko@intel.com>, netdev@vger.kernel.org,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Chen Yu <yu.c.chen@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently the WOL(Wake On Lan) bahavior of e1000e is not consistent with its corresponding
device wake up ability.
Fix this by:
1. Do not wake up the system via WOL if device wakeup is disabled
2. Make WOL display info from ethtool consistent with device wake up
   settings in sysfs

Chen Yu (2):
  e1000e: Do not wake up the system via WOL if device wakeup is disabled
  e1000e: Make WOL info in ethtool consistent with device wake up
    ability

 drivers/net/ethernet/intel/e1000e/ethtool.c |  2 +-
 drivers/net/ethernet/intel/e1000e/netdev.c  | 14 ++++++++++----
 2 files changed, 11 insertions(+), 5 deletions(-)

-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
