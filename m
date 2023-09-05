Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 80EC5793290
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Sep 2023 01:29:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B5D724076E;
	Tue,  5 Sep 2023 23:28:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B5D724076E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693956539;
	bh=haMcJMnwl7TwkPg1ac4FjL7q5wMJ/qBvaLPKjDgyzxc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=6it7Dbz/MJRzElm8pFXonOBPpJAL89n0rbQIRTXTzJJ284NS/orctJ3Uq9hhI07TQ
	 2zYXq0oA+Qg7NId/qYr2wi1I1cuTN+9TkAggIr9elQZhqgynCRWWt1lQJp7eK+4chB
	 6sDhxJBkDN64lmpPsKmjwTX78vnYE+ckO9Wrc78tk5RHlT6r2WasJ8OKD08+sVZQDq
	 23o0XiHsdRtsDi46YjtijeQgXrYGwCFEF2Y3vza6TG3JIG0VJh0RIg4q1VLHITrPx0
	 TIsQqTBUD+EChI3P/cH0hLzDjDSXmNAxZjp+yVNeaRL7jUDg35bHzvB9Fvb5Y3LHqG
	 U+ePGi2XLHl0w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id caboyA8z20OX; Tue,  5 Sep 2023 23:28:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 65FFC40620;
	Tue,  5 Sep 2023 23:28:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 65FFC40620
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 042CB1BF25F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Sep 2023 23:28:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CF91C81228
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Sep 2023 23:28:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF91C81228
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aMqDcAa5CVw6 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Sep 2023 23:28:51 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BB7548121A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Sep 2023 23:28:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB7548121A
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="379643891"
X-IronPort-AV: E=Sophos;i="6.02,230,1688454000"; d="scan'208";a="379643891"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 16:28:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="744448396"
X-IronPort-AV: E=Sophos;i="6.02,230,1688454000"; d="scan'208";a="744448396"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmsmga007.fm.intel.com with ESMTP; 05 Sep 2023 16:28:47 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: kuba@kernel.org, jiri@resnulli.us, jonathan.lemon@gmail.com,
 pabeni@redhat.com, vadim.fedorenko@linux.dev
Date: Wed,  6 Sep 2023 01:26:06 +0200
Message-Id: <20230905232610.1403647-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693956531; x=1725492531;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0wpZ4uEiyvX8GLZIB6P9f6saFvhcvQ+D5/9/Acf/xw4=;
 b=Cg0zXQqBfsHkub+HcCoJ7GPREZyB0V0udhlIct9NxaFSp/REwtOi8yk7
 vvg2jP2smuTdcUzdFBZlGdco2/6iRjJyIXzGzp2R6KW7/F//so/2OCZVN
 sMEM91qaKOWWsNyv2t5oSU78HZHFyRY4hs/TzZdWPDnX+GJroXeAWAmu3
 vyh9DUXiubzMFKByA/7zGP8Rnk/hmQInW8nr1khfUhGWHUUJUZXXLgL6O
 hLXJHyaJ78wVpBJSDE7hdReI0Cuk+Eu6Eo7etOvK/WMLmLJwDDLT535Yp
 0nEtmxVJ0kI3CfTqHGtI27++1/VTn9JJovGXt5xo5Ud/x3IElFGjl8uHp
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Cg0zXQqB
Subject: [Intel-wired-lan] [PATCH net-next 0/4] dpll: add phase offset and
 phase adjust
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
Cc: bvanassche@acm.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This RFC is to start discussion over extending dpll interface
with possibility to:
- read a phase offset between signals on pin and dpll,
- adjust a phase of pin's signal.

The RFC is based on latest version of dpll interface submitted for
net-next [1].

[1] https://lore.kernel.org/netdev/20230824213132.827338-1-vadim.fedorenko@linux.dev/

Arkadiusz Kubalewski (4):
  dpll: docs: add support for pin signal phase offset/adjust
  dpll: spec: add support for pin-dpll signal phase offset/adjust
  dpll: netlink/core: add support for pin-dpll signal phase
    offset/adjust
  ice: dpll: implement phase related callbacks

 Documentation/driver-api/dpll.rst         |  53 ++++-
 Documentation/netlink/specs/dpll.yaml     |  33 +++-
 drivers/dpll/dpll_netlink.c               |  99 +++++++++-
 drivers/dpll/dpll_nl.c                    |   8 +-
 drivers/dpll/dpll_nl.h                    |   2 +-
 drivers/net/ethernet/intel/ice/ice_dpll.c | 224 +++++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_dpll.h |  10 +-
 include/linux/dpll.h                      |  18 ++
 include/uapi/linux/dpll.h                 |   8 +-
 9 files changed, 443 insertions(+), 12 deletions(-)

-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
