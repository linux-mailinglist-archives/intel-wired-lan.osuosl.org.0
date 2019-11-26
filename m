Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E0B10A468
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Nov 2019 20:20:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C9E9085F59;
	Tue, 26 Nov 2019 19:20:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OF82Xac4k9HA; Tue, 26 Nov 2019 19:20:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1720185F69;
	Tue, 26 Nov 2019 19:20:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E1A321BF346
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2019 19:19:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DDBE085F4E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2019 19:19:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bBvM62fDY5GO for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Nov 2019 19:19:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6428581195
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2019 19:19:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 11:19:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,246,1571727600"; d="scan'208";a="410084399"
Received: from vcostago-desk1.jf.intel.com (HELO vcostago-desk1)
 ([10.54.70.26])
 by fmsmga006.fm.intel.com with ESMTP; 26 Nov 2019 11:19:57 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
In-Reply-To: <20191122020224.1102649-3-vinicius.gomes@intel.com>
References: <20191122020224.1102649-1-vinicius.gomes@intel.com>
 <20191122020224.1102649-3-vinicius.gomes@intel.com>
Date: Tue, 26 Nov 2019 11:20:16 -0800
Message-ID: <877e3mcumn.fsf@linux.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next-queue PATCH v1 2/4] igc: Add support
 for RX timestamping
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

Vinicius Costa Gomes <vinicius.gomes@intel.com> writes:

> This adds support for timestamping received packets.
>
> It is based on the i210, as many features of i225 work the same way.
> The main difference from i210 is that i225 has support for choosing
> the timer register to use when timestamping packets. Right now, we
> only support using timer 0. The other difference is that i225 stores
> two timestamps in the receive descriptor, right now, we only retrieve
> one.
>
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---

[...]

> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
> index fa345adad5c9..a5b7e5e05a89 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -283,12 +283,21 @@
>  #define IGC_RCTL_RDMTS_HALF	0x00000000 /* Rx desc min thresh size */
>  #define IGC_RCTL_BAM		0x00008000 /* broadcast enable */
>  
> +/* Split Replication Receive Control */
> +#define IGC_SRRCTL_TIMESTAMP		0x04000

I made a mistake here, it should read "0x40000000" or BIT(30). It's
causing timestamps to only be accessed via the registers, instead of via
the descriptors. Will send a v2 soon.


Cheers,
--
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
