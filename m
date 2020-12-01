Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9EA2C9486
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Dec 2020 02:19:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 41A142A12C;
	Tue,  1 Dec 2020 01:19:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8JLUTbJoJJss; Tue,  1 Dec 2020 01:19:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BC20229C87;
	Tue,  1 Dec 2020 01:18:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AA0FC1BF350
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Dec 2020 01:18:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 98D87873C5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Dec 2020 01:18:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2i+jkulyO2Ld for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Dec 2020 01:18:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A742B873C3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Dec 2020 01:18:55 +0000 (UTC)
IronPort-SDR: 5IzgbWJ/Oyl3MPaeZtGxlnqsuavi/+X1tBZgyxfo8r6k/4/b5NrHvO/9XqZKmXz43pvuHi/eN8
 OFyFnj7aZgfw==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="190934011"
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="190934011"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 17:18:55 -0800
IronPort-SDR: zqrZDTpcBY429/48iEvx829mVfItS5dLAJ+RZ+qfqbrJX8xmkv7rTiKJIz8IxntzwfwT4ijMCp
 nens/ksfw/og==
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="549340012"
Received: from chenyu-office.sh.intel.com ([10.239.158.173])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 17:18:49 -0800
From: Chen Yu <yu.c.chen@intel.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>
Date: Tue,  1 Dec 2020 09:21:14 +0800
Message-Id: <cover.1606757180.git.yu.c.chen@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH 0/2][v3] Put the NIC in runtime suspended
 during s2ram
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
Cc: Len Brown <len.brown@intel.com>, Chen Yu <yu.c.chen@intel.com>,
 netdev@vger.kernel.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, "Brandt,
 Todd E" <todd.e.brandt@intel.com>, "David S. Miller" <davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The NIC is put in runtime suspend status when there is no cable connected.
As a result, it is safe to keep non-wakeup NIC in runtime suspended during
s2ram because the system does not rely on the NIC plug event nor WoL to wake
up the system. Besides that, unlike the s2idle, s2ram does not need to
manipulate S0ix settings during suspend.

Chen Yu (2):
  e1000e: Leverage direct_complete to speed up s2ram
  e1000e: Remove the runtime suspend restriction on CNP+

 drivers/net/ethernet/intel/e1000e/netdev.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
