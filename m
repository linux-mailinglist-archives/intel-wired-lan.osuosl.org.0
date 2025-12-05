Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF57CA8552
	for <lists+intel-wired-lan@lfdr.de>; Fri, 05 Dec 2025 17:16:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B053844EC;
	Fri,  5 Dec 2025 16:16:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RuwXX_au5ORZ; Fri,  5 Dec 2025 16:16:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 91FB184474
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764951376;
	bh=l8EZxI0uEt3nDv0cCUVdP/1sOSx5O3XZFg33JnaiD2U=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bfv5c4CFaXfqFuVr3uu+PBLqugYDh5ISedXo7oThaD4RZUp6yD+z+Yteoy2Bygq4w
	 ZmnHG2ox/UhtXVZwZ/D1LJE6qg2mAx/671VmYuJZI/5B3/WSO1YIPrbgjjL+nABeYC
	 f8R8tAul4X1WSlVaNpG4+hL/bIxhtHPRRKpOAUNHz55mr1p6GPQ3mkJI0E2wBdYoxI
	 gYoZRE8rXic4hGYfef2pyLeKEi05KBjYDgHq3rGZXjA3LzO6CgmbI2nYE0aslc8uwm
	 67V0sdtDgv/V4eg3DHxkGhFF7ehZkQ0NVqCsFe7WBtBVmJFsxFZW+Hn5quPMuhEn+c
	 D6xIXb+fdp8qA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 91FB184474;
	Fri,  5 Dec 2025 16:16:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3551F199
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 16:16:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1CA96403D7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 16:16:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b4zbgumhQ_co for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Dec 2025 16:16:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7A39F401F7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7A39F401F7
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7A39F401F7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 16:16:13 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id DC8DF600C4;
 Fri,  5 Dec 2025 16:16:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3EDCBC4CEF1;
 Fri,  5 Dec 2025 16:16:09 +0000 (UTC)
Date: Fri, 5 Dec 2025 16:16:06 +0000
From: Simon Horman <horms@kernel.org>
To: Ding Hui <dinghui@sangfor.com.cn>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, jacob.e.keller@intel.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <aTMFRkYZGtk3a_EP@horms.kernel.org>
References: <20251205081609.23091-1-dinghui@sangfor.com.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251205081609.23091-1-dinghui@sangfor.com.cn>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1764951371;
 bh=ZdEQEkqkc+Ag6znUyPweT6q9aTx5i6UmppHhWOoNMvs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QCCv/XhLhrC/32IZLIuYyb2e7GttsSUPQxwa2w4kQKU5LhieM/N2c40m6gb/f1RJJ
 WGxJOerIHFub+uiFtiWuFTQJb9eMKwa2qkTfYd/bVNap6A9Hk4vFHZI6NL96IIehdC
 nRSoXQZMBLivop+cZ2pF7vWZOgnSMliVjcoXn4m8cr7cfF2AsEEWlixHJAFFJiuu7/
 Wx/sOwI8kpUQU6DsupW/BWZ32uOSrhzq0ZPZGhbM4U3L7+KlwtJjdREoAlqjsuhVQh
 W0+kCbKgjVCy4j/op51yfc6l19Vx554ZsZ+xWBY4Wat+ukSuWjfoTVedCJT7mguobh
 oLgDJ7BWjEXag==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=QCCv/XhL
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Fix incorrect timeout
 in ice_release_res()
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

On Fri, Dec 05, 2025 at 04:16:08PM +0800, Ding Hui wrote:
> The commit 5f6df173f92e ("ice: implement and use rd32_poll_timeout for
> ice_sq_done timeout") converted ICE_CTL_Q_SQ_CMD_TIMEOUT from jiffies
> to microseconds.
> 
> But the ice_release_res() function was missed, and its logic still
> treats ICE_CTL_Q_SQ_CMD_TIMEOUT as a jiffies value.
> 
> So correct the issue by usecs_to_jiffies().
> 
> Fixes: 5f6df173f92e ("ice: implement and use rd32_poll_timeout for ice_sq_done timeout")
> Signed-off-by: Ding Hui <dinghui@sangfor.com.cn>

Thanks,

I agree with the analysis above and that the problem was introduced
by the cited commit.

As a fix for code present in net this should probably be targeted
at net (or iwl-net?) rather than net-next. But perhaps there is
no need to repost just to address that.

> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index 6fb0c1e8ae7c..5005c299deb1 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -1885,7 +1885,7 @@ void ice_release_res(struct ice_hw *hw, enum ice_aq_res_ids res)
>  	/* there are some rare cases when trying to release the resource
>  	 * results in an admin queue timeout, so handle them correctly
>  	 */
> -	timeout = jiffies + 10 * ICE_CTL_Q_SQ_CMD_TIMEOUT;
> +	timeout = jiffies + 10 * usecs_to_jiffies(ICE_CTL_Q_SQ_CMD_TIMEOUT);
>  	do {
>  		status = ice_aq_release_res(hw, res, 0, NULL);
>  		if (status != -EIO)

I agree this minimal change is appropriate as a bug fix.

But I think that it would be good to provide a follow-up
that reworks this code a bit to to use read_poll_timeout().
As per the aim of the cited commit.

This should be targeted at net-next (or iwl-next?).
Once this bug fix propagates to in net-next.

Reviewed-by: Simon Horman <horms@kernel.org>
