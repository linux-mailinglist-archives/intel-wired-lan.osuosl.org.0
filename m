Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D8EF58EE25
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Aug 2022 16:22:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 20B00417C0;
	Wed, 10 Aug 2022 14:22:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 20B00417C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660141331;
	bh=Mc2FoNjQUZCv9DJF/15qcbxn6ea2aWQbupxAVkhQKz4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ycwp7Z6oFQAo+Uikhhmv0EM09R6rUd8LsfPHs6MnFT+7qap3w6NuFJCrFSGP3njpT
	 v6eWuIebXG2n5HmCUqgUhuPbzX6vGfQIfdsaRi8S6NmLPDi8HbUTdouqCOcn4mhW1w
	 Wpq1Q3+MSy9dFJ71pDQL/xmf2EJxYHgeBrSalGiB6IMenQm3bk5BTE+Q5CI3nhl4W3
	 h3+hVnWtpCmdBcAat7fvj9phL1qiEtoDppYiXP9qgTr/bMCYLMNVC52x3Gws4oVPBy
	 4w1YSmLYAY4CiA+6YOcwaLGNcGV8n88/LojHre1ipwHXtBQu795KGi7A2cZ4bLeeAo
	 czyW6oeUP2gUQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0mMZI5g4ZvTn; Wed, 10 Aug 2022 14:22:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F2AFC404F0;
	Wed, 10 Aug 2022 14:22:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F2AFC404F0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9A15A1BF488
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 14:22:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 80E0640C13
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 14:22:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 80E0640C13
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fUAwC_9uMxD2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Aug 2022 14:22:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3715F40150
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3715F40150
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 14:22:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="291882949"
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="291882949"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 07:22:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="638121301"
Received: from gsiwik.igk.intel.com ([10.102.18.50])
 by orsmga001.jf.intel.com with ESMTP; 10 Aug 2022 07:22:00 -0700
From: Grzegorz Siwik <grzegorz.siwik@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 10 Aug 2022 16:21:51 +0200
Message-Id: <1660141315-216111-1-git-send-email-grzegorz.siwik@intel.com>
X-Mailer: git-send-email 1.8.3.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660141324; x=1691677324;
 h=from:to:cc:subject:date:message-id;
 bh=wrddqTzw6J6RUfq9Bqhb7zDaV5feDHuU2uXufLW/PfM=;
 b=Da7ku4Kf9X2VWEILKKUQpHycuUmv1A4W2QyzmuU0tOrNjKVUqctho6C0
 IjTEQdGykj1MKsiA4fi9Ca6JvI/w2Db0hLPumuS6wUf9T6uBicR+4rtpN
 d2odm5dShs1hkExdCLO4LR8VM9MgXM1uLVGxV+Y81ew+aQRjEeue7hLb9
 agZFrFGn+JkTvQyP1XZTZcxXvj0aCQHavP0ZVdguTxZScrkFjyeIGkXuT
 NtVmcyPl3hIRssuu2VDWhwT+vIaV1oLYm4G4WnVLH1XCF7g08M7qgSWqc
 N3hgt950U7220BcLEo3l79j9wRaPx+qhVJ+rsKZ1ngyzMiupHA5zKS/x6
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Da7ku4Kf
Subject: [Intel-wired-lan] [PATCH net v3 0/4] ice: Fixes for double vlan
 promiscuous mode
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
Cc: Grzegorz Siwik <grzegorz.siwik@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series fixes known issues related to double vlan promiscuous mode.
When at least two interfaces are bonded and a bridge is enabled on the
bond, an error can occur when the bridge is removed and re-added. The
reason for the error is because promiscuous mode was not fully cleared from
the VLAN VSI in the hardware.
Ignore ERR_ALREADY_EXISTS error when setting promiscuous mode.
This fix is needed because the driver could set promiscuous mode
when it still has not cleared properly.
If the requested promiscuous mode setting already exists,
an -EEXIST error message would be printed.
This is incorrect because promiscuous mode is
either on/off and shouldn't print an error when the requested
configuration is already set.
Avoid enabling or disabling vlan 0 when trying to set promiscuous
vlan mode if double vlan mode is enabled. This fix is needed
because the driver tries to add the vlan 0 filter twice (once for
inner and once for outer) when double VLAN mode is enabled.

---
 v2: Fixed error message when setting same promiscuous mode
---
 v3: Fixed style issues, changed to return directly.
---
Benjamin Mikailenko (1):
  ice: Ignore error message when setting same promiscuous mode

Grzegorz Siwik (3):
  ice: Fix double VLAN error when entering promisc mode
  ice: Ignore ERR_ALREADY_EXISTS when setting promisc mode
  ice: Fix clearing of promisc mode with bridge over bond

 drivers/net/ethernet/intel/ice/ice_fltr.c   |  8 ++++----
 drivers/net/ethernet/intel/ice/ice_lib.c    |  8 +++++++-
 drivers/net/ethernet/intel/ice/ice_main.c   | 13 ++++++++++++-
 drivers/net/ethernet/intel/ice/ice_switch.c |  9 ++++++++-
 4 files changed, 31 insertions(+), 7 deletions(-)

-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
