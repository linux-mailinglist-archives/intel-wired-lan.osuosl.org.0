Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 096C3809EEE
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Dec 2023 10:14:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 621B683E22;
	Fri,  8 Dec 2023 09:14:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 621B683E22
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702026844;
	bh=OI4Nk+0sbPzo23wRZ8mMirRzKx4ntQjmxRpCs4o0OvY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=CGd94UaoD1+GZB4G4SGeoHlGM1KBHBQnMiGR06oAhYbBTkGLZd9cHi5WfACWuOWIP
	 9l/jh3V3eSbwm3yeOJhikkhmQTCXhC5o+Egai1f1huM44lemIMXZD6p3lsymTN38P2
	 xr9Qg3MU0Ba+KWrwBihVsYzL/1uPgQmQ7SahLJU6WPX1DLgYLEX0KtxJilalfZ31nT
	 aTIxM+bZwKKtFQjqF4yu/QVw+8mjqTRH7fMOeVaA5a8C07AlWHtdZnnkLFbh56vfQU
	 4giTN3nURcNfPmLDcl3mbqwoQxLHO7ut/WL+66m/ii/iw0mC8IQBXID3c+KRqdAkYV
	 6CYkaAhB1yWrw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a3FCRIqoU1zO; Fri,  8 Dec 2023 09:14:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2FFA083E15;
	Fri,  8 Dec 2023 09:14:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2FFA083E15
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 505191BF831
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 09:13:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 06955420F8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 09:13:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 06955420F8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PoQtAIVIHvYs for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Dec 2023 09:13:57 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4F6734207A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Dec 2023 09:13:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F6734207A
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="391551161"
X-IronPort-AV: E=Sophos;i="6.04,260,1695711600"; d="scan'208";a="391551161"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2023 01:13:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="862796264"
X-IronPort-AV: E=Sophos;i="6.04,260,1695711600"; d="scan'208";a="862796264"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by FMSMGA003.fm.intel.com with ESMTP; 08 Dec 2023 01:13:29 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  8 Dec 2023 10:00:53 +0100
Message-Id: <20231208090055.303507-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702026837; x=1733562837;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=AIUHmhEmwcOCgMt2++sCNVhBbRepohu8MlTc7aJci5o=;
 b=TE154W7IQTxtGWlGCNkNsYm7y6ejVWDHz9+0vnYoXnp0U9D2GRFjcysp
 RoccnndFXdi7rj1yva6mj2Pm+uZZOe6aENnvvuw3cLKLj7JfrsMu4u8s8
 p6nJlkjlyZeGgdaZZZ8Fx4RixcDLc7MnFU1eSr9byxpuGwoScCuIwOkt4
 iMqJC9TD6g/TLlsJ4Lo2RscDLmrB37Gzz5t+hPqEVjOt/khtsq6Acv8BI
 GemRq5fmm4YbQzmV1bqmRGmbihQZDfiNt4tWu1MMlVUKakGypQoqKp2be
 s2D/DB6DkVVdFHLVm+TCmnrQSa7WiuxgxGzDnWZiJ9CgqxRw5r7wB0s6B
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TE154W7I
Subject: [Intel-wired-lan] [PATCH iwl-next v3 0/2] ixgbe: Refactor ixgbe
 internal status
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

A small 2 patches series removing currently used internal status codes in
ixgbe driver and converting them to the regular ones.

1st patch deals specifically with overtemp error code, the 2nd one
refactors the rest of the error codes.

Jedrzej Jagielski (2):
  ixgbe: Refactor overtemp event handling
  ixgbe: Refactor returning internal error codes

 .../net/ethernet/intel/ixgbe/ixgbe_82598.c    |  36 ++--
 .../net/ethernet/intel/ixgbe/ixgbe_82599.c    |  61 ++++---
 .../net/ethernet/intel/ixgbe/ixgbe_common.c   | 145 ++++++++--------
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |   2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  46 +++---
 drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.c  |  34 ++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h  |   1 -
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  | 117 +++++++------
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h  |   2 +-
 .../net/ethernet/intel/ixgbe/ixgbe_sriov.c    |   2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |  43 +----
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c |  44 ++---
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 156 ++++++++++--------
 13 files changed, 333 insertions(+), 356 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
