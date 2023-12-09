Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC3D80B19D
	for <lists+intel-wired-lan@lfdr.de>; Sat,  9 Dec 2023 02:57:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F338440990;
	Sat,  9 Dec 2023 01:57:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F338440990
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702087035;
	bh=SjDmYA4NZsZYrawN8d7shhsjvK4535ehTXINaQPnDl4=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Hs9P/kFOIjrHczMQ7DLNoRa4dvpxuUYoVUnQlGfKFp9NJb6WiKnBar3xTD6dd1bpt
	 upu4OMSR+9YhfyJpZBs2OjuR3+73pYGbpzaegrccSpT3dQIoxUk+GGLcOtDu9ao1V/
	 BltimlAwuw+Oc41OBNu8XAzs9U7HoyGPcgmIs9TrFKosY+bmM4Md1Fu3B4ew/PCQgZ
	 LOVHHUWYta/0WRZsva+pKI/1HJPIqsi36AQdxeHAB9KCf+cR0/oJpA71VbcfnJGXG3
	 4qM512I6bg/M+IsdZw0zWtVX2WUeZd4yJaRsBiF/jYpPZ73pRes9en09ahV0KH/jCO
	 DNnwBavNvWfMw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wm1XNI_TAgXd; Sat,  9 Dec 2023 01:57:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B7E03405B1;
	Sat,  9 Dec 2023 01:57:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B7E03405B1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 60A1C1BF99A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Dec 2023 01:57:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3E32F428D3
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Dec 2023 01:57:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E32F428D3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0lx1XP_nZd7p for <intel-wired-lan@lists.osuosl.org>;
 Sat,  9 Dec 2023 01:57:07 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8C120426E2
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Dec 2023 01:57:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8C120426E2
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id F3F7262647;
 Sat,  9 Dec 2023 01:57:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B21BCC433C8;
 Sat,  9 Dec 2023 01:57:04 +0000 (UTC)
Date: Fri, 8 Dec 2023 17:57:03 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <20231208175703.3970d1de@kernel.org>
In-Reply-To: <20231206233642.447794-2-ahmed.zaki@intel.com>
References: <20231206233642.447794-1-ahmed.zaki@intel.com>
 <20231206233642.447794-2-ahmed.zaki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1702087025;
 bh=kVKeeuFA6aLVpPCgtOqP/HqEH7kYw9itbYOfMzQSBwQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=tVF81oN5HLlxyCEIxrU+M3UU6WgIi5zsIZF2e4wRoTU+eHaoahVFLsB7mG0wRlfAh
 X1cOwF7d0yzbueQofpI4n9M+QYMYLdcrWGqls1nykvGAniIs7ladiE5NTMecFXy2zy
 cquOK5gr8MGV8fiBKco5nvDsPLkpTBjIcmqhqF6nvGNiXQoNcIvJc2itWq3olxe946
 6pUlxm5vTg7Ba3zCGDe7LN0QWIswVaCzS/Cv94lZyCb6wimh6DOc/SSza/3Hj0MyFc
 1dy2RREQ3LrucONKz2lsugoBxE0/vdFew6xzmKYB6RbmpKJWWzZPgB8W5bnFRbyt8c
 3Hixw1MVY5EKA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=tVF81oN5
Subject: Re: [Intel-wired-lan] [PATCH net-next v8 1/8] net: ethtool: pass a
 pointer to parameters to get/set_rxfh ethtool ops
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 corbet@lwn.net, netdev@vger.kernel.org, gal@nvidia.com,
 linux-doc@vger.kernel.org, jesse.brandeburg@intel.com, ecree.xilinx@gmail.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 vladimir.oltean@nxp.com, Jacob Keller <jacob.e.keller@intel.com>,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed,  6 Dec 2023 16:36:35 -0700 Ahmed Zaki wrote:
> -	rxfh.indir_size = dev_indir_size;
> -	rxfh.key_size = dev_key_size;
> +	rxfh.indir_size = rxfh_dev.indir_size;
> +	rxfh.key_size = rxfh_dev.key_size;
>  	if (copy_to_user(useraddr, &rxfh, sizeof(rxfh)))
>  		return -EFAULT;
>  
> -	if ((user_indir_size && (user_indir_size != dev_indir_size)) ||
> -	    (user_key_size && (user_key_size != dev_key_size)))
> +	if ((user_indir_size && user_indir_size != rxfh_dev.indir_size) ||
> +	    (user_key_size && user_key_size != rxfh_dev.key_size))
>  		return -EINVAL;
>  
> -	indir_bytes = user_indir_size * sizeof(indir[0]);
> -	total_size = indir_bytes + user_key_size;
> -	rss_config = kzalloc(total_size, GFP_USER);
> -	if (!rss_config)
> -		return -ENOMEM;
> -
> -	if (user_indir_size)
> -		indir = (u32 *)rss_config;
> +	indir_bytes = user_indir_size * sizeof(*rxfh_dev.indir);
> +	if (indir_bytes) {
> +		rxfh_dev.indir = kzalloc(indir_bytes, GFP_KERNEL);
> +		if (!rxfh_dev.indir)
> +			return -ENOMEM;
> +	}
>  
> -	if (user_key_size)
> -		hkey = rss_config + indir_bytes;
> +	if (user_key_size) {
> +		rxfh_dev.key = kzalloc(user_key_size, GFP_KERNEL);
> +		if (!rxfh_dev.key) {
> +			kfree(rxfh_dev.indir);
> +			return -ENOMEM;
> +		}
> +	}

Splitting the allocation into two separate kzalloc()s should be 
a separate change.

> +struct ethtool_rxfh_param {
> +	__u8	hfunc;
> +	__u32   indir_size;
> +	__u32	*indir;
> +	__u32   key_size;
> +	__u8	*key;
> +};

no underscores needed on types, this is a kernel struct
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
