Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A552223397
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Jul 2020 08:24:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 346DD855BD;
	Fri, 17 Jul 2020 06:24:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jXWgVl0SC1T6; Fri, 17 Jul 2020 06:24:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 45B6685693;
	Fri, 17 Jul 2020 06:24:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 606FC1BF2CD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jul 2020 06:24:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5D3B820410
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jul 2020 06:24:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nqP0qWmOVjEa for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Jul 2020 06:24:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from tc-sys-mailedm01.tc.baidu.com (mx140-tc.baidu.com
 [61.135.168.140])
 by silver.osuosl.org (Postfix) with ESMTP id 36999203E4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Jul 2020 06:24:25 +0000 (UTC)
Received: from localhost (cp01-cos-dev01.cp01.baidu.com [10.92.119.46])
 by tc-sys-mailedm01.tc.baidu.com (Postfix) with ESMTP id 30E892040056;
 Fri, 17 Jul 2020 14:24:22 +0800 (CST)
From: Li RongQing <lirongqing@baidu.com>
To: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 magnus.karlsson@intel.com, bjorn.topel@intel.com
Date: Fri, 17 Jul 2020 14:24:20 +0800
Message-Id: <1594967062-20674-1-git-send-email-lirongqing@baidu.com>
X-Mailer: git-send-email 1.7.1
Subject: [Intel-wired-lan] [PATCH 0/2] intel/xdp fixes for fliping rx buffer
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This fixes ice/i40e/ixgbe/ixgbevf_rx_buffer_flip in
copy mode xdp that can lead to data corruption.

I split two patches, since i40e/xgbe/ixgbevf supports xsk
receiving from 4.18, put their fixes in a patch 

Li RongQing (2):
  xdp: i40e: ixgbe: ixgbevf: not flip rx buffer for copy mode xdp
  ice/xdp: not adjust rx buffer for copy mode xdp

 drivers/net/ethernet/intel/i40e/i40e_txrx.c       | 5 ++++-
 drivers/net/ethernet/intel/ice/ice_txrx.c         | 5 ++++-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c     | 5 ++++-
 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c | 5 ++++-
 include/net/xdp.h                                 | 3 +++
 net/xdp/xsk.c                                     | 4 +++-
 6 files changed, 22 insertions(+), 5 deletions(-)

-- 
2.16.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
