Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B11C7228D8C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Jul 2020 03:27:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 469D284961;
	Wed, 22 Jul 2020 01:27:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2hKR_w__E8I7; Wed, 22 Jul 2020 01:27:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CC2568496B;
	Wed, 22 Jul 2020 01:27:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AD4E51BF406
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jul 2020 01:27:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A963F8494E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jul 2020 01:27:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HegBRHSbKxcM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Jul 2020 01:27:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id ED3D8848BE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jul 2020 01:27:24 +0000 (UTC)
Received: from kicinski-fedora-PC1C0HJN.thefacebook.com (unknown
 [163.114.132.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 778CB206F5;
 Wed, 22 Jul 2020 01:27:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595381244;
 bh=Y2FzO6aj9jA/LhJ9UgZUS/x9jrhjcynfaaP92O4pl3c=;
 h=From:To:Cc:Subject:Date:From;
 b=2rO3RATVNaY5/Rs5ylrab/so+rFusIXKd1Sz8IIqWOuVL2vL2Z3ZCeyePSutihPEz
 mFKiTfT3Tj/LyFPTqU36j7ttpYDhysXfMcVOelWMHiBbEmfcYhmHTwqt+jOuNexkor
 y+gIAxtYoHU2LPFks0t0xBnu8ZcnOaBO5L2hbQYs=
From: Jakub Kicinski <kuba@kernel.org>
To: davem@davemloft.net
Date: Tue, 21 Jul 2020 18:27:09 -0700
Message-Id: <20200722012716.2814777-1-kuba@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 0/7] udp_tunnel: convert Intel
 drivers with shared tables
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This set converts Intel drivers which have the ability to spawn
multiple netdevs, but have only one UDP tunnel port table.

Appropriate support is added to the core infra in patch 1,
followed by netdevsim support and a selftest.

The table sharing works by core attaching the same table
structure to all devices sharing the table. This means the
reference count has to accommodate potentially large values.

Once core is ready i40e and ice are converted. These are
complex drivers, and I don't have HW to test so please
review..

Jakub Kicinski (7):
  udp_tunnel: add the ability to share port tables
  netdevsim: add warnings on unexpected UDP tunnel port errors
  netdevsim: shared UDP tunnel port table support
  selftests: net: add a test for shared UDP tunnel info tables
  i40e: convert to new udp_tunnel infrastructure
  ice: remove unused args from ice_get_open_tunnel_port()
  ice: convert to new udp_tunnel infrastructure

 drivers/net/ethernet/intel/i40e/i40e.h        |   6 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 264 ++++--------------
 .../net/ethernet/intel/ice/ice_ethtool_fdir.c |   6 +-
 drivers/net/ethernet/intel/ice/ice_fdir.c     |   2 +-
 .../net/ethernet/intel/ice/ice_flex_pipe.c    | 231 +++++++--------
 .../net/ethernet/intel/ice/ice_flex_pipe.h    |  11 +-
 .../net/ethernet/intel/ice/ice_flex_type.h    |   5 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |  97 ++-----
 drivers/net/ethernet/intel/ice/ice_type.h     |   3 +
 drivers/net/netdevsim/netdevsim.h             |   7 +-
 drivers/net/netdevsim/udp_tunnels.c           |  30 +-
 include/net/udp_tunnel.h                      |  24 ++
 net/ipv4/udp_tunnel_nic.c                     |  96 ++++++-
 .../drivers/net/netdevsim/udp_tunnel_nic.sh   | 109 ++++++++
 14 files changed, 440 insertions(+), 451 deletions(-)

-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
