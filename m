Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 741C643A91E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Oct 2021 02:08:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AF6CE40374;
	Tue, 26 Oct 2021 00:08:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m1ig3XMj5FXJ; Tue, 26 Oct 2021 00:08:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8D641400DE;
	Tue, 26 Oct 2021 00:08:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0E3561BF25F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 00:08:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 099504024A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 00:08:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RjpqzQ_1YHaW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Oct 2021 00:08:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DAE7B40235
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 00:08:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10148"; a="253323609"
X-IronPort-AV: E=Sophos;i="5.87,181,1631602800"; d="scan'208";a="253323609"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2021 17:08:36 -0700
X-IronPort-AV: E=Sophos;i="5.87,181,1631602800"; d="scan'208";a="485915389"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2021 17:08:36 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 25 Oct 2021 17:08:22 -0700
Message-Id: <20211026000826.156803-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 0/4] ice: transmit improvement
 series
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

Modify the ice driver to make a few modest changes to the transmit
hot path in order to reduce the number of cycles used, particularly
with high intensity workloads such as pktgen or IP forwarding.

Several of these changes are just using simpler API calls in
netdevice.h (welcome to 2015!)

The VSI_DOWN patch is a simple fix to make sure the driver's statements
about holding certain state bits for functions is enforced and remains
that way.

Jesse Brandeburg (4):
  ice: update to newer kernel API
  ice: use prefetch methods
  ice: tighter control over VSI_DOWN state
  ice: use modern kernel API for kick

 drivers/net/ethernet/intel/ice/ice_ethtool.c |  6 ++-
 drivers/net/ethernet/intel/ice/ice_main.c    |  7 ++--
 drivers/net/ethernet/intel/ice/ice_txrx.c    | 40 +++++++++++++-------
 3 files changed, 34 insertions(+), 19 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
