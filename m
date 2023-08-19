Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 721E37819D2
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Aug 2023 15:52:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 03B7A83BF4;
	Sat, 19 Aug 2023 13:52:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 03B7A83BF4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692453140;
	bh=Eu3FW2lvrnsAnJidlav939XcYlTYylRC2P5Alb8lWTM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=GK9vAaFBCowm1u4Huxk2Uz4+XXBeDEg3HnXmtXLLqGx0kSHZDlvEMqMeEMxXvVOPb
	 A8eCX2e9E5GGyoDt2HpJHqqrQjxUPIBDWbBoU4N2p6oJDwRTBb4gqHvH15TP4Gi2nL
	 oYaCvDjEbQCBWTq4LDx8BgNPnIIyHjxifPNtJxyY6jIZy91FcrRVJU03tep6HL0L2f
	 p/Bxsq5O7j4B48yZstWLzXgk2RvzbZw8Py0K/NvQM8FCv4KY4aj7NBNalvknm4ThcX
	 EfPrVIr9irYjlxDv2r4senr8wZ9ZMrqdVrjIUDdMWchxNQjmYSRT2l1Gsj/dSK/LR+
	 pX2wLVVOFNICA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WFno4a2qwbA4; Sat, 19 Aug 2023 13:52:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB21483BE4;
	Sat, 19 Aug 2023 13:52:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AB21483BE4
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1F3671BF476
 for <intel-wired-lan@osuosl.org>; Sat, 19 Aug 2023 13:52:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ED59683BA1
 for <intel-wired-lan@osuosl.org>; Sat, 19 Aug 2023 13:52:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ED59683BA1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WjnsA1CcCkZA for <intel-wired-lan@osuosl.org>;
 Sat, 19 Aug 2023 13:52:12 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A9C24838CC
 for <intel-wired-lan@osuosl.org>; Sat, 19 Aug 2023 13:52:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A9C24838CC
X-IronPort-AV: E=McAfee;i="6600,9927,10807"; a="363463618"
X-IronPort-AV: E=Sophos;i="6.01,186,1684825200"; d="scan'208";a="363463618"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2023 06:52:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10807"; a="805452173"
X-IronPort-AV: E=Sophos;i="6.01,186,1684825200"; d="scan'208";a="805452173"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by fmsmga004.fm.intel.com with ESMTP; 19 Aug 2023 06:52:08 -0700
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Sat, 19 Aug 2023 21:50:49 +0800
Message-Id: <20230819135051.29390-1-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692453132; x=1723989132;
 h=from:to:cc:subject:date:message-id;
 bh=LgBTQjLoGAIGJfx4euGq4bhsXXYEwJRUIPf9oNcVRj0=;
 b=kjfukgZaug8ZbIf6L17uA3OMZ7rrOsKevGpSRiPrGApwPUUnsIuEo1cK
 3QUogSiOZaXHxIu8V67Mgw3YcL4SCvx8l0Zwrnd/o3Gtf+Gch46kPXmhf
 Nu0tsONll1qgM/WntQk8/sUc1Nl1jA7ad+ybtBdBJ6j4DSKtzkOtMUhDe
 r9gKFKuyQ0voC6PiTCXEHyUKE1sy6OKczYmXVtVGOv4aHLqyDqoD+oFwT
 n/2kkinigRDl/VicGOrrvuDFj9JLh33SWln1I5KLd0TEOMb2EkM2bBnRJ
 pdVKUE9H8l60pEcfcY7pURCyiipk6drTWZ4JVzTWW4YKXDzAcDUeHoyBT
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kjfukgZa
Subject: [Intel-wired-lan] [PATCH iwl-net v4 0/2] Enhance the tx-usecs
 coalesce setting implementation
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
Cc: bcreeley@amd.com, netdev@vger.kernel.org, edumazet@google.com,
 pabeni@redhat.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 kuba@kernel.org, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The current tx-usecs coalesce setting implementation in the driver code is
improved by this patch series. The implementation of the current driver
code may have previously been a copy of the legacy code i210.

Patch 1:
Allow the user to see the tx-usecs coalesce setting's current value when
using the ethtool command. The previous value was 0.

Patch 2:
Give the user the ability to modify the tx-usecs coalesce setting's value.
Previously, it was restricted to rx-usecs.

V3 -> V4:
- Implement the helper function, as recommended by Brett Creely.
- Fix typo in cover letter.

V2 -> V3:
- Refactor the code, as Simon suggested, to make it more readable.

V1 -> V2:
- Split the patch file into two, like Anthony suggested.

Muhammad Husaini Zulkifli (2):
  igc: Expose tx-usecs coalesce setting to user
  igc: Modify the tx-usecs coalesce setting

 drivers/net/ethernet/intel/igc/igc_ethtool.c | 58 +++++++++++++-------
 1 file changed, 37 insertions(+), 21 deletions(-)

--
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
