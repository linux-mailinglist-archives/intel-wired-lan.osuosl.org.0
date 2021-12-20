Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B3647A9F2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Dec 2021 13:53:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A83FD409C0;
	Mon, 20 Dec 2021 12:53:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U9NwxOpVsUMO; Mon, 20 Dec 2021 12:53:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B7D5F409B6;
	Mon, 20 Dec 2021 12:53:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E03581BF3CC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Dec 2021 12:53:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D715B4059B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Dec 2021 12:53:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FNZb_YlLCL8I for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Dec 2021 12:53:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A39FC402E1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Dec 2021 12:53:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10203"; a="220833924"
X-IronPort-AV: E=Sophos;i="5.88,220,1635231600"; d="scan'208";a="220833924"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2021 04:53:43 -0800
X-IronPort-AV: E=Sophos;i="5.88,220,1635231600"; d="scan'208";a="520791165"
Received: from krausnex-mobl.ger.corp.intel.com (HELO [10.13.8.81])
 ([10.13.8.81])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2021 04:53:42 -0800
Message-ID: <e3219129-dd50-f8c6-986f-97ba05547d0d@linux.intel.com>
Date: Mon, 20 Dec 2021 14:53:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-US
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20211207112306.1290098-1-sasha.neftin@intel.com>
From: "Kraus, NechamaX" <nechamax.kraus@linux.intel.com>
In-Reply-To: <20211207112306.1290098-1-sasha.neftin@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v1 1/2] e1000e: Separate ADP board
 type from TGP
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
Cc: Kai-Heng Feng <kai.heng.feng@canonical.com>,
 Dima Ruinskiy <dima.ruinskiy@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/7/2021 13:23, Sasha Neftin wrote:
> We have the same LAN controller on different PCH's. Separate ADP board
> type from a TGP which will allow for specific fixes to be applied for
> ADP platforms.
> 
> Suggested-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
> Suggested-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/e1000e/e1000.h   |  4 ++-
>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 20 +++++++++++++
>   drivers/net/ethernet/intel/e1000e/netdev.c  | 33 +++++++++++----------
>   3 files changed, 40 insertions(+), 17 deletions(-)
> 
Tested-by: Nechama Kraus <nechamax.kraus@linux.intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
