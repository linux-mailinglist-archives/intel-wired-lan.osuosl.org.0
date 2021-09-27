Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D034E419CD7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Sep 2021 19:33:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 45C8C406BE;
	Mon, 27 Sep 2021 17:33:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gX5pI1as8IHV; Mon, 27 Sep 2021 17:33:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F057406BD;
	Mon, 27 Sep 2021 17:33:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AE65C1BF5F6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Sep 2021 17:33:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8E26181A30
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Sep 2021 17:33:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=infradead.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s-5QYxS-yxEk for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Sep 2021 17:33:04 +0000 (UTC)
X-Greylist: delayed 00:07:24 by SQLgrey-1.8.0
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8DF7181A39
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Sep 2021 17:33:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=nupAYdVd/L9EJ9TKD+Kr1KJXgckH0yIhskHZjtigLq4=; b=YCSbayd/IXfFev4BOg+sI0IMgf
 DGrnCgHR+/iiUZdxn9NT7LO54pxmHqPD2GisW2GT7+rjLh8AmMeG/GluK9DNrUGsIME0oDtFyCiiY
 lHfA8xtw40JH3jhlMPGbuQcITHQWUjXg18y/t7zAsvGnEzjrcmOoeP+o89BKhgjjNZc1PENEPh4D5
 R63dr0G1z9FIXV0dUX4HTUJxeMt8rYNPmhTCmpw8+pDdmVaEIQg4lpjM+Lk5qHfiXyw1ns2HMAVZ0
 4IDFKxKM1lzN0R55SVCvyBQr3pSFX0bdqjQ71HmZG2xauet9bifcAaqz6B62Y+OLuSsXDKtCHipNA
 fQ6KtviA==;
Received: from [2601:1c0:6280:3f0::aa0b]
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mUuUw-003chs-Vy; Mon, 27 Sep 2021 17:33:03 +0000
To: Arnd Bergmann <arnd@kernel.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
References: <20210927131730.1587671-1-arnd@kernel.org>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <938261c5-62c7-dc0d-d4bb-fd45f20063bf@infradead.org>
Date: Mon, 27 Sep 2021 10:33:02 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210927131730.1587671-1-arnd@kernel.org>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] igc: fix PTP dependency
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
Cc: Arnd Bergmann <arnd@arndb.de>, Vladimir Oltean <vladimir.oltean@nxp.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Kurt Kanzenbach <kurt@linutronix.de>, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Shannon Nelson <snelson@pensando.io>, Shiraz Saleem <shiraz.saleem@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/27/21 6:17 AM, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> The igc driver was accidentally left out of the Kconfig rework for PTP,
> it needs the same dependency as the others:
> 
> arm-linux-gnueabi-ld: drivers/net/ethernet/intel/igc/igc_main.o: in function `igc_tsync_interrupt':
> igc_main.c:(.text+0x1b288): undefined reference to `ptp_clock_event'
> arm-linux-gnueabi-ld: igc_main.c:(.text+0x1b308): undefined reference to `ptp_clock_event'
> arm-linux-gnueabi-ld: igc_main.c:(.text+0x1b8cc): undefined reference to `ptp_clock_event'
> arm-linux-gnueabi-ld: drivers/net/ethernet/intel/igc/igc_ethtool.o: in function `igc_ethtool_get_ts_info':
> 
> Fixes: e5f31552674e ("ethernet: fix PTP_1588_CLOCK dependencies")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Same patch is already merged in mainline.
Thanks.

(Sorry if someone receives my reply 2x. I had an email glitch.)

> ---
>   drivers/net/ethernet/intel/Kconfig | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
> index b0b6f90deb7d..ed8ea63bb172 100644
> --- a/drivers/net/ethernet/intel/Kconfig
> +++ b/drivers/net/ethernet/intel/Kconfig
> @@ -335,6 +335,7 @@ config IGC
>   	tristate "Intel(R) Ethernet Controller I225-LM/I225-V support"
>   	default n
>   	depends on PCI
> +	depends on PTP_1588_CLOCK_OPTIONAL
>   	help
>   	  This driver supports Intel(R) Ethernet Controller I225-LM/I225-V
>   	  family of adapters.
> 


-- 
~Randy
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
