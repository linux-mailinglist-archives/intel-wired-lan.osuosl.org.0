Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CFBFA87CBD5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Mar 2024 12:04:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A5CC7415E5;
	Fri, 15 Mar 2024 11:03:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dq9CqcOIZDoF; Fri, 15 Mar 2024 11:03:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C7102415EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710500637;
	bh=/c+bDUfYsIRvRTf6Ge76qPfm1RXLYdQZrDo3BJamEdc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=O8AcphyHLT6xiepdvMIrA3BNaC1jmDuEKwrff7ELBy1x1zY+sH0HZrdcqabLUiX4S
	 zPrXRSvBqC9c0Sr7i3SCsTsKRnv5u9ODIiIstbHrkIUw45LbG1OrrrtlzNfXswI8I4
	 8UBbZ01ztkoWLuVSEOuOvKZiw6AYWC0PH5EE0mjYobXNejgPdFqx+YWWu0ED/X+cfv
	 wjcq0pid0AQxW1PkO/X5OXoohSbm5iQTLhMlVQgRvybhi/3oWh1Dg+ghWaJ7IMNsej
	 Kbuhwls3hxvd63qdJLBBJuZh+PA28C/6vYl8SUbuJiNFV5elhoT6FHsbfK5r+Cp+Ui
	 EU1znEWvfSxXw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C7102415EC;
	Fri, 15 Mar 2024 11:03:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 593741BF976
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Mar 2024 11:03:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 448C160E6B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Mar 2024 11:03:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tc3wTSM77wss for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Mar 2024 11:03:53 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8B03F60E5D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8B03F60E5D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8B03F60E5D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Mar 2024 11:03:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11013"; a="5549429"
X-IronPort-AV: E=Sophos;i="6.07,128,1708416000"; 
   d="scan'208";a="5549429"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2024 04:03:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,128,1708416000"; d="scan'208";a="35761191"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmviesa002.fm.intel.com with ESMTP; 15 Mar 2024 04:03:52 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 Mar 2024 12:08:19 +0100
Message-ID: <20240315110821.511321-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710500633; x=1742036633;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jp05zdaPBy8QblvcBCHmZid5S/vi2Z39kiYDd/YOpZk=;
 b=DkCCVh3lyb7PZKxqvCMiblvjTA8JdKEFKRRgAYBW5QiDZhoV4M9oSwCB
 NLQWqKNQynCVgaXx85MXdaehhBrWGJl1I64YDE5+oIsE6uMHQC65ByBBA
 J6UV9MXh5Ci7CuJZLgSj6n5WOyrW1sqAkSCs+in1moj0WIMLr7ZTRvdbt
 6gvBtsP8RiIn9mwht6G9Tk+xQ5k3CxMDB0shgk6OczD6t+c3i32AgMg32
 MTUgepunpT+eacGJhLA3s7nCLOeQ5ez5HluUS7YbWsx+dQfiy3zc6/pTB
 a6NQGMJqVi2GcXhDzp23q17EhUmnwSBh9KGvBo2tuhSgL+Gt8JIVbC7+z
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DkCCVh3l
Subject: [Intel-wired-lan] [iwl-net v1 0/2] ice: two fixes for tc code
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
Cc: netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

Fix how ice driver is parsing tc filter. First is a fix to always add
match for src_vsi in case filter is added on VF. Second is removing the
flag check as it isn't needed and in some case can lead to a problem.

Michal Swiatkowski (2):
  ice: tc: check src_vsi in case of traffic from VF
  ice: tc: allow zero flags in parsing tc flower

 drivers/net/ethernet/intel/ice/ice_tc_lib.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

-- 
2.42.0

