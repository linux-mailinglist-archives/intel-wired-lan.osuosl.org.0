Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B56E638B4D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Nov 2022 14:34:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D4ED381EB9;
	Fri, 25 Nov 2022 13:34:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D4ED381EB9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669383294;
	bh=FZyIlX7jE3P4KlWA5UYlJts8KCWvtHZrChxawosq/6A=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=bLqPtKx/ZCzBbO9fehMhB4PiSi519ct2ca1IXkfNArkmgcQFgMMqu900B70LrTidH
	 kRc9EGnWw4B7Q2vrisEe5bXQhvXPArHCV8bT7OevnahDLHDfEpFYQ+UHaQgKfENVqM
	 gVf4SXiCk7ah2cn5IFJZNrHdiLt7uZsWbv5DOZ+iL67BW5ykPPWP0y1adx7+CgGaEz
	 SmJe/UBhbARf6wL8rrvxXmoMcvRtu7gbXXpJ6B84aXqVqooHNsZyxOE6lkhmw2SehC
	 l0kumH8c7iT3QYiFFf94EssvPvnLGFXYMMmEjq8LDZmghaeWjXYPuAfJeG7dF1pKAT
	 rNQX0rPjqxdyw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id es94M17p358S; Fri, 25 Nov 2022 13:34:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA31E81916;
	Fri, 25 Nov 2022 13:34:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BA31E81916
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 953BD1BF35E
 for <intel-wired-lan@osuosl.org>; Fri, 25 Nov 2022 13:34:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 68EC4611BA
 for <intel-wired-lan@osuosl.org>; Fri, 25 Nov 2022 13:34:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 68EC4611BA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BNJ_DwDy2uQ0 for <intel-wired-lan@osuosl.org>;
 Fri, 25 Nov 2022 13:34:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95064610D2
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 95064610D2
 for <intel-wired-lan@osuosl.org>; Fri, 25 Nov 2022 13:34:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10541"; a="341386873"
X-IronPort-AV: E=Sophos;i="5.96,193,1665471600"; d="scan'208";a="341386873"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2022 05:34:48 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10541"; a="887695634"
X-IronPort-AV: E=Sophos;i="5.96,193,1665471600"; d="scan'208";a="887695634"
Received: from unknown (HELO fedora.igk.intel.com) ([10.123.220.6])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2022 05:34:47 -0800
From: Michal Wilczynski <michal.wilczynski@intel.com>
To: intel-wired-lan@osuosl.org
Date: Fri, 25 Nov 2022 14:34:39 +0100
Message-Id: <20221125133439.36483-1-michal.wilczynski@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669383288; x=1700919288;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=b2EtWmoJRjMClGXAcGgQqC/Hb38AJkIg2JENCGStUV0=;
 b=kURyw7itTUboHx93ugV2p1u5EtsWWZcs8kkuYe8JfMKLC3LfpQe5Drb+
 IGwjEdXWglQ1nDJns5cFcFO4RPPz0yRr44jJ7o0Zx1QzVD9JhYsERxyEX
 We7hLaGDgQD912e91PyC3h5bVrxLGV38qkTBF3e9A/B+tAMrfSiv64e6B
 lcp0YO/fJI+J9mz/wMq+kWARumKCneAKVYp1WL70DgWUtEOjVfJQ+4Tem
 Za6N/5lNbOiE7ykzQXLXGSoy51CicEhjeEIK8s/zqvv9ug+evH3no/PUD
 XOObtWSySTQNmEaxy+tsxjdFDPKgOBcKMnFodlN2yW99piOjsYr7m8czF
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kURyw7it
Subject: [Intel-wired-lan] [PATCH net] ice: Fix broken link in ice NAPI doc
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

Current link for NAPI documentation in ice driver doesn't work - it
returns 404. Update the link to the working one.

Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
Acked-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 Documentation/networking/device_drivers/ethernet/intel/ice.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/networking/device_drivers/ethernet/intel/ice.rst b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
index dc2e60ced927..b481b81f3be5 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/ice.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/ice.rst
@@ -819,7 +819,7 @@ NAPI
 ----
 This driver supports NAPI (Rx polling mode).
 For more information on NAPI, see
-https://www.linuxfoundation.org/collaborate/workgroups/networking/napi
+https://wiki.linuxfoundation.org/networking/napi
 
 
 MACVLAN
-- 
2.37.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
