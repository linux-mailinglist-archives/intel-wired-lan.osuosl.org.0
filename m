Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC72676344
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Jan 2023 04:12:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0B65161307;
	Sat, 21 Jan 2023 03:12:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0B65161307
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674270726;
	bh=NyDlCZqKC/mkfnVWHKiNKjm8JsXMBQIm2aVhjU1XEfg=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3bEH+Mvw1EikzcAsFuxfBOGGy6h9YL9Bo2UtTJw+9NDeAGqpEzt09Oq9xksYWG9Tz
	 B9wQrX8m1dCAuiz6h7/D0ddlPYPhji5sO17pMIVsP7ce7XIXqLBxGGhDUg4c90KCkb
	 NuaqyzsgbDQ66O0Ws4KdpcvuIAWCY3JEjWtd5I3O7kI/nSl1Aj3cmGdbIw3xA+Byyd
	 nTHep2fYJvad3TKMNI7NZ0ST5MWmvYdVoOifnnuQltbDEg51pqGtr5ATbxQjFPbuuX
	 9CJGeOZwdOUaZaT66E0MT3qdNxlXrL2aIUHrj40H8b8rmbgZ5cHx+2Cbj73vzLFGJq
	 +tHDBf/F8HpCw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iLpd7AL-reCk; Sat, 21 Jan 2023 03:12:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 714E0612EF;
	Sat, 21 Jan 2023 03:12:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 714E0612EF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F019E1BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jan 2023 03:11:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C911741D94
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jan 2023 03:11:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C911741D94
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DlfA2zo8wGEg for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Jan 2023 03:11:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E3E1541D95
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E3E1541D95
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jan 2023 03:11:57 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 1118EB82B88;
 Sat, 21 Jan 2023 03:11:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E036C433D2;
 Sat, 21 Jan 2023 03:11:53 +0000 (UTC)
Date: Fri, 20 Jan 2023 19:11:52 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Lorenzo Bianconi <lorenzo@kernel.org>
Message-ID: <20230120191152.44d29bb1@kernel.org>
In-Reply-To: <861224c406f78694530fde0d52c49d92e1e990a2.1674234430.git.lorenzo@kernel.org>
References: <cover.1674234430.git.lorenzo@kernel.org>
 <861224c406f78694530fde0d52c49d92e1e990a2.1674234430.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674270714;
 bh=+ECSThDtgHq6VGg+SpyqaVTiA6kkOP5Gz3WruwdxuCs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Q7fCzHWAYbDwT4PYu3HePieOlwppJsOEOFtdfUuolfJPWgFq0jBNXAdrvnAOgquy8
 O1XVFROVjdXeWMYkxtLP1j+W4W2I78YxWIkhGt3aKVVJdE5ryRxRXvQR4hNIseKnmy
 paFDe+9oEu9pVRQgkWYhkeTw4M8zsMmwf0x4eDo8qXG2JOfmYZ/Kuh8PxFkYaX9c+R
 w9UyryL+dHSOi3qRsGfVWZLeyhpsKJ1i1yczFjpFeL8w7oKhVCBzk51CR/FzJ2UXWd
 6SIwaIz7a8BrPWmEE3ICu9TKPSQvrod+3UPzt9Lj5yB5x0ygjpkNavxF01pdY+ihlf
 f63olYqn4KsrQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Q7fCzHWA
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 2/7] drivers: net: turn on
 XDP features
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
Cc: mst@redhat.com, vladimir.oltean@nxp.com, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, daniel@iogearbox.net,
 niklas.soderlund@corigine.com, andrii@kernel.org,
 intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com, pabeni@redhat.com,
 aelior@marvell.com, hawk@kernel.org, christophe.jaillet@wanadoo.fr,
 memxor@gmail.com, john@phrozen.org, bjorn@kernel.org, bpf@vger.kernel.org,
 magnus.karlsson@intel.com, leon@kernel.org, netdev@vger.kernel.org,
 toke@redhat.com, ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
 saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 20 Jan 2023 18:16:51 +0100 Lorenzo Bianconi wrote:
> +static inline void
> +xdp_features_set_redirect_target(xdp_features_t *xdp_features, bool support_sg)
> +{
> +	*xdp_features |= NETDEV_XDP_ACT_NDO_XMIT;
> +	if (support_sg)
> +		*xdp_features |= NETDEV_XDP_ACT_NDO_XMIT_SG;
> +}
> +
> +static inline void
> +xdp_features_clear_redirect_target(xdp_features_t *xdp_features)
> +{
> +	*xdp_features &= ~(NETDEV_XDP_ACT_NDO_XMIT |
> +			   NETDEV_XDP_ACT_NDO_XMIT_SG);
> +}
> +

Shouldn't these generate netlink notifications?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
