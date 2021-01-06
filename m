Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 386C02EC5E9
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Jan 2021 22:56:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id ECD182049C;
	Wed,  6 Jan 2021 21:56:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xy9ucVsBUirQ; Wed,  6 Jan 2021 21:56:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E490A204A3;
	Wed,  6 Jan 2021 21:56:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 35ACC1BF5A0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Jan 2021 21:56:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 317BB873E2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Jan 2021 21:56:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8nEaUhKmoMFJ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Jan 2021 21:56:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 43535873DA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Jan 2021 21:56:00 +0000 (UTC)
IronPort-SDR: mdlV80n9AVofZGK3FPhmUEzT+pYYsMemyRHx2vNHHbEjqLvx7m5JJvdkwFTAe4zeuxHXAfdg9h
 aetAYLHnkHVQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9856"; a="177441307"
X-IronPort-AV: E=Sophos;i="5.79,328,1602572400"; d="scan'208";a="177441307"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2021 13:55:59 -0800
IronPort-SDR: MkjkvqFNLTzefuxgE5OzvQaWvOA4DK1MvR2O8nQB8PzlzWsbCGZHq2S55FphjgURuqcqji6NX1
 MAtU96ToGvWA==
X-IronPort-AV: E=Sophos;i="5.79,328,1602572400"; d="scan'208";a="361734668"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2021 13:55:58 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: netdev@vger.kernel.org
Date: Wed,  6 Jan 2021 13:55:37 -0800
Message-Id: <20210106215539.2103688-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 0/2] GRO drop accounting
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add some accounting for when the stack drops a packet
that a driver tried to indicate with a gro* call. This
helps users track where packets might have disappeared
to and will show up in the netdevice stats that already
exist.

After that, remove the driver specific workaround
that was added to do the same, just scoped too small.

Jesse Brandeburg (2):
  net: core: count drops from GRO
  ice: remove GRO drop accounting

 drivers/net/ethernet/intel/ice/ice.h          | 1 -
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 1 -
 drivers/net/ethernet/intel/ice/ice_main.c     | 4 +---
 drivers/net/ethernet/intel/ice/ice_txrx.h     | 1 -
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 2 --
 net/core/dev.c                                | 2 ++
 6 files changed, 3 insertions(+), 8 deletions(-)

-- 
2.29.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
