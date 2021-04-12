Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4981235D2BC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Apr 2021 23:52:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7346D40598;
	Mon, 12 Apr 2021 21:52:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AuHofizgz5NJ; Mon, 12 Apr 2021 21:52:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F15B40568;
	Mon, 12 Apr 2021 21:52:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 079D11BF33E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Apr 2021 21:52:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EA06C60658
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Apr 2021 21:52:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MnIoc81--BC8 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Apr 2021 21:52:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A0D7260613
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Apr 2021 21:52:31 +0000 (UTC)
IronPort-SDR: Wbgb/C0fTS6TLvbLZY/9GdPrvWwD2sJ4eJNH8m4Rya93Z1RWscQnY0C8cYd4h//3kqzHq8P3XK
 V/JQLNipHw1w==
X-IronPort-AV: E=McAfee;i="6200,9189,9952"; a="214756495"
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; d="scan'208";a="214756495"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2021 14:52:30 -0700
IronPort-SDR: Ugajkcg4kpyTgldYpmDYHk1wsdq5uz1gdmgJUT5RCDufOQ7/9YWsf2RVDDq2Rorp/Qk2GWDif4
 bHd0BlTbXuog==
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; d="scan'208";a="532037371"
Received: from jbrandeb-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.209.61.192])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2021 14:52:29 -0700
Date: Mon, 12 Apr 2021 14:52:29 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: kerneljasonxing@gmail.com
Message-ID: <20210412145229.00003e5d@intel.com>
In-Reply-To: <20210412065759.2907-1-kerneljasonxing@gmail.com>
References: <20210412065759.2907-1-kerneljasonxing@gmail.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] i40e: fix the panic when running bpf
 in xdpdrv mode
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
Cc: songliubraving@fb.com, kafai@fb.com, hawk@kernel.org, daniel@iogearbox.net,
 netdev@vger.kernel.org, ast@kernel.org, andrii@kernel.org,
 Shujin Li <lishujin@kuaishou.com>, yhs@fb.com, kpsingh@kernel.org,
 kuba@kernel.org, bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net, linux-kernel@vger.kernel.org,
 Jason Xing <xingwanli@kuaishou.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

kerneljasonxing@gmail.com wrote:

> From: Jason Xing <xingwanli@kuaishou.com>
> 
> Re: [PATCH] i40e: fix the panic when running bpf in xdpdrv mode

Please use netdev style subject lines when patching net kernel to
indicate which kernel tree this is targeted at, "net" or "net-next"
[PATCH net v2] i40e: ...

> Fix this by add more rules to calculate the value of @rss_size_max which

Fix this panic by adding ...

> could be used in allocating the queues when bpf is loaded, which, however,
> could cause the failure and then triger the NULL pointer of vsi->rx_rings.

trigger

> Prio to this fix, the machine doesn't care about how many cpus are online
> and then allocates 256 queues on the machine with 32 cpus online
> actually.
> 
> Once the load of bpf begins, the log will go like this "failed to get
> tracking for 256 queues for VSI 0 err -12" and this "setup of MAIN VSI
> failed".
> 
> Thus, I attach the key information of the crash-log here.
> 
> BUG: unable to handle kernel NULL pointer dereference at
> 0000000000000000
> RIP: 0010:i40e_xdp+0xdd/0x1b0 [i40e]
> Call Trace:
> [2160294.717292]  ? i40e_reconfig_rss_queues+0x170/0x170 [i40e]
> [2160294.717666]  dev_xdp_install+0x4f/0x70
> [2160294.718036]  dev_change_xdp_fd+0x11f/0x230
> [2160294.718380]  ? dev_disable_lro+0xe0/0xe0
> [2160294.718705]  do_setlink+0xac7/0xe70
> [2160294.719035]  ? __nla_parse+0xed/0x120
> [2160294.719365]  rtnl_newlink+0x73b/0x860
> 
> Signed-off-by: Jason Xing <xingwanli@kuaishou.com>
> Signed-off-by: Shujin Li <lishujin@kuaishou.com>

if you send to "net" - I suspect you should supply a Fixes: line, above
the sign-offs.
In this case however, this bug has been here since the beginning of the
driver, but the patch will easily apply, so please supply

Fixes: 41c445ff0f48 ("i40e: main driver core")

> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 521ea9d..4e9a247 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -11867,6 +11867,7 @@ static int i40e_sw_init(struct i40e_pf *pf)
>  {
>  	int err = 0;
>  	int size;
> +	u16 pow;
>  
>  	/* Set default capability flags */
>  	pf->flags = I40E_FLAG_RX_CSUM_ENABLED |
> @@ -11885,6 +11886,11 @@ static int i40e_sw_init(struct i40e_pf *pf)
>  	pf->rss_table_size = pf->hw.func_caps.rss_table_size;
>  	pf->rss_size_max = min_t(int, pf->rss_size_max,
>  				 pf->hw.func_caps.num_tx_qp);
> +
> +	/* find the next higher power-of-2 of num cpus */
> +	pow = roundup_pow_of_two(num_online_cpus());
> +	pf->rss_size_max = min_t(int, pf->rss_size_max, pow);
> +

The fix itself is fine, and is correct as far as I can tell, thank you
for sending the patch!

>  	if (pf->hw.func_caps.rss) {
>  		pf->flags |= I40E_FLAG_RSS_ENABLED;
>  		pf->alloc_rss_size = min_t(int, pf->rss_size_max,


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
