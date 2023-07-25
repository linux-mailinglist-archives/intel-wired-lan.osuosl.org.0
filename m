Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 991E1760CAC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Jul 2023 10:11:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3BF7A405D3;
	Tue, 25 Jul 2023 08:11:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3BF7A405D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690272679;
	bh=8Hhqwrw/9iyLdPDxtzttmIXnIn/HvYWn3qBrGKPTahY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=TwF9EV00IflcKOtmCx/72FeRPxkYe9+NFb1C+WwvTUVp/LGM4ZdZgcye53wh+DGrp
	 zwoiMM635gyK6Qb6KkTijVVCS8lkXvBb+XAAbMLfR/CVk5cwPykkCc+I2XNa0DtKkk
	 rH6FXpsDJWJ/xnDmeBHTT26XqJy+01hRuZm+GymrghUOmvkCjBEXeZUbHbQ7Ec5pGJ
	 oaGiIRkVdDce44uLBNNhlDT4+1tU6qrwSmKAjh+OaWSy/7T8z+/9mJvo3eo7/HlZYh
	 HrXx6d4q1u3YLVcr0UhtCmoYW2gqrWYeYRKqiv/BhuXm/aPkNToooaXzQ6Zl+e6gW0
	 wM/D4vxndwvGA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W2-GIR0CLyXW; Tue, 25 Jul 2023 08:11:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4637E40260;
	Tue, 25 Jul 2023 08:11:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4637E40260
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 145DC1BF295
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 08:11:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DE5AA41527
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 08:11:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DE5AA41527
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CWUS7dyo9CtF for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jul 2023 08:11:11 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9FA20409AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 08:11:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9FA20409AA
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="367675284"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="367675284"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 01:11:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="869378384"
Received: from gk3153-or4-r750-36948.igk.intel.com ([10.102.19.252])
 by fmsmga001.fm.intel.com with ESMTP; 25 Jul 2023 01:11:11 -0700
From: Olga Zaborska <olga.zaborska@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 25 Jul 2023 10:10:55 +0200
Message-Id: <20230725081058.92158-1-olga.zaborska@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690272671; x=1721808671;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DHBTLSs3z5tZF13kV/u8tC/3dwxEvB51vMJtvDi6Rak=;
 b=KxzcZ5BNNkGg0iU/JZScpTC9Z1Jc3RkkpDWvlI6Z70JmbuWaC2BY6Ywi
 hXsB6n5MTtDVAKBAPp8Yb3BixHnhJEO5eYbEQXs60sca/yPQlOjI4J43K
 oBok6RTMk45f+j4lFBhzxEoAl7xRjekQvr8/PZAUNS6BUFMYhp9lX+VLZ
 kRBqoNJ3kZk3bdgOO7Sx+dixccpZ/pPaouc+mZ0R6fqDogLj8JTQGqjy7
 KSKo2rpE0gmCH5rpWjlusv18WORmfVqc0koEUOEWJOOi7TQGwHhSIlkl/
 dNObPBeoiEhmX3J1xpN5TpbCfU4FeTIWYwrs9PwG7uRE8VILJjSg7S2Vy
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KxzcZ5BN
Subject: [Intel-wired-lan] [PATCH iwl-net v4 0/3] Change MIN_TXD and MIN_RXD
 to allow set rx/tx value between 64 and 80
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
Cc: Olga Zaborska <olga.zaborska@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Change the minimum value of RX/TX descriptors to 64 to enabl'e setting the rx/tx value
between 64 and 80. All igb, igbf and igc devices can use as low as 64 descriptors.

Olga Zaborska (3):
  igc: Change IGC_MIN to allow set rx/tx value between 64 and 80
  igbvf: Change IGBVF_MIN to allow set rx/tx value between 64 and 80
  igb: Change IGB_MIN to allow set rx/tx value between 64 and 80 Change
    the minimum value of RX/TX descriptors to 64 to enable setting the
    rx/tx value between 64 and 80. All igb devices can use as low as 64
    descriptors. This change will unify igb with other drivers. Based on
    commit 7b1be1987c1e ("e1000e: lower ring minimum size to 64")

 drivers/net/ethernet/intel/igb/igb.h     | 4 ++--
 drivers/net/ethernet/intel/igbvf/igbvf.h | 4 ++--
 drivers/net/ethernet/intel/igc/igc.h     | 4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
