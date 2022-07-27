Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F235E582110
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Jul 2022 09:27:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6190940996;
	Wed, 27 Jul 2022 07:27:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6190940996
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658906844;
	bh=cEnix/ezTlcWVgMWS7aeWLI+1bKQGsNZcpR1dSMpItY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=rsPM6X+0BaFX1FHmI1y0AuYBsoBA8v00uNi2Zq1rCBw2JxAGNsbQuSs14NpuIreK4
	 pyTSDqOsMSDA9nKnIWTRwZek4OQ+kkSB2dMBq80/v5aq2/OXlpiULJBlGze4ZsZUFb
	 dak1qu9MV9wB4aGC8O65uf5zB9jTZaVjJxG15RVnNAya2wTP6O4bTzi4P607dNfbMs
	 2OT+JvhaAyFJSfjVFN5cxOZwXBqzFCCjjVDz2/uKaflTBtngSDXRDfYNZl6YRu7Q6P
	 rgll+9rIVyKXgCa6dp7QW8C9FvGIqkkqxJFhqN1Ghp9HFh1CoYd77kCjiDQnJc6rZ3
	 KjauXHYijSaaw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IYQcB4sz8MxG; Wed, 27 Jul 2022 07:27:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0AB2D4094E;
	Wed, 27 Jul 2022 07:27:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0AB2D4094E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A3BD11BF3A0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 07:27:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7B5E340979
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 07:27:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7B5E340979
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qDYi1KX5X2ry for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Jul 2022 07:27:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 93EB14094E
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 93EB14094E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 07:27:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="352161812"
X-IronPort-AV: E=Sophos;i="5.93,195,1654585200"; d="scan'208";a="352161812"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 00:27:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,195,1654585200"; d="scan'208";a="659076380"
Received: from propan.igk.intel.com ([10.211.8.82])
 by fmsmga008.fm.intel.com with ESMTP; 27 Jul 2022 00:27:10 -0700
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 27 Jul 2022 09:24:04 +0200
Message-Id: <20220727072406.597424-1-anatolii.gerasymenko@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658906836; x=1690442836;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XOBKlm5ae88vPHyMWXXDGL1I3OqQe1MdttfE4HdG/Ug=;
 b=Yq9NbA/UXoa0fJwmRkUU/kF+1ZkCbgTkv2igLccxd0P8xP/gE7yWYA8c
 umltUt8uXXzTaT3omcy31Atz8K80ytsGGa2BM+V3Pa//Wwi8m/tl591f+
 kUR7mRoch1PENZ4EQXUJJ06YxyEeHlu+6Jr3WSYduR6wGeoHMWxEzQUGF
 W4GNwf1GeyuO+JjLIQNUick33/Yk3UJo0YUpZmbby0gnk0YAcfOQbO8/f
 JjdbXtxC97Pwe14sJr2JD8KBAh1Fa1pYzq7de5XonzaOeGjEaK82UxMkl
 KVn3AHh7rNEPyg3fdVyan3aw6JjFu3nF4dVCnPxyC4wK3HxWpG9HehK4I
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Yq9NbA/U
Subject: [Intel-wired-lan] [PATCH net-next v4 0/2] ice: FCS/CRC stripping
 control
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
Cc: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Implement possibility to change FCS/CRC stripping feature using ethtool
command.

Having FCS/CRC could be useful for:
- network sniffers to inspect FCS/CRC correctness
- for benchmarking use cases
- XDP programs

v2: rebase on top of Maciej Fijalkowski's patches
v3: fix vsi->netdev NULL pointer derreference in ice_vsi_rebuild()
v4: fix Co-developed-by tag

Anatolii Gerasymenko (1):
  ice: Implement FCS/CRC and VLAN stripping co-existence policy

Jesse Brandeburg (1):
  ice: Implement control of FCS/CRC stripping

 drivers/net/ethernet/intel/ice/ice.h         |  1 +
 drivers/net/ethernet/intel/ice/ice_base.c    |  2 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c |  5 +-
 drivers/net/ethernet/intel/ice/ice_lib.c     | 22 +++++++
 drivers/net/ethernet/intel/ice/ice_lib.h     |  2 +
 drivers/net/ethernet/intel/ice/ice_main.c    | 65 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_txrx.h    |  3 +-
 7 files changed, 94 insertions(+), 6 deletions(-)

-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
