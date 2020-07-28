Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D48231645
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Jul 2020 01:38:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 49BE58868C;
	Tue, 28 Jul 2020 23:38:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VBOJp+VlWfpP; Tue, 28 Jul 2020 23:38:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E0F1F882C3;
	Tue, 28 Jul 2020 23:38:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 776DB1BF5A4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jul 2020 23:38:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 648688867E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jul 2020 23:38:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L-9fVE0nbGVm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jul 2020 23:38:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C4F05882C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jul 2020 23:38:15 +0000 (UTC)
IronPort-SDR: JnodIlPV1G4RKHuBt0JtyQIEqaoiY32kpNaahoinXt8vTSh7ZwwhHu6r8x58IzbuPVHx0k8C+t
 ppbf7GjeUggg==
X-IronPort-AV: E=McAfee;i="6000,8403,9696"; a="150501218"
X-IronPort-AV: E=Sophos;i="5.75,408,1589266800"; d="scan'208";a="150501218"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2020 16:38:15 -0700
IronPort-SDR: BQpbsZj6mjX1GX6RQ2aCsN4WjEHbxMvmh/n9RpcJKW2VfUB2J/ffL3SjHTNk8osxe2s3+9vrg8
 iW+l1DoNh2ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,408,1589266800"; d="scan'208";a="328484692"
Received: from dpavlopo-mobl2.amr.corp.intel.com ([10.251.22.240])
 by FMSMGA003.fm.intel.com with ESMTP; 28 Jul 2020 16:38:14 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 28 Jul 2020 16:37:50 -0700
Message-Id: <20200728233754.65747-1-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 0/4] igc: PTP tx fixes
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

Hi all,

This patch series fixes some issues in the PTP tx code from the IGC driver.
The most relevant one is a race condition between igc_xmit_frame_ring() and
igc_ptp_tx_hang() which is fixed by the last patch.

- Andre

Andre Guedes (4):
  igc: Rename IGC_TSYNCTXCTL_VALID macro
  igc: Don't reschedule ptp_tx work
  igc: Remove timeout check from ptp_tx work
  igc: Fix race condition in PTP tx code

 drivers/net/ethernet/intel/igc/igc.h         |  5 +-
 drivers/net/ethernet/intel/igc/igc_defines.h |  2 +-
 drivers/net/ethernet/intel/igc/igc_main.c    |  7 ++-
 drivers/net/ethernet/intel/igc/igc_ptp.c     | 60 +++++++++++---------
 4 files changed, 43 insertions(+), 31 deletions(-)

-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
