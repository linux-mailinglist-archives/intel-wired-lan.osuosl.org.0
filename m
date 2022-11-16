Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3CB62CECB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Nov 2022 00:35:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E81FE82049;
	Wed, 16 Nov 2022 23:35:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E81FE82049
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668641727;
	bh=ZgQwZ1vazyjxEg3RDlMLmXDeyWZzGbdi045zd8ae904=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=hnoLUrQiGJ0phprTLV0TXgvHXK+UZNDywwTC0DzWQOWHgvnBCuwhR2ucyIretbL5M
	 pCIECOu0N4wDeYbC8LYfnzu0dMPIkS/l1ioAiAh5ULC6uT6bXi5hrMomqA+Q5CyNha
	 51IWwQqdvT0+9rE3F/yw8/HC28Qwj2iPXraoXH6XtABQfmAN4G6JBYIVtr+BqFsMk9
	 TlQmtUc1nXtzA/TUsK56xjhEwusJaYMTnOwssFs5BDrYXgFWC/1qZWP+ydy1yxB33j
	 1cFWYYLa2H0SwxuayVvrDlgYm3sB7n/HqvsN5h3KcDlyOg3rg6stwQi4Cg04emSBFn
	 rI3x3abSjnHmQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t7NnVMyiMQV6; Wed, 16 Nov 2022 23:35:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E346E82003;
	Wed, 16 Nov 2022 23:35:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E346E82003
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 98EFF1BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 23:35:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 73C8241828
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 23:35:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 73C8241828
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6MCji2zvRTB7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Nov 2022 23:35:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 06DE94181D
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 06DE94181D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Nov 2022 23:35:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="296062446"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="296062446"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 15:35:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="814275811"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="814275811"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.232.13])
 by orsmga005.jf.intel.com with ESMTP; 16 Nov 2022 15:35:19 -0800
From: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 16 Nov 2022 18:26:43 -0500
Message-Id: <20221116232645.8218-1-benjamin.mikailenko@intel.com>
X-Mailer: git-send-email 2.34.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668641721; x=1700177721;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hpHZJ8unsqKCJZfvzL9TThGt6sbwsWXYyxRJWKuU6h4=;
 b=Gk4AzZ5gochWC+mUm7eNn+LZ+nwAo6aptpfp67FLVlCEH0gP3s7xCsM+
 jhDhHgHNabubwqFXd8fHnOCAoIy0LqTqWR+SSYyB8J39dH4c45TRj05wB
 cKqr/0OrfHXYivHu75+AWlU3NOTfE/t2JM5Uoeru5s/2mSL6Yyq5PO8EE
 UWLoi7CgWtCHla1q8o22di9/C/Ni5/IPM0DDBCsfqJW3Q6n99YKCkuqta
 Is7yWTW7rFBoOfw994A3YYfIV0mdbBiqf2ZBeCULC028m5nUee2Pq6xXr
 PZ4ccE9pOa2gcZMsfEJJuugiiE2NZVzPo2Vy45KQM6DGkY77q/fZ+qfzf
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Gk4AzZ5g
Subject: [Intel-wired-lan] [net-next,
 v6 0/2] Accumulate statistics over reset
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
Cc: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Resets happen with or without user interaction. For example, incidents
such as TX hang or a reconfiguration of parameters will result in a reset.
During reset, hardware and software statistics were set to zero. This
created an issue for the user where a reset happens in the background,
statistics set to zero, and the user checks statistics expecting them to
be populated.

Accumulate statistics over reset so the above doesn't happen.

Change is divided in two patches:
1. Accumulate HW and netdev statistics over reset
2. Accumulate ring statistics over reset

Benjamin Mikailenko (2):
  ice: Accumulate HW and Netdev statistics over reset
  ice: Accumulate ring statistics over reset

 drivers/net/ethernet/intel/ice/ice.h          |   7 +
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |   3 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  12 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      | 246 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_main.c     |  98 +++++--
 drivers/net/ethernet/intel/ice/ice_repr.c     |  10 +-
 drivers/net/ethernet/intel/ice/ice_txrx.c     |  40 ++-
 drivers/net/ethernet/intel/ice/ice_txrx.h     |  18 +-
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |   2 +-
 drivers/net/ethernet/intel/ice/ice_xsk.c      |  25 +-
 10 files changed, 397 insertions(+), 64 deletions(-)

-- 
v2: Fixed styling
v3: Allocate statistic structures when XDP is enabled
v4: Added revision notes
v5: Moved revision notes
v6: Removed unnecessary managed allocations and null checks
2.34.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
