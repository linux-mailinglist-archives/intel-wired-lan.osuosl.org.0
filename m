Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 550798506D1
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Feb 2024 23:08:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C212260625;
	Sat, 10 Feb 2024 22:08:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2XsKvaRDEY7d; Sat, 10 Feb 2024 22:08:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B807A6061B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707602913;
	bh=fnVfjLf1o6t5rVR12YOvZOi8UozgyAfqbU+6ShGD43g=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=TJ4doW/cSlsiGSBGPyKfODMtsQJz8nb+iR5mRRBGbscjPchzF8oamT+c1JlPkPESY
	 Rj4PjxOiuBjTR5Q97WJ+wnGSXwNJZhKC7W4vVq99DILClv8tIDKI3AEnT0AKTv+9K8
	 Y8msYx2jwkFm19JASR/sziVuKCxN1iptWfrbSsFfmczdKjyl/RaYfNGi6EHwb5e93W
	 j6qYkvOJ5KySZCivbox3bZagW/Nce9R33pxDm0iC1Y6bdovuR60QzaNIAoGTcRgxsG
	 ahV5vOKwwRJD2xDnk8q9OyOUnLmZL0XsEDilLQKhRISzDp3eCOZEQG5/wJaGDnGBPC
	 UDkDC7kWWyNcg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B807A6061B;
	Sat, 10 Feb 2024 22:08:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3EA101BF290
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Feb 2024 22:08:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 35565404F4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Feb 2024 22:08:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uFFJ3Jp_JA5N for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Feb 2024 22:08:28 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 10 Feb 2024 22:08:27 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B65F2404AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B65F2404AF
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jesse.brandeburg@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B65F2404AF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Feb 2024 22:08:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10980"; a="1474813"
X-IronPort-AV: E=Sophos;i="6.05,259,1701158400"; 
   d="scan'208";a="1474813"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2024 14:01:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,259,1701158400"; 
   d="scan'208";a="2211140"
Received: from jbrandeb-coyote30.jf.intel.com ([10.166.29.19])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2024 14:01:18 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sat, 10 Feb 2024 14:01:07 -0800
Message-Id: <20240210220109.3179408-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707602908; x=1739138908;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TpwEyNX0t/GeFw9C2aUJTg0MQh33W4y/wXJ/YWFxokg=;
 b=PDvwhp6wHN3CE2P1IhQ03TOEQW+tJYkvGUqmFDgRMdGu9fVeqnPjFFH/
 cEiJgZoDmC72j5wz+pjiuWidhkSdPbvg8TSD7++XyeeJc6YNulX5nIE/y
 PyoCH+rLIGbu8Aj/b9DRuMGXjd5jJkFIueZ86oTfn2uGZqTFDpn6yooyY
 07USOD6cKtPbDNx02mOpKTpbw9xsrVbwy1GpmUIXZCi1vjBzCK6PWhdtt
 7sXpvZQFIjcXiIRUKSzMmJ2bgp/2XbrqbGyAiQRHspi6Mc5AANDLKscS0
 9LxoESsEfAU3TmnyeYc51WsjDBSHZWC9zMIOfB5pg6VarMzdnxu+fU3mJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PDvwhp6w
Subject: [Intel-wired-lan] [PATCH iwl-next v1 0/2] net: intel: cleanup power
 ops
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Do a quick refactor of igb to clean up some unnecessary declarations,
noticed while doing the real work of 2/2.

Follow that with a change of all the Intel drivers to use the current
power management declaration APIs, to avoid complication and maintenance
issues with CONFIG_PM=<m|y|n>. This is as per [1]

Mostly compile-tested only.

ice driver is skipped in this series because the driver was fixed as
part of a bug fix to make it use the new APIs, and will be arriving via
-net tree.

[1] https://lore.kernel.org/netdev/20211207002102.26414-1-paul@crapouillou.net/

Jesse Brandeburg (2):
  igb: simplify pci ops declaration
  net: intel: implement modern PM ops declarations

 drivers/net/ethernet/intel/e100.c             |  8 +--
 drivers/net/ethernet/intel/e1000/e1000_main.c | 14 ++---
 drivers/net/ethernet/intel/e1000e/netdev.c    | 22 +++----
 drivers/net/ethernet/intel/fm10k/fm10k_pci.c  | 10 ++--
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 10 ++--
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  8 +--
 drivers/net/ethernet/intel/igb/igb_main.c     | 59 ++++++++-----------
 drivers/net/ethernet/intel/igbvf/netdev.c     |  6 +-
 drivers/net/ethernet/intel/igc/igc_main.c     | 24 +++-----
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  8 +--
 .../net/ethernet/intel/ixgbevf/ixgbevf_main.c |  8 +--
 11 files changed, 74 insertions(+), 103 deletions(-)

base-commit: b63cc73341e076961d564a74cc3d29b2fd444079
-- 
2.39.3

