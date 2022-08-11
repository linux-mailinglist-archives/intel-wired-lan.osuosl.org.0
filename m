Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97ACE590637
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Aug 2022 20:22:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7378840BBE;
	Thu, 11 Aug 2022 18:22:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7378840BBE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660242125;
	bh=Ojto5KPVNkmVPd0BdeglqfPIwhpC7YLN5UbdasLzKZc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=t+hfxotXzucW0nboG9GqrUaoPHmw5ihEi+IoFo4H7EcK3cefBF2x8uHEUNinfpM65
	 nvCHnU7HRRh58cGXAGUVgUYYK2HV06VBthv/c38KuAx8d6bomy9lzheUT5c2SmiriP
	 2+HzqkxPuWvHC4V3Yk5ebvovxZVTLDLlK9IckV/Jj6QJ9P1sR1FpA1sdbikcoo8ZfC
	 l8YW2XL40/Rgp8P2EfcZJcFu0wZ5resmyFfcFz4CEu7TP1f54bDEMnRcb6aqiEbwDV
	 hioeeHtslDN5pqe+jaC2CvL8cO6Ozv2BiMWIPQJzGaaTmbbmBkfFzjQ+/XVDAfoVeQ
	 Vg+IHDsFqhsIA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ucYV8AMq2b4i; Thu, 11 Aug 2022 18:22:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6F38B40B84;
	Thu, 11 Aug 2022 18:22:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6F38B40B84
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7F3521BF3EE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 18:21:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 65CB840B6A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 18:21:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 65CB840B6A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iNz5pPj6fRHN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Aug 2022 18:21:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9CB9B40593
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9CB9B40593
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Aug 2022 18:21:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="292689569"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="292689569"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 11:21:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="933426138"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmsmga005.fm.intel.com with ESMTP; 11 Aug 2022 11:21:56 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 11 Aug 2022 20:21:47 +0200
Message-Id: <20220811182149.145358-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660242118; x=1691778118;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wNGtd33mNlaPsi6uTyYY9xYtLMfRyQAIvuGLR+bepOY=;
 b=bvfivHjaN1/Gp+Ug72jQZ4rwtlzgY7m/fJMnp7VnTlGEuuLeW4slkBQJ
 ccCI529jcsQK8qKeZLwNoJIbKVqZTWRoi/pc+qim4xLj7JTsHtJnlSj8/
 inIm6E4rEt8RqvMks9T/5e5inJuCngz8dgYYC2Ewm4rSD03NPh/UJoIt0
 pi2bpoIsBe9q4PzA+/Iy8V6mjFW1sEaSY7yjUVEjhtH3tFxlgmeb078Lo
 TXumkP8LOuFZaYMeT0Cc1px753Rr6NLS2cfJ8QNRMPhdUN6km/kGB7c+/
 lOGzTA3pjw1se08Z5y+ndkHjY0nPtaNzM4ZqIbcvhI3mBSAVqlAVwxw8p
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bvfivHja
Subject: [Intel-wired-lan] [PATCH intel-net 0/2] ice: xsk: reduced queue
 count fixes
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
Cc: alasdair.mcwilliam@outlook.com, xdp-newbies@vger.kernel.org,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

this small series is supposed to fix the issues around AF_XDP usage with
reduced queue count on interface. Due to the XDP rings setup, some
configurations can result in sockets not seeing traffic flowing. More
about this in description of patch 2.

Thanks!
Maciej

Maciej Fijalkowski (2):
  ice: xsk: prohibit usage of non-balanced queue id
  ice: xsk: use Rx ring's XDP ring when picking NAPI context

 drivers/net/ethernet/intel/ice/ice.h      | 36 +++++++++++++++--------
 drivers/net/ethernet/intel/ice/ice_lib.c  |  4 +--
 drivers/net/ethernet/intel/ice/ice_main.c | 25 +++++++++++-----
 drivers/net/ethernet/intel/ice/ice_xsk.c  | 18 ++++++++----
 4 files changed, 54 insertions(+), 29 deletions(-)

-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
