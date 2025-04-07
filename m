Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8DFA7EC5F
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Apr 2025 21:15:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E63184069C;
	Mon,  7 Apr 2025 19:15:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lEbFNf9-06df; Mon,  7 Apr 2025 19:15:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4D87540C92
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744053354;
	bh=mpDsEnUIDyHleAGQEZNQa39LNSpWs7zTsM2mNRTtaf8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=4pz5E9zA8FbnBApyUj6AX5+klPyMoR70EvtzIVUjwGmX+16u3afHgdTutOsvHisLi
	 BIttH9ISyzD8I39kGb0TWBMY/KyYTKRSC0nxXXH9DqI0l2CLkNe1w6poktnuWdXDZr
	 6bBxehNf7SfiqIKrJzi+/y7SGw56outeOBIJwElZyNhIs8ID6S591x+5g7akphaodl
	 aDI3iWHle38TcaUfI5wKtsIDehDoe24u/h86nI6g+gi/aiR7JfSjMAmNt1REzT4GWW
	 1QtnEZolrzk8DAKUAwoFPJjfirbcH7rr/MuVVaump5euuwQZRYvuLLyiGSs8cVKurL
	 oJzvX21hejtAg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4D87540C92;
	Mon,  7 Apr 2025 19:15:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1B0F11DE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 19:15:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0A17F41400
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 19:15:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zDXiOH-3mW1T for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Apr 2025 19:15:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7FDA34019E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7FDA34019E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7FDA34019E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 19:15:51 +0000 (UTC)
X-CSE-ConnectionGUID: 3680L5rhSP6Dn0snu5Gq8w==
X-CSE-MsgGUID: 97cDuz/JST6P7RK0aG1DAA==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="49307033"
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="49307033"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 12:15:51 -0700
X-CSE-ConnectionGUID: BxVlfM4tT8qZKCtxeLDXLQ==
X-CSE-MsgGUID: LDIvqomzQqatc/UMFHVuVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="128979576"
Received: from dmert-vmdev.jf.intel.com ([10.165.18.186])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 12:15:51 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  7 Apr 2025 15:15:09 -0400
Message-ID: <20250407191517.767433-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744053351; x=1775589351;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7D2eyDAQcGxti8yo3Lg7V2AmOZsHuISfmrRgWwDCfuY=;
 b=WKVbYI4IHGrnk4sdpvKE1LK/7o4HnesfoEnR4kiirlPfUQlEe4gQY6km
 3qhACHJo8dPPG3w4isnjRRrOEp6HHqlZCem1tV/mojfe2Bi2ZQfRMBfzH
 7SXomllAACrK9eW/TyxAIuwJsmudeKP5WSBPOAeDt1H1hrBCjctVAKtyl
 IvdBSxNV8xxFeDUEiL23c0FOzjpN+0IW3V74mCOHeh2nwXJTT6OJxTnNV
 hApaHOIUUsq4J16cP7YakhxbtdSJQnbbArb1eyZRbkvJQ1UGfKZNhQzTY
 VDK9MZROgXZ5EWnzokXFOU8Ww+X8nUNjNOZK/VHfuTLkX0NH1F00qsqrE
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WKVbYI4I
Subject: [Intel-wired-lan] [PATCH iwl-next 0/8] ice: implement SRIOV VF
 Active-Active LAG
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is a 8 patch series to implement support for SRIOV VFs over an
active-active link aggregate

Patch 1 cleans up void pointer casts
Patch 2 utilizes bool over u8 when appropriate
Patch 3 adds a driver prefix to a LAG define
Patch 4 pre-move a function to reduce delta in implementation patch
Patch 5 Cleanup variable initialization in declaration block
Patch 6 Cleanup capability parsing for LAG feature
Patch 7 Move duplicatde lag code into helper functions
Patch 8 is the implementation of the new functionality

Dave Ertman (8):
  ice: Remove casts on void pointers in LAG code
  ice: replace u8 elements with bool where appropriate
  ice: Add driver specific prefix to LAG defines
  ice: move LAG function in code to prepare for Active-Active
  ice: Cleanup variable initialization in LAG code
  ice: cleanup capabilities evaluation
  ice: breakout common LAG code into helpers
  ice: Implement support for SRIOV VFs across Active/Active bonds

 drivers/net/ethernet/intel/ice/ice.h          |   1 +
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   9 +-
 drivers/net/ethernet/intel/ice/ice_common.c   |  19 +-
 drivers/net/ethernet/intel/ice/ice_common.h   |   2 +-
 drivers/net/ethernet/intel/ice/ice_lag.c      | 919 ++++++++++++++----
 drivers/net/ethernet/intel/ice/ice_lag.h      |  23 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   6 +-
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  19 +-
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  23 +-
 9 files changed, 798 insertions(+), 223 deletions(-)

-- 
2.49.0

