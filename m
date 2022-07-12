Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 096E3571C1C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Jul 2022 16:17:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3DD4F40CC6;
	Tue, 12 Jul 2022 14:17:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3DD4F40CC6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657635453;
	bh=yL1GJ22UJ5GAjdQiwSKgXpc99d/5uyDkb+gvjCHvK0Q=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=5+gAd95+TSFKCKp54ijg1qVVsCnVsp0/eubIHqZCAZYM+mxUlRi1grOWmf0N08sTB
	 94zIG4uJursrYBBvSh9H+ElaLEoj8de4kOQiqPmzC+gnxr8ZykYX2GYSJvv9wVOl7c
	 AGLYdz11TJ6wU5uoEd9fPkXT9z8VIbGf81ZGDWyaviA2406ES57J/3y8H7GdUOeyAF
	 MyaVyJ0YOhaVb+W/jSwN7r2eRDr8I3o4SApbMIJhdTzd1LBReJPj3c56/Ow5rxtF28
	 xboKw7/Pi6pjl1NV4u6JqKdxK7LZH7YGa8rnYAE1+Y7IsFbGUrTaCInMrRfNTTNYfh
	 xjYJvbPegI6jw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RrwJe_Jvwwy6; Tue, 12 Jul 2022 14:17:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 31767408F5;
	Tue, 12 Jul 2022 14:17:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 31767408F5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 544A11BF3D2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 14:17:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3AB8041A63
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 14:17:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3AB8041A63
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L91TtFLBsPk0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Jul 2022 14:17:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D26B5419C0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D26B5419C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 14:17:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10405"; a="286073617"
X-IronPort-AV: E=Sophos;i="5.92,265,1650956400"; d="scan'208";a="286073617"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2022 07:17:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,265,1650956400"; d="scan'208";a="698036230"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by fmsmga002.fm.intel.com with ESMTP; 12 Jul 2022 07:17:11 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 12 Jul 2022 16:16:51 +0200
Message-Id: <20220712141653.2590868-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657635445; x=1689171445;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4Hlz8b+jALTckEuyJaRAFRqIR5XlKt7b2KPe2zk8SYM=;
 b=MfSAe+26RjOXO8OgCZBuvYvrg0MnfmtwJoS7SA+l8ILtS8uzthsXfsGv
 gEplRBAdtlyEKBpDTopqbs64TkVpcjUw3VxaqS4obuAE2dKtDJbUuDbfG
 gzCt3HSy6kreTGjX3PSe49ZqvxclAqma5WUOI8qSgkx2jvV1bjvnbsCPS
 kDfwdAYSHGvmf0K0mECiGWeP7/bcTJTptW6IFjz3G5CzDasB2BW4oYTmo
 uHRsNLqFRpBBNYn49hTlki8/AnHf7QmEnRjHB8BePPSIccR+PKTnlNHZ2
 VeYT+Umfpl8YSw++sswltyok96kqpI1CAzhNMi6lueQvpNbz+n6F+WTFc
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MfSAe+26
Subject: [Intel-wired-lan] [PATCH net-next v2 0/2] i40e: Fix ethtool
 rx-flow-hash setting for X722
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
Cc: Michal Jaron <michalx.jaron@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Jaron <michalx.jaron@intel.com>

When enabling flow type for RSS hash via ethtool:

  ethtool -N $pf rx-flow-hash tcp4|tcp6|udp4|udp6 s|d

the driver would fail to setup this setting on X722
device since it was using the mask on the register
dedicated for X710 devices.

Implement a bitmap to collect the flow pc types that
shall be applied on the inset and hena registers.
Apply a different mask on the register when setting the
RSS hash for the X722 device.

Michal Jaron (2):
  i40e: Fix ethtool rx-flow-hash setting for X722
  i40e: Refactor i40e_set_rss_hash_opt

 .../net/ethernet/intel/i40e/i40e_ethtool.c    | 105 +++++++++++-------
 drivers/net/ethernet/intel/i40e/i40e_type.h   |   4 +
 2 files changed, 69 insertions(+), 40 deletions(-)

-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
