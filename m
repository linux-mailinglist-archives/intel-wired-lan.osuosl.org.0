Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GGpcOtfCz2lH0QYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 15:38:31 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0DD394957
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 15:38:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D4A9A60A5A;
	Fri,  3 Apr 2026 13:38:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mZNa9nL27bcJ; Fri,  3 Apr 2026 13:38:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5DAC160A43
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775223509;
	bh=k/+LSme+79ctNKimbMMFnmmAovxDGBizgyq+djaSN7Q=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cvBbeCoGkyrZ9KLyyHygk8ID9Pa9GrOOPlX51mswUlbr70T7AnWFNk5pO0rulWVpL
	 IYiZp0+K3pxwCKifUohXoUVnWT+x9Ghrkvnae5fwkfUxR2aJgCgRxxJaZMOD7BTXnf
	 KQjOk0xy6jr3+AxY8N7qxgQ0q2U9TKOvv+snHXsd/dTGiidj5o6NKAL86dOiVplyCj
	 qXNExKsF1VPRFdP0pdu34rs2YEDlXjVj9vhVNiX9E0EoAFQMe+1ehlgesGfrze4v3N
	 4AdR37qIDfrFAhQfK2jb4Ryger5MtTBZdmB23oO1Lik5GR2aw7Atx9MFbg7q5H80Or
	 EdIPEh2U6iEZA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5DAC160A43;
	Fri,  3 Apr 2026 13:38:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 771E51A9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 13:38:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 601FA40F52
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 13:38:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p7EgWhI-sD6i for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Apr 2026 13:38:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2CE4C40F30
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2CE4C40F30
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2CE4C40F30
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 13:38:25 +0000 (UTC)
Received: from x1 (202.223.13.160.dy.iij4u.or.jp [160.13.223.202])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 633DcFdq062611
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Fri, 3 Apr 2026 22:38:17 +0900 (JST) (envelope-from kohei@enjuk.jp)
Date: Fri, 3 Apr 2026 22:38:15 +0900
From: Kohei Enju <kohei@enjuk.jp>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org
Message-ID: <ac_Bo2Ra7UuvXe6e@x1>
References: <20260327073046.134085-1-aleksandr.loktionov@intel.com>
 <20260327073046.134085-7-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260327073046.134085-7-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=k/+LSme+79ctNKimbMMFnmmAovxDGBizgyq+djaSN7Q=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:Message-ID:To:Subject:Date;
 s=rs20251215; t=1775223498; v=1;
 b=FDE/G9D7JJl4VSsAOhvGAFpJVw7bHO1056Z0d+k4elD1mhAja/S7Oy4EWssR13Vp
 P9OOn7VJSnrvVgeVBn6iEOfXI2NtdQY8CDaKY/LJPBWsveg1bfhqB7X+eaNjH0sf
 z5x8LHzvgR3sZu/ca1Cnr61Yqxb2Dfgk/IP/pVzJZIdhzye8EWa7HSGgLXyNC/zV
 2TpNPPKuxwXmlHx4TTCQqhuhWDKzspYaaqDFre4fvsObGaqhZUGRoe6cCKfZfIUk
 ile1nYSeDBMRaSjzF3aMoZ7k8PjYk+WDUlshcXXRopx1+5rQRVxvqh8Q280Jsba7
 tIQAhrhnQLPGiz11mGK5TQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=FDE/G9D7
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ixgbe: replace GFP_ATOMIC
 with GFP_KERNEL in ixgbe_fcoe_ddp_setup()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [-0.11 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[enjuk.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim];
	FORGED_SENDER(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 6C0DD394957
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 03/27 08:30, Aleksandr Loktionov wrote:
> From: Sebastian Basierski <sebastianx.basierski@intel.com>
> 
> ixgbe_fcoe_ddp_setup() is always called from process context (FCoE
> offload setup paths) and never from an atomic context.  Using
> GFP_ATOMIC is therefore unnecessarily restrictive and wastes memory
> allocator headroom that is reserved for genuine atomic callers.
> Replace the dma_pool_alloc() flag with GFP_KERNEL.
> 
> Signed-off-by: Sebastian Basierski <sebastianx.basierski@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
> index 011fda9..7fa0971 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
> @@ -193,7 +193,7 @@ static int ixgbe_fcoe_ddp_setup(struct net_device *netdev, u16 xid,
>  	}
>  
>  	/* alloc the udl from per cpu ddp pool */
> -	ddp->udl = dma_pool_alloc(ddp_pool->pool, GFP_ATOMIC, &ddp->udp);
> +	ddp->udl = dma_pool_alloc(ddp_pool->pool, GFP_KERNEL, &ddp->udp);

Commit fa39ab5184d6 ("scsi: fcoe: Fix I/O path allocation") had introduced
this GFP_ATOMIC flag, since some IO paths called this function with a
spin_lock held. Now, is it safe to roll back this change?

>  	if (!ddp->udl) {
>  		e_err(drv, "failed allocated ddp context\n");
>  		goto out_noddp_unmap;
> -- 
> 2.52.0
> 
