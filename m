Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6598078B3
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Dec 2023 20:36:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 10C7260BBE;
	Wed,  6 Dec 2023 19:36:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 10C7260BBE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701891400;
	bh=I1hlsHut7oHJZ4MlxPfFz8kS3QQoO+y/J67ApqdDsvk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Bsx9kpfTRQEbBa+6racIDjDOufck4xN5lv1TsrTPaZv2BLl5xsaaxjAD6wHrrOXJa
	 jlMu5csPGIy+U9mQ+YanTmJq8gK8T163XXriHc/gpI7Hifmg+ek1CJRbPFC/euQpKS
	 1sPVaQEax2MDaQCu5gwv83KrKEGxaYMR8qU2aq/zByHPgIk0jUu3xlL/uJtWFuD2LH
	 l8UPlWX7XneqzuHyeAd3faQMoNKjhue8oL4FkXj4FDIg7Ikxs0L63n890CvhYr6rEy
	 xfuRcN0wepaowmUvrJ8no68/NB73y/ZctzXVnyIhjwFoszMdVQ0s5irnPqXEvD2kD/
	 1fBeYeCnSSMkw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zIZOklOPcbjA; Wed,  6 Dec 2023 19:36:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF6DB60B00;
	Wed,  6 Dec 2023 19:36:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BF6DB60B00
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 476E51BF343
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 19:36:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2641A81E5A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 19:36:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2641A81E5A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lsEiQ6ki_c-m for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Dec 2023 19:36:32 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 06 Dec 2023 19:36:32 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4B12881E20
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4B12881E20
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 19:36:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="1214419"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; 
   d="scan'208";a="1214419"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 11:29:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="889446489"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="889446489"
Received: from unknown (HELO gklab-003-001.igk.intel.com) ([10.211.3.1])
 by fmsmga002.fm.intel.com with ESMTP; 06 Dec 2023 11:29:23 -0800
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  6 Dec 2023 20:29:16 +0100
Message-Id: <20231206192919.3826128-1-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701891392; x=1733427392;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OJ74U93h8bLZzk/gtfgA8PUSleARKCC5LXQ8p+r+f/M=;
 b=WM3lr0jY8D1gjPferSEhLQnH0NGf8T2m2qBeYOzIN8hK6g+fZipolYoO
 xlQPLSg+Bu9VpspHoeNvnO6F0JzeNKnlxKmng516/A7X8PfyYxJyMtJmZ
 dwBD0iwVYR59wCfgJSpNGFkLNvrE00siEx2p4matVcjBXgbwfgbHitwmM
 JuVKVjKRWWb/eBgV2+d24KdBX88tPcmWVOUN96kCtYM5n2bzEyxtkD/i6
 GB61z67KrzcX4zkKhtkU+6oGgiyFT+e0xastIJldY33r3/vMPR1Z6txeO
 bpLSmzmObxWsifLkZeTd8LV7vYX7e+pVKzoQzd96B5Rq0YfG21CqvfMcT
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WM3lr0jY
Subject: [Intel-wired-lan] [PATCH iwl-next v1 0/3] ice: add E825C device
 family support
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
Cc: netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch series is supposed to add very basic support in ice driver
for new Intel Ethernet device family E825C.
E825C device consists of 2 NAC (Network Acceleration Complex) instances
in the IO die and supports max of 8 ports with combined bandwidth up to
200G.
There are 2 configurations (known as NAC Topology):
- single NAC (only one NAC is enabled) or
- dual NAC (both NACs are enabled, with one designated as primary and
  other as secondary).

This series covers:
- definition of new PCI device IDs assigned to E825C devices
- support for new 3k signed DDP segments

In the follow-up series support for new PHY and NAC topology parser
will be added.

Grzegorz Nitka (3):
  ice: introduce new E825C devices family
  ice:  Add helper function ice_is_generic_mac
  ice: add support for 3k signing DDP sections for E825C

 drivers/net/ethernet/intel/ice/ice_common.c   | 37 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_common.h   |  2 +
 drivers/net/ethernet/intel/ice/ice_controlq.c |  2 +-
 drivers/net/ethernet/intel/ice/ice_ddp.c      |  4 ++
 drivers/net/ethernet/intel/ice/ice_devids.h   |  8 ++++
 drivers/net/ethernet/intel/ice/ice_main.c     | 10 ++++-
 drivers/net/ethernet/intel/ice/ice_type.h     |  1 +
 7 files changed, 61 insertions(+), 3 deletions(-)


base-commit: 545c31d16cc00bba281ee1927d6338e27d4b7b5e
-- 
2.39.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
