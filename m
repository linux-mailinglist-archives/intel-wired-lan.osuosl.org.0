Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B15BF645CD5
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Dec 2022 15:45:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5391781F5A;
	Wed,  7 Dec 2022 14:45:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5391781F5A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670424311;
	bh=7ZbRrb6doYddgNJL+/NwFvTmYQAFwUuUM6aradA/zzg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=SvQe/VH9tGgVwdA3i+vg47BoQzEy+bXXVEhJm/wswoAsNrgaO3XZIOu9nir4KTLnf
	 aX3Y158sDXc2+JeanVKsBRi0MiobxJWA8QaDZmcVOwMLmk0bj7LOw9YMs1Do4upgfW
	 sjzAWKIZj7Rak+0W5hYJ9oUn2pg1IgUpyHTXWxrsXTCDxtI2HWdZyM823C2NPRTtdT
	 CKcX3LaGhy5fqPdpbJfPdrTJf8LChGostw9t/5TWa4JMnwS+X2NytKzjW1/yV6WL8k
	 jPnpzaBMnmuh7VwhSdYABvkOenRpGHAf9bXhDKAtKoayxi+rpJ8LB5YbUPHkY6mN7L
	 8jQwzhJfrXgvQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E05vAJk49mbF; Wed,  7 Dec 2022 14:45:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5C1EB81F59;
	Wed,  7 Dec 2022 14:45:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5C1EB81F59
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D31181BF488
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Dec 2022 14:45:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AA56460D78
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Dec 2022 14:45:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA56460D78
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CWbFIFyCG2kR for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Dec 2022 14:45:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A97660792
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9A97660792
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Dec 2022 14:45:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="381198204"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="381198204"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 06:45:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="735416100"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="735416100"
Received: from s240.igk.intel.com (HELO s048.nql.local) ([10.102.18.202])
 by FMSMGA003.fm.intel.com with ESMTP; 07 Dec 2022 06:45:01 -0800
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  7 Dec 2022 15:47:56 +0100
Message-Id: <20221207144800.1257060-1-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670424303; x=1701960303;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=H0PVxlzOZOdxAIrnE+Ebs6fdjeCZT9OqbdgG0pfIrVs=;
 b=kXxN4P5aRcK799+gh313E19K4wouV65CyN3I31fglHp1CXsRB/fmmR5W
 4OBgOOwsIkT/H6jzCvL9xyvKhk/GcoykX1B59CXi0HdwUKhMpX7C5wN5+
 oGkmYP1eAMQKPEEUefG9XY0AmoypFXcbZi1gqd4KZSJeNNQH6cD+c7qCl
 bkp0g4bCcnYJ0qGnsEveizaWITJOULQc+4eLIkkpWAzAmcYw/83FM7bsE
 zXhpsVYTyt2/hV2IzZmZmHYUhRFnKy84LmyQhInQullE8limQsjpZKh+9
 Xccq90ekk3pfmY1gPEpUifhbV3DvtFopOCr2fPM/2QnMempVtzUv9LMx5
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kXxN4P5a
Subject: [Intel-wired-lan] [PATCH net-next v3 0/4] i40e_status removal series
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

Jan Sokolowski (4):
  i40e: Remove unused i40e status codes
  i40e: Remove string printing for i40e_status
  i40e: use int for i40e_status
  i40e: remove i40e_status

---
v2: Previous version didn't include cover letter, and had
a problem where one patch was erroneously not sent to
intel-wired-lan mailing list.

v3: Fixed build problems found in v2, and reformatted
the patch to conform to checkpatch here applicable,
as not all lines could be fixed without introducing other
checkpatch warnings. 
---

 drivers/net/ethernet/intel/i40e/i40e.h        |    6 +-
 drivers/net/ethernet/intel/i40e/i40e_adminq.c |  117 +-
 drivers/net/ethernet/intel/i40e/i40e_adminq.h |    3 +-
 drivers/net/ethernet/intel/i40e/i40e_alloc.h  |   22 +-
 drivers/net/ethernet/intel/i40e/i40e_client.c |   12 +-
 drivers/net/ethernet/intel/i40e/i40e_common.c | 1088 +++++++----------
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
 drivers/net/ethernet/intel/i40e/i40e_main.c   |  450 +++----
 drivers/net/ethernet/intel/i40e/i40e_nvm.c    |  292 ++---
 drivers/net/ethernet/intel/i40e/i40e_osdep.h  |    1 -
 .../net/ethernet/intel/i40e/i40e_prototype.h  |  593 +++++----
 drivers/net/ethernet/intel/i40e/i40e_ptp.c    |    2 +-
 drivers/net/ethernet/intel/i40e/i40e_status.h |   78 --
 drivers/net/ethernet/intel/i40e/i40e_type.h   |    1 -
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |  271 ++--
 26 files changed, 1620 insertions(+), 1858 deletions(-)
 delete mode 100644 drivers/net/ethernet/intel/i40e/i40e_status.h

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
