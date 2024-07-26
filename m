Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8203893D6B2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jul 2024 18:10:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 22BA060634;
	Fri, 26 Jul 2024 16:10:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1TlS-ZjayEsd; Fri, 26 Jul 2024 16:10:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 458F660AF0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722010203;
	bh=seSKDYdTx9SYVdrvHy+ITxpcBEyXIxTfTqHvjWaVtUA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=drwm20WUF4qlu495Tl5KrxAGAX2MO8nrxyrjS2V4qB8f6KNV5x5fyNFI5kBLDL84d
	 pYyyf6SpScT1Zvcz0OVpy/+LerxcsDaos4BHoNmNrdD7GiDFohdbdKWRIASeWGG2at
	 ZOrTKeasMOoqWG2+gfOR15yYvHoD5G+jAYCTVS2/n9yRHSbQoiSp4eh1un7w6IBiqL
	 l4MD29wrU07F/BeB2WC1m8WrTVmiB8boebs31IFUPpsSg3E30tJryhrNIWY/CnaOf7
	 AFsajCd2FDnGAhmempcyKP+lAojo70nFMLPuWVL1BF1TO9dFWpEb5Ciw2i1DPmc/Vb
	 ElZ9+j3yVhuvQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 458F660AF0;
	Fri, 26 Jul 2024 16:10:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A635A1BF860
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2024 16:10:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9259E4030B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2024 16:10:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3_0HmN7Mqe84 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jul 2024 16:10:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 808F5402C9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 808F5402C9
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 808F5402C9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2024 16:09:59 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id CAFFE61831;
 Fri, 26 Jul 2024 16:09:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74F6BC32782;
 Fri, 26 Jul 2024 16:09:56 +0000 (UTC)
Date: Fri, 26 Jul 2024 17:09:54 +0100
From: Simon Horman <horms@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20240726160954.GO97837@kernel.org>
References: <20240724134024.2182959-1-aleksander.lobakin@intel.com>
 <20240724134024.2182959-2-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240724134024.2182959-2-aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1722010198;
 bh=AWvw3eax2CYJAfNzSApso/eG5j5f7iJdJCcd66tWino=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gMOBOmrmvE9PBAcK9qnC2qsWdm1FDQ0prQUdITFLNu/ot0o9cpabw+1b/Jz7Vrjzv
 te/QS5k6U6w8uSLzmU5mvxTbh+nCZ0vLEtgueNHkNkKYMVhr5LSWqe2jHo9kWITeS8
 vt+pw5qhcCFeMvNKV60L7D7V/DAxkv4JnWeWkLswuHdUsbSMYznmCzNK2pV0tXdYAR
 xFo8EK3iUVm5p67uA5yszAMPIelCWJFoNMm42Dm93RSdfkPEEnoFj5zClwjVeyvsKm
 Q8t5KfqQdinnpW2rOy19i81d2ls1GhzjTA6qt7MHyhCi4aN1PaWXqc6ov6NO1RGIaO
 Jk0MP4MZPT82w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=gMOBOmrm
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/3] idpf: fix memory leaks
 and crashes while performing a soft reset
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
Cc: nex.sw.ncis.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jul 24, 2024 at 03:40:22PM +0200, Alexander Lobakin wrote:
> The second tagged commit introduced a UAF, as it removed restoring
> q_vector->vport pointers after reinitializating the structures.
> This is due to that all queue allocation functions are performed here
> with the new temporary vport structure and those functions rewrite
> the backpointers to the vport. Then, this new struct is freed and
> the pointers start leading to nowhere.
> 
> But generally speaking, the current logic is very fragile. It claims
> to be more reliable when the system is low on memory, but in fact, it
> consumes two times more memory as at the moment of running this
> function, there are two vports allocated with their queues and vectors.
> Moreover, it claims to prevent the driver from running into "bad state",
> but in fact, any error during the rebuild leaves the old vport in the
> partially allocated state.
> Finally, if the interface is down when the function is called, it always
> allocates a new queue set, but when the user decides to enable the
> interface later on, vport_open() allocates them once again, IOW there's
> a clear memory leak here.
> 
> Just don't allocate a new queue set when performing a reset, that solves
> crashes and memory leaks. Readd the old queue number and reopen the
> interface on rollback - that solves limbo states when the device is left
> disabled and/or without HW queues enabled.
> 
> Fixes: 02cbfba1add5 ("idpf: add ethtool callbacks")
> Fixes: e4891e4687c8 ("idpf: split &idpf_queue into 4 strictly-typed queue structures")
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_lib.c | 30 +++++++++++-----------
>  1 file changed, 15 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c

...

> @@ -1932,17 +1926,23 @@ int idpf_initiate_soft_reset(struct idpf_vport *vport,
>  
>  	err = idpf_set_real_num_queues(vport);
>  	if (err)
> -		goto err_reset;
> +		goto err_open;
>  
>  	if (current_state == __IDPF_VPORT_UP)
> -		err = idpf_vport_open(vport, false);
> +		err = idpf_vport_open(vport);
>  
>  	kfree(new_vport);
>  
>  	return err;
>  
>  err_reset:
> -	idpf_vport_queues_rel(new_vport);
> +	idpf_send_add_queues_msg(vport, vport->num_txq, vport->num_complq,
> +				 vport->num_rxq, vport->num_bufq);
> +
> +err_open:
> +	if (current_state == __IDPF_VPORT_UP)
> +		idpf_vport_open(vport);

Hi Alexander,

Can the system end up in an odd state if this call to idpf_vport_open(), or
the one above, fails. Likewise if the above call to
idpf_send_add_queues_msg() fails.

> +
>  free_vport:
>  	kfree(new_vport);
>  

...
