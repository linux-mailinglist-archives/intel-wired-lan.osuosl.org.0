Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BE1822AE85F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Nov 2020 06:48:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5ABC786360;
	Wed, 11 Nov 2020 05:48:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ydEeoxqbA0-O; Wed, 11 Nov 2020 05:48:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 08E4186388;
	Wed, 11 Nov 2020 05:48:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BB9401BF863
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 05:48:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B4C1486091
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 05:48:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oPb5kecwTJCH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Nov 2020 05:48:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7792285C77
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 05:48:20 +0000 (UTC)
IronPort-SDR: x4LNrRLTIK6hAxNUzCwi1lUx6Z1NwPWCPfbjuSSZ2hQ/LzObl6t4JUKQK5NB9/7NdWmvlePYUf
 TfVPT0uI3RZg==
X-IronPort-AV: E=McAfee;i="6000,8403,9801"; a="149373284"
X-IronPort-AV: E=Sophos;i="5.77,468,1596524400"; d="scan'208";a="149373284"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2020 21:48:18 -0800
IronPort-SDR: WYNzA27gZPv6wwbg7/TmB4OGBuaHUE33HXyvhRsDUZF6NyfNrUG7ydyd/ETie3vk/Hrn1K59nO
 401vsZUTTOgw==
X-IronPort-AV: E=Sophos;i="5.77,468,1596524400"; d="scan'208";a="541641535"
Received: from chenyu-office.sh.intel.com ([10.239.158.173])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2020 21:48:15 -0800
From: Chen Yu <yu.c.chen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 11 Nov 2020 13:50:35 +0800
Message-Id: <cover.1605073208.git.yu.c.chen@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH 0/4][RFC] Disable e1000e power management
 if hardware error is detected
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
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org, "Brandt,
 Todd E" <todd.e.brandt@intel.com>, Zhang Rui <rui.zhang@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is a trial patchset that aims to cope with an intermittently
triggered hardware error during system resume.

On some platforms the NIC's hardware error was detected during
resume from S3, causing the NIC to not fully initialize
and remain in unstable state afterwards. As a consequence
the system fails to suspend due to incorrect NIC status.

In theory if the NIC could not be initialized after resumed,
it should not do system/runtime suspend/resume afterwards.
There are two proposals to deal with this situation:

Either:
1. Each time before the NIC going to suspend, check the status
   of NIC by querying corresponding registers, bypass the suspend
   callback on this NIC if it's unstable.

Or:
2. During NIC resume, if the hardware error was detected, removes
   the NIC from power management list entirely.

Proposal 2 was chosen in this patch set because:
1. Proposal 1 requires that the driver queries the status
   of the NIC in e1000e driver. However there seems to be
   no specific registers for the e1000e to query the result
   of NIC initialization.
2. Proposal 1 just bypass the suspend process but the power management
   framework is still aware of this NIC, which might bring potential issue
   in race condition.
3. Approach 2 is a clean solution and it is platform independent
   that, not only e1000e, but also other drivers could leverage
   this generic mechanism in the future.

Comments appreciated.

Chen Yu (4):
  e1000e: save the return value of e1000e_reset()
  PM: sleep: export device_pm_remove() for driver use
  e1000e: Introduce workqueue to disable the power management
  e1000e: Disable the power management if hardware error detected during
    resume

 drivers/base/power/main.c                  |  1 +
 drivers/base/power/power.h                 |  8 -------
 drivers/net/ethernet/intel/e1000e/e1000.h  |  1 +
 drivers/net/ethernet/intel/e1000e/netdev.c | 27 ++++++++++++++++++----
 include/linux/pm.h                         | 12 ++++++++++
 5 files changed, 37 insertions(+), 12 deletions(-)

-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
