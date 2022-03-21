Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4914E24DA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Mar 2022 12:01:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D1727410DC;
	Mon, 21 Mar 2022 11:01:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5TxYMLig0hgl; Mon, 21 Mar 2022 11:01:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF7CF40207;
	Mon, 21 Mar 2022 11:01:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2EC4F1BF312
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Mar 2022 11:01:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C363F826EA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Mar 2022 11:01:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wvd8-6mhTRxx for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Mar 2022 11:01:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B50E5826E7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Mar 2022 11:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647860482; x=1679396482;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NmyGAg3H5qIjkqj2AgtDJJmkpqDu2Ml32OAol27OBlQ=;
 b=kWAXkfkboK1nta59NAn90l70QkBhe9LZ3NjQUNkyaDDznbFSPw/evk8n
 SP73qy8bo9Nc7DZJLYqlydpQLJxzrn/Kyc4akSYftYHZr6PNG1wKbftgH
 oHbD49xKI8eIPstLc0FUYV4+5Of/nJjAZlxj5fZ6HuIXgEQOPEPO9Pf1V
 R8P9SVrFOZ3f59mpO58ksMiZKkGtHz8jwZRUdfx456Nvev6t1YeRr8XZq
 eTunQI2VMZ+Vau2WEmXK16+QgP24+RcgDNQL6MNZlYZD7H3A4PqNB3Cp9
 tQMnr2wW8myy4p2ETqCE/CeHioUZCzFqIUar6LxNzK56rZaw2fuJMKL/C g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10292"; a="255089037"
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="255089037"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 04:01:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="543173127"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga007.jf.intel.com with ESMTP; 21 Mar 2022 04:01:18 -0700
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 22LB1HaB031880; Mon, 21 Mar 2022 11:01:17 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 21 Mar 2022 11:59:49 +0100
Message-Id: <20220321105954.843154-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v4 net-next 0/5] ice: switch: debloat
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
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
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
ice_find_dummy_packet() became very complex at this point with tons
of nested if-elses. It clearly showed this approach does not scale,
so convert its logics to the simple mask-match + static const array.

bloat-o-meter is happy about that (built w/ LLVM 13):

add/remove: 0/1 grow/shrink: 1/1 up/down: 2/-1058 (-1056)
Function                                     old     new   delta
ice_fill_adv_dummy_packet                    289     291      +2
ice_adv_add_update_vsi_list                  201       -    -201
ice_add_adv_rule                            2950    2093    -857
Total: Before=414512, After=413456, chg -0.25%
add/remove: 53/52 grow/shrink: 0/0 up/down: 4660/-3988 (672)
RO Data                                      old     new   delta
ice_dummy_pkt_profiles                         -     672    +672
Total: Before=37895, After=38567, chg +1.77%

Diffstat also looks nice, and adding new packet templates now takes
less lines.

We'll probably come out with dynamic template crafting in a while,
but for now let's improve what we have currently.

From v3[0]:
 - change u64:48 + u64:16 -> u32 + u16 to fix issues on 32-bit
   platforms (and make object code a bit simpler);
 - mention ice_find_dummy_packet() conversion in the cover letter.

From v2[1]:
 - rebase on top of the GTP changes;
 - new: convert template search code to a rodata array (-1000 bytes
   from .text, -400 bytes from ice.ko);
 - collect Reviewed-by and Tested-by (Marcin, Michal).

From v1[2]:
 - rebase on top of the latest next-queue (to fix #3 not applying);
 - adjust the kdoc accordingly to the function proto changes in #3;
 - no functional changes.

[0] https://lore.kernel.org/netdev/20220318161713.680436-1-alexandr.lobakin@intel.com
[1] https://lore.kernel.org/netdev/20220127154009.623304-1-alexandr.lobakin@intel.com
[2] https://lore.kernel.org/netdev/20220124173116.739083-1-alexandr.lobakin@intel.com

Alexander Lobakin (5):
  ice: switch: add and use u16[] aliases to ice_adv_lkup_elem::{h,m}_u
  ice: switch: unobscurify bitops loop in ice_fill_adv_dummy_packet()
  ice: switch: use a struct to pass packet template params
  ice: switch: use convenience macros to declare dummy pkt templates
  ice: switch: convert packet template match code to rodata

 drivers/net/ethernet/intel/ice/ice_switch.c | 489 ++++++++------------
 drivers/net/ethernet/intel/ice/ice_switch.h |  12 +-
 2 files changed, 211 insertions(+), 290 deletions(-)

-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
