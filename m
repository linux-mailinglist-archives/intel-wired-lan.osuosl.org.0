Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BFEB22C4E94
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Nov 2020 07:11:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E6C9C2E0EB;
	Thu, 26 Nov 2020 06:11:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lRJujZLDZkvy; Thu, 26 Nov 2020 06:11:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 86991274B0;
	Thu, 26 Nov 2020 06:11:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3F1CD1BF863
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Nov 2020 06:11:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3ABA187683
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Nov 2020 06:11:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YZKlrBeRw3Yi for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Nov 2020 06:11:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6036287653
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Nov 2020 06:11:47 +0000 (UTC)
IronPort-SDR: dJbFAArqR2c0MRy9TH3+VOhcqu5MUhBPy6/IaR6zgmtlXENeFUZ8Ze79+Lpb7UpP4Ionkeq/Nq
 0vZNx1IA/8eg==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="233847666"
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; d="scan'208";a="233847666"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 22:11:46 -0800
IronPort-SDR: 893mHxJcA455TipXEsGTdeKtbsvIEv85A/a3VnVVRKzSrT9NQ2hf9L9qYUn9V5JtIkB6MPEpLl
 tgjjdMHD6MnA==
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; d="scan'208";a="547588513"
Received: from chenyu-office.sh.intel.com ([10.239.158.173])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 22:11:43 -0800
From: Chen Yu <yu.c.chen@intel.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>, Len Brown <len.brown@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>,
 "Kai-Heng Feng" <kai.heng.feng@canonical.com>
Date: Thu, 26 Nov 2020 14:14:15 +0800
Message-Id: <cover.1606370334.git.yu.c.chen@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH 0/2][v2] Leverage runtime suspend to speed
 up the s2ram on e1000e
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
Cc: Chen Yu <yu.c.chen@intel.com>, linux-pm@vger.kernel.org,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The NIC is put in runtime suspend status when there is no cable connected.
As a result, it is safe to keep non-wakeup NIC in runtime suspended during
s2ram because the system does not rely on the NIC plug event nor WoL to wake
up the system. After doing this, the s2ram could speed up the suspend/resume
process a lot.

Chen Yu (2):
  e1000e: Assign DPM_FLAG_SMART_SUSPEND and DPM_FLAG_MAY_SKIP_RESUME to
    speed up s2ram
  e1000e: Remove the runtime suspend restriction on CNP+

 drivers/base/power/main.c                  |  2 ++
 drivers/net/ethernet/intel/e1000e/netdev.c | 21 +++++++++++++++++++--
 2 files changed, 21 insertions(+), 2 deletions(-)

-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
