Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2EA6E9562
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Apr 2023 15:08:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E93E56FEFC;
	Thu, 20 Apr 2023 13:08:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E93E56FEFC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681996105;
	bh=pi5RT/fDn6mC0NVJsqILa1t58OSzjgwmk9Pz9HM7+4w=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=XQAD2HQqHDVGVJWWgloUVCRhepM/kpASZfdqGiGdK+jPFQpi8VtCKXchKsm2hRm09
	 RDJC2S/Dh7KO51NIVA3G7fbxZofnNYhQbhjsZ+W93SVJr0sQUqJODQQpfC2DrwF16T
	 JOvB5k0hUZ4XmT6OJBJlgA9qhv5TObaqnZd9M+iZAHa/mv5hQujhzhLsHxDedOt5X2
	 L8Z96UmlljgX3UzsSrCDgQ1Mw+R+NdEQo+NbpSxfaPvv87MMNG2TRw3offx1UdZFUS
	 +2YZ4sn4bkoH+PAVawx3t/bNoD9cKJ0uGDsqRHV3brm47su9zgf72TIjI9S9co3pcm
	 KfjuMzR5LJZiw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZvTzFmwwvP_P; Thu, 20 Apr 2023 13:08:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D5778613E4;
	Thu, 20 Apr 2023 13:08:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D5778613E4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E32481BF370
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 13:08:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C700884200
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 13:08:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C700884200
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MJuMu1r8RoJF for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Apr 2023 13:08:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 861EA841F8
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 861EA841F8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 13:08:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="326057650"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="326057650"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 06:08:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="816009312"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="816009312"
Received: from gklab-018-208.igk.intel.com ([10.102.18.208])
 by orsmga004.jf.intel.com with ESMTP; 20 Apr 2023 06:08:15 -0700
From: Kamil Maziarz <kamil.maziarz@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 20 Apr 2023 15:08:06 +0200
Message-Id: <20230420130810.214307-1-kamil.maziarz@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681996097; x=1713532097;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MqIQFvDmbIk1QIkcOd3DJ1io7bvR30Puyq+AXgskpEw=;
 b=HBIAcMFEM3di7hNIXDslBvyOKMGhtUgo6P8ZlvEFA2+mQoGeEj/Dq3BJ
 2Tfvu+cx4jRZIE+NsIWiizXwdoiPOFt2vHLr17sSgiITXSW6Pgv5Chq0f
 wj5J2smvQy28vmmVQ4nqV5DjbcZUcI/e/h8RrFmGmogF8e1ECLeMtzOX2
 rTT++Pc/MGFc8+A7bvomSZvMpSuN2lKTTf3LOyuSDOEwSKrve3DmRe3fn
 qNwSNHsN9A5peXWvP2mNQmT79MMXyCE8lNU2Sdj5vJcTJYxaFS2CycKmJ
 j/5CW7emdxOHYdMSSMss+AyXuW9kYcP0PJgXch7FGH4uExeQMyCtv8N8+
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HBIAcMFE
Subject: [Intel-wired-lan] [PATCH net v4 0/4] iavf: fix reset task deadlock
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
Cc: Kamil Maziarz <kamil.maziarz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Changing the way we handle resets so that callbacks operating under the RTNL lock will wait for the lock to be released.
This will eliminate circular dependency with the critical lock.

Marcin Szycik (4):
  iavf: Wait for reset in callbacks which trigger it
  iavf: Don't lock rtnl_lock twice in reset
  Revert "iavf: Detach device during reset task"
  Revert "iavf: Do not restart Tx queues after reset task failure"

 drivers/net/ethernet/intel/iavf/iavf.h        |   3 +
 .../net/ethernet/intel/iavf/iavf_ethtool.c    |  31 +++--
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 116 +++++++++++++-----
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   1 +
 4 files changed, 103 insertions(+), 48 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
