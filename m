Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E7D72E556
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 16:15:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1C08B6116D;
	Tue, 13 Jun 2023 14:15:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C08B6116D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686665742;
	bh=W0FwDKkEUXKiHtGBfTSQip0xVOgLy5oNu0mSZW7Na24=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=WTcZD8OA3vcu39KA5Ssrgq32v7kOT0OOfCuHWjHS0o/NdlGOMdW54fHU8X6WIf/PX
	 x8VOVlcga9aLWlMxImKUm8Cwvup//YOCnihl8hEup2RNQhdiHFxEliXYR3u0MHIsfu
	 fK2yAnnXVPXerkQPvwpK03dUho4X/3nmTzhnAd33IOY79jN/WoJRj/ce4go+Di7ei4
	 aSG03FXdYO0yX7OMzCPsZJQn9FOSn8Rjcl9bR/FAQzK6vohdV0OvIezLRmWjBVc4rr
	 BPdwQgQREYVkFalQC6bxWDK4jCJD1a4sRJClHvzR9bAKok07OKIx9ETtk1ApKl2NAn
	 34710AIg4PZjA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wBo7cLM0aSPo; Tue, 13 Jun 2023 14:15:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4375361168;
	Tue, 13 Jun 2023 14:15:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4375361168
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 99AC21BF2BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 14:15:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7080E827DD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 14:15:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7080E827DD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WpXPP8SkXJS5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jun 2023 14:15:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A86BE82333
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A86BE82333
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 14:15:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="337981432"
X-IronPort-AV: E=Sophos;i="6.00,239,1681196400"; d="scan'208";a="337981432"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 07:15:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="856104989"
X-IronPort-AV: E=Sophos;i="6.00,239,1681196400"; d="scan'208";a="856104989"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga001.fm.intel.com with ESMTP; 13 Jun 2023 07:15:30 -0700
Received: from pelor.igk.intel.com (pelor.igk.intel.com [10.123.220.13])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 0AEF535429;
 Tue, 13 Jun 2023 15:15:29 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 13 Jun 2023 10:12:51 -0400
Message-Id: <20230613141253.57811-1-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686665733; x=1718201733;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vCq6GIGuzG53IbmhHaPzZOuPqZZIw5vadaI80J3AYSQ=;
 b=mpnxkFg2StGN9lqKLQseG8QUddJjWW5OqbcdciGUcRi4iFUJvALkPUOi
 xbSK1EOkbgixq03oUmCb5Ly2fMrW1EPf3pTinWc03XZgPX2ydQ97OASwx
 NVhHamtfFgJ77LDkZX0FnOu48eLrZUdOUz6j0bu6QyaU9N1eAq2YPGNHx
 OxM2kcpNka7kHSA1Z3Q3rGsyVbzlmSfFTrrS9kSDOb0n/LFL+ILIwSWnF
 5uLm/wWfgTat0w7HTCx78Or8AaYwSlcACTTUJSFH4ZOnG4bKDtuI+UWci
 AIywHOWVLtbRFMoKKtQMvDt1CZc877GX2g8j+fHByusOmMD9Wuy8LeXPf
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mpnxkFg2
Subject: [Intel-wired-lan] [PATCH iwl-next 0/2] iavf: make some functions
 static
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
Cc: netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Make static functions that are used in just one translation unit.
Remove all unused and unexported functions.

Przemek Kitszel (2):
  iavf: remove some unused functions and pointless wrappers
  iavf: make functions static where possible

 drivers/net/ethernet/intel/iavf/iavf.h        | 10 -----
 drivers/net/ethernet/intel/iavf/iavf_alloc.h  |  3 +-
 drivers/net/ethernet/intel/iavf/iavf_common.c | 45 -------------------
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 34 ++++++--------
 drivers/net/ethernet/intel/iavf/iavf_osdep.h  |  9 ----
 .../net/ethernet/intel/iavf/iavf_prototype.h  |  5 ---
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   | 43 +++++++++---------
 drivers/net/ethernet/intel/iavf/iavf_txrx.h   |  4 --
 8 files changed, 35 insertions(+), 118 deletions(-)

-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
