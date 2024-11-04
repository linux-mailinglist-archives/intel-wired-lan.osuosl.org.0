Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5916F9BBA01
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Nov 2024 17:17:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D7DAC403A6;
	Mon,  4 Nov 2024 16:17:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fD0WAsV9cqCc; Mon,  4 Nov 2024 16:16:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 26BB7402B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730737018;
	bh=VMJ0qNC7D3RhewOuf4cdyfmebiUIbRwkpgu9S0MsSDk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LawfrKJa1vkgWwrH+aV0a+Y6Ha6oGFrrxuq3rUWNYXy9Y+ka6dDTKTFyHI0N1VqNt
	 8LsqH03VlX9jTPsRbfP8D7a1Uk9i49S8jVklQvG2+8QkkIP63CWBnhGFFIHgLzX+nz
	 6PMhvfJSwYzCL56C2F3RRFSlyII9Xozt8vaiXUYDsWwv2RApymYHrzEE0LjIp+3uJH
	 HFuIC3mVDO84jN0AMiX9FP9In0mwvBFQcAOhFs6fNBaUZEIy94aHMufdIqX4OuQ7xd
	 jNcYByFpE6CbS84+MiFcPX83JdM0KowLWPtmMiMDs4/8CwkdyNpMDRvCza0jFpfCmA
	 aDfaz/JYyR6Dw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 26BB7402B9;
	Mon,  4 Nov 2024 16:16:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 43B9C723
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 02:45:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3126F40324
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 02:45:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id czeRNZ9Y9QS6 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Nov 2024 02:45:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=115.124.30.124;
 helo=out30-124.freemail.mail.aliyun.com;
 envelope-from=xuanzhuo@linux.alibaba.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6092D40312
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6092D40312
Received: from out30-124.freemail.mail.aliyun.com
 (out30-124.freemail.mail.aliyun.com [115.124.30.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6092D40312
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 02:45:32 +0000 (UTC)
Received: from localhost(mailfrom:xuanzhuo@linux.alibaba.com
 fp:SMTPD_---0WIZlEgZ_1730688325 cluster:ay36) by smtp.aliyun-inc.com;
 Mon, 04 Nov 2024 10:45:25 +0800
Message-ID: <1730688315.6177652-4-xuanzhuo@linux.alibaba.com>
Date: Mon, 4 Nov 2024 10:45:15 +0800
From: Xuan Zhuo <xuanzhuo@linux.alibaba.com>
To: Caleb Sander Mateos <csander@purestorage.com>
Cc: Caleb Sander Mateos <csander@purestorage.com>,
 intel-wired-lan@lists.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linuxppc-dev@lists.ozlabs.org,
 linux-rdma@vger.kernel.org, netdev@vger.kernel.org,
 oss-drivers@corigine.com, virtualization@lists.linux.dev,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Arthur Kiyanovski <akiyano@amazon.com>,
 Brett Creeley <brett.creeley@amd.com>,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 David Arinzon <darinzon@amazon.com>,
 "David S. Miller" <davem@davemloft.net>, Doug Berger <opendmb@gmail.com>,
 Eric Dumazet <edumazet@google.com>,
 =?utf-8?q?Eugenio_P=C3=A9rez?= <eperezma@redhat.com>,
 Felix Fietkau <nbd@nbd.name>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Geetha sowjanya <gakula@marvell.com>, hariprasad <hkelam@marvell.com>,
 Jakub Kicinski <kuba@kernel.org>, Jason Wang <jasowang@redhat.com>,
 Jonathan Corbet <corbet@lwn.net>, Leon Romanovsky <leon@kernel.org>,
 Lorenzo Bianconi <lorenzo@kernel.org>,
 Louis Peens <louis.peens@corigine.com>,
 Mark Lee <Mark-MC.Lee@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Michael Chan <michael.chan@broadcom.com>,
 "Michael S. Tsirkin" <mst@redhat.com>, Noam Dagan <ndagan@amazon.com>,
 Paolo Abeni <pabeni@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Roy Pledge <Roy.Pledge@nxp.com>, Saeed Bishara <saeedb@amazon.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Sean Wang <sean.wang@mediatek.com>,
 Shannon Nelson <shannon.nelson@amd.com>,
 Shay Agroskin <shayagr@amazon.com>, Simon Horman <horms@kernel.org>,
 Subbaraya Sundeep <sbhatta@marvell.com>,
 Sunil Goutham <sgoutham@marvell.com>, Tal Gilboa <talgi@nvidia.com>,
 Tariq Toukan <tariqt@nvidia.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>
References: <20241031002326.3426181-1-csander@purestorage.com>
In-Reply-To: <20241031002326.3426181-1-csander@purestorage.com>
X-Mailman-Approved-At: Mon, 04 Nov 2024 16:16:56 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.alibaba.com; s=default;
 t=1730688329; h=Message-ID:Subject:Date:From:To;
 bh=VMJ0qNC7D3RhewOuf4cdyfmebiUIbRwkpgu9S0MsSDk=;
 b=Ghtfo3iNlPsczOQfcwZDbigc6J/l+rP9HuakHxOaD+Tl+u8h00rpn6o5mJVWwXkSUdajpgt2nh7n2yvq7AMm015SgVs5tpkRAswXqGrJDKMilrPMbcskoDPpCjKIoD80pdzGyZbNgeeELnHbS+jVIPtw83LqCqJ1eMwO0v1oAJU=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.alibaba.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.alibaba.com header.i=@linux.alibaba.com
 header.a=rsa-sha256 header.s=default header.b=Ghtfo3iN
Subject: Re: [Intel-wired-lan] [resend PATCH 1/2] dim: make dim_calc_stats()
 inputs const pointers
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

On Wed, 30 Oct 2024 18:23:25 -0600, Caleb Sander Mateos <csander@purestorage.com> wrote:
> Make the start and end arguments to dim_calc_stats() const pointers
> to clarify that the function does not modify their values.
>
> Signed-off-by: Caleb Sander Mateos <csander@purestorage.com>


Reviewed-by: Xuan Zhuo <xuanzhuo@linux.alibaba.com>

> ---
>  include/linux/dim.h | 3 ++-
>  lib/dim/dim.c       | 3 ++-
>  2 files changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/include/linux/dim.h b/include/linux/dim.h
> index 1b581ff25a15..84579a50ae7f 100644
> --- a/include/linux/dim.h
> +++ b/include/linux/dim.h
> @@ -349,11 +349,12 @@ void dim_park_tired(struct dim *dim);
>   *
>   * Calculate the delta between two samples (in data rates).
>   * Takes into consideration counter wrap-around.
>   * Returned boolean indicates whether curr_stats are reliable.
>   */
> -bool dim_calc_stats(struct dim_sample *start, struct dim_sample *end,
> +bool dim_calc_stats(const struct dim_sample *start,
> +		    const struct dim_sample *end,
>  		    struct dim_stats *curr_stats);
>
>  /**
>   *	dim_update_sample - set a sample's fields with given values
>   *	@event_ctr: number of events to set
> diff --git a/lib/dim/dim.c b/lib/dim/dim.c
> index 83b65ac74d73..97c3d084ebf0 100644
> --- a/lib/dim/dim.c
> +++ b/lib/dim/dim.c
> @@ -52,11 +52,12 @@ void dim_park_tired(struct dim *dim)
>  	dim->steps_left   = 0;
>  	dim->tune_state   = DIM_PARKING_TIRED;
>  }
>  EXPORT_SYMBOL(dim_park_tired);
>
> -bool dim_calc_stats(struct dim_sample *start, struct dim_sample *end,
> +bool dim_calc_stats(const struct dim_sample *start,
> +		    const struct dim_sample *end,
>  		    struct dim_stats *curr_stats)
>  {
>  	/* u32 holds up to 71 minutes, should be enough */
>  	u32 delta_us = ktime_us_delta(end->time, start->time);
>  	u32 npkts = BIT_GAP(BITS_PER_TYPE(u32), end->pkt_ctr, start->pkt_ctr);
> --
> 2.45.2
>
