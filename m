Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC897662815
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Jan 2023 15:08:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9CD00408CD;
	Mon,  9 Jan 2023 14:08:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9CD00408CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673273303;
	bh=dRijNqjABvSRUvSwEHtIY8kHvBfwg+2JcjTnmkb3Kbw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=dvy9aL+vOlrGQzbzgD4TsQ9ak733Zo+gTyP1JkG8X1cAjnW9FnfUHSV0QzV9pIEf8
	 EnpXI/0uIKQUwqQre3AEo1ohn/7kKy7nD9AGDKcD+7/SD3peXA3nJFVBa8EDFQVzGf
	 oCHNBoUQGh6kpQm4bvEF3pm9i3A0AEWovsVjFk988/Q5DuINIiLhxxVmA6pqYvFEoB
	 W9LwUwgfT2tVH66N84MLVJnlPC4par0/pF7SZ2VggXl1QJ3hqOG77mNkWlPt2k4x+l
	 7GQrpOtbG+Fmmpz9h2bkpUzINpw49RaEcao5p3Sryl56YKbnixgydoc0Scz/hq5CFW
	 /pC62gufAwN0Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6XmNZfJUA74S; Mon,  9 Jan 2023 14:08:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 82DEC4038D;
	Mon,  9 Jan 2023 14:08:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 82DEC4038D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BA5C61BF3FC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jan 2023 14:08:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9F892404F7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jan 2023 14:08:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9F892404F7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PXBQ4YsnC9iq for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Jan 2023 14:08:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8B58B404AA
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8B58B404AA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jan 2023 14:08:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="385181205"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="385181205"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2023 06:08:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="634218901"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="634218901"
Received: from s240.igk.intel.com (HELO s048.nql.local) ([10.102.18.202])
 by orsmga006.jf.intel.com with ESMTP; 09 Jan 2023 06:08:13 -0800
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  9 Jan 2023 15:11:15 +0100
Message-Id: <20230109141120.3197817-1-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673273296; x=1704809296;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RV1V6cqdBd/l1wJCehJy1/0O1dUKOFVApkTRQ73ufHM=;
 b=OOggtsbZuQax/AZ1mCBWyZ8P+5WP/TpigEeAjqPzc7r39XTnH1KpVNZH
 h58lSbs0CSrbQkxxhX3CemwGxPxFAiSTKPKBmtrLzDMzoBqWF682NOXXz
 XdNFQ77fxZf5tVcBHSFhpJ5+Ts9TmDxryJe2tX4PXQucSMVEPvMJsvhDt
 mS7kdFe8lsXmifA8f7i40aUrrcqBc4aeLZPMKPFMjr3hyfXxoLQITkEWQ
 2ufLEQdzcNB5fI0nUk1BEEvm6BMUg8ufsv3vCIZdcP4JjPwXcWqBKT8LF
 D3s3pQK/f9l2GhUhDj1adYsaOtv+W+3Q7QQNQ2VNxR7YR2pfuKYibIEQQ
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OOggtsbZ
Subject: [Intel-wired-lan] [PATCH net-next v5 0/5] i40e_status removal series
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series contains a refactoring that removes i40e_status
values from i40e driver, and replaces them with standard
kernel error values.

Jan Sokolowski (5):
  i40e: Remove unused i40e status codes
  i40e: Remove string printing for i40e_status
  i40e: use int for i40e_status
  i40e: remove i40e_status
  i40e: use ERR_PTR error print in i40e messages

---
v2: Previous version didn't include cover letter, and had
a problem where one patch was erroneously not sent to
intel-wired-lan mailing list.

v3: Fixed build problems found in v2, and reformatted
the patch to conform to checkpatch here applicable,
as not all lines could be fixed without introducing other
checkpatch warnings.

v4: Rebased to current head, and added a new patch
in series to adress a comment received in previous
version. The patch adds human-readable error messages.

v5: Fixed a bug introduced after a bad rebase.
---
 drivers/net/ethernet/intel/i40e/i40e.h        |    8 +-
 drivers/net/ethernet/intel/i40e/i40e_adminq.c |  117 +-
 drivers/net/ethernet/intel/i40e/i40e_adminq.h |    3 +-
 drivers/net/ethernet/intel/i40e/i40e_alloc.h  |   22 +-
 drivers/net/ethernet/intel/i40e/i40e_client.c |   12 +-
 drivers/net/ethernet/intel/i40e/i40e_common.c | 1146 ++++++++---------
 drivers/net/ethernet/intel/i40e/i40e_dcb.c    |   80 +-
 drivers/net/ethernet/intel/i40e/i40e_dcb.h    |   28 +-
 drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c |   16 +-
 drivers/net/ethernet/intel/i40e/i40e_ddp.c    |   16 +-
 .../net/ethernet/intel/i40e/i40e_debugfs.c    |   12 +-
 drivers/net/ethernet/intel/i40e/i40e_diag.c   |   18 +-
 drivers/net/ethernet/intel/i40e/i40e_diag.h   |    4 +-
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |   65 +-
 drivers/net/ethernet/intel/i40e/i40e_hmc.c    |   75 +-
 drivers/net/ethernet/intel/i40e/i40e_hmc.h    |   46 +-
 .../net/ethernet/intel/i40e/i40e_lan_hmc.c    |  148 +--
 .../net/ethernet/intel/i40e/i40e_lan_hmc.h    |   34 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c   |  462 +++----
 drivers/net/ethernet/intel/i40e/i40e_nvm.c    |  292 ++---
 drivers/net/ethernet/intel/i40e/i40e_osdep.h  |    1 -
 .../net/ethernet/intel/i40e/i40e_prototype.h  |  643 ++++-----
 drivers/net/ethernet/intel/i40e/i40e_ptp.c    |    2 +-
 drivers/net/ethernet/intel/i40e/i40e_status.h |   78 --
 drivers/net/ethernet/intel/i40e/i40e_type.h   |    1 -
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |  271 ++--
 26 files changed, 1691 insertions(+), 1909 deletions(-)
 delete mode 100644 drivers/net/ethernet/intel/i40e/i40e_status.h

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
