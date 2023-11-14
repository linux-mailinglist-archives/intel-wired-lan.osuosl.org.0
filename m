Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D72A7EACFE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Nov 2023 10:26:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0A80F404F9;
	Tue, 14 Nov 2023 09:26:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0A80F404F9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699954006;
	bh=q0Cw9G8EP8JU0EwUxwJxGeZx++4oN0Buyr2cE4LNsRw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=0gKmlIpBDjjP75WL3GipFGenSMFEh8Uma5AFmUg6pPNfJ2ILFX4KPD3laB2yfdxQ2
	 IXC2eFqV1QcKWsGhtrteMqP9NxT6z1/ZXZfZYxM5iMtMSe1SFUePbBaOvylwJnyYOP
	 ZKgwDL9q6ZWi9mzLXivTsRVbVnEDUbjeim0KVanLNOwUzbF+Kwyqb18qj8pJZRktCL
	 a+sYhbVrGEYeL/jY0ZMb1JvvYyjQ0u6MjuRZwPEdULUXG6M92R9DTgB85q3oI0y5EY
	 mKLPYsPPEuJj+e2/+vmevMnRDdrNE96zcGTHChFL6YU6kV12n7izTa1duJD53sZGlg
	 MVF+nLkb4ti9A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4HHG8g6pYXzh; Tue, 14 Nov 2023 09:26:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9567A40499;
	Tue, 14 Nov 2023 09:26:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9567A40499
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 52E801BF3D0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Nov 2023 09:26:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 27041418DA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Nov 2023 09:26:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 27041418DA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b9rEJkAmejP2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Nov 2023 09:26:38 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 14 Nov 2023 09:26:38 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 54D30408F8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 54D30408F8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Nov 2023 09:26:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="3724014"
X-IronPort-AV: E=Sophos;i="6.03,301,1694761200"; 
   d="scan'208";a="3724014"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 01:19:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,301,1694761200"; d="scan'208";a="12748884"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa001.fm.intel.com with ESMTP; 14 Nov 2023 01:19:29 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 14 Nov 2023 10:10:52 +0100
Message-Id: <20231114091054.68301-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699953998; x=1731489998;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=K67xUDZEISOI/6At8rYjnXyzV+9BuWSE2dLtJg94SeU=;
 b=lWCo6Tdgopo7RKZGQ4p9tAcNQ0mVsiBFYam5X0Cl3H8h9sDwwiSs2dOW
 UKmqZcFeJQLA1oFLE5zBA/mFqvGFDQdBKXsJbz8kI1Y1WFhRQNlyMefEr
 VHA0z+FAjAXHmRHzVFhmkkXap/3VbLA83s0OSl+AJc+udA8kumNHA/JoN
 SR8TO8EcCmC9zDsg7rcuYQK977RhIC28J8RfAOoCA16QMe6pXZ4ab+ZF8
 5ixQ3tmtIiQ9zUgTZcK6ZQ69+++vxNyFaQ/4CzDBUYn68QhU6UIYNnVgt
 6GXaCLd+Og3CWuPpVuKCcXoINZbJ5GytKqA7C3mDikmuHg+/IMkzGvN+4
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lWCo6Tdg
Subject: [Intel-wired-lan] [PATCH iwl-next v1 0/2] ixgbe: Refactor ixgbe
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
Cc: anthony.l.nguyen@intel.com, Jedrzej Jagielski <jedrzej.jagielski@intel.com>
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

 .../net/ethernet/intel/ixgbe/ixgbe_82598.c    |  36 ++---
 .../net/ethernet/intel/ixgbe/ixgbe_82599.c    |  61 ++++----
 .../net/ethernet/intel/ixgbe/ixgbe_common.c   | 145 ++++++++----------
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |   2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  38 ++---
 drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.c  |  34 ++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h  |   1 -
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  |  91 +++++------
 .../net/ethernet/intel/ixgbe/ixgbe_sriov.c    |   2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |  40 +----
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c |  44 +++---
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 128 ++++++++--------
 12 files changed, 288 insertions(+), 334 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
