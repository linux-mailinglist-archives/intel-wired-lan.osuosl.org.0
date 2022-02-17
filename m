Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 487A24B9522
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Feb 2022 01:51:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AEB38416C9;
	Thu, 17 Feb 2022 00:51:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3A0oL-IeF7JI; Thu, 17 Feb 2022 00:51:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A74E4416C8;
	Thu, 17 Feb 2022 00:51:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F1A771C1135
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Feb 2022 00:51:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E692161C5F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Feb 2022 00:51:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wjgj7NIrhGwA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Feb 2022 00:51:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C765861C47
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Feb 2022 00:51:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645059110; x=1676595110;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GFNfGmMznYoKBnl+UASIfwUN/FBhkKIt9cyLMzlNwgE=;
 b=KAg31t5yVqidJnAUoqwOscAOq+IShqG3wOcKIYeoGR1rQr4Eu/vcVVJi
 g94wjLitlYnAoRL3jQWhXwlcaVQOKFeR+cz1bUoB2goV2U4pgyxsX5Ht7
 gMvECiSqbD6RQoQ+z3ghg2q1MENiyLgUhoBrmoDzpi5hfvMzzecXM5BkQ
 YG60ryfO9UOJ4o/g457Ed9kip50hC3BCMM4lQmrofqsH9tZw2KKHhIyH/
 qePgKKRFZJA8jTwdjZ5W+WgpjDRUJ8r45TaazOjRGyGYLH1ZARdnkm7x2
 aPiOcGWSBf846Ugf1OH6BDSiq0f925u6bWazdl3l9BPdt7FtLwA4NJIj7 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="250955989"
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="250955989"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 16:51:42 -0800
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="588879562"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.10])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 16:51:42 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 16 Feb 2022 16:51:34 -0800
Message-Id: <20220217005136.75627-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.129.gb80121027d12
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net PATCH 0/2] ice/i40e: stop disabling VFs due
 to PF error responses
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

The ice and i40e drivers have similar logic to detect PF error responses to
the VFs over the Virtchnl interface. This logic counts the number of
sequential error responses sent to a VF and logs each error response as a
dev_info to the kernel log. If more than 10 error responses are sent in a
row, the PF driver disables the VF in question.

This logic has existed since the early days of i40e VF implementation, and
was carried forward into ice. The logic appears to be some form of malicious
VF detection. However, it doesn't actually fit in with the hardware based
malicious VF detection available in the device hardware.

In fact, the logic has had some adjustments in the i40e driver to reduce the
messaging from dev_err to dev_info, and to allow specific messages to skip
the check.

These changes clearly highlight the problematic nature of the check.
Additionally, there is no requirement for this behavior in our product
design. Other driver implementations such as the FreeBSD drivers do not
implement this behavior.

Disabling VFs is typically not what system administrators what to happen,
and this behavior is non-intuitive and not documented. Since it clearly
causes issues and isn't connected to the proper malicious driver detection,
remove this check from both ice and i40e.

Jacob Keller (2):
  i40e: stop disabling VFs due to PF error responses
  ice: stop disabling VFs due to PF error responses

 .../net/ethernet/intel/i40e/i40e_debugfs.c    |  6 +-
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 57 +++----------------
 .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  5 --
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 18 ------
 .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |  3 -
 5 files changed, 9 insertions(+), 80 deletions(-)


base-commit: 35410c10918a84c9685cd644686ca637bb3c046b
-- 
2.35.1.129.gb80121027d12

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
