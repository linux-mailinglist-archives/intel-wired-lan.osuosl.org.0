Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 091D680E984
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Dec 2023 11:55:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3F83043556;
	Tue, 12 Dec 2023 10:55:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F83043556
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702378546;
	bh=Ffi/sFR6u8k5ol8Ja0MsOOl5KQUXOHExmRf/DAx1+dw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=T/Pl/P+V/Q0UpUWCCEcLZ2GE3IBZWCHPpmZ6mop42Sl8od2HDeM+0xfE0lydTxi96
	 69i+oiF7FnPDgkqXxGhSuiBkJYuje98Bng7tPX+ZoimJcqaN2smut2sBIkSIlm0SoK
	 VpfB2dg4XMWUx8up5hhh7r1YP5s/vhBPyHCH4z7rNeiEFgEsEPtwqWDepwKNkH76XN
	 H7mY3rKMshp5ywclCSAt3ttoQTGYmxF3tGPghHRB+cfsgm4ZSP9MNRkj40viIDCmWJ
	 ol6uuNamW20u3V7MkgiM+AooTan7leq5a5f+8hG2vfT0DhJs7NxSwPsj0r6W2KwYhT
	 xrw6Yw8KLbgMQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tV0rH8WZlmMb; Tue, 12 Dec 2023 10:55:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C67DC43551;
	Tue, 12 Dec 2023 10:55:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C67DC43551
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C040D1BF288
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 10:55:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8E038614E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 10:55:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8E038614E3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2CETC4_zkPe0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Dec 2023 10:55:38 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B0EAF61024
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 10:55:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B0EAF61024
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="8158900"
X-IronPort-AV: E=Sophos;i="6.04,269,1695711600"; 
   d="scan'208";a="8158900"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 02:55:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="864161626"
X-IronPort-AV: E=Sophos;i="6.04,269,1695711600"; d="scan'208";a="864161626"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by FMSMGA003.fm.intel.com with ESMTP; 12 Dec 2023 02:55:36 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 12 Dec 2023 11:46:40 +0100
Message-Id: <20231212104642.316887-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702378539; x=1733914539;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zquXneymmM8KJaGym7NIqSoKPGCAlAOK6zpSWTqyLd4=;
 b=PfFOSPMOtTYTR3Y2+IsIl9TCUv1lYBAXWDqBcny5FaoIjBYDEQ/WNWRt
 5kVcVK0BEaI5p8p5BgCowjuYWHMQyOCWoIDxuK/ormsJ/tyr5WtoO4zEZ
 mwk/NFSNJFoyDOje8qHq7hxwGqQ/YUwKB7xZX02iUSxeeKT2nwqzNaILe
 IBzz0zrqGT6ngyQcLm5mvzhGWdjLKlft4yTdKLB37u3XsktPbvQCmgVM7
 KobiKVkX6J3OYEKM6dycVeyZKxyed5DnioZEE2jDJOHa086zQQpb12hKb
 X8MJ04yndtdBJ8YoKP1r82oiQSQnLgsCtJPOsAguk7MDbdwQyYl/BaVtQ
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PfFOSPMO
Subject: [Intel-wired-lan] [PATCH iwl-next v4 0/2] ixgbe: Refactor ixgbe
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
 .../net/ethernet/intel/ixgbe/ixgbe_common.c   | 145 ++++++++---------
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |   2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  45 +++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.c  |  34 ++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h  |   1 -
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  | 110 +++++++------
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h  |   2 +-
 .../net/ethernet/intel/ixgbe/ixgbe_sriov.c    |   2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |  43 +----
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c |  44 ++---
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 154 ++++++++++--------
 13 files changed, 320 insertions(+), 359 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
