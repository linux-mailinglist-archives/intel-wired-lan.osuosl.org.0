Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88EF761EB50
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Nov 2022 08:03:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5870B4023D;
	Mon,  7 Nov 2022 07:03:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5870B4023D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667804599;
	bh=NbMpoqAABX4mK/uVLAaApan3zHsZzbBgIH7kTdbnkS0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=N322S2m2KKwiKu3meSx+U5JwCZlHNe4jkCowZeqdlMDdtHBTsMiPRIWpd5QrgZy/m
	 MlqAoLHEpSSh52GcTh0IvxzgVbFSYkHy2je3J8E2QimWhTAtF4K9Y6wCD2m91SqHmw
	 9qRjhJApZKkBu5u18NoMTSPJPS1jNk4qxGB0JOleeUksSzv8D/s26lN/uN81x/4FKD
	 bTL4fsdcZPEgMYMBqsU/o3+ylgpW19Ml0ilfr29cO4qAVXuSjJpQgE46dyBHWtK4Kf
	 gR56V4Dd8sINOkjw3T9YvTQrOi5SnoK0e6D51AfZ5TEDCDyJkTU0WEszeQMuei3ENP
	 me+lG1x8PLMOg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YeEIaqBkYZYI; Mon,  7 Nov 2022 07:03:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 361C1400EF;
	Mon,  7 Nov 2022 07:03:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 361C1400EF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9EE171BF2C0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Nov 2022 07:03:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7806E4077D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Nov 2022 07:03:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7806E4077D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bfRFtCQE9M1H for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Nov 2022 07:03:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B2F07406E0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B2F07406E0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Nov 2022 07:03:12 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 9985E60DFD;
 Mon,  7 Nov 2022 07:03:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E8F0C433D6;
 Mon,  7 Nov 2022 07:03:09 +0000 (UTC)
Date: Mon, 7 Nov 2022 09:03:06 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <Y2itqqGQm6uZ/2Wf@unreal>
References: <20221104205414.2354973-1-anthony.l.nguyen@intel.com>
 <20221104205414.2354973-6-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221104205414.2354973-6-anthony.l.nguyen@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1667804591;
 bh=NeucI/3zqp+akpMtsKu8R5lV8B05UIL+na/Byd+Rj9g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GMvWpZHfpUKMMWUVUlKvnZB87GZ1jI+LOXMNEJvAZbHo6nun/AOioT4iEc4OKutbD
 wXkSt40Wq/l+BrusYHPbp2TRdql1hLANQMlnU3prqbCJdAr+H9yinixOjX0jycFIBd
 4EISOmaemvn+xCNBazGkpR34HJ1tJUahVWK4AMRNmXPJP+K8osrJI3IEc5rWTCAaBa
 F+paCNr9MRyjXOArxcC0zgjMXl4BJU1W9+uLi9/iBMrqW5gOkgM3ajzHos8XgtmfKC
 kN+a7tScDKHRIbBHw50P23O/HmWXwT040oKGrMxMKeH6qKPwWl2Gh8+H8Qd4wv9My/
 wW83dKy3Qv2Mg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=GMvWpZHf
Subject: Re: [Intel-wired-lan] [PATCH net-next 5/6] igb: Do not free
 q_vector unless new one was allocated
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
Cc: Kees Cook <keescook@chromium.org>, netdev@vger.kernel.org,
 "Michael J . Ruhl" <michael.j.ruhl@intel.com>, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Nov 04, 2022 at 01:54:13PM -0700, Tony Nguyen wrote:
> From: Kees Cook <keescook@chromium.org>
> 
> Avoid potential use-after-free condition under memory pressure. If the
> kzalloc() fails, q_vector will be freed but left in the original
> adapter->q_vector[v_idx] array position.
> 
> Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Eric Dumazet <edumazet@google.com>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: Paolo Abeni <pabeni@redhat.com>
> Cc: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Signed-off-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Michael J. Ruhl <michael.j.ruhl@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)

You should use first and last names here.

> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index d6c1c2e66f26..c2bb658198bf 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -1202,8 +1202,12 @@ static int igb_alloc_q_vector(struct igb_adapter *adapter,
>  	if (!q_vector) {
>  		q_vector = kzalloc(size, GFP_KERNEL);
>  	} else if (size > ksize(q_vector)) {
> -		kfree_rcu(q_vector, rcu);
> -		q_vector = kzalloc(size, GFP_KERNEL);
> +		struct igb_q_vector *new_q_vector;
> +
> +		new_q_vector = kzalloc(size, GFP_KERNEL);
> +		if (new_q_vector)
> +			kfree_rcu(q_vector, rcu);
> +		q_vector = new_q_vector;

I wonder if this is correct.
1. if new_q_vector is NULL, you will overwrite q_vector without releasing it.
2. kfree_rcu() doesn't immediately release memory, but after grace
period, but here you are overwriting the pointer which is not release
yet.


>  	} else {
>  		memset(q_vector, 0, size);
>  	}
> -- 
> 2.35.1
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
