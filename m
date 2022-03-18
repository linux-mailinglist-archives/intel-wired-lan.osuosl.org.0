Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD3B4DDE50
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Mar 2022 17:18:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 92CCC60806;
	Fri, 18 Mar 2022 16:18:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZOpX3InqSlHE; Fri, 18 Mar 2022 16:18:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 924606080B;
	Fri, 18 Mar 2022 16:18:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0B99A1BF21A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Mar 2022 16:18:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 078E780DC8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Mar 2022 16:18:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eN6zcYE_w6Wl for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Mar 2022 16:18:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BE8D880BD6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Mar 2022 16:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647620309; x=1679156309;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=K35+NJn4cb9SB2tUyATnivg4yiRvcwab/IpVO7uv9zs=;
 b=QY1ML/nA5AUkDDfaiQOTPqVcuT9lhp3l2iyOq71xFqd16WpMDdplk9RD
 HDMFdr0WP+A1DMiq4ShJYmPGUCfP3eZBVoGzAdQhb+/BVXz0Eu9VzbHjy
 KuCRpVT5IvQhTra2u3d8E1stC4D5fkP3dtF+iavaQPY2Q17aJqMBxe1nn
 FyZIHTnT2wzqBjLhkvwm+0AlkBZaFoQBBWEfiXPaI1neVCdaBXhPR09T7
 5ItS8EVpct7haYhqIzdqmnwrygLdcOMdsPobQGlHInJDiY7NG/OUqn4Qq
 aDXfz2He6LtyfZJK8gtSl3qjeQdMQUA82r2zZGSMlQrqO8GDZj1mCQsuf w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10290"; a="239328707"
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="239328707"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 09:18:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="784286416"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga006.fm.intel.com with ESMTP; 18 Mar 2022 09:18:25 -0700
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 22IGIOmC024113; Fri, 18 Mar 2022 16:18:24 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 18 Mar 2022 17:17:08 +0100
Message-Id: <20220318161713.680436-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v3 net-next 0/5] ice: switch: debloat
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

bloat-o-meter is happy about that (built w/ LLVM 13):

add/remove: 0/1 grow/shrink: 1/1 up/down: 2/-1045 (-1043)
Function                                     old     new   delta
ice_fill_adv_dummy_packet                    289     291      +2
ice_adv_add_update_vsi_list                  201       -    -201
ice_add_adv_rule                            2950    2106    -844
Total: Before=413901, After=412858, chg -0.25%
add/remove: 53/52 grow/shrink: 0/0 up/down: 4660/-3988 (672)
RO Data                                      old     new   delta
ice_dummy_pkt_profiles                         -     672    +672

Diffstat also looks nice, and adding new packet templates now takes
less lines.

We'll probably come out with dynamic template crafting in a while,
but for now let's improve what we have currently.

From v2[0]:
 - rebase on top of the GTP changes;
 - new: convert template search code to a rodata array (-1000 bytes
   from .text, -400 bytes from ice.ko);
 - collect Reviewed-by and Tested-by (Marcin, Michal).

From v1[1]:
 - rebase on top of the latest next-queue (to fix #3 not applying);
 - adjust the kdoc accordingly to the function proto changes in #3;
 - no functional changes.

[0] https://lore.kernel.org/netdev/20220127154009.623304-1-alexandr.lobakin@intel.com
[1] https://lore.kernel.org/netdev/20220124173116.739083-1-alexandr.lobakin@intel.com

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
