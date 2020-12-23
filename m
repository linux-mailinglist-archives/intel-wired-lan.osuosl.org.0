Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E8D2E216E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Dec 2020 21:37:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7E40487366;
	Wed, 23 Dec 2020 20:37:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dVzo+RVLkhWn; Wed, 23 Dec 2020 20:37:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BE58D87370;
	Wed, 23 Dec 2020 20:37:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2DE731BF86B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Dec 2020 20:37:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 28FEF87214
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Dec 2020 20:37:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0SSnhlIEeq9k for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Dec 2020 20:37:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 326D887350
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Dec 2020 20:37:37 +0000 (UTC)
IronPort-SDR: z67cGTnTemgloN5KXNM4vIQLh7xvEuv4A1dsvjAfaIM2F5ZEw0hDwbki9QaTNWYheN0npWIHAa
 /jIj2tX7Qurw==
X-IronPort-AV: E=McAfee;i="6000,8403,9844"; a="155861766"
X-IronPort-AV: E=Sophos;i="5.78,442,1599548400"; d="scan'208";a="155861766"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2020 12:37:34 -0800
IronPort-SDR: saF+VMNNxv78oIvcflMgau2kTeyL/YTUVJm/Dvhaw+B3cncuQGSmU3sayUjZyh/zPNB3E9rnLO
 /x35Q35sqK2A==
X-IronPort-AV: E=Sophos;i="5.78,442,1599548400"; d="scan'208";a="345202976"
Received: from eburton-mobl.amr.corp.intel.com ([10.209.148.11])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2020 12:37:34 -0800
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 23 Dec 2020 12:36:56 -0800
Message-Id: <20201223203705.78705-1-andre.guedes@intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 0/9] igc: Add support for AF_XDP
 zero-copy
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

Hi all,

This is the second version of this series which adds AF_XDP zero-copy support
to igc driver.

The main changes from v1 are:

    - Fixed commit messages to describe changes in imperative mood, e.g. "make
      xyzzy do frotz" instead of "[This patch] makes xyzzy do frotz".
    - Added queue index to error message in igc_setup_rx_resources().
    - Improved comment about xsk frame size check in igc_xdp_enable_pool(). 
    - Fixed typos.

v1 is here:

    https://patchwork.ozlabs.org/project/intel-wired-lan/cover/20201217202415.77891-1-andre.guedes@intel.com/

Best,
Andre

Andre Guedes (9):
  igc: Move igc_xdp_is_enabled()
  igc: Refactor igc_xdp_run_prog()
  igc: Refactor igc_clean_rx_ring()
  igc: Refactor XDP rxq info registration
  igc: Introduce tx/rx stats helpers
  igc: Introduce igc_unmap_tx_buffer() helper
  igc: Replace IGC_TX_FLAGS_XDP flag by an enum
  igc: Enable RX via AF_XDP zero-copy
  igc: Enable TX via AF_XDP zero-copy

 drivers/net/ethernet/intel/igc/igc.h      |  33 +-
 drivers/net/ethernet/intel/igc/igc_base.h |   2 +
 drivers/net/ethernet/intel/igc/igc_main.c | 651 ++++++++++++++++++----
 drivers/net/ethernet/intel/igc/igc_xdp.c  | 107 +++-
 drivers/net/ethernet/intel/igc/igc_xdp.h  |   8 +-
 5 files changed, 673 insertions(+), 128 deletions(-)

-- 
2.29.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
