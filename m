Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6506764563F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Dec 2022 10:16:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4D6AE417BE;
	Wed,  7 Dec 2022 09:16:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4D6AE417BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670404560;
	bh=SYRl/cCdSUnHF9BK0ZUvXcejp+y8++UVGl97s3hPlyI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8/VczG3FItz4fIvV3OizdLXTLdF0SssXkmEY9lzHjRaxLyxDOI3XZpC9UhaeoLCw8
	 epOIAOkfgJ9SLBN0pKjB7COgCpC7j2Sc7t5hfu78DBItsyS3Lb0JxkATnPqLHb+9eE
	 dROnjYeaiKVSpsBmI9qlO3MLbk9f9xihopMAb9SlBXcoLoibaFVqv9nhDcsx1VuetK
	 FMubg7xeq/hDqW7gz7SkavQUCuCXunoQFH3FsDAQS/JwEOsJsKisd1Ghgxy7DfozlO
	 0av6jFL2UePF6nWnSs1aw9E4OFxwVa+tYI2HgUaWzPJKoPCTWv+lTyzM5cSw3lCpHp
	 3pQbkYEFbhi2A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u0vsxn1o1uHU; Wed,  7 Dec 2022 09:15:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 236F44176B;
	Wed,  7 Dec 2022 09:15:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 236F44176B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 22A441BF327
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Dec 2022 09:15:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F0E7840608
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Dec 2022 09:15:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F0E7840608
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ta31N-xHXFSa for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Dec 2022 09:15:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 65B46405EC
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 65B46405EC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Dec 2022 09:15:52 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 4D4A460C50;
 Wed,  7 Dec 2022 09:15:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 306DAC433D6;
 Wed,  7 Dec 2022 09:15:49 +0000 (UTC)
Date: Wed, 7 Dec 2022 11:15:46 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Yuan Can <yuancan@huawei.com>
Message-ID: <Y5BZwvttqgR2HBvF@unreal>
References: <20221207085502.124810-1-yuancan@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221207085502.124810-1-yuancan@huawei.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1670404550;
 bh=tiCuLh7ePXtppm4S+qJKNHvU9LhjpIATWhzzO5cPyBY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LEjqXpEUHXluvV5T7OLvwgsMDjvGcyJllfUT5dlW/dj0aeS44TA2kbZIoO4PDP0Sj
 S4om1ac9Ox7R56/56voZwJDJYw4wNT3laYn8odk4W+vkX+UVtw2dqBUJjXSbNcJAS4
 n82lS0cN1Upmip0720rKxzW2Vl9OASCP3h+Wqkl2ezxvNbYS+N/IBGN0WWo5woDKZ6
 0HqC6yu1RAnIPMyhZ9vTH9o5bDnhcsnDwzONQYw/GNWINFHr9SDX2TRwFRXP/oNpP4
 r90rCUK7GWwf+P3/xPP5eLr5/7sloBmnCKfHfcTyKTxUR8YqOglOYrKZ9MdJoKYPRc
 3j3tLIgqAFskQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=LEjqXpEU
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix potential memory leak in
 ice_gnss_tty_write()
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
Cc: karol.kolacinski@intel.com, intel-wired-lan@lists.osuosl.org,
 jesse.brandeburg@intel.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Dec 07, 2022 at 08:55:02AM +0000, Yuan Can wrote:
> The ice_gnss_tty_write() return directly if the write_buf alloc failed,
> leaking the cmd_buf.
> 
> Fix by free cmd_buf if write_buf alloc failed.
> 
> Fixes: d6b98c8d242a ("ice: add write functionality for GNSS TTY")
> Signed-off-by: Yuan Can <yuancan@huawei.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_gnss.c | 1 +
>  1 file changed, 1 insertion(+)
> 

Thanks,
Reviewed-by: Leon Romanovsky <leonro@nvidia.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
