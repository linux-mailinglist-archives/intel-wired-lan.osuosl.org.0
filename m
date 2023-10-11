Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 020367C4FCD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Oct 2023 12:15:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 376D661008;
	Wed, 11 Oct 2023 10:15:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 376D661008
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697019330;
	bh=yzI68s2KMrnIA/zuCZmyZBughLt02jVCjcMc5JGEG1w=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=zJcYmXcSwSPSMzLnKVgfNYHu/eCC12xGqXPKTH4daU40UkTzUQ2m9U+JAuBQhMcoI
	 uWFYwedyS8MDk914wASMDV1WT+jzkGsL0JEN1fqJHD/Rctme9JonQtuxkvss2urqi7
	 A3k6NVcQWLQbdr9i4kPDmp0bLbMSOms4az7ixCxJTI1niU+M8Y/tGaPPeT7/f1Scma
	 j7zJMiLyURv1J9TZ/RB1KTfpQrNuP2k8ZgdAn2nt+4JzLN7G+X5YvGczMYBe2RfmKj
	 AAyCtbyO7264CkHFIR6/kfIIOabkFmGLWU8r2HaADzgazQme74O/wG1rJtCQ5Aib5F
	 VSOCcUr+d75lQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J84vea5RAwUh; Wed, 11 Oct 2023 10:15:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BBCBD60B5A;
	Wed, 11 Oct 2023 10:15:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BBCBD60B5A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CBD5C1BF855
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 10:15:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A40B060B6C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 10:15:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A40B060B6C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 16r4QTjlqrPn for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Oct 2023 10:15:23 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E69FB60B5A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 10:15:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E69FB60B5A
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="415672138"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="415672138"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 03:15:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="897575858"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="897575858"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmsmga001.fm.intel.com with ESMTP; 11 Oct 2023 03:13:32 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: netdev@vger.kernel.org
Date: Wed, 11 Oct 2023 12:12:31 +0200
Message-Id: <20231011101236.23160-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697019322; x=1728555322;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pNva1qBYGCKL7fsDb7y9EZtGrJ70CECWmkZU6WgokUw=;
 b=dwzMe0NXr+YI1C+RxmlT8EOFX3G6xgQPX1VkEZ+Ucb7wDeJAmA3WxAlq
 aFmA8OuXJOJjCWhDYqjwGFKbcAVKyVErWdrKFte8BLE3Ug/e5qx1ym3mP
 h0B5ALSl8ZvcILF3Fp+QI3wBsoyYJx9MZAt7a/xlud8T5m5oYlBE38jvd
 8UpgYlZUJPVv0tY1h4C9bppeR7N/NBfGBkro2Y65hykoI1bMxXbjQNln8
 N5poIOP4+Zghs6K8La47+AK6KUaC5ZiMVaZmIpfHrASOT5nIUIK7kUnHu
 Z4Xjkt5eLyXxXS7t/nGFx17XtVhNg3RxyxovBXTCEfjUZFHO5oB7VsqqG
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dwzMe0NX
Subject: [Intel-wired-lan] [PATCH net-next v5 0/5] dpll: add phase-offset
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
Allow user to receive measurement of phase difference between signals
on pin and dpll (phase-offset).
Allow user to receive and control adjustable value of pin's signal
phase (phase-adjust).

v4->v5:
- rebase series on top of net-next/main, fix conflict - remove redundant
  attribute type definition in subset definition

v3->v4:
- do not increase do version of uAPI header as it is not needed (v3 did
  not have this change)
- fix spelling around commit messages, argument descriptions and docs
- add missing extack errors on failure set callbacks for pin phase
  adjust and frequency
- remove ice check if value is already set, now redundant as checked in
  the dpll subsystem

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

 Documentation/driver-api/dpll.rst         |  53 +++++-
 Documentation/netlink/specs/dpll.yaml     |  30 +++
 drivers/dpll/dpll_netlink.c               | 188 +++++++++++++++++-
 drivers/dpll/dpll_nl.c                    |   8 +-
 drivers/dpll/dpll_nl.h                    |   2 +-
 drivers/net/ethernet/intel/ice/ice_dpll.c | 220 +++++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_dpll.h |  10 +-
 include/linux/dpll.h                      |  18 ++
 include/uapi/linux/dpll.h                 |   6 +
 9 files changed, 517 insertions(+), 18 deletions(-)

-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
