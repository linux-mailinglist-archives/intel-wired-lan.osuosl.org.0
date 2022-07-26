Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F28B9581C87
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Jul 2022 01:44:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3D5BA40934;
	Tue, 26 Jul 2022 23:44:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3D5BA40934
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658879060;
	bh=oeAH7ZwYZHr6/uqtcbS441OkBIcx1jo5s6rIvd5RDh0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=11i/r3/GY7fse+p5gmTNbd0z91Eye4fbNm5uBRMJpiJgDEFUa+fDFTdRtgbFgn9hO
	 GCx89nWRw5M2sOaCYHRmMLnCLBWDhOPOZwgO2j3WWu0Voq9jF8lJu5Mv+l3eGHDe7M
	 tcny2Gz790pBfEwMLI6GverXqle+S+RbIPt02G3Q3jpUIu0h04dB/xElilXeY8etGs
	 5ZYTfrVLvT1ZHO5cno6qOzB5R3PK6EAgTmfRnGhC1CeWLYp7nnp9sphI9bzqBZdcLF
	 nfoIsGJSbC0k3L1R4oDZYzVkBjUqlSAGlIshnF4vDIyHu7s4hmocLGv39zTLX91J+Z
	 T3xOErzaErbVQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s7sVpcCHfBjC; Tue, 26 Jul 2022 23:44:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DB310408DE;
	Tue, 26 Jul 2022 23:44:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DB310408DE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 642711BF2CF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 23:44:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 31B3F4031D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 23:44:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 31B3F4031D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K3bameeKdA0c for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Jul 2022 23:44:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F167F40003
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F167F40003
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 23:44:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="313873675"
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200"; d="scan'208";a="313873675"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 16:44:09 -0700
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200"; d="scan'208";a="689649885"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.7])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 16:44:09 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 26 Jul 2022 16:43:51 -0700
Message-Id: <20220726234357.50610-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.37.1.208.ge72d93e88cb2
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658879051; x=1690415051;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OhJyHnOKLqRqtcaq6taLGccXrTy8gu/zR0H4KVHBFuA=;
 b=QbnkVL204VY//1LzxWkTLHDZ4lIs9CsJ3TC1da8WZClguiIn2SD7sS8P
 Lqa2qSlnwYOHAySk/IGA/f4uxiMZEYXo3EEfDue1Z9ebgXtdNyt+1izPk
 r6OX1O/U7go7TIkPPv4FZya5PYb1cgufHiMmnImcBk3JCVAei0f9lYhS7
 PAF6xh9Ew34ooSkqf89FyrLvv/q4jeqdRSyfE7nZe8SkhN8GO7IhRmA62
 /HRpq41wuhSxDW2+JMNbV+yy/6BMyAuFya9lxPsSVu9gIaSENZldWwMMp
 NkdEJ0qnnac0HdbQiKD1+GfHaNKc8OFUkTmvCO+M0Om8BkbcMqH0GaRqa
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QbnkVL20
Subject: [Intel-wired-lan] [net-next 0/6] ice: detect and report PTP
 timestamp issues
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

This series fixes a few small issues with the cached PTP Hardware Clock
timestamp used for timestamp extension. It also introduces extra checks to
help detect issues with this logic, such as if the cached timestamp is not
updated within the 2 second window.

This introduces a few statistics similar to the ones already available in
other Intel drivers, including tx_hwtstamp_skipped and tx_hwtstamp_timeouts.

It is intended to aid in debugging issues we're seeing with some setups
which might be related to incorrect cached timestamp values.

Jacob Keller (6):
  ice: set tx_tstamps when creating new Tx rings via ethtool
  ice: initialize cached_phctime when creating Rx rings
  ice: track Tx timestamp stats similar to other Intel drivers
  ice: track and warn when PHC update is late
  ice: re-arrange some static functions in ice_ptp.c
  ice: introduce ice_ptp_reset_cached_phctime function

 drivers/net/ethernet/intel/ice/ice_ethtool.c |   7 +
 drivers/net/ethernet/intel/ice/ice_lib.c     |   1 +
 drivers/net/ethernet/intel/ice/ice_ptp.c     | 751 ++++++++++---------
 drivers/net/ethernet/intel/ice/ice_ptp.h     |   9 +
 drivers/net/ethernet/intel/ice/ice_txrx.c    |   4 +-
 5 files changed, 435 insertions(+), 337 deletions(-)


base-commit: 5245eb4f3cf8ba1e9e0e6d58d810eceae9edc0c1
-- 
2.37.1.208.ge72d93e88cb2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
