Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CA97D95A6BD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2024 23:36:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9380440113;
	Wed, 21 Aug 2024 21:36:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0l7ibgp6wl2Q; Wed, 21 Aug 2024 21:36:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8BEB940182
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724276210;
	bh=xic288aFBiOufj9X1OEwYFhAB3H9GR/fktGIVCHmCjU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=W5vyBpKwo4ObyGuUxMuMrED7d58x3HZn2/oCx3+cqQG9kY/Az0vrsLwQDuNzeUcEq
	 QV7i7pnopEfF1tCphgSKdVFKl7+V8e1zDT8hDalTPbxUm2tnawFT648sZsnuBF8oD1
	 ePwhFbvd5zkkrCbYSqbZ0muK9fFccI5lARF6HCOfqMUowfMg1PW3OFkfwKhsyoh7qg
	 P+YfuKE0gqk43Io4DWnd7F2RlYNLIrUg+4K367OzR+LMH8Qsrn3UTBBwmfNxolNus2
	 CoI8fQOS9Bpa1mcFxmY9kzziBFmmlEuzxQRV6+Zde4JKPoAbMW3x3COBzq9KB0P7T9
	 NBgnoQTAcG+UA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8BEB940182;
	Wed, 21 Aug 2024 21:36:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 90F351BF34C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 21:36:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7C46960850
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 21:36:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wP6Ux7Osq9Pk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Aug 2024 21:36:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 93D3F605C5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 93D3F605C5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 93D3F605C5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 21:36:47 +0000 (UTC)
X-CSE-ConnectionGUID: ZaHBUGq1RhStoeBD95cRcA==
X-CSE-MsgGUID: u611FAF7Td230tidksUbcw==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="34083808"
X-IronPort-AV: E=Sophos;i="6.10,165,1719903600"; d="scan'208";a="34083808"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 14:36:39 -0700
X-CSE-ConnectionGUID: bugj+qDySomfpUN6XsXw3Q==
X-CSE-MsgGUID: wjXeT6GXSZCZY2UkzDQ2+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,165,1719903600"; d="scan'208";a="98724613"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by orviesa001.jf.intel.com with ESMTP; 21 Aug 2024 14:36:36 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: netdev@vger.kernel.org
Date: Wed, 21 Aug 2024 23:32:16 +0200
Message-Id: <20240821213218.232900-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724276208; x=1755812208;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GiM+0ExQI9l2UFIsmfkehIGcth+Vvekiu0LRbZOTSMA=;
 b=dYc8pAIFlZxSlL2cqa+sdZkEb8Wx814j7r1sfOIKCeDpb2BjizH2qaAE
 SGSxF6t3wyARwxsHbLuGQ/a8PYN6+3uPFp3MXMiGHmJAo5UD2hijIiIzk
 xa2EhYqp5RorBG0MPtVmbUQi59zi8riMJtPLLEPCmEAqbZ3Cv/3jrpnUk
 HItRCzEhd/AV4JjPcVj3OTvxi1avIxLowTduc0QYTI6Ly/h+N2wX85Cci
 JqxtDKF7C05wrxHqhkl6xfbz3WSTiizW/gDGuTBWzFOVIVvnjJqqmnjZ7
 dkR8DirPcub5Xt5FRDJnR3W0ceSWWZUlH6cfNkiI+tSgjmh0tFI2ZvSBS
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dYc8pAIF
Subject: [Intel-wired-lan] [PATCH net-next v2 0/2] Add Embedded SYNC feature
 for a dpll's pin
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
Cc: jiri@resnulli.us, corbet@lwn.net, przemyslaw.kitszel@intel.com,
 donald.hunter@gmail.com, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>, edumazet@google.com,
 anthony.l.nguyen@intel.com, kuba@kernel.org, vadim.fedorenko@linux.dev,
 pabeni@redhat.com, davem@davemloft.net, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Introduce and allow DPLL subsystem users to get/set capabilities of
Embedded SYNC on a dpll's pin.

Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

Arkadiusz Kubalewski (2):
  dpll: add Embedded SYNC feature for a pin
  ice: add callbacks for Embedded SYNC enablement on dpll pins

 Documentation/driver-api/dpll.rst         |  21 ++
 Documentation/netlink/specs/dpll.yaml     |  24 +++
 drivers/dpll/dpll_netlink.c               | 130 ++++++++++++
 drivers/dpll/dpll_nl.c                    |   5 +-
 drivers/net/ethernet/intel/ice/ice_dpll.c | 230 +++++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_dpll.h |   1 +
 include/linux/dpll.h                      |  15 ++
 include/uapi/linux/dpll.h                 |   3 +
 8 files changed, 424 insertions(+), 5 deletions(-)


base-commit: d785ed945de6955361aafc2d540d9bb7c6a69a65
-- 
2.38.1

