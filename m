Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DB9CF722A09
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 16:57:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C8D6821D7;
	Mon,  5 Jun 2023 14:57:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C8D6821D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685977074;
	bh=Gh+S2zhhWmH1ICmMOBaxUDBB9kHQKhFld9ycWrUR3d0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=T4q5Iz7MZ8JTlHNZ6X+uoPOTLadSxAh22m1hkNKTxRS/9YOQ3KAFzL4RfvY2A36F6
	 k+f+goDCmgqLXM7/QzL3OIE+qB986Vct0cMr2XWtXC1iHW4l0oucNAuSmL9XsNUit3
	 uH3pc8kaMuTjGDV4OMBvtVZtxl03hzIlM8Lw0qiT6zOVxL/0kvZTVos2aFJWT1t+Ny
	 IFw+MW7hiXwpQXEWMT6J6P0KrUaeuNDiYdVN86gf8GTKZv1G9VUnJ+sHoS5iSblRzk
	 eOmDy9Jvo51rujpPdxx5sRqXmk+t2gcGi5+nGg48HiAnMT2LDvaqcp/SIP8MyJENJu
	 75ag6rWEvycQw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cRt9qq-ciPVW; Mon,  5 Jun 2023 14:57:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5A54F8201E;
	Mon,  5 Jun 2023 14:57:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5A54F8201E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3BE5B1BF21A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 14:57:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1F448415C8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 14:57:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1F448415C8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ay6pr3arVkzl for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 14:57:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1E968415C0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1E968415C0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 14:57:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="358836885"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="358836885"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 07:57:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="778589781"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="778589781"
Received: from amlin-018-068.igk.intel.com ([10.102.18.68])
 by fmsmga004.fm.intel.com with ESMTP; 05 Jun 2023 07:57:44 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  5 Jun 2023 10:52:21 -0400
Message-Id: <20230605145226.1222225-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685977067; x=1717513067;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zNS0ewnORdoyEscviJnFZ3NUY5924r5VKYxCt7QUWPE=;
 b=JHYOMJJAoHYle/VMwzCoucq8cx8rIEbhP+w1DT/BoNgy39grJPMTU4PT
 iVQfm/0t1Qvv8Edpq2ns3T4rxSHtHlItBalw8IeXWH/BWJZKScfRYW6Ez
 VC6aia96gGjq+rxL3A9fzKLtUf4WkA7J8/nf1+etRj3AGfJNin7zvDMbj
 O45Xg/ovySS/LuIRfHlMkePljiawms7Tw/KUgTkRLnA8GJInzEKCGhtDJ
 ezhPWYCvUiDTIdfXLQ8jsllXnfZvy/DKTy7bCpImsAh3Fmc5O+iXseW/7
 uchF1aeea5djPuThYDkXlEZbHyJ/UITEXFCLt5seodi0nYeK3f8wNPb4B
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JHYOMJJA
Subject: [Intel-wired-lan] [PATCH iwl-net v10 0/5] iavf: fix reset task
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
Cc: ivecera@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Dawid Wesierski <dawidx.wesierski@intel.com>

Changing the way we handle resets so that the callback operating under the RTNL lock will wait for the reset to
finish, the rtnl_lock sensitive functions in reset flow will schedule the netdev update for later.
This will eliminate circular dependency with the critical lock.

Ahmed Zaki (2):
  iavf: fix a deadlock caused by rtnl and driver's lock circular
    dependencies
  iavf: fix reset task race with iavf_remove()

Marcin Szycik (3):
  iavf: Wait for reset in callbacks which trigger it
  Revert "iavf: Detach device during reset task"
  Revert "iavf: Do not restart Tx queues after reset task failure"

 drivers/net/ethernet/intel/iavf/iavf.h        |   6 +-
 .../net/ethernet/intel/iavf/iavf_ethtool.c    |  39 ++-
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 226 +++++++++++-------
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   5 +-
 4 files changed, 172 insertions(+), 104 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
