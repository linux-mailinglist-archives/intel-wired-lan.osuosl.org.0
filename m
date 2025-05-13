Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B203AB533F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 May 2025 12:55:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D116540E1A;
	Tue, 13 May 2025 10:55:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Za3AUyMJ6w5v; Tue, 13 May 2025 10:55:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 05F6C40E12
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747133751;
	bh=soM97P4DNjofcn0u5Hrp6W6XhWcAQrCCOBHslApOUNs=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=3uJCZMlajUg4pypOaGDH9ThfWjiZ8F+tc2i05PSLKC50JjEw6bjjV+umqJemnjdyy
	 WMOt9tRUcquJ8WgWh5bGqZvykHT5tT5P/yVROaaoRe2uvCZ911YM7d+YfqVDX/8tRc
	 fJtVCU6B/nJsPgevSDkLhxcVlvCJTflXGif272Zb3DDWrzEDek+1FtobmL9OASh17p
	 ZZE8iC6oxKt3CAQ7Fmt/wFMH9uKOW0geEPBtlImB+shgSwAdEyQoWHpkUe1kpdZ+O5
	 XXPZyEbnkJNQzhpgs/JRnt68hkvb2LNOYFnFEW4jlVQ0LnPgnSQScH//BbzC+QKbMJ
	 BSykQscXomMfg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 05F6C40E12;
	Tue, 13 May 2025 10:55:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6331F153
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 10:55:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 496C440BD1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 10:55:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aY5KnFI3-yhi for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 May 2025 10:55:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=michal.kubiak@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5EA3041729
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5EA3041729
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5EA3041729
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 10:55:48 +0000 (UTC)
X-CSE-ConnectionGUID: MOss34b6Rtih1K0KQ+3NJQ==
X-CSE-MsgGUID: p1eSwbVfRvSmXTLu+1OgdA==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="52630649"
X-IronPort-AV: E=Sophos;i="6.15,285,1739865600"; d="scan'208";a="52630649"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 03:55:48 -0700
X-CSE-ConnectionGUID: EfzyNQMOTkG9h5AAj7SU0g==
X-CSE-MsgGUID: dThUDSZmTdCfTQOTjt5c2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,285,1739865600"; d="scan'208";a="138600539"
Received: from gk3153-pr4-x299-22869.igk.intel.com (HELO
 localhost.igk.intel.com) ([10.102.21.130])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 03:55:46 -0700
From: Michal Kubiak <michal.kubiak@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: maciej.fijalkowski@intel.com, aleksander.lobakin@intel.com,
 przemyslaw.kitszel@intel.com, dawid.osuchowski@linux.intel.com,
 jacob.e.keller@intel.com, jbrandeburg@cloudflare.com,
 netdev@vger.kernel.org, Michal Kubiak <michal.kubiak@intel.com>
Date: Tue, 13 May 2025 12:55:26 +0200
Message-ID: <20250513105529.241745-1-michal.kubiak@intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747133749; x=1778669749;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BL/2TY8Cn65018DK0kWw1A4kfT5eGAtTipy6JiqXOv4=;
 b=QPUsFNp1y4vL5jKTcmFtf77SDdZ7Tlgfo6HVldlRyyGiWGZ6xrXgbc3K
 hWfKeThI3ARNyOt4IofUbbAsNg4AV5eHTHc1TKO3xMrvWhFk7tR37enSh
 g3ifkDe4tLnS31zC5coCH0Zto1ZlJ+fPXCuKIedpbcIFkOVtnLK2hGinG
 I0iSiz/w/PHkXxRdbu1CvigucQipx9bdPm1eeQmAdkTg+t7DfOZR8SDbx
 KEisibdMDpMFa7xsv/uFhQMPlrEHBdYZrJS0FGzntvpzXbnXkMq5VYc3x
 7UKkl0ohV6pBJ9ZAJtj4yfwpRk3Pg1wfj9h9aChyt7UiK+w4f5K3gQnIv
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QPUsFNp1
Subject: [Intel-wired-lan] [PATCH iwl-net v3 0/3] Fix XDP loading on
 machines with many CPUs
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

Hi,

Some of our customers have reported a crash problem when trying to load
the XDP program on machines with a large number of CPU cores. After
extensive debugging, it became clear that the root cause of the problem
lies in the Tx scheduler implementation, which does not seem to be able
to handle the creation of a large number of Tx queues (even though this
number does not exceed the number of available queues reported by the
FW).
This series addresses this problem.

First of all, the XDP callback should not crash even if the Tx scheduler
returns an error, so Patch #1 fixes this error handling and makes the
XDP callback fail gracefully.
Patch #2 fixes the problem where the Tx scheduler tries to create too
many nodes even though some of them have already been added to the
scheduler tree.
Finally, Patch #3 implements an improvement to the Tx scheduler tree
rebuild algorithm to add another VSI support node if it is necessary to
support all requested Tx rings.

As testing hints, I include sample failure scenarios below:
  1) Number of LAN Tx/Rx queue pairs: 128
     Number of requested XDP queues: >= 321 and <= 640
     Error message:
        Failed to set LAN Tx queue context, error: -22
  2) Number of LAN Tx/Rx queue pairs: 128
     Number of requested XDP queues: >= 641
     Error message:
        Failed VSI LAN queue config for XDP, error: -5

Thanks,
Michal

---

v3:
  - do not reset the children counter during removing the VSI support
    node in the patch #3 (Przemek),
  - fix the kdoc comment for the newly added `ice_sched_rm_vsi_subtree()`
    helper functions in the patch #3.

v2:
  - fix the bug while the `ethtool -L` command did not work while
    the XDP program was running (Jesse),
  - in the patch #3, add a missing extension for `ice_sched_rm_vsi_cfg()`
    to  remove all VSI support nodes (including extra ones),
    associated with a given VSI (to fix the root cause of the problem
    mentioned above).
  - add a corresponding description to the commit message of
    the patch #3.

v2: https://lore.kernel.org/netdev/20250509094233.197245-1-michal.kubiak@intel.com/
v1: https://lore.kernel.org/netdev/20250422153659.284868-1-michal.kubiak@intel.com/

Michal Kubiak (3):
  ice: fix Tx scheduler error handling in XDP callback
  ice: create new Tx scheduler nodes for new queues only
  ice: fix rebuilding the Tx scheduler tree for large queue counts

 drivers/net/ethernet/intel/ice/ice_main.c  |  47 ++++--
 drivers/net/ethernet/intel/ice/ice_sched.c | 181 +++++++++++++++++----
 2 files changed, 181 insertions(+), 47 deletions(-)

-- 
2.45.2

