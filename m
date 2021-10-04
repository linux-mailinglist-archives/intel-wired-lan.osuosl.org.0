Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B558442097F
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Oct 2021 12:48:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4B6FF40737;
	Mon,  4 Oct 2021 10:48:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6XuQzCKiALfK; Mon,  4 Oct 2021 10:48:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D5A90405FA;
	Mon,  4 Oct 2021 10:48:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A55A51BF2CE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Oct 2021 10:48:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9F75F84BBE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Oct 2021 10:48:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eSExKmii84kX for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Oct 2021 10:48:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 061A584B7B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Oct 2021 10:48:12 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0385A61222;
 Mon,  4 Oct 2021 10:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1633344492;
 bh=LwPkg6HgEFttm4+gkwWZjXErILpWGuuCAZcf1MpIwS4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wrt2hvndxzmT8HkKcIbY/DQR9urzzLn7YZZmHdgWj2q7F7GRk1W8Psov4DWPbj1Il
 gCs0yz6OgC+9VApnsFf0gT5P93jn26AV07UIiLKnjAvpj5qh16ht0iFyy2GVuvpNMh
 u6AEyPCj7DwImwzuU2yEpTyYHbqk5JDWWbvDF+SU=
Date: Mon, 4 Oct 2021 12:48:10 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Andre Tomt <andre@tomt.net>
Message-ID: <YVrb6tqBvuF87Ghj@kroah.com>
References: <20210927170233.453060397@linuxfoundation.org>
 <20210927170235.491648102@linuxfoundation.org>
 <0599f364-c9cc-31af-e500-89778f0b566c@tomt.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0599f364-c9cc-31af-e500-89778f0b566c@tomt.net>
Subject: Re: [Intel-wired-lan] [PATCH 5.14 058/162] igc: fix build errors
 for PTP
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
Cc: Sasha Levin <sashal@kernel.org>, Randy Dunlap <rdunlap@infradead.org>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Oct 04, 2021 at 06:15:56AM +0200, Andre Tomt wrote:
> On 27.09.2021 19:01, Greg Kroah-Hartman wrote:
> > From: Randy Dunlap <rdunlap@infradead.org>
> > 
> > [ Upstream commit 87758511075ec961486fe78d7548dd709b524433 ]
> > 
> > When IGC=y and PTP_1588_CLOCK=m, the ptp_*() interface family is
> > not available to the igc driver. Make this driver depend on
> > PTP_1588_CLOCK_OPTIONAL so that it will build without errors.
> > 
> > Various igc commits have used ptp_*() functions without checking
> > that PTP_1588_CLOCK is enabled. Fix all of these here.
> > 
> > Fixes these build errors:
> > 
> > ld: drivers/net/ethernet/intel/igc/igc_main.o: in function `igc_msix_other':
> > igc_main.c:(.text+0x6494): undefined reference to `ptp_clock_event'
> > ld: igc_main.c:(.text+0x64ef): undefined reference to `ptp_clock_event'
> > ld: igc_main.c:(.text+0x6559): undefined reference to `ptp_clock_event'
> > ld: drivers/net/ethernet/intel/igc/igc_ethtool.o: in function `igc_ethtool_get_ts_info':
> > igc_ethtool.c:(.text+0xc7a): undefined reference to `ptp_clock_index'
> > ld: drivers/net/ethernet/intel/igc/igc_ptp.o: in function `igc_ptp_feature_enable_i225':
> > igc_ptp.c:(.text+0x330): undefined reference to `ptp_find_pin'
> > ld: igc_ptp.c:(.text+0x36f): undefined reference to `ptp_find_pin'
> > ld: drivers/net/ethernet/intel/igc/igc_ptp.o: in function `igc_ptp_init':
> > igc_ptp.c:(.text+0x11cd): undefined reference to `ptp_clock_register'
> > ld: drivers/net/ethernet/intel/igc/igc_ptp.o: in function `igc_ptp_stop':
> > igc_ptp.c:(.text+0x12dd): undefined reference to `ptp_clock_unregister'
> > ld: drivers/platform/x86/dell/dell-wmi-privacy.o: in function `dell_privacy_wmi_probe':
> > 
> > Fixes: 64433e5bf40ab ("igc: Enable internal i225 PPS")
> > Fixes: 60dbede0c4f3d ("igc: Add support for ethtool GET_TS_INFO command")
> > Fixes: 87938851b6efb ("igc: enable auxiliary PHC functions for the i225")
> > Fixes: 5f2958052c582 ("igc: Add basic skeleton for PTP")
> > Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
> > Cc: Ederson de Souza <ederson.desouza@intel.com>
> > Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
> > Cc: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> > Cc: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
> > Cc: "David S. Miller" <davem@davemloft.net>
> > Cc: Jakub Kicinski <kuba@kernel.org>
> > Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
> > Cc: intel-wired-lan@lists.osuosl.org
> > Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> > Signed-off-by: David S. Miller <davem@davemloft.net>
> > Signed-off-by: Sasha Levin <sashal@kernel.org>
> > ---
> >   drivers/net/ethernet/intel/Kconfig | 1 +
> >   1 file changed, 1 insertion(+)
> > 
> > diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
> > index 82744a7501c7..c11d974a62d8 100644
> > --- a/drivers/net/ethernet/intel/Kconfig
> > +++ b/drivers/net/ethernet/intel/Kconfig
> > @@ -335,6 +335,7 @@ config IGC
> >   	tristate "Intel(R) Ethernet Controller I225-LM/I225-V support"
> >   	default n
> >   	depends on PCI
> > +	depends on PTP_1588_CLOCK_OPTIONAL
> >   	help
> >   	  This driver supports Intel(R) Ethernet Controller I225-LM/I225-V
> >   	  family of adapters.
> > 
> 
> PTP_1588_CLOCK_OPTIONAL does not exist in 5.14, so this effectively disables
> the igc driver completely when applied to stable as-is.

Now dropped from the queue, again :)

thanks,

greg k-h
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
