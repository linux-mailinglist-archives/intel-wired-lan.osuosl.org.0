Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98D8035B217
	for <lists+intel-wired-lan@lfdr.de>; Sun, 11 Apr 2021 09:03:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 15ED84028A;
	Sun, 11 Apr 2021 07:03:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L2TcT1Jpyzpj; Sun, 11 Apr 2021 07:03:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 763F94028D;
	Sun, 11 Apr 2021 07:03:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1DB0D1BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Apr 2021 07:03:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 153AF83B39
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Apr 2021 07:03:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c9UI3Y-X6JOM for <intel-wired-lan@lists.osuosl.org>;
 Sun, 11 Apr 2021 07:03:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CA3CB83AD6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Apr 2021 07:03:08 +0000 (UTC)
IronPort-SDR: 6hlUicBt9yWGd8SEPRC2e3HNxD2dszlsdcpyKvvtnxU+ZZNDHXT0cS9Px+l1m3ay0sHmMDqh2X
 a4ban/PAKNkQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9950"; a="279288287"
X-IronPort-AV: E=Sophos;i="5.82,213,1613462400"; d="scan'208";a="279288287"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2021 00:03:07 -0700
IronPort-SDR: 2nNaNkCfvTe4SQwToiEfKCkRH90xB0OqIvOO0845/5NU5Fs7eZzyYCAfr9WUcF6P5RTtkz5u9R
 8mZH3onBiDhQ==
X-IronPort-AV: E=Sophos;i="5.82,213,1613462400"; d="scan'208";a="423336057"
Received: from dfuxbrux-desk.ger.corp.intel.com (HELO [10.12.48.255])
 ([10.12.48.255])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2021 00:03:05 -0700
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org,
 anna.kostyukovsky@intel.com
References: <20210324080531.2051963-1-sasha.neftin@intel.com>
From: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <439041d0-ec08-0dbe-70dd-c5770c76b1b9@linux.intel.com>
Date: Sun, 11 Apr 2021 10:03:04 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210324080531.2051963-1-sasha.neftin@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] igc: Fix overwrites return
 value
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
Cc: Dan Carpenter <dan.carpenter@oracle.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 24/03/2021 10:05, Sasha Neftin wrote:
> drivers/net/ethernet/intel/igc/igc_i225.c:235 igc_write_nvm_srwr()
> warn: loop overwrites return value 'ret_val'
> 
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_i225.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
