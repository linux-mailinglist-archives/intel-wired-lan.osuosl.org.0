Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA39191E2D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2020 01:38:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7E029884D9;
	Wed, 25 Mar 2020 00:38:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oquZjlJm0bfh; Wed, 25 Mar 2020 00:38:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8799F884FA;
	Wed, 25 Mar 2020 00:38:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F31E01BF32A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 00:38:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 08F7F23B44
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 00:38:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T5qySmkbosmE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2020 00:38:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id 0D6D8235B8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 00:38:34 +0000 (UTC)
IronPort-SDR: 60MYFhrFcV/Uznnf4BwKDxfN1BcYKW3K7KJqJnx3pGG9RObkdps/N0gPCiQ/+tOqhitNGLSF4S
 F7T/g+WxmuCg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2020 17:38:33 -0700
IronPort-SDR: DgbsVYz1OLzRLyvOBrdCYbijYpUMyjG9SgkCttTuIotPBtG9hje6Yc2yxsyCfEx+Lyhgaug7k4
 FeFHYkvZvmpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,302,1580803200"; d="scan'208";a="448099329"
Received: from johnorte-mobl2.amr.corp.intel.com ([10.251.10.249])
 by fmsmga006.fm.intel.com with ESMTP; 24 Mar 2020 17:38:32 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 24 Mar 2020 17:38:14 -0700
Message-Id: <20200325003824.5487-1-andre.guedes@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 00/10] igc: Align log messages
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Throughout IGC code we print log messages using different log helpers such as
dev_*, pr_*, and netdev_*, generating inconsistent output.

Since this is a network device driver, we should preferably use netdev_*
helpers because they append the interface name to the message, helping making
sense out of the logs especially when we have more than one adapter in the
system.

This patchset converts all dev_* and pr_* calls to netdev_*. There are just a
few exceptions that cannot be converted because we don't have the netdev
allocated yet (e.g. when the module is loaded and on PCI probe). It also takes
the opportunity to improve some messages and remove the '\n' character at the
end of them since is it automatically added to by netdev_* log helpers.

Regards,

Andre

Andre Guedes (10):
  igc: Use netdev log helpers in igc_main.c
  igc: Use netdev log helpers in igc_ethtool.c
  igc: Use netdev log helpers in igc_ptp.c
  igc: Use netdev log helpers in igc_dump.c
  igc: Use netdev log helpers in igc_base.c
  igc: Use netdev log helpers in igc_diag.c
  igc: Remove '\n' from log strings in igc_i225.c
  igc: Remove '\n' from log strings in igc_mac.c
  igc: Remove '\n' from log messages in igc_nvm.c
  igc: Remove '\n' from log strings in igc_phy.c

 drivers/net/ethernet/intel/igc/igc_base.c    |  16 +--
 drivers/net/ethernet/intel/igc/igc_diag.c    |  22 ++--
 drivers/net/ethernet/intel/igc/igc_dump.c    | 109 ++++++++--------
 drivers/net/ethernet/intel/igc/igc_ethtool.c |  48 ++++---
 drivers/net/ethernet/intel/igc/igc_i225.c    |  22 ++--
 drivers/net/ethernet/intel/igc/igc_mac.c     |  42 +++---
 drivers/net/ethernet/intel/igc/igc_main.c    | 129 +++++++++----------
 drivers/net/ethernet/intel/igc/igc_nvm.c     |  12 +-
 drivers/net/ethernet/intel/igc/igc_phy.c     |  52 ++++----
 drivers/net/ethernet/intel/igc/igc_ptp.c     |  12 +-
 10 files changed, 223 insertions(+), 241 deletions(-)

-- 
2.25.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
