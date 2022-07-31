Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 02734585DA7
	for <lists+intel-wired-lan@lfdr.de>; Sun, 31 Jul 2022 07:34:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5D9F4831E3;
	Sun, 31 Jul 2022 05:34:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5D9F4831E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659245649;
	bh=G321hccGhTQCAIcF7iQhE9IJzpIxk3qpYhWFzhTQxWE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=g9P/kX9y32zLCikBqimpx1T376aaFfGNXlOJVRGDsfgZORAY+kEQvDJavcBvGuhsW
	 p3czwqUkKmiOuAYUJsin6hZUbEs+h1ArzvK3b9BrvmCBulmVMR1r1H7lit5cPSCwBF
	 vNqXdD770W9mqr2AWWlAPQV0XtQqxzvz7ULhaQgXN9VqdnOnD4fTg6+fNh4fNEhGN7
	 MJRVBz2+Imvql2rGpX3KhYME4waNiYaRnMBO130xiQtCRoUFcRlraDl2orlyjARG0+
	 Ycm5016rqakruxUDHM0TjaPQcFN4uHxnyk0CoHdXgK6rZzn4jiOu7JSMemqcRoIuEQ
	 7Ai6fNzNKKwaQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OpmLb0bbtx-b; Sun, 31 Jul 2022 05:34:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 48A0382E14;
	Sun, 31 Jul 2022 05:34:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 48A0382E14
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3653F1BF377
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Jul 2022 05:34:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 100A360BBE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Jul 2022 05:34:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 100A360BBE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cAasJfbNg571 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 31 Jul 2022 05:34:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9208360B43
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9208360B43
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Jul 2022 05:34:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10424"; a="287726191"
X-IronPort-AV: E=Sophos;i="5.93,205,1654585200"; d="scan'208";a="287726191"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2022 22:34:00 -0700
X-IronPort-AV: E=Sophos;i="5.93,205,1654585200"; d="scan'208";a="660746522"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.12.74])
 ([10.13.12.74])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2022 22:33:59 -0700
Message-ID: <ad6e8731-a6af-71f5-c7ea-fedf6d815fe2@linux.intel.com>
Date: Sun, 31 Jul 2022 08:33:57 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20220726143625.2691487-1-sasha.neftin@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20220726143625.2691487-1-sasha.neftin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659245642; x=1690781642;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=STbPjh+Zk/NI5acJnUD+W1cMHzYjU9GiwIzm0QVbtHs=;
 b=P9sYMH7ndKBmtaHNVECF/5qisnBSujxi/qr84cu9g0+5GwaMGhQ10w3m
 hlVt/Wi8+wD0k1igQpljLUUMGeMbg9OUETQJ3GEg1P+uC20CLTC2gFZMy
 7VNEoJclCZ0zomc+DGHlNk7wi+jvpe01PUUIro7IuahrBBQluenANE549
 ckFiqdJuE4qSiwt2vvnlFSHLtvF+5AJWtdzy68fTyzhMnoH/I4OkWa0Z3
 2QlwU8i9BxXLlFgxA6KQI6ahGLjrzVnh+//XtyKtYtenljgEAl8buQao/
 gYCXx5Ri8V54O8uX0rsC/hMBUyHrAdZfNBSfBuL7d9PatrBbOQck1Jv/v
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=P9sYMH7n
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] e1000e: Separate MTP board
 type from ADP
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/26/2022 17:36, Sasha Neftin wrote:
> We have the same LAN controller on different PCH's. Separate MTP board
> type from an ADP which will allow for specific fixes to be applied for MTP
> platforms.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/e1000e/e1000.h   |  4 +++-
>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 20 ++++++++++++++++++++
>   drivers/net/ethernet/intel/e1000e/netdev.c  | 17 +++++++++--------
>   3 files changed, 32 insertions(+), 9 deletions(-)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
