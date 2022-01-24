Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F5D8498713
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Jan 2022 18:38:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E80160EC9;
	Mon, 24 Jan 2022 17:38:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TBpz3J1g_28S; Mon, 24 Jan 2022 17:38:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2623C60A84;
	Mon, 24 Jan 2022 17:38:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 13B531BF487
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jan 2022 17:37:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 018E784BC9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jan 2022 17:37:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FGqO5B2NJ2uH for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Jan 2022 17:37:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7899284BC8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Jan 2022 17:37:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643045822; x=1674581822;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FUZC/e5xkZGN112lLRWuyS219UiLmaVqnCFLWTG+TYk=;
 b=ZpKhtT2BS1GKl/bG+HYZIzDBFCS6B0JESRkcbABNc7fEP/EVKDcR1WKT
 sr0Sl1EsxfmBe7DsVqcQXPz+Jo8AE/KMNB1lC2bJM4Z1Zm2BWmug409K4
 y4KFQwLbyqQm9dmHvd6HS3Ya9nYRgtXSxXKrph/iCgi7OCBhTbfz82mj/
 YeNH4StPne/l/0BdQa5AT/vA4henhvkcWHeJq9ZaFKBXBHcufUfRKhAab
 GFPwdr+XP3JVxlqzqAd+SFSDcA5T+UjjrpRpT5XU6c/yBv4ZwsEmTgDtT
 i1VBmDXysXsqe19hVWYljy8pyHWsxeM3LPhlL3txmoLU0LURpLGAsgTNG Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10236"; a="332456394"
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="332456394"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 09:37:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="673697723"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga001.fm.intel.com with ESMTP; 24 Jan 2022 09:36:59 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 20OHawV0011179; Mon, 24 Jan 2022 17:36:58 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 24 Jan 2022 18:35:19 +0100
Message-Id: <20220124173519.739323-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220124173116.739083-6-alexandr.lobakin@intel.com>
References: <20220124173116.739083-1-alexandr.lobakin@intel.com>
 <20220124173116.739083-6-alexandr.lobakin@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] ice: Add support for inner etype in switchdev
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
Cc: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alexander Lobakin <alexandr.lobakin@intel.com>
Date: Mon, 24 Jan 2022 18:31:16 +0100

> From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>
> 
> Enable support for adding TC rules that filter on the inner
> EtherType field of tunneled packet headers.
> 
> Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>
> Reviewed-by: Alexander Lobakin <alexandr.lobakin@intel.com>

That one was included by mistake, sorry :c

> ---
>  drivers/net/ethernet/intel/ice/ice_protocol_type.h |   2 +
>  drivers/net/ethernet/intel/ice/ice_switch.c        | 272 ++++++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c        |  15 +-
>  3 files changed, 277 insertions(+), 12 deletions(-)
> 

--- 8< ---

> -- 
> cgit 1.2.3-1.el7

Thanks,
Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
