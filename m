Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE91549E651
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jan 2022 16:41:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6CC0541660;
	Thu, 27 Jan 2022 15:41:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ylZJdLJ54-CS; Thu, 27 Jan 2022 15:41:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7723241615;
	Thu, 27 Jan 2022 15:41:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 35F3A1BF40A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jan 2022 15:41:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2309260777
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jan 2022 15:41:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oNXaMpZ5U7m4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jan 2022 15:41:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EDC7F606ED
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jan 2022 15:41:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643298111; x=1674834111;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ilgXZaqxDA9kqy7YRB+bhcP2wz4pTOi+q3i19NEBc9w=;
 b=MtOu/VWYipBHQkfkE5BmsMxoXICPRPW/zARxnk0wDs6pqhsZXNCIm5PR
 A+6ihCsydIx9wDbJTAs7k5ADx+L/ENRxq/FTpurqANDvsnSSoUeWwlAV7
 J+/PhqKkNyeO2mwKETzJaoFtZk+UJTRXddT71LBwYTF6iGt5MqLelsb/k
 DrAmN5gPqnPlldY8bNFPcc/8A65MR4ON7Y1TRoGKRzLVpzUd83UVmC3ed
 pgeNBaEQ+u5WOWELn2hv9jD3pe1Xg/KooPGQTuGidE9EHnp+MGWwKsTA7
 TsZeqJqD/L9WPKuyWBw/L7r+hLGrKfbObrzatzeVf0dor2fL4ywd4OTO5 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="244492068"
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600"; d="scan'208";a="244492068"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 07:41:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600"; d="scan'208";a="521282143"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga007.jf.intel.com with ESMTP; 27 Jan 2022 07:41:47 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 20RFfjOn028674; Thu, 27 Jan 2022 15:41:45 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Jan 2022 16:40:05 +0100
Message-Id: <20220127154009.623304-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 net-next 0/4] ice: switch: debloat
 packet templates code
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
Cc: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This hunts down several places around packet templates/dummies for
switch rules which are either repetitive, fragile or just not
really readable code.
It's a common need to add new packet templates and to review such
changes as well, try to simplify both with the help of a pair
macros and aliases.

bloat-o-meter is happy about that (built w/ LLVM 13):

add/remove: 0/1 grow/shrink: 2/0 up/down: 148/-202 (-54)
Function                                     old     new   delta
ice_add_adv_rule                            2383    2529    +146
ice_fill_adv_dummy_packet                    289     291      +2
ice_adv_add_update_vsi_list                  202       -    -202
Total: Before=395813, After=395759, chg -0.01%

Diffstat also looks nice, and adding new packet templates now takes
less lines.

We'll probably come out with dynamic template crafting in a while,
but for now let's improve what we have currently.

Note: this will conflict with [1] going through net-next,
a followup will be sent once accepted.

From v1 ([0]):
 - rebase on top of the latest next-queue (to fix #3 not applying);
 - adjust the kdoc accordingly to the function proto changes in #3;
 - no functional changes.

[0] https://lore.kernel.org/netdev/20220124173116.739083-1-alexandr.lobakin@intel.com
[1] https://lore.kernel.org/netdev/20220127125525.125805-1-marcin.szycik@linux.intel.com

Alexander Lobakin (4):
  ice: switch: add and use u16[] aliases to ice_adv_lkup_elem::{h,m}_u
  ice: switch: unobscurify bitops loop in ice_fill_adv_dummy_packet()
  ice: switch: use a struct to pass packet template params
  ice: switch: use convenience macros to declare dummy pkt templates

 drivers/net/ethernet/intel/ice/ice_switch.c | 273 ++++++++------------
 drivers/net/ethernet/intel/ice/ice_switch.h |  12 +-
 2 files changed, 123 insertions(+), 162 deletions(-)

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
