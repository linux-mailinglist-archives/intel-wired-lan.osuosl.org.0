Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EC8F72FC7AD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Jan 2021 03:21:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 41C4A85B0C;
	Wed, 20 Jan 2021 02:21:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UChi-rf5LPeA; Wed, 20 Jan 2021 02:21:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8C1BC858F5;
	Wed, 20 Jan 2021 02:21:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B380A1BF5A7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jan 2021 02:21:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AF33F8657C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jan 2021 02:21:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5L2YnsjQHZvi for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Jan 2021 02:21:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 412EE864A0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jan 2021 02:21:35 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3DF442250E;
 Wed, 20 Jan 2021 02:21:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611109294;
 bh=nTEA1hudbJuhjpINDw8b4H/QEvZXPFEUU1gq/ihM7Zw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=XuqZGlvSojrA7vrwI3bzByi/vC+BugX6DWrQ41pbIWybNi4FmokQKMcSGmW0tBXJP
 tldWiRdLaueqX4Y7l+r27+7EN5+JUtf3M9KGTi5LuHEEJL9UzXix4FGZT4iBh/45Zf
 fU58TEj++sigEQFxTh58K/KHOc/Glf9fivgiP7Ko3J7wvJYBk3b8fdAUEKzzyd2dza
 +Wr8iR7dUdVQnLo60H3rtHAPXmWIM6jfzmMb4Yp3pC7NqhIfytK0hnOjVTJAj/cPbv
 PVmlYK/p8ANQrwPTqrnYCbE3gp22kytX8DoPwJb7oqpIpGiuef+OX8WWjZP8iBDUPl
 yjH/iCHZW6cXw==
Date: Tue, 19 Jan 2021 18:21:33 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20210119182133.038fbfc3@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210119004028.2809425-3-vinicius.gomes@intel.com>
References: <20210119004028.2809425-1-vinicius.gomes@intel.com>
 <20210119004028.2809425-3-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 2/8] taprio: Add support
 for frame preemption offload
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
Cc: Jose.Abreu@synopsys.com, mkubecek@suse.cz, jiri@resnulli.us,
 vladimir.oltean@nxp.com, po.liu@nxp.com, jhs@mojatatu.com, m-karicheri2@ti.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 xiyou.wangcong@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 18 Jan 2021 16:40:22 -0800 Vinicius Costa Gomes wrote:
> Adds a way to configure which traffic classes are marked as
> preemptible and which are marked as express.
> 
> Even if frame preemption is not a "real" offload, because it can't be
> executed purely in software, having this information near where the
> mapping of traffic classes to queues is specified, makes it,
> hopefully, easier to use.
> 
> taprio will receive the information of which traffic classes are
> marked as express/preemptible, and when offloading frame preemption to
> the driver will convert the information, so the driver receives which
> queues are marked as express/preemptible.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>

> @@ -1286,13 +1289,15 @@ static int taprio_disable_offload(struct net_device *dev,
>  	offload->enable = 0;
>  
>  	err = ops->ndo_setup_tc(dev, TC_SETUP_QDISC_TAPRIO, offload);
> -	if (err < 0) {
> +	if (err < 0)
> +		NL_SET_ERR_MSG(extack,
> +			       "Device failed to disable offload");
> +
> +	err = ops->ndo_setup_tc(dev, TC_SETUP_PREEMPT, &preempt);
> +	if (err < 0)
>  		NL_SET_ERR_MSG(extack,
>  			       "Device failed to disable offload");

This was meant to say something else?

> -		goto out;
> -	}
>  
> -out:
>  	taprio_offload_free(offload);
>  
>  	return err;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
