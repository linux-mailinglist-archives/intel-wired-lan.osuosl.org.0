Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B6EC46E78F4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Apr 2023 13:50:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5817B6165B;
	Wed, 19 Apr 2023 11:50:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5817B6165B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681905044;
	bh=HbPpmff+CGhPw07Ss1/sHEqa++Nn6ZuQiyJKa97P0NU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=nY8SiVl0mpOiOBqchegylLR7QskcTAdRCquoM8GbqHq6548N/tnz6ZiDMReGv750z
	 z14kZK2xbFZGxiGFGbFBLONDZq8O7qzMxirGoOodAXbuNm2u21oLiKwc2hQoA4fD6v
	 kUz1fnGHoHIAzPsVo0L2xuwCUgAV1/cdyoxj+mXQ45ZdtzJ1i8nNicV5XLDGIM0RJm
	 koFN7UfTozYW1EA58+M2G2B8siqCyBl5M9bLoxQfZ/VjUjwezzzY2TgEHpvd0K+6Jw
	 h2CQvz2yayf8vLXN+mC/GZngJoQnhYpdRyc8NbG8PUZku6N6taQY09IBeibbSh4csg
	 /cnFfwpGigw3A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J8z16z_tcfKn; Wed, 19 Apr 2023 11:50:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 323E761607;
	Wed, 19 Apr 2023 11:50:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 323E761607
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9926C1C4361
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 11:50:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7E9278404E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 11:50:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7E9278404E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id whzZKtgw4UDx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Apr 2023 11:50:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B4D4483FE8
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B4D4483FE8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Apr 2023 11:50:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="325760449"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="325760449"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 04:50:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="691480783"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="691480783"
Received: from gklab-018-208.igk.intel.com ([10.102.18.208])
 by orsmga002.jf.intel.com with ESMTP; 19 Apr 2023 04:50:36 -0700
From: Kamil Maziarz <kamil.maziarz@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 19 Apr 2023 13:50:02 +0200
Message-Id: <20230419115006.200409-1-kamil.maziarz@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681905037; x=1713441037;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4xTYUWDi3eckGg/Qe2eGfsGouhkGJJEJCKkqspfDr0k=;
 b=h0XOHXNUCaIHO1TD4yj/RGIaVRf6XKJLQI7w7lsplFLec+74joZmH9SM
 suKuAaU8kv8Z6D+sBA9E3rI1VeKdt1M+G1dzoj9ZqZqXhMHneN3/bOPYO
 NJqsXlXI9VIxKvHmoPIVkUCusIJhvCJnk6TB5TF4ymqb4rO47CAHxauOA
 wYmG+fBGGTexip8XjMbM6etAofxzM2PlY2J7+VK6D8aTIzlbIBfjaGCyD
 vK0wubu9mrtuOFwBLFSYlZkuEeS9JyyYZ+VM00YgWs/gRLqPX2JvSy4bu
 fFLz1i6BelG5JSH6cH9c7oC/ZxFde/PE6c5/kHblesfUXA9U08f53Ztro
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=h0XOHXNU
Subject: [Intel-wired-lan] [PATCH net v3 0/4] iavf: fix reset task deadlock
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

Changing the way we handle resets so that callbacks operating under the RTNL lock will wait for the lock to be released.
This will eliminate circular dependency with the critical lock.

Marcin Szycik (4):
  iavf: Wait for reset in callbacks which trigger it
  iavf: Don't lock rtnl_lock twice in reset
  Revert "iavf: Detach device during reset task"
  Revert "iavf: Do not restart Tx queues after reset task failure"
---
v2: squashed "iavf: Add waiting for reset to finish in iavf_change_mtu" commit
---
v3: changes described under each commit separately
---
 drivers/net/ethernet/intel/iavf/iavf.h        |   3 +
 .../net/ethernet/intel/iavf/iavf_ethtool.c    |  31 +++--
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 115 +++++++++++++-----
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   1 +
 4 files changed, 102 insertions(+), 48 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
