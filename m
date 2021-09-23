Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 811624164E0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Sep 2021 20:13:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1C1E64158F;
	Thu, 23 Sep 2021 18:13:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u7EmEY7cF2_z; Thu, 23 Sep 2021 18:13:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2AE194148C;
	Thu, 23 Sep 2021 18:13:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1059C1BF389
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Sep 2021 18:13:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EC9DB400B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Sep 2021 18:12:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5U55C1uF67Vr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Sep 2021 18:12:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4CB624000B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Sep 2021 18:12:59 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3820360F43;
 Thu, 23 Sep 2021 18:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632420778;
 bh=mXvrfKC+e6Fp2msO1e9dvOO8RC/ii9We36xFgFUas8g=;
 h=From:To:Cc:Subject:Date:From;
 b=QqLZnuaHT8QqfyojGiczmUWMS8siMAdkDvolM75Q84+AiRhzknbPi0WqWHzhE5p33
 xJdzMF2B52hs/UCKQtZikWC/1/BbqRTc3EQzYJaJMJJLZ5s9Zv4FpRw1eFkajMMV4f
 t5sRXEGpTVHlZBxkIetdwTAE1b0fJihXnA5wUMUr02maJeFpYrE3IprsIPH+joGpL/
 pci6nd0BgQZd3FXo2vRMQevQK5B/munYkvA9GajE4nIKkNWPiBRAlIcRHSz0SLnshP
 FErUmwhcStUMdFLBaId569v8Gt5vMQfOzlCB+qcUGQu03mMyIz3U9Ryex66gLKfCG7
 /kzgI9+ckOGdg==
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Thu, 23 Sep 2021 21:12:47 +0300
Message-Id: <cover.1632420430.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 0/6] Batch of devlink related
 fixes
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
Cc: Igor Russkikh <irusskikh@marvell.com>, Alexander Lobakin <alobakin@pm.me>,
 Javed Hasan <jhasan@marvell.com>,
 Michal Kalderon <michal.kalderon@marvell.com>,
 Leon Romanovsky <leonro@nvidia.com>, linux-scsi@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Jiri Pirko <jiri@nvidia.com>, Ariel Elior <aelior@marvell.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Vasundhara Volam <vasundhara-v.volam@broadcom.com>,
 Sathya Perla <sathya.perla@broadcom.com>,
 Michael Chan <michael.chan@broadcom.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Saurav Kashyap <skashyap@marvell.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, GR-QLogic-Storage-Upstream@marvell.com,
 GR-everest-linux-l2@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Leon Romanovsky <leonro@nvidia.com>

Hi,

I'm asking to apply this batch of devlink fixes to net-next and not to
net, because most if not all fixes are for old code or/and can be considered
as cleanup.

It will cancel the need to deal with merge conflicts for my next devlink series :).

Thanks

Leon Romanovsky (6):
  bnxt_en: Check devlink allocation and registration status
  bnxt_en: Properly remove port parameter support
  devlink: Delete not used port parameters APIs
  devlink: Remove single line function obfuscations
  ice: Delete always true check of PF pointer
  qed: Don't ignore devlink allocation failures

 drivers/net/ethernet/broadcom/bnxt/bnxt.c     |   5 +-
 .../net/ethernet/broadcom/bnxt/bnxt_devlink.c |  26 +---
 .../net/ethernet/broadcom/bnxt/bnxt_devlink.h |  13 --
 drivers/net/ethernet/intel/ice/ice_main.c     |   3 -
 drivers/net/ethernet/qlogic/qede/qede_main.c  |  12 +-
 drivers/scsi/qedf/qedf_main.c                 |   2 +
 include/net/devlink.h                         |   6 -
 net/core/devlink.c                            | 123 +++++-------------
 8 files changed, 47 insertions(+), 143 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
