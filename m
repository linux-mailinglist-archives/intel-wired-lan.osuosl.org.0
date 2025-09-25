Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E12B9E9C8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Sep 2025 12:23:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6EC8840FBA;
	Thu, 25 Sep 2025 10:23:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xBuvT1noWxSe; Thu, 25 Sep 2025 10:23:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A081541141
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758795815;
	bh=7jOpX2spnBlJP+AY/fmJorH9Vv0crmnYvKnF28Isjmw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gx+dCMFDFc2GpDxvw6iKCourUjnWg9M+ZGkMM0UDnmoG0Q1wW8dVXK6WoDVAJEhax
	 CbcCsKDP3eUXFp7aIIhLe72urDNEWN4B7opuWQSs6X2ZI+OaleD7UR4j4u1JbAofbN
	 94ojKeJnF6M1uLmjEkcc8iMub7CBx1rJo03rPX6b82UlSHCm6VRawka0TQD10rrEnf
	 b0SqNWBaWe90J8pTdloCSQeotbEQutep0UJwhT2Hj9i2p1b5ygnMfk1hTd0RhYmetX
	 x6uZmRPDu/lZk+i84AZToRvO253Mg9KQa+S+E1DYbv0V2vnuK+753OHk1ms1FlyRDC
	 HozkfR5YqCwmw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A081541141;
	Thu, 25 Sep 2025 10:23:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0306212D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 10:23:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DD5E840BFE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 10:23:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IZE6ot4ONcli for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Sep 2025 10:23:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3F23640BAE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F23640BAE
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3F23640BAE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 10:23:33 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id CD4E34050C;
 Thu, 25 Sep 2025 10:23:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 15028C4CEF0;
 Thu, 25 Sep 2025 10:23:30 +0000 (UTC)
Date: Thu, 25 Sep 2025 11:23:29 +0100
From: Simon Horman <horms@kernel.org>
To: Alok Tiwari <alok.a.tiwari@oracle.com>
Cc: anthony.l.nguyen@intel.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Message-ID: <20250925102329.GE836419@horms.kernel.org>
References: <20250924193403.360122-1-alok.a.tiwari@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250924193403.360122-1-alok.a.tiwari@oracle.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1758795812;
 bh=OzvOPimuho1XXzUgEr9jUak4enQoJYy5xoQyA/0QHN0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cMB/XfBAZLP61G2ycUdnY3VX+1lhcYL9fFqXR/FUlb4D85NZZAx0fPytsAPALVQdT
 YTlKd5HcgFfc6rQhZkYW8iZlA1APTtWP4fmeawh0vHJr9p5Z5nMp1eREOtx1LKI0X/
 rk/9JFDr458LtIyavmY7iltsBnDhIxg4340QEHKAr+t9RLXWxY6j7bWBevlybw8tQC
 YzVmHHERudlOM5QVeXI/IN2l8E5nsIN+qaIN6aQAt+DPVS7RybV7P1WP4cZlJtFah+
 JxeboVcX9DH/TtM/QDSeGYx3AU5H6ZgI/lsav2jh7u9fVyX1cTk4XB3Qk3Yy1Qo5Dj
 mlBz/XU2ZwXzg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=cMB/XfBA
Subject: Re: [Intel-wired-lan] [PATCH net-next] ixgbe: avoid redundant call
 to ixgbe_non_sfp_link_config()
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

On Wed, Sep 24, 2025 at 12:33:54PM -0700, Alok Tiwari wrote:
> ixgbe_non_sfp_link_config() is called twice in ixgbe_open()
> once to assign its return value to err and again in the
> conditional check. This patch uses the stored err value
> instead of calling the function a second time. This avoids
> redundant work and ensures consistent error reporting.
> 
> Also fix a small typo in the ixgbe_remove() comment:
> "The could be caused" -> "This could be caused".
> 
> Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 90d4e57b1c93..39ef604af3eb 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -7449,7 +7449,7 @@ int ixgbe_open(struct net_device *netdev)
>  					 adapter->hw.link.link_info.link_cfg_err);
>  
>  		err = ixgbe_non_sfp_link_config(&adapter->hw);
> -		if (ixgbe_non_sfp_link_config(&adapter->hw))
> +		if (err)
>  			e_dev_err("Link setup failed, err %d.\n", err);
>  	}
>  

I am wondering if there is some intended side-effect of
calling ixgbe_non_sfp_link_config() twice.

...
