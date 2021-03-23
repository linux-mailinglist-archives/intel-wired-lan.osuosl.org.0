Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C6E34690A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Mar 2021 20:29:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD38E4050C;
	Tue, 23 Mar 2021 19:29:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sa-NZhH3MLrL; Tue, 23 Mar 2021 19:29:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8850E40500;
	Tue, 23 Mar 2021 19:29:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 37A741C1135
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Mar 2021 19:29:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2613460882
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Mar 2021 19:29:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jr-tNliEFVTI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Mar 2021 19:29:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 85541606D8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Mar 2021 19:29:22 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id D4C23619C0;
 Tue, 23 Mar 2021 19:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1616527762;
 bh=VFfthgrx5eg5s7ViJTgggc7NvEWm00e/YlW73Py92H8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=E5gLsn81PDKuJBowb2D3xFoo9pj68DMGA5H7CFoXuDyxYPH2V5HoUy86gIhNG8mN6
 MqHwzY85AX8RDp7gQ7zW9P0eTMZWktgz8qLmhXfcB+jJGg2/T02Pp7jGsvS6vwBm+/
 anh+5F+U7FDh4Kr6eZTAJyKcuXTzGBu//Kznz+Jt6BNn5noZq5CxZgJc8c7wH/i/wd
 iwjuCVqfwFVldmvRUt7TI0lPuAukVl5CX95K/Wf9NLbzugO8gN+P8qxxHdoslQKChZ
 zkUzjJYHL3i88qgqhv8TJdnt8YxTf3kIYauCFLTklBV0ekorAiwWYcQvaXO3TIbWmL
 uJtZ8li3WRZxw==
Date: Tue, 23 Mar 2021 14:29:20 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20210323192920.GA597326@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210322161822.1546454-3-vinicius.gomes@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH next-queue v3 2/3] igc: Enable PCIe PTM
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
Cc: netdev@vger.kernel.org, richardcochran@gmail.com, linux-pci@vger.kernel.org,
 bhelgaas@google.com, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Mar 22, 2021 at 09:18:21AM -0700, Vinicius Costa Gomes wrote:
> In practice, enabling PTM also sets the enabled_ptm flag in the PCI
> device, the flag will be used for detecting if PTM is enabled before
> adding support for the SYSOFFSET_PRECISE ioctl() (which is added by
> implementing the getcrosststamp() PTP function).

I think you're referring to the "pci_dev.ptm_enabled" flag.  I'm not
sure what the connection to this patch is.  The SYSOFFSET_PRECISE
stuff also seems to belong with some other patch.

This patch merely enables PTM if it's supported (might be worth
expanding Precision Time Measurement for context).

> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index f77feadde8d2..04319ffae288 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -12,6 +12,8 @@
>  #include <net/pkt_sched.h>
>  #include <linux/bpf_trace.h>
>  #include <net/xdp_sock_drv.h>
> +#include <linux/pci.h>
> +
>  #include <net/ipv6.h>
>  
>  #include "igc.h"
> @@ -5792,6 +5794,10 @@ static int igc_probe(struct pci_dev *pdev,
>  
>  	pci_enable_pcie_error_reporting(pdev);
>  
> +	err = pci_enable_ptm(pdev, NULL);
> +	if (err < 0)
> +		dev_err(&pdev->dev, "PTM not supported\n");
> +
>  	pci_set_master(pdev);
>  
>  	err = -ENOMEM;
> -- 
> 2.31.0
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
