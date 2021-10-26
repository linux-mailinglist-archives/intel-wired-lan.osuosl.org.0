Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FB943BC71
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Oct 2021 23:32:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2F46540120;
	Tue, 26 Oct 2021 21:32:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MdqT6bPdfeWX; Tue, 26 Oct 2021 21:32:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F239A40100;
	Tue, 26 Oct 2021 21:32:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C1C671BF31C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 21:32:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AC23740100
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 21:32:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A2-CBDpiluCH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Oct 2021 21:32:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F0F2D400ED
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 21:32:37 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 18CF060E8B;
 Tue, 26 Oct 2021 21:32:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1635283957;
 bh=U3geapfZ8QwodJou2ZK1pGaE5e01kelvbwb5khpj5/A=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=bkQITLNeTf6rKzQkskzVQBfzksPC5ED+Fm4qcOPQMb5ds208spS8jyHfX2QvwJTv3
 1DWWW05XbDg9ADHqY/OijOb2HtWP81wzsT6J51u/w/F5mMoyOixZpdKrBZ8TbWbH9y
 bFHdoM6wngCQPvXpNOjUySiWEtPVznVIohwSQe6w8g4Hz3m2JyRMqGSfNrD5RqA0u8
 CIlK4oArOT8NulY4QAlGpLScvivAU4NLfKkbFQVUINYx6dp5jlWSaOmIjoKsAwOLSr
 jh8tRRp3JQO2z9tRvhLcjmOCTstHuy7MbAO/jayIlXGM8E8c/OZNuWBixxP4Oel5jU
 GjiJquTm7w/iw==
Date: Tue, 26 Oct 2021 14:32:36 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Maciej Machnikowski <maciej.machnikowski@intel.com>
Message-ID: <20211026143236.050af4e9@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20211026173146.1031412-5-maciej.machnikowski@intel.com>
References: <20211026173146.1031412-1-maciej.machnikowski@intel.com>
 <20211026173146.1031412-5-maciej.machnikowski@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [RFC v5 net-next 4/5] rtnetlink: Add support
 for SyncE recovered clock configuration
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
Cc: mkubecek@suse.cz, abyagowi@fb.com, saeed@kernel.org, netdev@vger.kernel.org,
 richardcochran@gmail.com, idosch@idosch.org, linux-kselftest@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, michael.chan@broadcom.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Please add a write up of how things fit together in Documentation/.
I'm sure reviewers and future users will appreciate that.

Some nits below.

On Tue, 26 Oct 2021 19:31:45 +0200 Maciej Machnikowski wrote:
> Add support for RTNL messages for reading/configuring SyncE recovered
> clocks.
> The messages are:
> RTM_GETRCLKRANGE: Reads the allowed pin index range for the recovered
> 		  clock outputs. This can be aligned to PHY outputs or
> 		  to EEC inputs, whichever is better for a given
> 		  application
> 
> RTM_GETRCLKSTATE: Read the state of recovered pins that output recovered
> 		  clock from a given port. The message will contain the
> 		  number of assigned clocks (IFLA_RCLK_STATE_COUNT) and
> 		  a N pin inexes in IFLA_RCLK_STATE_OUT_IDX

Do we need two separate calls for the gets?

> RTM_SETRCLKSTATE: Sets the redirection of the recovered clock for
> 		  a given pin


> +struct if_set_rclk_msg {
> +	__u32 ifindex;
> +	__u32 out_idx;
> +	__u32 flags;

Why not break this out into separate attrs?

> +++ b/net/core/rtnetlink.c
> @@ -5524,8 +5524,10 @@ static int rtnl_eec_state_get(struct sk_buff *skb, struct nlmsghdr *nlh,
>  
>  	state = nlmsg_data(nlh);
>  	dev = __dev_get_by_index(net, state->ifindex);
> -	if (!dev)
> +	if (!dev) {
> +		NL_SET_ERR_MSG(extack, "unknown ifindex");
>  		return -ENODEV;
> +	}
>  
>  	nskb = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
>  	if (!nskb)

Belongs in previous patch?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
