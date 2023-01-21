Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 710A4677FEC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Jan 2023 16:37:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E2BC60E9D;
	Mon, 23 Jan 2023 15:37:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E2BC60E9D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674488243;
	bh=7h1hrnLDJahCFCnBDz54F7/zMXYXBqiQnJ+i/028amc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PPrY5/EI2FHHMcL5hnK2CkxC7r1tI9UYg8Ej9ffgjWoBBeVuPUfj3VNJkOWlCi37N
	 af1UznppIEr+2iW+5VjWFKeRZEVIx73RHF3OAPq80jIKrID7fNyFwFqw/u+vQgaqqc
	 itXPMcUbHc3h8CqHETM9oEwmT19e092Dq6VzQp0Xc2HaatK3YWW37ZzR8kWIuwv2iY
	 2cwLorqLhQwzed+0PyTn05iyakIMhTLstgA/eY1nYplO/hSLIFNdASNxIRQWb9RMua
	 eDtn36FsaboQFbzx91RSTGRYn18fQ8nRgLQm1f+fWc6VIjms5drCmRodGmh0ya1W8K
	 UtszxjCKkJ1Ug==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HkIXh7a7hcDA; Mon, 23 Jan 2023 15:37:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 08E9760C2A;
	Mon, 23 Jan 2023 15:37:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 08E9760C2A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 343571BF30B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jan 2023 02:09:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0CDF14047C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jan 2023 02:09:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0CDF14047C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x24LY0aIRcMD for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Jan 2023 02:09:32 +0000 (UTC)
X-Greylist: delayed 00:07:01 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 913684029B
Received: from out2.migadu.com (out2.migadu.com [IPv6:2001:41d0:2:aacc::])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 913684029B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jan 2023 02:09:32 +0000 (UTC)
Message-ID: <d0232e99-862b-3255-aeac-7c04486cb773@linux.dev>
Date: Fri, 20 Jan 2023 18:02:18 -0800
MIME-Version: 1.0
Content-Language: en-US
To: Lorenzo Bianconi <lorenzo@kernel.org>
References: <cover.1674234430.git.lorenzo@kernel.org>
 <acc9460e6e29dfe02cf474735277e196b500d2ef.1674234430.git.lorenzo@kernel.org>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Martin KaFai Lau <martin.lau@linux.dev>
In-Reply-To: <acc9460e6e29dfe02cf474735277e196b500d2ef.1674234430.git.lorenzo@kernel.org>
X-Migadu-Flow: FLOW_OUT
X-Mailman-Approved-At: Mon, 23 Jan 2023 15:37:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1674266546;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=AQqw4MaC7sDy3U78U5FoOgEOrGLlK0bh/i/vClev/8k=;
 b=pLWjGNAsHVCXTKCyIdGQJ7wmhWbpo++mHOOIhWUum9kXoZXVre8rTHFRo5tH3qANtpoWBi
 EN2B4rYWjt5IpA7EDqfuVGn3+uFTX85mvM7nPXnB5gJs16vytOz53WC9BHbE18TLq+lMO5
 iO+8OE6+DEJJWG1y4qtX9m/+YTaKyL0=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=pLWjGNAs
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 6/7] bpf: devmap: check XDP
 features in bpf_map_update_elem and __xdp_enqueue
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
 intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com, kuba@kernel.org,
 pabeni@redhat.com, aelior@marvell.com, hawk@kernel.org,
 christophe.jaillet@wanadoo.fr, memxor@gmail.com, john@phrozen.org,
 bjorn@kernel.org, bpf@vger.kernel.org, magnus.karlsson@intel.com,
 leon@kernel.org, netdev@vger.kernel.org, toke@redhat.com,
 ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
 saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/20/23 9:16 AM, Lorenzo Bianconi wrote:
> ---
>   kernel/bpf/devmap.c | 25 +++++++++++++++++++++----
>   net/core/filter.c   | 13 +++++--------
>   2 files changed, 26 insertions(+), 12 deletions(-)
> 
> diff --git a/kernel/bpf/devmap.c b/kernel/bpf/devmap.c
> index d01e4c55b376..69ceecc792df 100644
> --- a/kernel/bpf/devmap.c
> +++ b/kernel/bpf/devmap.c
> @@ -474,7 +474,11 @@ static inline int __xdp_enqueue(struct net_device *dev, struct xdp_frame *xdpf,
>   {
>   	int err;
>   
> -	if (!dev->netdev_ops->ndo_xdp_xmit)
> +	if (!(dev->xdp_features & NETDEV_XDP_ACT_NDO_XMIT))

The current "dev->netdev_ops->ndo_xdp_xmit" check is self explaining.
Any plan to put some document for the NETDEV_XDP_ACT_* values?

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
