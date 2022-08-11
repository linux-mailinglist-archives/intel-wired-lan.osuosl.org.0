Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A77A58FD34
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Aug 2022 15:16:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ED46B830C1;
	Thu, 11 Aug 2022 13:16:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ED46B830C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660223812;
	bh=FVEA5lzhuKmRNMlxMsYpFdkCnPF0ZW33n8ME43FE8Ys=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=BgMedEluKja/dvkXbR+80PYL5bpU5A9iumxw9+7D28R+mSMbbw7jiRu0VDAg0saMJ
	 qp+rlRhz19s6wKS6Q9Guk20zpxGo/8eEi/YEbHTRFapniciUtUZUXSjUi3IYmSiwuz
	 wLCaaJLhVLeIPRAPdqTqpkqbbylq1OcGVnhY3MdDyVXHz2iBA3WMiqOiOPsiW75k3E
	 83ypapr0ae8sWjXUUJqlo3HWXq0B3fi0c6rCN2ry99sP5wHoZovxSiBdFjCgveHRZV
	 7UosOpi/UorKOgbaCtWYbH8R6cbRhKc/iCrs/a6Hn781xIBRQfGZ6BB9txFux+LUqk
	 hRvqzF2fXgubw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wBg21o-R9vBW; Thu, 11 Aug 2022 13:16:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D48AE830C0;
	Thu, 11 Aug 2022 13:16:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D48AE830C0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C4C4D1BF2F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 13:16:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9D7BB4182A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 13:16:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9D7BB4182A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7kK-3iiPlvsq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Aug 2022 13:16:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AE8CF402AA
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AE8CF402AA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 13:16:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="274397601"
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="274397601"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 06:16:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="634219882"
Received: from gsiwik.igk.intel.com ([10.102.18.50])
 by orsmga008.jf.intel.com with ESMTP; 11 Aug 2022 06:16:44 -0700
From: Grzegorz Siwik <grzegorz.siwik@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 11 Aug 2022 15:16:37 +0200
Message-Id: <1660223801-254272-1-git-send-email-grzegorz.siwik@intel.com>
X-Mailer: git-send-email 1.8.3.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660223805; x=1691759805;
 h=from:to:cc:subject:date:message-id;
 bh=ooacY/0nbgTIUO3R6gBAjIb4SA42gavY3Tij1EWd+6w=;
 b=lqVTymWoOXhOVImwh5I3ila6B7f2xYC7mo1i3nVeZfMJl29zlFebjucM
 hAq0C5y0U6FTWX2Lj+ds5AAbpN0/tsibeJaRv3qn1qCc0oB1wRkSDoGOj
 /Epy5us7U3XV2k9xSOhInpkQPPw2QSFMlBxT9VIQkgyFPXXiLI1Pa/nO2
 78YyN14B3WiAcMxKKw1EBLfx02tUPwelpEXR93TLTXBBPRDx6Q8NKYLoQ
 LJKVo0fb82vIjMdx9xlaCQRZ01bwb1DslHorm9UzUN2+jeCYNd6Zuygj1
 TNlj1X+jTSS80Qic+6WVp2mrxgb8sf9QtvG5a7eJyNAYy1zzmpbM2kRyl
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lqVTymWo
Subject: [Intel-wired-lan] [PATCH net v4 0/4] ice: Fixes for double vlan
 promiscuous mode
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
Cc: Grzegorz Siwik <grzegorz.siwik@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series fixes known issues related to double vlan promiscuous mode.
When at least two interfaces are bonded and a bridge is enabled on the
bond, an error can occur when the bridge is removed and re-added. The
reason for the error is because promiscuous mode was not fully cleared from
the VLAN VSI in the hardware.
Ignore ERR_ALREADY_EXISTS error when setting promiscuous mode.
This fix is needed because the driver could set promiscuous mode
when it still has not cleared properly.
If the requested promiscuous mode setting already exists,
an -EEXIST error message would be printed.
This is incorrect because promiscuous mode is
either on/off and shouldn't print an error when the requested
configuration is already set.
Avoid enabling or disabling vlan 0 when trying to set promiscuous
vlan mode if double vlan mode is enabled. This fix is needed
because the driver tries to add the vlan 0 filter twice (once for
inner and once for outer) when double VLAN mode is enabled.

---
 v2: Fixed error message when setting same promiscuous mode
---
 v3: Fixed style issues, changed to return directly.
---
  v4: Fixed problem with patch applying
---
Benjamin Mikailenko (1):
  ice: Ignore error message when setting same promiscuous mode

Grzegorz Siwik (3):
  ice: Fix double VLAN error when entering promisc mode
  ice: Ignore ERR_ALREADY_EXISTS when setting promisc mode
  ice: Fix clearing of promisc mode with bridge over bond

 drivers/net/ethernet/intel/ice/ice_fltr.c   |  8 ++++----
 drivers/net/ethernet/intel/ice/ice_lib.c    |  6 +++++-
 drivers/net/ethernet/intel/ice/ice_main.c   | 13 ++++++++++++-
 drivers/net/ethernet/intel/ice/ice_switch.c |  9 ++++++++-
 4 files changed, 29 insertions(+), 7 deletions(-)

-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
