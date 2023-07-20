Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 762D875AE37
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jul 2023 14:21:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CDFE981F59;
	Thu, 20 Jul 2023 12:21:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CDFE981F59
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689855713;
	bh=AK0bdxjqPVY+wRgQvq8OoBr5Z4Al/2kAVh7r8q2os40=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=WkSZOYb738VkcOwk+ZTYhTOMifaDd2RFKKZ4WuXW/WIyemNBYa34/xh/lPvuOXcNm
	 8+vQZVJYhdZh1qaE0vNlDPvKn4p6XWlyyy9PX6JR/Mn0hjqqVST+VzDZY0S2GQ8eYg
	 CMkZkf6EVR1hmzFQ1hI26DnpnYpKPwBmtM3k06JG1xPl2A8ZX/4PB6tvFLKVERT397
	 coyftaXN6KP/A1NIcT6uJ5lHWnHedc9yzjXogARIY1hxe5lWmPotXR8k4lgI30HBb7
	 L2gxTbSHvC5TtmurXHqEnPIlMiM/WJgFeZn19bXviRsAbqowxwPBtBxEfRJbD+v9nw
	 iiJ1BMwfFnqiw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LfKGZhe24D6s; Thu, 20 Jul 2023 12:21:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB71780FA7;
	Thu, 20 Jul 2023 12:21:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB71780FA7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0C9D11BF36E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jul 2023 12:21:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D0FF941BB1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jul 2023 12:21:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D0FF941BB1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pt2ye14S3r1f for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jul 2023 12:21:46 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 20 Jul 2023 12:21:46 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 045A5417AF
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 045A5417AF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jul 2023 12:21:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="366742960"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="366742960"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 05:14:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="718367994"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="718367994"
Received: from mmichali-devpc.igk.intel.com ([10.211.235.239])
 by orsmga007.jf.intel.com with ESMTP; 20 Jul 2023 05:14:12 -0700
From: Michal Michalik <michal.michalik@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 20 Jul 2023 14:13:54 +0200
Message-Id: <20230720121357.26739-1-michal.michalik@intel.com>
X-Mailer: git-send-email 2.9.5
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689855705; x=1721391705;
 h=from:to:cc:subject:date:message-id;
 bh=D1tfyFKc1kVybD7kV4k3OLI0vr5TZSsW9SkOJ++syo8=;
 b=IPb6F6SFoUWKcP8r3yGjstvhES9iDmDqkuGyIPw8a0SjOVtgPP/CWE2K
 GnluIW0n1KhN1xGKpXM3yAAGRkoiAvDQTXfNOH8O3+0LOppLu1A/7bQW2
 pzUd9JAsGwVUYPvKywZKjIRBxs8S+nZEDSGNur8YGohl+E+Gh90HJ+uFu
 BBzuPOQtz3S86N5tNeeknHbUHsRXxL7Xy2atMOPnvHtNGzgwO8aIvVhiG
 ufxVIxucxuznxFsGV8GjVJEU5b8I/19FYuvpnR7ViSgvVQH76CqTpol2K
 mCAnofXB5fOME1E7Tx3QcixAkK+eV9xXTQdwcL7Zd9Z9FdL/cEVNp4Hql
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IPb6F6SF
Subject: [Intel-wired-lan] [PATCH net-next v1 0/3] ice: add PTP auxiliary
 bus support
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
Cc: karol.kolacinski@intel.com, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Auxiliary bus allow exchanging information between PFs, which allows
both fixing problems and simplifying new features implementation.
The auxiliary bus is enabled for all devices supported by ice driver.

Michal Michalik (3):
  ice: Auxbus devices & driver for E822 TS
  ice: Use PTP auxbus for all PHYs restart in E822
  ice: PTP: add clock domain number to auxiliary interface

 drivers/net/ethernet/intel/ice/ice.h            |  14 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c    |   2 +-
 drivers/net/ethernet/intel/ice/ice_hw_autogen.h |   1 +
 drivers/net/ethernet/intel/ice/ice_main.c       |  11 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c        | 586 +++++++++++++++++-------
 drivers/net/ethernet/intel/ice/ice_ptp.h        |  41 +-
 6 files changed, 493 insertions(+), 162 deletions(-)

-- 
2.9.5

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
