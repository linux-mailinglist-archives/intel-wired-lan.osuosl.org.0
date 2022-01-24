Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DE13E4986E3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jan 2022 18:33:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 888FC84BD8;
	Mon, 24 Jan 2022 17:33:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mRzWqHylDvrZ; Mon, 24 Jan 2022 17:33:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7996384BCD;
	Mon, 24 Jan 2022 17:33:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 315671BF31F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jan 2022 17:33:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1FA8D40213
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jan 2022 17:33:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5VziW4odCMH3 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jan 2022 17:33:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D205940209
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jan 2022 17:33:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643045581; x=1674581581;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=APJ8zDgY079UWWK2xtzuhPmpX1L8BovvQH53cnFvTAs=;
 b=SYE/XAIURkDu5lY9Wp9pnne8oHqsy0oKvMspgfJSgxqn3i3mRgCRXzSb
 NOeHUjlvDZrPkVuF3blaDeErBvVhOFrr+nWOoGC5wLhMZbLK7gSSB8puV
 VU/t1yFupRknVhTfiEQyTK8uufTqCy7S2ku0OLcJN336IvtHLeuVelyqF
 g/Lv+gUU3ShrcayS0Y35A7xdoNwH2TovowCPhKzvjifDwdgzJC/fRzLnm
 U/fOqUsegOLnRAHKpN1RPr1tZVFcoywjJCDHsY+YM9wO3cG7gSQSRcX4K
 ZC9EloPvYe45Zh95uN9nqXTRPPgL73C5liO/xwXANvxmeSmfh24EujxFY g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10236"; a="226082111"
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="226082111"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 09:33:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="596852642"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga004.fm.intel.com with ESMTP; 24 Jan 2022 09:32:58 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 20OHWuIo010465; Mon, 24 Jan 2022 17:32:56 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 24 Jan 2022 18:31:11 +0100
Message-Id: <20220124173116.739083-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 0/4] ice: switch: debloat packet
 templates code
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

Applies on top of
commit 1ed7aede32fd ("ice: Add support for inner etype in switchdev")
(here: [0]) to exclude non-trivial conflicts and cover the code added
there as well.

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

[0] https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20220110/027399.html

Alexander Lobakin (4):
  ice: switch: add and use u16[] aliases to ice_adv_lkup_elem::{h,m}_u
  ice: switch: unobscurify bitops loop in ice_fill_adv_dummy_packet()
  ice: switch: use a struct to pass packet template params
  ice: switch: use convenience macros to declare dummy pkt templates

 drivers/net/ethernet/intel/ice/ice_switch.c | 264 ++++++++------------
 drivers/net/ethernet/intel/ice/ice_switch.h |  12 +-
 2 files changed, 120 insertions(+), 156 deletions(-)

base-commit: 1ed7aede32fd46f0fac72cef138c9d5e36326c98
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
