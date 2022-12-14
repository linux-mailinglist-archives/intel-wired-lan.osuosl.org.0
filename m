Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C05464CE12
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Dec 2022 17:32:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AB29E4183F;
	Wed, 14 Dec 2022 16:32:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AB29E4183F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671035534;
	bh=2a7uNuI30OzgnqYYd/SRVCAs/jTX2lMerNoGngywLF8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=CPa7GyxQpu38uH4y6m+PEedZdOXygU8VIsbCs5jGtk3INA5UgXF+AdRd18/Dq3Q4u
	 D2GzXGGv+no1+OzY17TLFAE0NJWIter2sNDICWveI/7JDfOdmxzvccb30lhUOl7UJH
	 vcHq3z1pYUIa3B1QKMCcBlJo+z8jo67wJpQB3Y6s8XDZOs+s7Mc1IMxjJ7RsOCdRaN
	 TF4VCVdDc9oqqrBgNH5xbBaXENlo2skV+rkccjaCXSfJGhX8qaYqWoRk82av/BOmyV
	 mKiOcMs39zLKj/jB3VyUCqkfnK1x284UfrGWnjJdUelmAjeten0kdDuKpgXy9XAJyX
	 IkZjYsu1XOQFw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0tP9-PxjIYF1; Wed, 14 Dec 2022 16:32:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5E10141830;
	Wed, 14 Dec 2022 16:32:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5E10141830
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B74C81BF344
 for <intel-wired-lan@osuosl.org>; Wed, 14 Dec 2022 16:32:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8EAC041866
 for <intel-wired-lan@osuosl.org>; Wed, 14 Dec 2022 16:32:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8EAC041866
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IDgmHaloGG9R for <intel-wired-lan@osuosl.org>;
 Wed, 14 Dec 2022 16:32:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 171C44183F
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 171C44183F
 for <intel-wired-lan@osuosl.org>; Wed, 14 Dec 2022 16:32:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="298795280"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="298795280"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 08:31:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="681557398"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="681557398"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by orsmga001.jf.intel.com with ESMTP; 14 Dec 2022 08:31:54 -0800
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org,
	vinicius.gomes@intel.com
Date: Thu, 15 Dec 2022 00:29:06 +0800
Message-Id: <20221214162909.22856-1-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671035526; x=1702571526;
 h=from:to:cc:subject:date:message-id;
 bh=fu9kcIAcuhRL+kr8QhssUNKbVcb3tkPQ3oVEsJfqkJQ=;
 b=aq0um/WCWCkSsGqgEmpfQoSNoq99tXgisjWU4ExwfB/B87RyHgidf2tg
 xAckiCqPf8fMerZFEdGq970ZKUY6nz6K92kZJFhHwGHdk0u/3G4uCjEVY
 syKRI3UmdyzrDTkJuSEqefxh3uEa36HRjqD2IOfebNgKrtyqQqXUlNlmm
 atrk2BtD9g9fdf7pULa8wrHYBIljLlm3cLxV/RTikgLvd+NRacdx82pfp
 BZ86+o2IpKOjVVfzG4sIsRBy7LAEpk8SBYdwtSK6K8KcvVnQ4H+XBukhC
 68sotuapHgcFRzuAQTU2pBqKDrI6ffXhXGMmoi7YDXIuI8d9LYCWZJIg+
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aq0um/WC
Subject: [Intel-wired-lan] [PATCH net-next v2 0/3] igc: Qbv Feature
 Improvement for I226
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
Cc: muhammad.husaini.zulkifli@intel.com, anthony.l.nguyen@intel.com,
 tee.min.tan@linux.intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello!

Improvements to the Time-Sensitive Networking (TSN) Qbv Scheduling
capabilities were included in this patch series for I226 SKU.

An overview of each patch series is given below:

Patch 1: To enable basetime scheduling in the future, remove the existing
restriction for i226 stepping while maintain the restriction for i225.
Patch 2: Remove the restriction which require a controller reset when
setting the basetime register for new i226 steps and enable the second
GCL configuration.
Patch 3: Remove the power reset adapter during disabling the tsn config.

Changes since v1:
- Change the signature form from 'Co-Developed-by' to 'Co-developed-by:'.

Muhammad Husaini Zulkifli (2):
  igc: remove I226 Qbv BaseTime restriction
  igc: Remove reset adapter task for i226 during disable tsn config

Tan Tee Min (1):
  igc: enable Qbv configuration for 2nd GCL

 drivers/net/ethernet/intel/igc/igc_base.c    | 29 ++++++++++
 drivers/net/ethernet/intel/igc/igc_base.h    |  2 +
 drivers/net/ethernet/intel/igc/igc_defines.h |  1 +
 drivers/net/ethernet/intel/igc/igc_main.c    |  8 ++-
 drivers/net/ethernet/intel/igc/igc_tsn.c     | 56 ++++++++++++--------
 5 files changed, 73 insertions(+), 23 deletions(-)

--
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
