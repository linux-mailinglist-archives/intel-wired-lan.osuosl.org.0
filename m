Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D408459F903
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Aug 2022 14:07:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9FCA780C67;
	Wed, 24 Aug 2022 12:07:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9FCA780C67
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661342862;
	bh=/BN7yjndgzHsvSvVSFhZSnDOdHqQye5sLE06F9Zm4X8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=LY5MhogFYGvypgPfvg01dvZ9PZkbO7FgvtWYAw/WKXou3vnz89Rkn5xuCZFIRz064
	 TB+IR/bJJCwsZRg+k2k5hqbGzlTM90oOJ/+4bwPlgqJxWX/Dnph0pVZiP6zgdew/ey
	 d7X1EwcIWLDkTRzb6HDxrtpcPnIg57aeUmU7QihkPux8rq05cLWJ8vDwRB0Y4W+vEI
	 SxotCBjmhI8zSVB1QjNjRU3N8UY14u4EyvA6NsXk2CBv7AH1lkCSCtmC+NQg1oJqwk
	 7VK6UG72uOtVq/pxs5ptuCzSvRBYMXBn7GIZr7XEksofyrfoB6K+sS4vJpGv6u0tqh
	 PISjyg21MbUjQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HkpoklOY56f4; Wed, 24 Aug 2022 12:07:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB2F081B52;
	Wed, 24 Aug 2022 12:07:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AB2F081B52
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ECD761BF29A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Aug 2022 12:07:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D2D0881B36
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Aug 2022 12:07:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D2D0881B36
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iDPqTqxOBiiV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Aug 2022 12:07:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E36C680C67
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E36C680C67
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Aug 2022 12:07:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="320004498"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="320004498"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 05:07:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="678021252"
Received: from propan.igk.intel.com ([10.211.8.82])
 by fmsmga004.fm.intel.com with ESMTP; 24 Aug 2022 05:07:33 -0700
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 24 Aug 2022 14:07:26 +0200
Message-Id: <20220824120728.1384453-1-anatolii.gerasymenko@intel.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661342855; x=1692878855;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=C5BUx9ml19wR8TtWQTXielxkyhdwr0HC7fA3MATrchA=;
 b=mz07E727ntPKhTMK5X1X4c8Oa1B+NbvOImnZp/RBVn5XCaIhWk9ccr7Q
 80D8N86lyuLsqDLYbgzT3nXNMlp3oiOwqjxw/ZGuLqvjuNsj4JGM+UuMl
 E15Vp8k1eAYSw736mRBFwhujuryL4OJFlLm0yZ9KG0DwNOqcKHhxWxiwp
 3bVQfVhYx0noN3YIeQkVFTPrB+7dwBYFhp7qjvdPK3SHA2tFzIA1uoNo6
 Al45Z/pWSz/5a92wDzkkJ5B0fHR6LSxMhsDkODQtiumURyraBcU/Gy0L+
 wRwHszRG5kEw0sMcugsDRwNzRIvcx4RGcRxjC22O+8UZm/YnoFOv0F2Z3
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mz07E727
Subject: [Intel-wired-lan] [PATCH net-next v4 0/2] ice: Implement LLDP MIB
 Pending change
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

If the RDMA traffic class is removed, then our Control QP (RDMA Admin QP)
may not receive completions and would hang RDMA processing. Which would
translate into requests for reset on the card after receiving such
changes from the switch.

To solve above problem FW will no longer remove TC nodes for the
applicable TC instead allowing RDMA to destroy QP markers. After RDMA
finish outstanding operations notification needs to be sent to FW to
finish DCB configuration change.

v4: Squash patch 2 and 3 together, because ice_get_dcb_cfg_from_mib_change()
	is now used for Pending changes only

Anatolii Gerasymenko (1):
  ice: Handle LLDP MIB Pending change
v2: Remove inline hint for ice_dcb_is_mib_change_pending()
v3: Handle only local LLDP MIB Pending change
v4: Use the old way to get MIB content for non-Pending changes, because
	the MIB Change event will not always contain a correct MIB.

Tsotne Chakhvadze (1):
  ice: Add 'Execute Pending LLDP MIB' Admin Queue command
v4: Fix incorrect defines for DCBx IEEE and CEE modes

 .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 18 ++++-
 drivers/net/ethernet/intel/ice/ice_common.c   | 13 ++++
 drivers/net/ethernet/intel/ice/ice_common.h   |  1 +
 drivers/net/ethernet/intel/ice/ice_dcb.c      | 39 +++++++++++
 drivers/net/ethernet/intel/ice/ice_dcb.h      |  2 +
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c  | 68 +++++++++++++++----
 6 files changed, 124 insertions(+), 17 deletions(-)

-- 
2.37.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
