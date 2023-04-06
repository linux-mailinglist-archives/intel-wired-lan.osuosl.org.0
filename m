Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3066DA4C1
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Apr 2023 23:36:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 92957844B3;
	Thu,  6 Apr 2023 21:35:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 92957844B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680816957;
	bh=MqmLiYV+ZiZveeLh+RXVp2Ka+me4HvjMBCeBk9Ecy48=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=jUFjSlrTJ5xm+N71XANQS5hPQnAyDneE45ft1jLKlCHEUbh5X3y6qzzN4/5lzwGUC
	 NK1nCcJ/LxX1P4fol8BVDy1+1kG7EZThKjQ8neOElhm3IxBrdrsj00NWWqN/PeAE+W
	 vPnaNy1F4rnZU3JzJgOEXTO/df2fPoBnCtNMpdrBMod+txQtOYvDkPLwqAQteNmm2X
	 FkyOTLiZX2Tg+/1uzCDmdUVyrRubSZtuUzuKX1GfDhOLVPzxlk61O1rg2ANfC0/Nfy
	 u44IeOLmA9ueERLQL/642mw/E0fl+AAl6gC9HIs4zxsaojIWWqLxrkvMOqkUzAgfD4
	 sxZtpMYcDT4QA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uFd8Eec1q_cg; Thu,  6 Apr 2023 21:35:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7BDA584497;
	Thu,  6 Apr 2023 21:35:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7BDA584497
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0EECA1BF354
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Apr 2023 21:35:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DED5D41E8D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Apr 2023 21:35:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DED5D41E8D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RBvc3QNQqIER for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Apr 2023 21:35:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC62C41E96
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DC62C41E96
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Apr 2023 21:35:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="322496096"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="322496096"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 14:35:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="756476369"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="756476369"
Received: from unisar-mobl.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.252.43.240])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 14:35:40 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  6 Apr 2023 15:35:26 -0600
Message-Id: <20230406213528.266368-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680816949; x=1712352949;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Bn3pWvqI7rznOdf41CapGB0dLalr68uhuqhNtehSol0=;
 b=VgG8leVHmsxTpTfTVlZawdy8VOmvpmVCVlJwyNiuVWedBk4eQ0RbPstf
 dPKSEEW27voqqGkig1BrJ1SOzzVWMbOHBwgnpzcLQY3JZ+JE4e7w8An1F
 KarqFhvcR7yZkRgE8MwddmEt7H+jcMzb8Yzv1HABj26Q+1aP9HSKSTY/L
 5+5iUTyQWJp3cCC46XSLALEbLGdwVhJqH8dLxBc3JglnWi5vlhild15Xx
 GHAywliZlBhzo5+RRdM4RxhnAnvhQTstYrKr+K6PH3IpqA+cYkOvw/qN0
 SzPcDseGWiviep4F1gnkbjZKRnDIHSRTkXs3XsdNIqf76/qDMv8CTdg31
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VgG8leVH
Subject: [Intel-wired-lan] [PATCH net v2 0/2] iavf: fix racing in VLANs and
 refactor states
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

This patchset mainly fixes a racing issue in the iavf where the number of
VLANs in the vlan_filter_list might be more than the PF limit. To fix that,
we get rid of the cvlans and svlans bitmaps and keep all the required info 
in the list.

The second patch adds two new states that are needed so that we keep the 
VLAN info while the interface goes DOWN:
    -- DISABLE    (notify PF, but keep the filter in the list)
    -- INACTIVE   (dev is DOWN, filter is removed from PF)

Finally, the current code keeps each state in a separate bit field, which
is error prone. The first patch refactors that by replacing all bits with
a single enum. The changes are minimal where each bit change is replaced
with the new state value.

---
v2 : change state names from __IAVF_VLAN_STATE to IAVF_STATE_NAME
---
Ahmed Zaki (2):
  iavf: refactor VLAN filter states
  iavf: remove active_cvlans and active_svlans bitmaps

 drivers/net/ethernet/intel/iavf/iavf.h        | 20 +++---
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 44 +++++-------
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 68 ++++++++++---------
 3 files changed, 66 insertions(+), 66 deletions(-)

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
