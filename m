Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C21E9217BDE
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jul 2020 01:48:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 825128770C;
	Tue,  7 Jul 2020 23:48:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lvIQ-sV1DUuy; Tue,  7 Jul 2020 23:48:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D78848771E;
	Tue,  7 Jul 2020 23:48:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E798D1BF3FC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2020 23:48:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D41E589495
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2020 23:48:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kWQI0Fouh5Bc for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jul 2020 23:48:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2290F8895B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jul 2020 23:48:11 +0000 (UTC)
IronPort-SDR: iJRWJ+cV7GrpojBjIrYQUYVeIdmm9PfDSJT98tU6b10xAXNjTBMbOP8w8AgE6r8RJQUM/pbU2t
 dPG7dXKtQ25A==
X-IronPort-AV: E=McAfee;i="6000,8403,9675"; a="146778428"
X-IronPort-AV: E=Sophos;i="5.75,325,1589266800"; d="scan'208";a="146778428"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2020 16:48:10 -0700
IronPort-SDR: kLcvBYUgx/TFWRvnwvTf+W5HOZuev5Lb0RgIfyR16dOmOvM5U1UOjey0C/COkg3Nasmup5qlN4
 JIA8WmT6Pw2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,325,1589266800"; d="scan'208";a="483684030"
Received: from vapadgao-mobl.amr.corp.intel.com ([10.251.143.88])
 by fmsmga005.fm.intel.com with ESMTP; 07 Jul 2020 16:48:10 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: netdev@vger.kernel.org
Date: Tue,  7 Jul 2020 16:47:56 -0700
Message-Id: <20200707234800.39119-1-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH ethtool 0/4] Add support for IGC driver
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi all,

This patch series adds support for parsing registers dumped by the IGC driver.
For now, the following registers are parsed:

	* Receive Address Low (RAL)
	* Receive Address High (RAH)
	* Receive Control (RCTL)
	* VLAN Priority Queue Filter (VLANPQF)
	* EType Queue Filter (ETQF)

More registers should be parsed as we need/enable them.

Cheers,
Andre

Andre Guedes (4):
  Add IGC driver support
  igc: Parse RCTL register fields
  igc: Parse VLANPQF register fields
  igc: Parse ETQF registers

 Makefile.am |   3 +-
 ethtool.c   |   1 +
 igc.c       | 283 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 internal.h  |   3 +
 4 files changed, 289 insertions(+), 1 deletion(-)
 create mode 100644 igc.c

-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
