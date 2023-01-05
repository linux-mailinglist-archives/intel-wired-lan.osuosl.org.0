Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9023E65ED8A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Jan 2023 14:46:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1CFA840C40;
	Thu,  5 Jan 2023 13:46:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1CFA840C40
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672926410;
	bh=5WiSLesAaf+tp9jLZi9GSJYcoTODwjJr69hVgAOd3V4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=WSLORQlH8qGomD4HuOI/9kpiXWU9qgCn0SYNK/tQPDWlx/eVwVgCIZj45mxW+2N59
	 XatCVgB/uCwZSV/vVP6Kb0ViC3OPDqoAFYRj08vS/WJleui4o9R9tMzUI0Mu/OgYEc
	 gMTNBlwb47GhFQrURLT8Y6uzRilZt1DHs+v61NHqiPJnNHIPxpwzLV5iGFV+8+l7W+
	 BzvHbGKTJO3k0mohj+p3FmRQPeO0PNe/CvKpQAh6YDlkHjMkpO642d652Zz7UqEwcX
	 TW7Mc6yLbTqunq74m35vhYpGrGV52I9dYemexxpdqmNuJDd5lDl0NmaNQGAcKE9TQA
	 /HAVR25RkOcTg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HS5YnhitN6sC; Thu,  5 Jan 2023 13:46:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0B14540125;
	Thu,  5 Jan 2023 13:46:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0B14540125
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 559181BF409
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jan 2023 13:46:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2E0D641990
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jan 2023 13:46:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E0D641990
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FLbMl0fULOvc for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Jan 2023 13:46:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1F42E41852
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1F42E41852
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jan 2023 13:46:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="305708086"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="305708086"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 05:46:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="657526815"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="657526815"
Received: from gklab-18-202.igk.intel.com (HELO s048.nql.local)
 ([10.102.18.202])
 by fmsmga007.fm.intel.com with ESMTP; 05 Jan 2023 05:46:41 -0800
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  5 Jan 2023 14:49:41 +0100
Message-Id: <20230105134946.66077-1-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672926403; x=1704462403;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sKSZ0tO/VReH3ZZwyMDQZWR98mxYyH5UaE59IpP7dxc=;
 b=IH1jsjdLCSg9+FqNtArrzm9nLpRd/znHc4q5NGrDFkdJNsfvRvnIK4A9
 guhQ+d55US4d/MBtxYUnv0vrJ3+DFLAPVuShNpDMA+PfxH+56A2GucBKN
 b13LDox2T4M4bTJBaGI0H0N6zF+fV/DJ2Jc6mtcN1W8whiGuIj5oT6Mr2
 5Q4/XmD2dRLe/8+nNqP6JSM9UNUf3uJlYERtNW/zahNeES+HNwJOIQDTX
 5SbcVJ7rIQVh3KwfgRwYpd7pswwepLxQ8FZsmt4KHUWB3cz02FxFXL+Lo
 jDY4eIrZPubhN+s7PEmL5MdDq38NWT+4RZ71bp+1zaigqFW8Lt/NavJEF
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IH1jsjdL
Subject: [Intel-wired-lan] [PATCH net-next v4 0/5] i40e_status removal series
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series contains a refactoring that removes i40e_status
values from i40e driver, and replaces them with standard
kernel error values.

Jan Sokolowski (5):
  i40e: Remove unused i40e status codes
  i40e: Remove string printing for i40e_status
  i40e: use int for i40e_status
  i40e: remove i40e_status
  i40e: use ERR_PTR error print in i40e messages

---
v2: Previous version didn't include cover letter, and had
a problem where one patch was erroneously not sent to
intel-wired-lan mailing list.

v3: Fixed build problems found in v2, and reformatted
the patch to conform to checkpatch here applicable,
as not all lines could be fixed without introducing other
checkpatch warnings. 

v4: Rebased to current head, and added a new patch
in series to adress a comment received in previous
version. The patch adds human-readable error messages.

---

 drivers/net/ethernet/intel/i40e/i40e.h        |    8 +-
 drivers/net/ethernet/intel/i40e/i40e_adminq.c |  117 +-
 drivers/net/ethernet/intel/i40e/i40e_adminq.h |    3 +-
 drivers/net/ethernet/intel/i40e/i40e_alloc.h  |   22 +-
 drivers/net/ethernet/intel/i40e/i40e_client.c |   12 +-
 drivers/net/ethernet/intel/i40e/i40e_common.c | 1146 ++++++++---------
 drivers/net/ethernet/intel/i40e/i40e_dcb.c    |   80 +-
 drivers/net/ethernet/intel/i40e/i40e_dcb.h    |   28 +-
 drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c |   16 +-
 drivers/net/ethernet/intel/i40e/i40e_ddp.c    |   16 +-
 .../net/ethernet/intel/i40e/i40e_debugfs.c    |   12 +-
 drivers/net/ethernet/intel/i40e/i40e_diag.c   |   18 +-
 drivers/net/ethernet/intel/i40e/i40e_diag.h   |    4 +-
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |   65 +-
 drivers/net/ethernet/intel/i40e/i40e_hmc.c    |   75 +-
 drivers/net/ethernet/intel/i40e/i40e_hmc.h    |   46 +-
 .../net/ethernet/intel/i40e/i40e_lan_hmc.c    |  148 +--
 .../net/ethernet/intel/i40e/i40e_lan_hmc.h    |   34 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c   |  459 +++----
 drivers/net/ethernet/intel/i40e/i40e_nvm.c    |  292 ++---
 drivers/net/ethernet/intel/i40e/i40e_osdep.h  |    1 -
 .../net/ethernet/intel/i40e/i40e_prototype.h  |  643 ++++-----
 drivers/net/ethernet/intel/i40e/i40e_ptp.c    |    2 +-
 drivers/net/ethernet/intel/i40e/i40e_status.h |   78 --
 drivers/net/ethernet/intel/i40e/i40e_type.h   |    1 -
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |  271 ++--
 26 files changed, 1689 insertions(+), 1908 deletions(-)
 delete mode 100644 drivers/net/ethernet/intel/i40e/i40e_status.h

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
