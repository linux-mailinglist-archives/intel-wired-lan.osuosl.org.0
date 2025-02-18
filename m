Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 91CA7A39CA2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Feb 2025 14:00:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F58660F9C;
	Tue, 18 Feb 2025 13:00:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m64B1BVHCRr7; Tue, 18 Feb 2025 13:00:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B471A60F83
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739883608;
	bh=DzIdEL0v5oK77xA1GG/3yQejSNljFRje9RLDLpG/Udk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MZrKF6wAXyteQBvwDHlCUI32fIdUVlHnIldfv62nvWx3u4lXzauIKhtWCkvlh/Mrz
	 G4eurgtO4dMlbB2FTy7P63OC1h69Br8s4PQdJZyvJAUNgThmaE/sj92K9gbsWNmQyl
	 OscaZk1xTu5sbF+Qc7FJXCyW+grepUKgi4p09lNoPunK5f7lvqGH6MTMwbR6W8TF58
	 LKnM8qhwBabdgF2FenJLlnjUtOnKOTQk8ARXsHdMdWJDWTz+es430VaT2hy2RFEWMK
	 gKwDMSmwGUiG/GbIqFY1RmzVx8TU6/nqjqCiQyZwDLk/NcY94mCx9/De65v6wKdjg/
	 o/y/2+v22dP0Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B471A60F83;
	Tue, 18 Feb 2025 13:00:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C936D968
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 13:00:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ACC1860F7B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 13:00:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3evr-_I47zRs for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Feb 2025 13:00:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EC7F760A83
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EC7F760A83
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EC7F760A83
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2025 13:00:05 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 410075C59F7;
 Tue, 18 Feb 2025 12:59:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8DD6C4CEE2;
 Tue, 18 Feb 2025 13:00:01 +0000 (UTC)
Date: Tue, 18 Feb 2025 12:59:59 +0000
From: Simon Horman <horms@kernel.org>
To: Piotr Wejman <wejmanpm@gmail.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Vadim Fedorenko <vadim.fedorenko@linux.dev>
Message-ID: <20250218125959.GS1615191@kernel.org>
References: <20250216155729.63862-1-wejmanpm@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250216155729.63862-1-wejmanpm@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1739883604;
 bh=wkaSrmI42WJ8eWLGud2n2+KIp1RZrA0hZp27Cs/S1os=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=k7pQPjRGFqpUEqRUTP8WqTqJCGC/2YTh4O27TLV9vm126m4kCoOmAwS97lD/hjjfw
 eCtd7SYs2FOAaiy98MHm/EiZNAdqpX8f3W6vFgr/+SkgeghmtrI73iWz3DsGG3S09u
 C5agCd2n5J5fVOjYeqleodcKLIt19zk4686f4ISRXgpNG5AVC2JkzO6PriMJ3aBObU
 zh3wFF5VVhuazFapG98U/CLt2pNZfAuBuwwHYjxmBEIOAFgMsEqW4ZJ1e+y0pAb2Oi
 C7oEiICDHx0gjW8ej342Ub7FXaO9wciu2y5xaS+YIkbyt3uzKGG7UEzOCCmH4KRK0k
 +qJ9HTixag9FQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=k7pQPjRG
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] net: e1000e: convert to
 ndo_hwtstamp_get() and ndo_hwtstamp_set()
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

On Sun, Feb 16, 2025 at 04:57:28PM +0100, Piotr Wejman wrote:
> Update the driver to use the new hardware timestamping API added in commit
> 66f7223039c0 ("net: add NDOs for configuring hardware timestamping").
> Use Netlink extack for error reporting in e1000e_config_hwtstamp.
> Align the indentation of net_device_ops.
> 
> Reviewed-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
> Signed-off-by: Piotr Wejman <wejmanpm@gmail.com>

Reviewed-by: Simon Horman <horms@kernel.org>

...

> @@ -3932,7 +3939,11 @@ static void e1000e_systim_reset(struct e1000_adapter *adapter)
>  	spin_unlock_irqrestore(&adapter->systim_lock, flags);
>  
>  	/* restore the previous hwtstamp configuration settings */
> -	e1000e_config_hwtstamp(adapter, &adapter->hwtstamp_config);
> +	ret_val = e1000e_config_hwtstamp(adapter, &adapter->hwtstamp_config, &extack);

nit: If there is a v4 for some other reason, please consider line-wrapping
     the above to avoid lines that are more than 80 columns wide.

	ret_val = e1000e_config_hwtstamp(adapter, &adapter->hwtstamp_config,
					 &extack);

> +	if (ret_val) {
> +		if (extack._msg)
> +			e_err("%s\n", extack._msg);
> +	}
>  }
>  
>  /**
> @@ -6079,8 +6090,8 @@ static int e1000_change_mtu(struct net_device *netdev, int new_mtu)
>  	return 0;
>  }
>  
> -static int e1000_mii_ioctl(struct net_device *netdev, struct ifreq *ifr,
> -			   int cmd)
> +static int e1000_ioctl(struct net_device *netdev, struct ifreq *ifr,
> +		       int cmd)

nit: And conversely, if there is a v4 for some other reason,
     please consider merging the above two lines into one.

...
