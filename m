Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E008511B7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Feb 2024 12:03:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E1FD140ADB;
	Mon, 12 Feb 2024 11:03:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N4dteOX9thkO; Mon, 12 Feb 2024 11:03:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0B75340AB9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707735817;
	bh=thC81A7DNFN883K0suoxoOFymmOUH2l4+bO0QWL5JCQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Q8uKltMUnv1W0/KVc3QK2xS4CBmtKkYkW1jhF+OOhnyR+/BfHmW92B7zHTAG6pu+P
	 NPJoXYdPsBWCuWgUDArt10BjzSRoz+92iZperu5LiS1kxPG5Q5AJxknTyofPmkqDv9
	 CITlzWBbzkN4mVaJHaQ3yGmYw5KKDTMwqyzsiWIhqHOD2SoKKLITCfzm7ozRMy4yhX
	 t87zww72Zqikmdnog+A/h28Ca7VYYHQrfBRpsofMQZRgbkBPCn/0YiRdVLYL34yAeD
	 +wk611AuRRuy4nRje56nf+3sRQiIqxEX6uNI+vsCvymq/LdA7cDOGmqzR8JbOt18Ym
	 43rjzYGKF5sfQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0B75340AB9;
	Mon, 12 Feb 2024 11:03:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2BB051BF408
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Feb 2024 11:03:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1773060E41
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Feb 2024 11:03:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MKJsCP3vrAgl for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Feb 2024 11:03:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=lukasz.plachno@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 40AC060E05
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 40AC060E05
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 40AC060E05
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Feb 2024 11:03:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10981"; a="1831226"
X-IronPort-AV: E=Sophos;i="6.05,263,1701158400"; 
   d="scan'208";a="1831226"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2024 03:03:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,263,1701158400"; 
   d="scan'208";a="7210921"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa003.jf.intel.com with ESMTP; 12 Feb 2024 03:03:29 -0800
Received: from lplachno-mobl.ger.corp.intel.com
 (lplachno-mobl.ger.corp.intel.com [10.237.140.88])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id ACC56135F7;
 Mon, 12 Feb 2024 11:03:26 +0000 (GMT)
From: Lukasz Plachno <lukasz.plachno@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 12 Feb 2024 12:03:07 +0100
Message-Id: <20240212110307.12704-1-lukasz.plachno@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707735813; x=1739271813;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=05Aq5i2ZpuWuLwfOfJcQmAVl42UYen4yCGuByyVY9uY=;
 b=eyPWfMI9R+J7IIwNbiGLtFa7DhiHCCX6ekULXpa0FTpUaobRHEOy8blX
 zUvRUgWQfuRTk+t8EbiHlGXlnJa4mOvTlD98JWH6GL+pF1plCLylgp6+E
 g2wr0CJtOC0DHSAsnri2QFhYmvezaZ7oQq9ArTPgSIIStS+ljzYRw0os5
 jqop0lr1r2OwS0KIH7Gm48O7XRw3zLmUGS3raZy5ytlB/ohF+5TFeFCEJ
 ovk83Gfao9UrRURcCQJgL37tfqFRjJTkBPWQRfI7QBd9muI0Bb2mPIyRx
 dZM21bBo0ZtYiWsrPgquvktSmgbJqwB0ZFy5YkRmVZ80FFacpBsJJnWnZ
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eyPWfMI9
Subject: [Intel-wired-lan] [PATCH iwl-next v7 0/2] ice: Support flow
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
Cc: pmenzel@molgen.mpg.de, brett.creeley@amd.com, netdev@vger.kernel.org,
 aleksander.lobakin@intel.com, Lukasz Plachno <lukasz.plachno@intel.com>,
 horms@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ethtool allows creating rules with type=ether, add support for such
filters in ice driver.
Patch 1 allows extending ice_fdir_comp_rules() with handling additional
type of filters.

v7: removed 0 initialization of static const array (omitted by error in v6)
v6: removed ice_fdir_eth and reused ethhdr, removed 0 initialization
    of static const array
v5: added missing documentation for parameter introduced in V4,
    extended commit message for patch adding flow-type ether rules support
v4: added warning explaining that masks other than broadcast and unicast
    are not supported, added check for empty filters
v3: fixed possible use of uninitialized variable "perfect_filter"
v2: fixed compilation warning by moving default: case between commits

Jakub Buchocki (1):
  ice: Implement 'flow-type ether' rules

Lukasz Plachno (1):
  ice: Remove unnecessary argument from ice_fdir_comp_rules()

 .../net/ethernet/intel/ice/ice_ethtool_fdir.c | 130 +++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_fdir.c     | 112 ++++++++-------
 drivers/net/ethernet/intel/ice/ice_fdir.h     |   5 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 4 files changed, 201 insertions(+), 47 deletions(-)

-- 
2.34.1

