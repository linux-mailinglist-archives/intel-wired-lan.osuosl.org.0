Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 220B79BCCCA
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Nov 2024 13:32:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 97A388114F;
	Tue,  5 Nov 2024 12:32:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M_-5kGb-slui; Tue,  5 Nov 2024 12:32:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8D2A981154
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730809949;
	bh=x+YdE6lNGg1dr/OREmx3652UugGfa3lh4oAahBr9u9k=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=6/aDgwsv2ZSi0EzmcSJvO56iHCSEdoYSWVURsGYJ8PCKWY5+DSkGZHzJLknsuQyI3
	 13P4TAI/pgLxzP5uhqujIJvIZm6rz2p+AtrDhmfJZ53Ai7mPEkNgOJfzf5OWpCk6ZH
	 7l3Go/pEtNfndfH9iEPk+k3trQUnxtfzHU4i3r6pNjSNCw0q8Ykf2jm97eCFQBRvMx
	 HTblHY+PEHchtxsgwJUbVi7JAP6GMtkPJk/M0REUfEqb3md4m9beh1tXAmYMyLuW+1
	 K33fv5pxWdp4v8+2nm/E0buFbh8F9avayhe2gPTLZfIIEpKR/mylodpX/KOuo2MAZY
	 kWUIwAmQB3ACQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8D2A981154;
	Tue,  5 Nov 2024 12:32:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 75435B8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 12:32:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6252E40A47
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 12:32:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4dJEFYToDhnW for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Nov 2024 12:32:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 523D140A3A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 523D140A3A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 523D140A3A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Nov 2024 12:32:26 +0000 (UTC)
X-CSE-ConnectionGUID: cQJtnVcYSBquhSwWDkFe8A==
X-CSE-MsgGUID: qskpR4nrQ9eXMb+gJwzvOw==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="29976181"
X-IronPort-AV: E=Sophos;i="6.11,260,1725346800"; d="scan'208";a="29976181"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 04:32:25 -0800
X-CSE-ConnectionGUID: 8u8Kr9IQREKI+IhM6YUF0w==
X-CSE-MsgGUID: iLf175dvTqS2m39CucwNeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,260,1725346800"; d="scan'208";a="121481216"
Received: from gklab-003-001.igk.intel.com ([10.211.3.1])
 by orviesa001.jf.intel.com with ESMTP; 05 Nov 2024 04:32:24 -0800
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  5 Nov 2024 13:29:12 +0100
Message-Id: <20241105122916.1824568-1-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730809946; x=1762345946;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6sCpw5OmNuGWdYB2B2FZ5TKHEdl6SEDWgUwuenv7RrU=;
 b=VRhKdVjrL3N/EbEwPMoRk6wvVx8CuNKJM26vT92NtzJQQNuzE7KW50dh
 2SKntUDyFZoGOI5lMScOo6UCPf8vUDYZnv/saAr+osWBA45lxDTXMAYub
 592nQ+0Dy+OfwkK3KAEc5GXPj3dEcNy7sHUQKyNlCC5RDwMrKIv1VYSwk
 qnZyFS86mcohlQ52e4yiKRwF453YY30fVy4LJb9htRjyXAD+4QirryoLD
 w8todjBiPDgsQ0Daj8XIKgz3A+Ce9oSftROTRwYv0l1javO/KUKr0v918
 qYVngMHs+EMitwi6AGE2GD+PRgIVgOt77PjCG2U9L1CYDwFNO66IpcaLb
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VRhKdVjr
Subject: [Intel-wired-lan] [PATCH v4 iwl-net 0/4] Fix E825 initialization
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

E825 products have incorrect initialization procedure, which may lead to
initialization failures and register values.

Fix E825 products initialization by adding correct sync delay, checking
the PHY revision only for current PHY and adding proper destination
device when reading port/quad.

In addition, E825 uses PF ID for indexing per PF registers and as
a primary PHY lane number, which is incorrect.

Karol Kolacinski (4):
  ice: Fix E825 initialization
  ice: Fix quad registers read on E825
  ice: Fix ETH56G FC-FEC Rx offset value
  ice: Add correct PHY lane assignment

 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   1 +
 drivers/net/ethernet/intel/ice/ice_common.c   |  45 +++
 drivers/net/ethernet/intel/ice/ice_common.h   |   1 +
 drivers/net/ethernet/intel/ice/ice_main.c     |   6 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c      |  23 +-
 drivers/net/ethernet/intel/ice/ice_ptp.h      |   4 +-
 .../net/ethernet/intel/ice/ice_ptp_consts.h   |   2 +-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 270 ++++++++++--------
 drivers/net/ethernet/intel/ice/ice_type.h     |   2 -
 9 files changed, 207 insertions(+), 147 deletions(-)

V3 -> V4: Removed not-related clean-up code
V2 -> V3: Removed net-next hunks from "ice: Fix E825 initialization",
          replaced lower/upper_32_bits calls with lower/upper_16_bits
          in "ice: Fix quad registers read on E825",
          improved ice_get_phy_lane_number function in "ice: Add correct
          PHY lane assignment"
V1 -> V2: Removed net-next hunks from "ice: Fix E825 initialization",
          whole "ice: Remove unnecessary offset calculation for PF
          scoped registers" patch and fixed kdoc in "ice: Fix quad
          registers read on E825"

base-commit: 278dfaa171a0061a341f6b5d44c2c9913a2b7fa8
-- 
2.39.3

