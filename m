Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1559F812E7D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Dec 2023 12:25:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 98A9A6F638;
	Thu, 14 Dec 2023 11:25:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 98A9A6F638
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702553128;
	bh=r0jFMbN1/DCRqdXSplPqdruPTu2TFkbOQubhdLuO9rg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=lkIfcq4n2JLl9KXMir3nxhbFheh+2tIhinibZFTsti1Mf3oAlj3N1ePnI/HSJvJEL
	 tFQV51iIWn2Chku7aoy1io5fH7MlFAf3Zhbx+DZosVCpDrrwk3VxYFlVqgY65eGBg2
	 s4H/dEePg+vEGt1FVnxcp3OAD3WFsQiw2Vcjzk31Ao6GTHic87bhAI7U0GdRYT2lLp
	 +Me07Q+EtzHSi1QiYuZel/qv0yF3tCNiCFKQR8SNe78l1ANbJ5MEHRTPPTC6dR1lCP
	 JeTzm6bw/lcupeMlNdOgVm9esvh/LmJL3B5zmKb1vrSSQO0DsMw07uSHWpoNgEiXHC
	 dEjtXw1orZexA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CvdZA-jCyMT7; Thu, 14 Dec 2023 11:25:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 83FB360803;
	Thu, 14 Dec 2023 11:25:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 83FB360803
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AF5971BF2F0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 11:25:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7F129436F2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 11:25:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F129436F2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dqGXi5l4ngPU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Dec 2023 11:25:05 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 944DE4013C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Dec 2023 11:25:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 944DE4013C
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="393977387"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; d="scan'208";a="393977387"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 03:25:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="750503271"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; d="scan'208";a="750503271"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga006.jf.intel.com with ESMTP; 14 Dec 2023 03:25:02 -0800
Received: from lplachno-mobl.ger.corp.intel.com
 (lplachno-mobl.ger.corp.intel.com [10.249.145.51])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 2D0313A3C8;
 Thu, 14 Dec 2023 11:25:01 +0000 (GMT)
From: Lukasz Plachno <lukasz.plachno@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 14 Dec 2023 05:34:47 +0100
Message-Id: <20231214043449.15835-1-lukasz.plachno@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702553105; x=1734089105;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qWNU/qKUCy72Z2wZf+28srtB/TxNz/lfvuv54u997mQ=;
 b=mmnc/aKskNsxDUpqfyZL5N4mTrU9LVp1+zW9r7lgJ6e2KCqZERgtzENm
 0zMhrm4Bu7wj+4cGYiosSXQjKFr+MKt3FcMnHpkFHoT9Di9UUgdfr9egK
 EmFWfTwMnG3IRpr1gfhvo+OwFyEU/KpJxQcWfkGfbRSyb7uZ3C1B0qZv4
 OH6ZeZx22KX0U+D50K5m4FaoHKOHp7lZBz8sjkYUyDFUQSdSlxhB/Rg+U
 ej2+d3npEUzkOXQvm4JHyCY4c6joTBCo5UO+tz1PiuZSteVmdk0EeTxwk
 AqKnZxe+FMrzn4ZdQ2NZCgA0Ak/zRoUnE/tWkiZWNdA5Cl3YGGdhavke4
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mmnc/aKs
Subject: [Intel-wired-lan] [PATCH iwl-next v3 0/2] ice: Support flow
 director ether type filters
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
Cc: netdev@vger.kernel.org, Lukasz Plachno <lukasz.plachno@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ethtool allows creating rules with type=ether, add support for such
filters in ice driver.
Patch 1 allows extending ice_fdir_comp_rules() with handling additional
type of filters.

v3: fixed possible use of uninitialized variable "perfect_filter"
v2: fixed compilation warning by moving default: case between commits

Jakub Buchocki (1):
  ice: Implement 'flow-type ether' rules

Lukasz Plachno (1):
  ice: Remove unnecessary argument from ice_fdir_comp_rules()

 .../net/ethernet/intel/ice/ice_ethtool_fdir.c | 128 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_fdir.c     | 112 ++++++++-------
 drivers/net/ethernet/intel/ice/ice_fdir.h     |  11 ++
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 4 files changed, 205 insertions(+), 47 deletions(-)

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
