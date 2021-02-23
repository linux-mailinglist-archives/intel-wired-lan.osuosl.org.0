Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BE9AF323454
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Feb 2021 00:47:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B67974EA77;
	Tue, 23 Feb 2021 23:47:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L6XoL5BqKaW8; Tue, 23 Feb 2021 23:47:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 932ED4E8A7;
	Tue, 23 Feb 2021 23:47:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7541B1BF3C4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Feb 2021 23:47:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6C2CA83276
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Feb 2021 23:47:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w9MbL57UfYZp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Feb 2021 23:47:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B9C3F83183
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Feb 2021 23:47:27 +0000 (UTC)
IronPort-SDR: cbmWjqdojoBoyg+c8RdUEZwQKOWWU0ycwGBGFcg0z3GQgP9YA1DTmoAo7vouXUTQ+d095EJNwh
 pLRHANLRgniA==
X-IronPort-AV: E=McAfee;i="6000,8403,9904"; a="249047157"
X-IronPort-AV: E=Sophos;i="5.81,201,1610438400"; d="scan'208";a="249047157"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 15:47:26 -0800
IronPort-SDR: tKc6KQQBBe/U6YGc6PEWJLMpItWY9TamxwQhO2jitH33bxZYlBEek9W8qSEx5HXZYX4XQ+gdrP
 iRpzwOEv/0ug==
X-IronPort-AV: E=Sophos;i="5.81,201,1610438400"; d="scan'208";a="432986424"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 15:47:26 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Feb 2021 15:47:04 -0800
Message-Id: <20210223234707.1170711-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 0/3] intel: packet type table
 simplification
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

Update three of the Intel Ethernet drivers with similar (but not the
same) improvements to simplify the packet type table init, while removing
an unused structure entry. For the ice driver, the table is extended
to 10 bits, which is the hardware limit, and for now is initialized
to zero.

The end result is slightly reduced memory usage, removal of a bunch
of code, and more specific initialization.

Jesse Brandeburg (3):
  ice: report hash type such as L2/L3/L4
  i40e: clean up packet type lookup table
  iavf: clean up packet type lookup table

 drivers/net/ethernet/intel/i40e/i40e_common.c | 124 +--------------
 drivers/net/ethernet/intel/i40e/i40e_type.h   |   1 -
 drivers/net/ethernet/intel/iavf/iavf_common.c | 124 +--------------
 drivers/net/ethernet/intel/iavf/iavf_type.h   |   1 -
 .../net/ethernet/intel/ice/ice_lan_tx_rx.h    | 147 ++++--------------
 drivers/net/ethernet/intel/ice/ice_txrx.c     |   2 +-
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  23 ++-
 drivers/net/ethernet/intel/ice/ice_txrx_lib.h |   2 +-
 drivers/net/ethernet/intel/ice/ice_xsk.c      |   2 +-
 9 files changed, 62 insertions(+), 364 deletions(-)

-- 
2.29.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
