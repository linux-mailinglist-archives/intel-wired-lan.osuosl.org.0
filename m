Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6195701C8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Jul 2022 14:12:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 789EE60F0E;
	Mon, 11 Jul 2022 12:12:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 789EE60F0E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657541574;
	bh=6PraOr1ElHa6A2Mu/Ro9P+yR77ZVAWNXoj51sP++zqk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=6sXFcUcL20u0nyJ/Tlkz8Xnb21bx/4aQvWVyCE9TOptN6xQxATnSdWb3/PjL7TJkn
	 2BqLKnotT7Z4bn74ZAtwYXTZMi8bn47o0w+edKXVWEBb8CiCJnlGSjV0QFu23p2jpO
	 8ECbFFxOHOsqsQwwadIs7XSkg0VLV2B4tF2S4z6VxeTy26IjnfS+80mE1GxST8NTd2
	 YhMw1U6FB9XK1yRxikGzSrpIlnvKE0p/N7x7Mxb4zy0C94caEGefXjnoc2S7tQ7jV+
	 Fo9aNGAV0hzu4sBvBfVZ1pXDnMQ68DpwD0/6wj4fCzXpDCjgurvGcOjTcQZKXAUgKg
	 0fb7SSxnyNdvA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jml7bSstezh2; Mon, 11 Jul 2022 12:12:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7634660F06;
	Mon, 11 Jul 2022 12:12:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7634660F06
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 186D41BF3ED
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Jul 2022 12:12:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0049282FC9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Jul 2022 12:12:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0049282FC9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p1EwwZKkm3t6 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Jul 2022 12:12:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4200C82F99
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4200C82F99
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Jul 2022 12:12:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10404"; a="346329282"
X-IronPort-AV: E=Sophos;i="5.92,262,1650956400"; d="scan'208";a="346329282"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2022 05:12:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,262,1650956400"; d="scan'208";a="771493788"
Received: from propan.igk.intel.com ([10.211.8.82])
 by orsmga005.jf.intel.com with ESMTP; 11 Jul 2022 05:12:38 -0700
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 11 Jul 2022 14:10:45 +0200
Message-Id: <20220711121047.111489-1-anatolii.gerasymenko@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657541567; x=1689077567;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BnjWjlvZwruEZ6mNyEcH7qAu+C+dvwY1EWHYy1plKDQ=;
 b=AW3I5FZ/CNt5u1jsMb5DuZbBuso6ECIPpMIzybRXANLQi3Vb+3lFKtpo
 bKj4kEuLH1TjqVz8xLzWVacpWFXgr2JVn8DW/kGXxpCwglLLIWzKTzwE6
 +t++8BE3UBg2sL7fcgkbjF2jV1OJHztjCUd/U6ZKppEb/AJnhk9F9lsg5
 ag+luuZilwSFQjlPrWrNCeYDfx77Oa9TYeJ+juHCxTYj3SRK4SC4U1c0B
 Oe0h9u6APq0dCJ0/T4k6RJHFpgN5D+kzWlvqjX7qMqi8cYshvcVjUCQhD
 KduGLVXWNWSD6PVNlZIMZfRJY2x0vIrn0Rvc+RtwV0iz4Eokb6UWNZy8m
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AW3I5FZ/
Subject: [Intel-wired-lan] [PATCH net-next v2 0/2] ice: FCS/CRC stripping
 control
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
Cc: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Implement possibility to change FCS/CRC stripping feature using ethtool
command.

Having FCS/CRC could be useful for:
- network sniffers to inspect FCS/CRC correctness
- for benchmarking use cases
- XDP programs

v2: rebase on top of Maciej Fijalkowski's patches

Anatolii Gerasymenko (1):
  ice: Implement FCS/CRC and VLAN stripping co-existence policy

Jesse Brandeburg (1):
  ice: Implement control of FCS/CRC stripping

 drivers/net/ethernet/intel/ice/ice.h         |  1 +
 drivers/net/ethernet/intel/ice/ice_base.c    |  2 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c |  5 +-
 drivers/net/ethernet/intel/ice/ice_lib.c     | 21 +++++++
 drivers/net/ethernet/intel/ice/ice_lib.h     |  2 +
 drivers/net/ethernet/intel/ice/ice_main.c    | 65 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_txrx.h    |  3 +-
 7 files changed, 93 insertions(+), 6 deletions(-)

-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
