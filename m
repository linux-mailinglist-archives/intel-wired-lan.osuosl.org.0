Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F041B996D16
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Oct 2024 16:02:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BCF444049A;
	Wed,  9 Oct 2024 14:02:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8ELcErzZjjLI; Wed,  9 Oct 2024 14:02:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BE59F40760
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728482553;
	bh=jlghxX1GlWM++eQvycd4uguG/vRH/YXjmAf7UcbGGz4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=QrQytu9eH3VGhJu43tFhobMLQuqlzGiWz8punmIc7Pe4Ed+2Az3bHWiWzZXww7Z58
	 uJlzoYlHSch/F+vrMaNiH04r6gqW/9AKRYCOaJ1Y1L0qs/4IqcPs1BIHGFZXJ5fvu1
	 vkvV5xZltuTBdKOeeyIZoSIbcOaoTx/Ky2WVbPC7z1OVRD33HhTqjGBJBNx7rr4NO/
	 gtheHzn84c/xBNANADXI4gE5SzTt6R1FvpPAu6eBQMUzjEook81u6Rd0tr+2wMkcaS
	 jyq0mMqV6RXBRXTJen17O6/exM1uoJvXBzi4XA1Yek53aI69Uao6TCQ3sboPjav05a
	 moohT/GZ6qUiA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BE59F40760;
	Wed,  9 Oct 2024 14:02:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C98661BF215
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 14:02:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C3C224049A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 14:02:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gZGoq_CdxW07 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2024 14:02:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 97AED40092
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 97AED40092
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 97AED40092
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 14:02:30 +0000 (UTC)
X-CSE-ConnectionGUID: abEVeMEKRRmQABAIc6eb1A==
X-CSE-MsgGUID: VkLj5yp/RUWrwlxVIkqKIA==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="31483924"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="31483924"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 07:02:29 -0700
X-CSE-ConnectionGUID: jVTH4o7HRrOoknzvWGf9MA==
X-CSE-MsgGUID: iTDfwJNATV699zloEh/pBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="76210718"
Received: from kkolacin-desk1.ger.corp.intel.com (HELO
 kkolacin-desk1.igk.intel.com) ([10.217.160.108])
 by orviesa009.jf.intel.com with ESMTP; 09 Oct 2024 07:02:28 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  9 Oct 2024 15:59:25 +0200
Message-ID: <20241009140223.1918687-1-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.46.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728482550; x=1760018550;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aFp+U0p8vHdTdyh3f5RRGyUMZSbdRdCviTrmYy4UqZo=;
 b=Kdqz2JFAV6L80RbpIfcra2ay5DPEjKBzq61oLAvfmv+K0gGV5IdM3yot
 xQBGkQqRqPpjGUa6TvA4npQfFiam5P8IGNBBa0pTCo0jN082TVocj6n9K
 zSOLLcpV+h+HgTIfaf8K749ddfObMY7U4e0o2s8GWEepw1LLCTE8oRGoG
 A+KLJNXaBIKILDlOGB6cNVgQGBp9zHgn5fkyVAhslCPLURlfJwGgGC9VB
 ZdvUG1P3PIVj44wwjw6VK8Ww8fEu965gh6aWNrdlaKVFrrJfy89IK3q1q
 dpM/UmMElq0mnNb+J/Yn/4k/WsIi5H2FrOslwnHvvTtsNm4dKlU71wctV
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Kdqz2JFA
Subject: [Intel-wired-lan] [PATCH v2 iwl-next 0/4] Fix E825 initialization
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

E825 products have incorrect initialization procedure, which may lead to
initialization failures and register values.

Fix E825 products initialization by adding correct sync delay, checking the
PHY
revision only for current PHY and adding proper destination device when
reading
port/quad.

In addition, E825 uses PF ID for indexing per PF registers and as a primary
PHY
lane number, which is incorrect.


Karol Kolacinski (4):
  ice: Fix E825 initialization
  ice: Fix quad registers read on E825
  ice: Fix ETH56G FC-FEC Rx offset value
  ice: Add correct PHY lane assignment

 drivers/net/ethernet/intel/ice/ice_common.c   |  42 ++-
 drivers/net/ethernet/intel/ice/ice_common.h   |   1 +
 drivers/net/ethernet/intel/ice/ice_main.c     |   6 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c      |  23 +-
 drivers/net/ethernet/intel/ice/ice_ptp.h      |   4 +-
 .../net/ethernet/intel/ice/ice_ptp_consts.h   |  77 +----
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 285 +++++++++---------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |  40 ++-
 drivers/net/ethernet/intel/ice/ice_sbq_cmd.h  |   7 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   2 -
 10 files changed, 243 insertions(+), 244 deletions(-)

V1 -> V2: Removed net-next hunks from "ice: Fix E825 initialization",
          whole "ice: Remove unnecessary offset calculation for PF
          scoped registers" patch and fixed kdoc in "ice: Fix quad
          registers read on E825"

base-commit: af8cac359cecaab37a171039fc82cfd1f7aca501
-- 
2.46.2

