Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 173FA7BB6CD
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Oct 2023 13:43:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 487B56106B;
	Fri,  6 Oct 2023 11:43:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 487B56106B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696592637;
	bh=uM6Bz+3ScPg8wEvfeyQg9LTPUIE/UmZ16cJl570M08c=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=lQUSf2j52/ubWr6jOMXvr/6Bx1AweWMt9nsX0YzXXT1YPHMOgCtoFLqQ6jARRc2br
	 /C+c+tbBWLOZLaD1xC1wBFk2SxCjuJ2dh0XzWSHuUf3Uggau02JxoGMJGqrvG1J/PO
	 mXPodvnVyDQ0ajM3TqUBGuh5HQEhHevCNWtYEFwyZqoICy8lGlfNYfTezobp3lbJWD
	 iqc/6LnmvxIIi+30CCDzOZXLAkE+MruY6X+AhLd8o8WSOxmWKkWVNsLd6fe9ixVeHZ
	 tnivb0ayN9k8ODZ2sF+0VDenL75gadEY/4JQ+839VKC6OUNHg31/lM5jSwu+n4DWHa
	 s4d7piZQtfIUw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aOak5t8gT8K8; Fri,  6 Oct 2023 11:43:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 34F9F60E97;
	Fri,  6 Oct 2023 11:43:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 34F9F60E97
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CB46B1BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 11:43:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B0ACF83B8E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 11:43:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B0ACF83B8E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OyKBbqUas6i5 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Oct 2023 11:43:48 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B340C83B5E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 11:43:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B340C83B5E
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="470003214"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="470003214"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 04:43:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="925942697"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="925942697"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orsmga005.jf.intel.com with ESMTP; 06 Oct 2023 04:43:44 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: netdev@vger.kernel.org
Date: Fri,  6 Oct 2023 13:40:56 +0200
Message-Id: <20231006114101.1608796-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696592628; x=1728128628;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8+VFG3kqWXCncCIWSoHFiD83/KcC/DPAqlO1RUiJDcE=;
 b=lNT1AJalA1oJAbvEGbd28ot1tkAgfuenAViTSeTAOzoAJ3bGdBEfwvo1
 oOuz1uwbocLbfhOjGKnbOmxpsSB6UKLTYgXrwYq4nhVFM/hIaT27QHsiC
 Jdtsh/Q8+e7LZDbUQXUw97BkIQjhU73D8D5bloXsHJVXNxO7ID/7/0zCN
 E7GsVHlzDkrMWF6wWrCSSwENcrt2Zf1CvrYb93avIHDL55bt4cdjCnr3e
 5kN4KNpj2I37yKc9M4ZZ8iVGQqdoGMvmPMpLEWoGqqbYLRUK+QSja4BVp
 fMCpOqzO7q/b67FmIWaZmapWmoLj3nzTKQrtx76mdiDVbK5IlbXoYGKCR
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lNT1AJal
Subject: [Intel-wired-lan] [PATCH net-next v3 0/5] dpll: add phase-offset
 and phase-adjust
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
Cc: jiri@resnulli.us, corbet@lwn.net, intel-wired-lan@lists.osuosl.org,
 linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 anthony.l.nguyen@intel.com, kuba@kernel.org, vadim.fedorenko@linux.dev,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Improve monitoring and control over dpll devices.
Allow user to receive measurement of phase difference between signals on
pin and dpll (phase-offset).
Allow user to receive and control adjustable value of pin's signal
phase (phase-adjust).

v2->v3:
- do not increase do version of uAPI header as it is not needed

v1->v2:
- improve handling for error case of requesting the phase adjust set
- align handling for error case of frequency set request with the
approach introduced for phase adjust

Arkadiusz Kubalewski (5):
  dpll: docs: add support for pin signal phase offset/adjust
  dpll: spec: add support for pin-dpll signal phase offset/adjust
  dpll: netlink/core: add support for pin-dpll signal phase
    offset/adjust
  ice: dpll: implement phase related callbacks
  dpll: netlink/core: change pin frequency set behavior

 Documentation/driver-api/dpll.rst         |  53 ++++-
 Documentation/netlink/specs/dpll.yaml     |  33 +++-
 drivers/dpll/dpll_netlink.c               | 180 +++++++++++++++--
 drivers/dpll/dpll_nl.c                    |   8 +-
 drivers/dpll/dpll_nl.h                    |   2 +-
 drivers/net/ethernet/intel/ice/ice_dpll.c | 224 +++++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_dpll.h |  10 +-
 include/linux/dpll.h                      |  18 ++
 include/uapi/linux/dpll.h                 |   8 +-
 9 files changed, 514 insertions(+), 22 deletions(-)

-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
