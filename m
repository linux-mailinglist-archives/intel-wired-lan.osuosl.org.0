Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E735E51E546
	for <lists+intel-wired-lan@lfdr.de>; Sat,  7 May 2022 09:38:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E45F60E11;
	Sat,  7 May 2022 07:38:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UoSHzRrtNgMP; Sat,  7 May 2022 07:38:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 632C560DFF;
	Sat,  7 May 2022 07:38:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 412681BF5B5
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 May 2022 07:38:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 35181829AF
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 May 2022 07:38:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id smnUNNuVbVm3 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  7 May 2022 07:38:04 +0000 (UTC)
X-Greylist: delayed 00:09:23 by SQLgrey-1.8.0
Received: from a.mx.secunet.com (a.mx.secunet.com [62.96.220.36])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C17CB829A9
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 May 2022 07:38:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by a.mx.secunet.com (Postfix) with ESMTP id 28CB220501;
 Sat,  7 May 2022 09:28:37 +0200 (CEST)
X-Virus-Scanned: by secunet
Received: from a.mx.secunet.com ([127.0.0.1])
 by localhost (a.mx.secunet.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l9ZUqdJwKGbd; Sat,  7 May 2022 09:28:36 +0200 (CEST)
Received: from mailout1.secunet.com (mailout1.secunet.com [62.96.220.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by a.mx.secunet.com (Postfix) with ESMTPS id 5D9E6200A2;
 Sat,  7 May 2022 09:28:36 +0200 (CEST)
Received: from cas-essen-01.secunet.de (unknown [10.53.40.201])
 by mailout1.secunet.com (Postfix) with ESMTP id 55E8A80004A;
 Sat,  7 May 2022 09:28:36 +0200 (CEST)
Received: from mbx-essen-01.secunet.de (10.53.40.197) by
 cas-essen-01.secunet.de (10.53.40.201) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Sat, 7 May 2022 09:28:36 +0200
Received: from gauss2.secunet.de (10.182.7.193) by mbx-essen-01.secunet.de
 (10.53.40.197) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.24; Sat, 7 May
 2022 09:28:35 +0200
Received: by gauss2.secunet.de (Postfix, from userid 1000)
 id 5B3E53180AAB; Sat,  7 May 2022 09:28:35 +0200 (CEST)
Date: Sat, 7 May 2022 09:28:35 +0200
From: Steffen Klassert <steffen.klassert@secunet.com>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20220507072835.GI680067@gauss3.secunet.de>
References: <cover.1651743750.git.leonro@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1651743750.git.leonro@nvidia.com>
X-ClientProxiedBy: cas-essen-02.secunet.de (10.53.40.202) To
 mbx-essen-01.secunet.de (10.53.40.197)
X-EXCLAIMER-MD-CONFIG: 2c86f778-e09b-4440-8b15-867914633a10
Subject: Re: [Intel-wired-lan] [PATCH ipsec-next 0/8] Be explicit with XFRM
 offload direction
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>, netdev@vger.kernel.org,
 David Ahern <dsahern@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>,
 intel-wired-lan@lists.osuosl.org, Raed Salem <raeds@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Leon Romanovsky <leonro@nvidia.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, May 05, 2022 at 01:06:37PM +0300, Leon Romanovsky wrote:
> From: Leon Romanovsky <leonro@nvidia.com>
> 
> Hi Steffen,
> 
> I may admit that the title of this series is not the best one as it
> contains straightforward cleanups and code that converts flags to
> something less confusing.
> 
> This series follows removal of FPGA IPsec code from the mlx5 driver and
> based on net-next commit 4950b6990e3b ("Merge branch 'ocelot-vcap-cleanups'").
> 
> As such, first two patches delete code that was used by mlx5 FPGA code
> but isn't needed anymore.
> 
> Third patch is simple struct rename.
> 
> Rest of the patches separate user's provided flags variable from driver's
> usage. This allows us to created more simple in-kernel interface, that
> supports type checking without blending different properties into one
> variable. It is achieved by converting flags to specific bitfield variables
> with clear, meaningful names.
>     
> Such change allows us more clear addition of new input flags needed to
> mark IPsec offload type.
> 
> The followup code uses this extensively:
> https://git.kernel.org/pub/scm/linux/kernel/git/leon/linux-rdma.git/log/?h=xfrm-next
> 
> Thanks
> 
> Leon Romanovsky (8):
>   xfrm: free not used XFRM_ESP_NO_TRAILER flag
>   xfrm: delete not used number of external headers
>   xfrm: rename xfrm_state_offload struct to allow reuse
>   xfrm: store and rely on direction to construct offload flags
>   ixgbe: propagate XFRM offload state direction instead of flags
>   netdevsim: rely on XFRM state direction instead of flags
>   net/mlx5e: Use XFRM state direction instead of flags
>   xfrm: drop not needed flags variable in XFRM offload struct

Series applied, thanks a lot Leon!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
