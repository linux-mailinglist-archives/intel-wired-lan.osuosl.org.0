Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2C85597B8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Jun 2022 12:21:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8295740477;
	Fri, 24 Jun 2022 10:21:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8295740477
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656066093;
	bh=oGKmxW0/duO9ClmwIecVAr3iwriy4/jQqbkuxDQf+pc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=gCDZaczHmjkUPTz721WpRx8Re/ako7TNiQDfnSUrEFQDdFgVgnmaDlY1IjsP7rgTg
	 CM0E8ruqmKBUOaeFZmIKLN2KhL8BaD0xdGGa4oen6MuAPUh7eZWCxDMHdxO3+2s9kH
	 5+SUp1fnVz/L81DqkBCIoeI1gdS8/2A2DVFPGhc0O2ZQI/3j5/rdVmX2phLKHCRO5w
	 SGuf+LwX/DP4uuiPvWQd05bGa/PNJ7+VnGhVTwvLfMPk4IqlsAJg0TPrvs8PybZS1f
	 yhTE8VlLSUgJ6Dyd8v4e5ECJgNsHewUm3QIBdsyVB9cMwS1qrqp5S374HBCOlmy1lJ
	 p4jvPWIEV7Jpw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gf8vI8jbLHiH; Fri, 24 Jun 2022 10:21:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 65A1F401A2;
	Fri, 24 Jun 2022 10:21:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 65A1F401A2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E99E81BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jun 2022 10:21:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C29C7401F4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jun 2022 10:21:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C29C7401F4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A9fcJMZIqP-y for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Jun 2022 10:21:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9563E400AB
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9563E400AB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jun 2022 10:21:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10387"; a="261397340"
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="261397340"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 03:21:25 -0700
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="593165359"
Received: from moradin.igk.intel.com ([10.123.220.12])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 03:21:24 -0700
From: Michal Wilczynski <michal.wilczynski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 24 Jun 2022 12:21:08 +0200
Message-Id: <20220624102110.1008410-1-michal.wilczynski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656066085; x=1687602085;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=S9EY2g+OTNxO4PpOFWNhUGE/Bd/7NyBWIsPiEDeCSFQ=;
 b=lhhigNX2H47/UBm1ib/tXfw4dK5RFI3m21WUfbaoiEafNbpMBXQJd90I
 Uzh8JcGeE15igFOOuzHuukCRjoPQCZuoUASoiPnlhUSRxna2IbGufjzeo
 2E+UXSE4WjNCfGbYrQwh/Ffc8HA/FSAiJqCWqMzqJP88cQULtMu/NyES3
 U5HJE9Ux6GKhFtEiKzs/aWz09kNk40URnWyADiPf+zVJkHA8Cjr0M2Hdl
 QIotaq+QN79CaFL15F23Txx6cRDqlfw7hIcrQT21leLrMvWmcCVYfLf+k
 PqH7sKQYBC31hbr7G/+Q1j4+nUuhuzWUaXstz2fUHpgVlKmK0LEsYfRzG
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lhhigNX2
Subject: [Intel-wired-lan] [PATCH net-next v2 0/2] ice: Support 5 layer tx
 scheduler topology
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
Cc: Michal Wilczynski <michal.wilczynski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


For performance reasons there is a need to have support for selectable
tx scheduler topology. Currently firmware supports only the default
9-layer and 5-layer topology. This patch series enables switch from
default to 5-layer topology, if user decides to opt-in.

Michal Wilczynski (1):
  ice: Enable switching default tx scheduler topology
v2: 
- Moved definitions of scheduling layers to other commit

Raj Victor (1):
  ice: Code added to support 5 layer topology
v2:
- Added example of performance decrease in commit message
- Reworded commit message for imperative mood
- Removed unnecessary tags
- Refactored duplicated function call
- Fixed RCT
- Fixed unnecessary call to devm_kfree
- Defined constants


 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  23 ++
 drivers/net/ethernet/intel/ice/ice_common.c   |   5 +
 .../net/ethernet/intel/ice/ice_flex_pipe.c    | 203 ++++++++++++++++++
 .../net/ethernet/intel/ice/ice_flex_type.h    |  17 +-
 drivers/net/ethernet/intel/ice/ice_main.c     | 113 ++++++++--
 drivers/net/ethernet/intel/ice/ice_sched.c    |  35 +--
 drivers/net/ethernet/intel/ice/ice_sched.h    |   3 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 8 files changed, 362 insertions(+), 38 deletions(-)

-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
