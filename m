Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E33017B7B30
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Oct 2023 11:08:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ABC7541924;
	Wed,  4 Oct 2023 09:08:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ABC7541924
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696410523;
	bh=RV8d2Su0KNFnPrMVwdXoHFi311hhi8wkBR9ENtYdrLU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=0XRDBJFqFAWb++cG7kJJvcUO6WuJnI+7vJuL9VR9pWf2hL0DNuHDg2xoIvvRWj58y
	 7CwSbGOWy6oGsCHiqMGItJMgO5ygTT3t6GvL4N4tgmA+tKIwcOEGxTIYWZqhjBz1wt
	 D7lq4Oo/EYgVgXj3nQrsSqepi5rVHd7n6fA8pDjgbHUDNotwp3gfusuU5GUKAxrnA7
	 no/FYColmBnmmAb+HOsqnpK3m34eKdqe8CwyT9UajLt6wwlksWMmxRL+6j+S/v5QRk
	 txC3raPy699UKfMyPv4O/veZ9KKwBve13BfkB4FJiWEmBVcp5BM8MT4sSdZzo/rkPG
	 a2LSE0/nwR1bg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2L1EuUKE2Ts9; Wed,  4 Oct 2023 09:08:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 62E9E40134;
	Wed,  4 Oct 2023 09:08:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 62E9E40134
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 229461BF41C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 09:08:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ECDBB4206D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 09:08:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ECDBB4206D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lAAYVvBDlBYv for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Oct 2023 09:08:32 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AC52D4206A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Oct 2023 09:08:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AC52D4206A
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="373448477"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; d="scan'208";a="373448477"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 02:08:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="780668465"
X-IronPort-AV: E=Sophos;i="6.03,199,1694761200"; d="scan'208";a="780668465"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orsmga008.jf.intel.com with ESMTP; 04 Oct 2023 02:08:28 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: netdev@vger.kernel.org
Date: Wed,  4 Oct 2023 11:05:42 +0200
Message-Id: <20231004090547.1597844-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696410512; x=1727946512;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Xnhts4jT97KTkayqzW35Jj64lW+7QSle6bpzAnpos0Q=;
 b=HKvbzjOeAIQCTvv1t58FhMrFhVsnOSuGwRlqdpCx/4/63neYGb0riQfN
 ntrl7A1vV889vrNjqR5r76MgEP9E8T9uoq4fUu906zixi7pbEoTluVjIY
 sCgl7GawP+YUxdAeniLF5LD8YB3dKYWnxqnKbLsg+RM9jq2N42SgjxFQR
 6U9RNVjG3py0xIIPKuNJhpYBPzrl4YdwSLdYO3dgWKXEIrxRpRltrqxwG
 I1bBJ07ZU5DORME6XlmXZxNaHXtyk5Zn6wDkzI8lPeEk0MEYz4yaIwvI4
 ar64LbuzVyeS+XnPuwbrm+MmfOA0OZI/9IffB5cbLnOCHpZzZPceYUSUc
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HKvbzjOe
Subject: [Intel-wired-lan] [PATCH net-next v2 0/5] dpll: add phase-offset
 and phase-adjust
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
Cc: jiri@resnulli.us, corbet@lwn.net, intel-wired-lan@lists.osuosl.org,
 linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 anthony.l.nguyen@intel.com, kuba@kernel.org, vadim.fedorenko@linux.dev,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Improve monitoring and control over dpll devices.
Allow user to receive measurement of phase difference between signals on
pin and dpll (phase-offset).
Allow user to receive and control adjustable value of pin's signal
phase (phase-adjust).


v1->v2:
- improve handling for error case of requesting the phase adjust set
- align handling for error case of frequency set request with the
approach introduced for phase adjust

Arkadiusz Kubalewski (5):
  dpll: docs: add support for pin signal phase offset/adjust
  dpll: spec: add support for pin-dpll signal phase offset/adjust
  dpll: netlink/core: add support for pin-dpll signal phase
    offset/adjust
  ice: dpll: implement phase related callbacks
  dpll: netlink/core: change pin frequency set behavior

 Documentation/driver-api/dpll.rst         |  53 ++++-
 Documentation/netlink/specs/dpll.yaml     |  33 +++-
 drivers/dpll/dpll_netlink.c               | 180 +++++++++++++++--
 drivers/dpll/dpll_nl.c                    |   8 +-
 drivers/dpll/dpll_nl.h                    |   2 +-
 drivers/net/ethernet/intel/ice/ice_dpll.c | 224 +++++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_dpll.h |  10 +-
 include/linux/dpll.h                      |  18 ++
 include/uapi/linux/dpll.h                 |   8 +-
 9 files changed, 514 insertions(+), 22 deletions(-)

-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
