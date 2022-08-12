Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA14590FFA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Aug 2022 13:24:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1C70D61129;
	Fri, 12 Aug 2022 11:24:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C70D61129
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660303475;
	bh=/vliNOSy+ycydUBvSD4WzLZrTfIB10uxfCGMSRCkINg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=96BuKG7iupfd7PDRYpUJokAEkx4POU4gpq+RTrne2yvdXisKeMkSb4ab9fyAWNEbC
	 5/grHQGZyrbRr2U2ltIauWcvDEiCcEDD4zehnAe7JCe+NFnzjuiq9VSDbOMvuCXQBz
	 TUMDwVJOHbntLUITQSIcgZWx4NWVqO7PjIDHCmsCkhSQVO1E8InmBmQxc9ojdnaScU
	 Zy5967nNz5+sDrDpxk/6xKCGnHec8mH+5drAK40UgE/I+EOBjvfCozyISffuIy0FxY
	 MSAuJgdP4i/VH69NDKUxVtdN6V1maWsj87Ybc1mX7wPiiwI4AQo8pPNnSW4NpvI5Kr
	 HMDi/+vGkdUiw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p1HAMn33PQE3; Fri, 12 Aug 2022 11:24:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0F1BA610CA;
	Fri, 12 Aug 2022 11:24:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0F1BA610CA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BA5C41BF287
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 11:24:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9A30A82BA1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 11:24:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A30A82BA1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jbcqLIbxde63 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Aug 2022 11:24:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E886781457
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E886781457
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Aug 2022 11:24:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="291576421"
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="291576421"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2022 04:24:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="665788626"
Received: from propan.igk.intel.com ([10.211.8.82])
 by fmsmga008.fm.intel.com with ESMTP; 12 Aug 2022 04:24:25 -0700
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 12 Aug 2022 13:24:19 +0200
Message-Id: <20220812112422.1083684-1-anatolii.gerasymenko@intel.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660303467; x=1691839467;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OiWp+SBB2EDyq3d/QgVquJwnRitfrl/i+1DtLKX7Klw=;
 b=Kn68qt70tzTUwPPkHDPfSS/Ytxya0vZMd/G/zpwKY5JP8SNwpD9hjQKN
 4ZEUugXOPA7ZR7VsJmoS31AD4GgvU7GaS06Yk/UosIrzVuHqCHumJUZDY
 EHT79VLmjsD4SgX7mOnldJRqqpbEJ8tKqh5WoQB51pKDJbuJmZGFDjTc6
 XEh3+FLLZDsWnXHsSsDC8s4GTnH4n/ZWw/j8k3iHgDYzrEoxcRK4x3/yQ
 T6MZnyST885TYES9kLaRcEdZV8g+DOr+Nwc11/r0m5aeKeghecRenWyvI
 4MlBb8FtwsoISmfs/hvJoZmt3MhiWQG3C8uQAWU+mGv2uPx+xqTgdMBsO
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Kn68qt70
Subject: [Intel-wired-lan] [PATCH net-next v3 0/3] ice: Implement LLDP MIB
 Pending change
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

If the RDMA traffic class is removed, then our Control QP (RDMA Admin QP)
may not receive completions and would hang RDMA processing. Which would
translate into requests for reset on the card after receiving such
changes from the switch.

To solve above problem FW will no longer remove TC nodes for the
applicable TC instead allowing RDMA to destroy QP markers. After RDMA
finish outstanding operations notification needs to be sent to FW to
finish DCB configuration change.

Anatolii Gerasymenko (2):
  ice: Get DCBX config from LLDP MIB change event
  ice: Handle LLDP MIB Pending change
v2: Remove inline hint for ice_dcb_is_mib_change_pending()
v3: Handle only local LLDP MIB Pending change

Tsotne Chakhvadze (1):
  ice: Add 'Execute Pending LLDP MIB' Admin Queue command

 .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 18 ++++++-
 drivers/net/ethernet/intel/ice/ice_common.c   | 13 +++++
 drivers/net/ethernet/intel/ice/ice_common.h   |  1 +
 drivers/net/ethernet/intel/ice/ice_dcb.c      | 39 ++++++++++++++
 drivers/net/ethernet/intel/ice/ice_dcb.h      |  2 +
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c  | 51 +++++++++++--------
 6 files changed, 100 insertions(+), 24 deletions(-)

-- 
2.37.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
