Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0266067BA19
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jan 2023 20:02:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 42D5660F2C;
	Wed, 25 Jan 2023 19:02:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 42D5660F2C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674673357;
	bh=KTrr1LiSAkGtuqSqueZID48bBsx/3KzDfYWp3POl4H0=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0Dm3McfdNGVQffWVFTKGVUI5MMhg3hzN/eXvJCMOLu6siCzvkFjRbaN0uvM3nq3bc
	 MwgLhfcDy+BcTJTMZzrf9GVqc14kMORJM4+X1ReACrUctPx5EmQLLY9B5r/06QQQY/
	 T17hOKxwte7s90CwgpsZcMi6k1v05id2Z5Fw7Osj2B4qiD78t1hyG4RGlUlxIr003H
	 bhxI22T2ZrGd1xY+Hs4bD3Bufc78DDBVbRVwovlWalMBY795qw+BwflZt6AhVTjqXQ
	 YmaTnjfHZE1DE0deHcD5kpVha1otUb5AALJeFwIq28dRhywjWcY974UP/vcc6kCWhs
	 6fE75kaH3UG7w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3qeyCHnHFUiU; Wed, 25 Jan 2023 19:02:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2E99860D96;
	Wed, 25 Jan 2023 19:02:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2E99860D96
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4F6551BF39D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 19:02:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 281B841920
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 19:02:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 281B841920
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7MFDqM39TrBR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jan 2023 19:02:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 72B9641833
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 72B9641833
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 19:02:30 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 5AB24615C6;
 Wed, 25 Jan 2023 19:02:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8F3DC433D2;
 Wed, 25 Jan 2023 19:02:27 +0000 (UTC)
Date: Wed, 25 Jan 2023 11:02:26 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20230125110226.66dc7eeb@kernel.org>
In-Reply-To: <c182cae29914fa19ce970859e74234d3de506853.1674560845.git.leon@kernel.org>
References: <cover.1674560845.git.leon@kernel.org>
 <c182cae29914fa19ce970859e74234d3de506853.1674560845.git.leon@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674673348;
 bh=RP5Va6toXXyTmcOr/ME//AhDzcNFVNsgf8+hwufjGl0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=OvZAxPfjKXDdktK4TkpLMXDuL4L107cdVVZ70PnwD568R3gI+0pb9bt8L790fN2cO
 0EzUCDa6kkq9wiKJndJf4Ce6tFT6lhgwjkri5ihpOt5PBf3p67zOOvnwlXLab5eFiw
 uZz5SAcXwp6zfrhiZf/23QjiJL41EE2/yvMvIZlRFcS1aFtBfMB9pePhbuhwV2FK7R
 hQpP731ZhIaxFfP/jW1ElFNHHCWNw/avRemfV0YMNfl7cCLsdJEHKf/4DubkALGlhv
 kj8g0I5R7tiLa4hLJtPKkhQ2xpa25WBjEdydJD/flvD/WZ/xs/m4FQa5IQoWyJqlYh
 hCmuU/ozTe4xg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=OvZAxPfj
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 01/10] xfrm: extend add
 policy callback to set failure reason
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
Cc: Steffen Klassert <steffen.klassert@secunet.com>,
 Veaceslav Falico <vfalico@gmail.com>, Herbert Xu <herbert@gondor.apana.org.au>,
 Jonathan Corbet <corbet@lwn.net>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jay Vosburgh <j.vosburgh@gmail.com>, oss-drivers@corigine.com,
 linux-doc@vger.kernel.org, Raju Rangoju <rajur@chelsio.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Ayush Sawal <ayush.sawal@chelsio.com>,
 Simon Horman <simon.horman@corigine.com>, Saeed Mahameed <saeedm@nvidia.com>,
 Paolo Abeni <pabeni@redhat.com>, Leon Romanovsky <leonro@nvidia.com>,
 "David S . Miller" <davem@davemloft.net>, Andy Gospodarek <andy@greyhouse.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 24 Jan 2023 13:54:57 +0200 Leon Romanovsky wrote:
> -	err = dev->xfrmdev_ops->xdo_dev_policy_add(xp);
> +	err = dev->xfrmdev_ops->xdo_dev_policy_add(xp, extack);
>  	if (err) {
>  		xdo->dev = NULL;
>  		xdo->real_dev = NULL;
>  		xdo->type = XFRM_DEV_OFFLOAD_UNSPECIFIED;
>  		xdo->dir = 0;
>  		netdev_put(dev, &xdo->dev_tracker);
> -		NL_SET_ERR_MSG(extack, "Device failed to offload this policy");

In a handful of places we do:

if (!extack->msg)
	NL_SET_ERR_MSG(extack, "Device failed to offload this policy");

in case the device did not provide the extack.
Dunno if it's worth doing here.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
