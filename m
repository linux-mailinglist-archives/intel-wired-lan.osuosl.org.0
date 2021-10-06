Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BA862423DB1
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Oct 2021 14:24:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DD36583F60;
	Wed,  6 Oct 2021 12:23:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qrAoT75tgM4K; Wed,  6 Oct 2021 12:23:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF57C83E85;
	Wed,  6 Oct 2021 12:23:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 30F171BF42C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Oct 2021 12:23:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1DBD040163
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Oct 2021 12:23:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aTaaQt4fq_wh for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Oct 2021 12:23:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0E09E40100
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Oct 2021 12:23:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10128"; a="206790697"
X-IronPort-AV: E=Sophos;i="5.85,350,1624345200"; d="scan'208";a="206790697"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 05:23:51 -0700
X-IronPort-AV: E=Sophos;i="5.85,350,1624345200"; d="scan'208";a="478099426"
Received: from krausnex-mobl.ger.corp.intel.com (HELO [10.12.48.165])
 ([10.12.48.165])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 05:23:50 -0700
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20210922065449.3780338-1-sasha.neftin@intel.com>
From: "Kraus, NechamaX" <nechamax.kraus@linux.intel.com>
Message-ID: <1945444a-ed8a-d230-1334-3c2485ea2f94@linux.intel.com>
Date: Wed, 6 Oct 2021 15:23:48 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20210922065449.3780338-1-sasha.neftin@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1 1/2] e1000e: Separate TGP board
 type from SPT
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
Cc: Kai-Heng Feng <kai.heng.feng@canonical.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/22/2021 09:54, Sasha Neftin wrote:
> We have a same LAN controller on different PCH.
> Separate TGP board type from SPT will alllow apply specific fixes
> for TGP platforms.
> 
> Suggested-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/e1000e/e1000.h   |  4 +-
>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 20 +++++++++
>   drivers/net/ethernet/intel/e1000e/netdev.c  | 45 +++++++++++----------
>   3 files changed, 46 insertions(+), 23 deletions(-)
> 
Tested-by: Nechama Kraus <nechamax.kraus@linux.intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
