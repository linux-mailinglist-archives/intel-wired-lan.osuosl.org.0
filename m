Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 767FB7FEDA6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Nov 2023 12:16:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A4B7A6F5B5;
	Thu, 30 Nov 2023 11:16:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A4B7A6F5B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701342986;
	bh=49g52ystYkzfFvZHjecl/AtyhYZ7HZ2fRtmKa3jyrV4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=4eBnTK/oxVp3JlQzy1poBX3a7GQo7rbL9XDN5RHG1yjOeQQeUgF27jvy6G3N11VAn
	 /Okdjs1u5vnecsgkXj/bN8WrOkQksP5ZoI3El+JAzy/lDx30JljsdA4r87IYj6vuR7
	 a+uI1Dx4B+YfB01tnN4CopAU6BdxtMxm0owCvMd3FXrzYvTRWIBatYijzrc5E42F5a
	 +5IlHf/EFPuM2gLqHNn9wwZV2nrwYWm/36A2w24bKQjoh947RPjuPCJQs9zhrbu8q7
	 n53x8u8w+9N0A5lekg9Oi7iact2J8VeYqHEffF3NGlin/kGw1ZnfisRl7gfnemwjD0
	 ePvB/GT2Uygkg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uDqyoa7uHdhb; Thu, 30 Nov 2023 11:16:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 852476F4D2;
	Thu, 30 Nov 2023 11:16:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 852476F4D2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BA9D31BF83B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 11:16:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9B49E41DED
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 11:16:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B49E41DED
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eJUV1QVdff-h for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Nov 2023 11:16:20 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E700E41DA7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 11:16:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E700E41DA7
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="6531876"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; 
   d="scan'208";a="6531876"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2023 03:15:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="17368578"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa001.jf.intel.com with ESMTP; 30 Nov 2023 03:15:57 -0800
Received: from lplachno-mobl.ger.corp.intel.com
 (lplachno-mobl.ger.corp.intel.com [10.249.155.228])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 9CAA236C2E;
 Thu, 30 Nov 2023 11:15:55 +0000 (GMT)
From: Lukasz Plachno <lukasz.plachno@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 30 Nov 2023 06:55:38 +0100
Message-Id: <20231130055540.12692-1-lukasz.plachno@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701342980; x=1732878980;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QrC+N8aSOytjnaeUp531WJirg9VO1KVhCmnXU1UohDU=;
 b=jDirY7A/KPO+YR49YJrvdoGTzrn6fAa54YD9bwgHjwtDFiNcIv1/G9Yq
 bGVoRCCQdR3UFEtfoodoXv1nLlC6ZYKSos1dhPQl8N8waz/vVjkNyzrh9
 KW/uMWUznxaYoVvFdlxFTcTOw8L0p+WpFOd0KfOFL66h+eC+HcDRjkmSv
 U/EqahzK1wnt/xHASX4fG1dL3tLmEZvrcKhhWUsdPybpeJRIQhQXiO2Km
 WahnuA4JCaQtUjri5CYTG7RQU+AcMN+fKmiBYJcjXtXcF/7swZegU9vT3
 e6MvpOX7ngHHxag/1givlWQaOYhxQvCvZln/VuRBXSIYP4uLfR7ETkW4a
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jDirY7A/
Subject: [Intel-wired-lan] [PATCH iwl-next 0/2] ice: Support flow director
 ether type filters
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
Cc: Lukasz Plachno <lukasz.plachno@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ethtool allows creating rules with type=ether, add support for such
filters in ice driver.
Patch 1 allows extending ice_fdir_comp_rules() with handling additional
type of filters.

Jakub Buchocki (1):
  ice: Implement 'flow-type ether' rules

Lukasz Plachno (1):
  ice: Remove unnecessary argument from ice_fdir_comp_rules()

 .../net/ethernet/intel/ice/ice_ethtool_fdir.c | 126 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_fdir.c     | 112 +++++++++-------
 drivers/net/ethernet/intel/ice/ice_fdir.h     |  11 ++
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 4 files changed, 204 insertions(+), 46 deletions(-)

-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
