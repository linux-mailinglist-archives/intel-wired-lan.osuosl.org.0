Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 607D074E296
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jul 2023 02:36:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F95B61058;
	Tue, 11 Jul 2023 00:36:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8F95B61058
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689035807;
	bh=5taz9tAxrpCWEiocuY/zcol1sFoyDYhl0qAyXQF9334=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=WKs8GeFGgDnGG30wjVP1CjbQjTNiMDQNMn5qx6/BrqjjWQUKWyvR/8rh9Ak7N0ndp
	 a+qZICtUbys4XVd4K8BLJtIRC0H0Apjc536iZG3MnnqTfSKZfugmeHZkDW7x3ceXOP
	 vKpVj+7mAwlayd8spa2oLoXIKUwKj742E8k5xxVItpt/2yf0cb9lIMNKIJ9Y5Jwk9Q
	 lP40AKw9I7rfrPwMVsGWsfAvt7m832BJQxTrfy/jzpkpM4p+EDV+GOGBN7DNZWZNZ2
	 oaWBmdj4LES6fb0ZU/TxHM6A11FtlHe8qwC8f/5hNVViniiDqR8N1MzynQVryisZq7
	 UH/khzxguLSYQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ed_MTQCcXy_y; Tue, 11 Jul 2023 00:36:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5D1E360EEE;
	Tue, 11 Jul 2023 00:36:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5D1E360EEE
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D922F1BF955
 for <intel-wired-lan@osuosl.org>; Tue, 11 Jul 2023 00:36:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B042981F93
 for <intel-wired-lan@osuosl.org>; Tue, 11 Jul 2023 00:36:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B042981F93
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ziuMgp8Q0RiT for <intel-wired-lan@osuosl.org>;
 Tue, 11 Jul 2023 00:36:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3A81681F8E
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3A81681F8E
 for <intel-wired-lan@osuosl.org>; Tue, 11 Jul 2023 00:36:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="344811028"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="344811028"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 17:36:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="724222548"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="724222548"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by fmsmga007.fm.intel.com with ESMTP; 10 Jul 2023 17:36:20 -0700
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Tue, 11 Jul 2023 08:34:51 +0800
Message-Id: <20230711003453.9856-1-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689035799; x=1720571799;
 h=from:to:cc:subject:date:message-id;
 bh=hbMkni3BpDH0r6xzH+qf589HBAu2kUw1B0z2mb8o0x4=;
 b=PZEHxqTB06904bRj35Grkl8QtrCGrOX6LG771gwCn96KjIa+8GbsIScW
 hjLljYHUmN6CVvyCAqJE9BRT7Xvffjoxjo4RMr5uxtsdN5tUM258bqV3V
 yzyBGiS6+iBzT+/X3AfOeecm+5W8hxMVkTVWrAtTYQ3p8k2D62hVBbu5/
 TcqUVHlkX0okzbpKRGwqxqV6D2MS9iJntDHDoVEj4814wF9yl7CSKWUAp
 VfaXVsD62RGBWpr7G43CCoSp+70IkZLV1vjSK05waDVL1AUicNa+GYoff
 Q4JMOhT6KpT6wNod8iKiErsCwm6K03VS156R/2uuDl4a0jNnAVkihBTyk
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PZEHxqTB
Subject: [Intel-wired-lan] [PATCH iwl-net v2 0/2] Enhance the tx-usecs
 coalesce setting implementation
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
Cc: anthony.l.nguyen@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The current tx-usecs coalesce setting implementation in the driver code is
improved by this patch series. The implementation of the current driver code
may have previously been a copy of the legacy code i210.

Patch 1:
Allow the user to see the tx-usecs colease setting's current value when using
the ethtool command. The previous value was 0.

Patch 2:
Give the user the ability to modify the tx-usecs colease setting's value.
Previously, it was restricted to rx-usecs.

V1 -> V2:
- Split the patch file into two, like Anthony suggested.

Muhammad Husaini Zulkifli (2):
  igc: Expose tx-usecs coalesce setting to user
  igc: Modify the tx-usecs coalesce setting

 drivers/net/ethernet/intel/igc/igc_ethtool.c | 46 +++++++++++++++-----
 1 file changed, 34 insertions(+), 12 deletions(-)

--
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
