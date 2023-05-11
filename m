Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 295EC6FEF76
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 May 2023 11:57:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 326E2700CD;
	Thu, 11 May 2023 09:57:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 326E2700CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683799028;
	bh=n0X+4U2c1G1+7FsfBe0kL7D32pZTwUJWcbTVfw/RrdU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=RORkexJFsLBnyBaYM5Emw58hHe1RTTnZ9Nfrucxl8UekY6+Zc0bdlvHoU6VjTdWOf
	 tO7UzpzwasliWeu2hdlf0Y82+r4UU58nPbdNxtiDTKS45gU8S19OPW1/xwstyXNo2s
	 KXmX67g+g4Eq077DwXpWcvWKC2EdzWK4inSWzEUHuEfiAo7e8Y13v6es+0X1OP056i
	 0bDarE4AmQ+gEPwKNF/+P0zq3+QGkgFENAujxk9QtwoYvk8HetGCV/4BD5Bcqh30rN
	 uLTIA0cYKEJFQ049SR4Lo8g3KLL1Qr5GaQJVOlazulKvrJkoaszPfOZn1QdwcLjzTc
	 N4P5L3IuKSkVg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qspBwc0czYkm; Thu, 11 May 2023 09:57:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0DEA26FF1B;
	Thu, 11 May 2023 09:57:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0DEA26FF1B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 671F01BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 09:57:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 35D7B42BEC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 09:57:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 35D7B42BEC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DsX66ZdTnDDj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 May 2023 09:57:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E86D040904
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E86D040904
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 May 2023 09:56:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="436785508"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="436785508"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 02:56:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="764677374"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="764677374"
Received: from gklab-018-208.igk.intel.com ([10.102.18.208])
 by fmsmga008.fm.intel.com with ESMTP; 11 May 2023 02:56:58 -0700
From: Kamil Maziarz <kamil.maziarz@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 11 May 2023 11:56:24 +0200
Message-Id: <20230511095628.17907-1-kamil.maziarz@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683799019; x=1715335019;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rwchQKE7Ty1qeuEIoiuCpaVSq4/LvD28mQq2Qew5dzE=;
 b=PgYbpZndVeknSR2Yyo65QlX68MZS1z485s4Gk4nqkLMTQWbRxhkNUB0g
 92Jj9Jl7twASXOPt8q1yfG6U8KoUr8vRlWG62R3OqpxVdJi9vNQpfNIsD
 OFsbTbusOpup63oPDjMVjGkLlcwEkC4lzPWPyGq8ftailetJzftXAII9R
 NcPVKb3azpwimefuruLPHkkg0NI7ajI/xeopG28PtqMVPldgL1C+ec6cU
 0NaLMBsc047DKjiv5S3XQ4iAdGvmVr1POAJd92cVwKy8Jq3+bGYHpcIEW
 221la3aHSSUREDEsDw1rm2yMQ0o6PYHNUPzVKUt/pCs5M4aOP6ZG5jLY3
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PgYbpZnd
Subject: [Intel-wired-lan] [PATCH iwl-net v6 0/4] iavf: fix reset task
 deadlock
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

Changing the way we handle resets so that the callback operating under the RTNL lock will wait for the reset to
finish, the rtnl_lock sensitive functions in reset flow will schedule the netdev update for later.
This will eliminate circular dependency with the critical lock.

Marcin Szycik (4):
  iavf: Wait for reset in callbacks which trigger it
  iavf: Don't lock rtnl_lock twice in reset
  Revert "iavf: Detach device during reset task"
  Revert "iavf: Do not restart Tx queues after reset task failure"

 drivers/net/ethernet/intel/iavf/iavf.h        |   3 +
 .../net/ethernet/intel/iavf/iavf_ethtool.c    |  31 +++--
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 118 +++++++++++++-----
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   1 +
 4 files changed, 105 insertions(+), 48 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
