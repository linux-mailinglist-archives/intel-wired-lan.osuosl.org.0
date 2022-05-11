Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9677F522E7F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 May 2022 10:35:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0766940B42;
	Wed, 11 May 2022 08:35:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7hMO7TO4StT4; Wed, 11 May 2022 08:35:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F06B4408DF;
	Wed, 11 May 2022 08:35:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7D51C1BF5DC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 08:35:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6371041705
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 08:35:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EqNFDW2Vdeyt for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 May 2022 08:35:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5972D415C6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 08:35:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652258119; x=1683794119;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=GHG6kNgy1m2xwDfEZoIotwGa6Uyef7TRatvlMVt9d1E=;
 b=BZ1Zbw69KNW7EQAC8yOO98bzi4S2aAYnlkv83hMrCbui+wO8m6Fdo4go
 uzlIrACQhLrSGIR/GZimRGT4SJpJAypg/Y9uvJvmHBPWjMNbW4UgH9HzN
 x4mgBGQR6QlOjMMUJe3fkqYNEldr/iGGNmiz4hEgOlIhAZm2lTl4VeifG
 aG2JCip/xeCQH3qvc7bZNplqgoIdrXWAFSXv0lBxWNNxkqd4vULcWEMjz
 qBCHlE0jQ6JCK1Orz+mb453GS6rZ15wYVD6GQx/KP8dqSjhXqObDtn6cs
 s5booZR0hvlbvrxdoG0xTcyy4QW87SQX93Mhwc1c3IFIGP5EkaHL3yPpB Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10343"; a="356056158"
X-IronPort-AV: E=Sophos;i="5.91,216,1647327600"; d="scan'208";a="356056158"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 01:35:18 -0700
X-IronPort-AV: E=Sophos;i="5.91,216,1647327600"; d="scan'208";a="566074640"
Received: from unknown (HELO s240.localdomain) ([10.237.94.19])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 01:35:16 -0700
From: Piotr Skajewski <piotrx.skajewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 11 May 2022 10:32:15 +0200
Message-Id: <20220511083215.9833-1-piotrx.skajewski@intel.com>
X-Mailer: git-send-email 2.35.0.rc0
In-Reply-To: <20220425131758.4749-1-jeffd@silicom-usa.com>
References: <20220425131758.4749-1-jeffd@silicom-usa.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 1/1] ixgbe: correct SDP0 check of SFP
 cage for X550
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

Hi Jeff,

Our analysis (using 0x15c4) showed that every time the cage is empty SDP
indicates 0 and when cage is full it indicates 1. No matter what
transceiver we used, from those we have. The same happens even we don't
use the device which fall into crosstalk fix e.g 0x15c2.

When proposed patch was applied, the devices are no longer able to
negotiate speed. So basically this patch should not be accepted.

NACK

BR,
Piotr
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
