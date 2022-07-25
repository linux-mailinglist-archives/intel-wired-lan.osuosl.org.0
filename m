Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8475F57F9D3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Jul 2022 09:04:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1129341846;
	Mon, 25 Jul 2022 07:04:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1129341846
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658732696;
	bh=SsdZY++bwquND2KjtEhl3hSaSwkcR5/RXq129jvFft4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=yIv+2s6j4sHX+rXDe6Ko6qJyxBCfyV4WdEG5mpaY7hiYb4h+tyRltpqh/REqyEW9Z
	 Rkjx9jJ1Q5Ucwyy2guGGa+WRfc91vKgJhqBI3nfSe5ZI2RDzN5yodF6t6W+fwXvrPI
	 O9uKhK3Bn/mIlJM9H2l2qeEO6vOA1BfIpYay3Zy60yp/3ln6A7OUqzmOt+MboxTXPX
	 GQdCPpjyu0gNpomhfAv5WDeEUrbevmVx7BSdcQolvNQqbAVotBJHrCeUbF5BWyssBq
	 gBZPsLq9ekTbjn1nfvPjvR7WFBjo74n88XYM1cUdbp1wGOIM1+iVwkX1qAFfZJ7wwv
	 sL1QJUULqOvUQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SOWvTafBrWh9; Mon, 25 Jul 2022 07:04:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D899417D3;
	Mon, 25 Jul 2022 07:04:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9D899417D3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EAECE1BF379
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jul 2022 07:04:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D150C40CB0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jul 2022 07:04:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D150C40CB0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FvXB7lBrOZD0 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Jul 2022 07:04:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E7D45401C2
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E7D45401C2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jul 2022 07:04:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10418"; a="287641887"
X-IronPort-AV: E=Sophos;i="5.93,192,1654585200"; d="scan'208";a="287641887"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2022 00:04:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,192,1654585200"; d="scan'208";a="658058745"
Received: from propan.igk.intel.com ([10.211.8.82])
 by fmsmga008.fm.intel.com with ESMTP; 25 Jul 2022 00:04:47 -0700
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 25 Jul 2022 09:02:08 +0200
Message-Id: <20220725070210.488309-1-anatolii.gerasymenko@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658732688; x=1690268688;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZdK18PBKQvTDDWngu8GJJ+58UPKJAUsQ7xAsYvgpqf0=;
 b=G5ue/VR1Dyy6pRd7aUYei2k+EhJxP7azr8576VHM4h0uVV4tSjjZVXnE
 D8LWL3Cn96hwnyY5I+P3QP1MAd2Mv71CR3uE7hmpETMWkVLjYAgi5qXvU
 kukhQ/yGvvaTaIN06aGdDrh3YmycLdBo7dqjajvTQLuiwqH9OG6Q5oHC0
 D64ZS9zJtGSRQGLm/reau86BmTcS+sWLW7OZd7m4EP2V1wQsSu+1yQZpW
 sywTonD0OF2ETec0qBh7NqrnnatPqPjV9n7etJl7TFqkSpqvfsdwN/yl8
 lYaUKS+pQauOnKfeaU2cPnThFB8NuiMW3AB2OnhqGrxGRiApda5L3dAl+
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G5ue/VR1
Subject: [Intel-wired-lan] [PATCH net-next v3 0/2] ice: FCS/CRC stripping
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
