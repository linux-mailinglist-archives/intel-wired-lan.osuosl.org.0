Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 52131736FD1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jun 2023 17:07:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E01CD408FD;
	Tue, 20 Jun 2023 15:07:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E01CD408FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687273648;
	bh=m7sS7Ln6REjZpEUNftnI2vza9s/v1wM3ii1N+v5rlQ0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ke3wk/cMixBybuMaANGOZBvc7gTESzSSAulQ8fZ0EeTjadas0JKv/Kc/DTHv1mDn2
	 i6r1QMRJXvGCxCbOziioBv6EHfdIGLvUzkGTkvtwkHQ/8R0nstQYp0dGT45KgZ3Ty9
	 XVDZXIdw4QGpBXPF2IcVrjpDH1zvBjxUC/Cz8qDyGToynlu4t8P7XlTax1l9bRKOyC
	 1vaqEWp7arDBNgcExxiqt5I1wkHbxfySQOf2ilLyiXdVENOG6Ao3kNvKdu1lWj1pvV
	 /7NKy7vbC0THmrywIe6ixjYViVe3p2RHkM6xgaQL89Nw7x21HlgqPqQLoif8fPmMio
	 Woy1uvMjqZhGg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sIsWUEXpFk1n; Tue, 20 Jun 2023 15:07:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 41EF940239;
	Tue, 20 Jun 2023 15:07:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 41EF940239
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0D4BA1BF3C5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 15:07:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E6B43820ED
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 15:07:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E6B43820ED
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ErLwYjLiAoxa for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jun 2023 15:07:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C159081F6C
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C159081F6C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jun 2023 15:07:06 +0000 (UTC)
Received: from [177.94.78.149] (helo=[192.168.1.60])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1qBcwD-000lqI-AB; Tue, 20 Jun 2023 17:06:33 +0200
Message-ID: <3d9822ba-e692-e779-3ecb-bb284fa2a733@igalia.com>
Date: Tue, 20 Jun 2023 12:05:21 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Kai-Heng Feng <kai.heng.feng@canonical.com>, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com
References: <20230620123636.1854690-1-kai.heng.feng@canonical.com>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <20230620123636.1854690-1-kai.heng.feng@canonical.com>
X-Mailman-Approved-At: Tue, 20 Jun 2023 15:07:21 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=igalia.com; 
 s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TF58PbEnutisgyOb8/ZMr1H0VJK22Rp1e0KXoeR8sbQ=; b=AbGUggnkPexptF8+XjIwEZckzf
 BgsNsc/iE4pv7q/HfY5k4nTJxSvb9YlklOaJcWcLIaKLRVVGa2uWg7X6wy9U53yt3qdzA52ZfY9Cc
 dMFYVWMAlfABEeCeREmsqSUXINQ41FaJb+lk2GphICwho1kL+t5xK1KalKDsQKrZ05cQSp33ipoUi
 hpN0N+0zHVJrT7Jb0/hXoxcgLRO3fkP5IJQ3Yy7BKxK92p0Tw7XmpUvrG1uXv7c4FuLg9atuM8I0w
 GJ/+T0mnzAGQa3tfJ9xrmU89XAoWIH1ORPftYbSIywJzv5EKpSXXksw44QidGGHp/WMBVhwOiUEJn
 1NUjvvwA==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=igalia.com header.i=@igalia.com
 header.a=rsa-sha256 header.s=20170329 header.b=AbGUggnk
Subject: Re: [Intel-wired-lan] [PATCH] igc: Ignore AER reset when device is
 suspended
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
Cc: Tony Luck <tony.luck@intel.com>, Kees Cook <keescook@chromium.org>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 20/06/2023 14:36, Kai-Heng Feng wrote:
> [...]
> So avoid resetting the device if it's not resumed. Once the device is
> fully resumed, the device can work normally.
> 
> Link: https://bugzilla.kernel.org/show_bug.cgi?id=216850
> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index fa764190f270..6a46f886ff43 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -6962,6 +6962,9 @@ static pci_ers_result_t igc_io_error_detected(struct pci_dev *pdev,
>  	struct net_device *netdev = pci_get_drvdata(pdev);
>  	struct igc_adapter *adapter = netdev_priv(netdev);
>  
> +	if (!pci_is_enabled(pdev))
> +		return 0;
> +
>  	netif_device_detach(netdev);
>  
>  	if (state == pci_channel_io_perm_failure)

Makes perfect sense to me, based on the days I've worked a lot with PCI
resets and whatnot heh

Feel free to add:
Reviewed-by: Guilherme G. Piccoli <gpiccoli@igalia.com>


Cheers!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
