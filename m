Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E02347B556C
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Oct 2023 16:49:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 80134610A6;
	Mon,  2 Oct 2023 14:49:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 80134610A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696258145;
	bh=wmQSzCd7SdEp8Ia1jly6wWSnTd5qYQUrdI8qfBBgkkg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=YQrrqpTi70r/LbPZYbHf3WxsRRm48rbjBXnnSnrZu7T2SayHuIGpQF6snd/7RpHDO
	 ZCaj7g594brCzKnvq2WjqEXdXhCYvnupwXsqEbFE+iCAPbfZ29zhXp+7pVZ8wzfTtf
	 u0cNb/4xqUaBoe+rtYA4Urn/A3Lc/U8hNB3qJjFmRNwBy5KqepV8ir+kP5ReUMbYIK
	 +mq2Atvv+DAjiUWRzYr/favjzq2qln5eWyTZR+FxM81Fu1jz9qZNzc7eWtIkPIkaNz
	 2QyIV+LMKoruMKrCqkaqSM6SV9mt5C8acvY7W62wRRAgwEnLtrFmS1Xr3nJ/2ASxfO
	 cgOmqh+ZJLowg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I_pWneugMC0i; Mon,  2 Oct 2023 14:49:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BECE56108C;
	Mon,  2 Oct 2023 14:49:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BECE56108C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6A56A1BF584
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Oct 2023 14:48:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4C7EF61063
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Oct 2023 14:48:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C7EF61063
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5t_ZZyvh0cb8 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Oct 2023 14:48:58 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 138F961062
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Oct 2023 14:48:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 138F961062
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="385476071"
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; d="scan'208";a="385476071"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 07:48:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="874374982"
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; d="scan'208";a="874374982"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga004.jf.intel.com with ESMTP; 02 Oct 2023 07:48:52 -0700
Received: from baltimore.igk.intel.com (baltimore.igk.intel.com [10.102.21.1])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id EC7F843C30;
 Mon,  2 Oct 2023 15:48:50 +0100 (IST)
From: Pawel Chmielewski <pawel.chmielewski@intel.com>
To: netdev@vger.kernel.org
Date: Mon,  2 Oct 2023 16:44:10 +0200
Message-Id: <20231002144412.1755194-1-pawel.chmielewski@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696258138; x=1727794138;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eeRf5qPIDPPBmhfk8948B4Bq6fVtpeRM4MyhqN7ROiA=;
 b=dZCD0ksH84JFe7Q6Vx4e1QxdPahw52qKml5OMr0tzo/tL4UQPWANZ4AM
 8g+A42H3KNFJMre1N4Zf0i0TtxDdM85diH/y9DgkHU4MGd7Vn/ghg7hcD
 XtbDBefZ/c+SjySYioyl6wGoiSnTqK/LB1CWa+mzabPpeNV+7wrsnCuRa
 IQPxgdgWcY4Rtq6p74xE5hcfY9TjYW8WbMTImQdKJLM7YN1PDZ4fqdOhs
 x9SH7lYw6oBVNHVFQeeHhBvPIWedMOluEWgjuhfylj5MFgnKKGdTEFxNC
 rEIYDb17h/Y+s+oKRUuhSyJPeBorLjhmDIy/uiUY0boh5o1/EhgdC8+vP
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dZCD0ksH
Subject: [Intel-wired-lan] [PATCH net-next v3 0/2] ethtool: Add link mode
 maps for forced speeds
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
Cc: andrew@lunn.ch, aelior@marvell.com, manishc@marvell.com,
 vladimir.oltean@nxp.com, jdamato@fastly.com,
 Pawel Chmielewski <pawel.chmielewski@intel.com>, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org, kuba@kernel.org,
 d-tatianin@yandex-team.ru, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The following patch set was initially a part of [1]. As the purpose of
the original series was to add the support of the new hardware to the
intel ice driver, the refactoring of advertised link modes mapping was
extracted to a new set.
The patch set adds a common mechanism for mapping Ethtool forced speeds
with Ethtool supported link modes, which can be used in drivers code.

[1] https://lore.kernel.org/netdev/20230823180633.2450617-1-pawel.chmielewski@intel.com

Changelog:
v2->v3:
Fixed whitespaces, added missing line at end of file

v1->v2:
Fixed formatting, typo, moved declaration of iterator to loop line.

Paul Greenwalt (1):
  ethtool: Add forced speed to supported link modes maps

Pawel Chmielewski (1):
  ice: Refactor finding advertised link speed

 drivers/net/ethernet/intel/ice/ice.h          |   1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 201 ++++++++++++------
 drivers/net/ethernet/intel/ice/ice_main.c     |   2 +
 .../net/ethernet/qlogic/qede/qede_ethtool.c   |  24 +--
 include/linux/ethtool.h                       |  20 ++
 net/ethtool/ioctl.c                           |  15 ++
 6 files changed, 178 insertions(+), 85 deletions(-)

-- 
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
