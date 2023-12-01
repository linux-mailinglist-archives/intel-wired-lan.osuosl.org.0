Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C019B800402
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Dec 2023 07:36:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E101E8463F;
	Fri,  1 Dec 2023 06:36:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E101E8463F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701412561;
	bh=RuHfih6WympAvFYJcFQpqeNtm73MnF+40jP9qheC4TE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=KXTUfWAGKl4jS0o8Wsv89j4myRW4dthz9hTzoc/sPBIsuMtfSKGHF0pmiOX+Z15m0
	 G5wdVd56Nj6PdOx2K6+9GRzMmNwV94Ag9fOp9+E4kl5+A/NYz6NKEsnDJl2c+MD5KQ
	 aj31RfGMk6B4qxAKQLREXmYiIcwQkfSJR6clHFmf5Lmq/yr6+MS0LwTR7xc6Ue2ONZ
	 777nQ+ScjY9MCWKiB0shBmieNsJwCYF9HsImmGjwbbRau/8w24d0Jtrfzwvs3z7yHA
	 vzdTTFXd01uxP51+ZNGLkFZ224jR7g5AKvpDDoikUqHUfZb2eGsahV0E5t26ps6ltt
	 YN1cQnUdh5h2A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p-IrITHI0HL8; Fri,  1 Dec 2023 06:36:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BC3A584581;
	Fri,  1 Dec 2023 06:36:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BC3A584581
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 161861BF345
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 06:35:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DB51A42085
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 06:35:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DB51A42085
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZgL56rHxwCGN for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Dec 2023 06:35:55 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 31A8142083
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Dec 2023 06:35:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 31A8142083
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="424597672"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; d="scan'208";a="424597672"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2023 22:35:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="860457970"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; d="scan'208";a="860457970"
Received: from wp3.sh.intel.com ([10.240.108.102])
 by FMSMGA003.fm.intel.com with ESMTP; 30 Nov 2023 22:35:52 -0800
From: Steven Zou <steven.zou@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  1 Dec 2023 14:25:00 +0800
Message-Id: <20231201062502.10099-1-steven.zou@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701412555; x=1732948555;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ccV9n/QYxmvF9ocwoEezg0EWSufO2UE4fRwBUjAxZRI=;
 b=WTQG/myfUL4KbiHyyaOHZQp/1EmFb07K7u1+9sX+uv/o2tyUIKAxjZ8A
 CfNf3ukDA0u+zgLWuSUhXnZh2SAt9JqhW6i4/jsOqeAI+hCSxsCy0pmf6
 roz/gCIePo8QAuT6nXA9xvJJVKkV9LcnH0nq7+jhHbx2Hz3CeRSBUEhvI
 8CIM4CDfmeHbuctr1tWNL22KlXZF6vTY2Kzk5NsoNNEZRx9iNWBMUNlvw
 QNz2UrHs7fNkc+aq3Gt2T/CP/sD+Lq/cNL59UzvNDUOlFdvDXZoMBkTRM
 cToWPp5fsJFsZWQFEO6N6AYraGDHzSuuwvL4EHMx+OCaX9wpIaoJNHcHB
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WTQG/myf
Subject: [Intel-wired-lan] [PATCH iwl-next 0/2] ice: Introduce switch recipe
 reusing
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
Cc: jan.sokolowski@intel.com, netdev@vger.kernel.org, steven.zou@intel.com,
 andrii.staikov@intel.com, aleksander.lobakin@intel.com,
 przemyslaw.kitszel@intel.com, andriy.shevchenko@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch series firstly fix the bitmap casting issue in getting/mapping
recipe to profile association that is used in both legacy and recipe
reusing mode, then introduce switch recipe reusing feature as new E810
firmware supports the corresponding functionality. 

Steven Zou (2):
  ice: Refactor FW data type and fix bitmap casting issue
  ice: Add switch recipe reusing feature

 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   5 +-
 drivers/net/ethernet/intel/ice/ice_common.c   |   2 +
 drivers/net/ethernet/intel/ice/ice_lag.c      |   4 +-
 drivers/net/ethernet/intel/ice/ice_switch.c   | 211 +++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_switch.h   |   5 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   2 +
 6 files changed, 197 insertions(+), 32 deletions(-)


base-commit: fce82d0f94e9c1ca953d950ebdb66c6c7f9d53f4
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
