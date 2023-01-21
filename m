Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A5563676343
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Jan 2023 04:11:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EBB7441DA0;
	Sat, 21 Jan 2023 03:11:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EBB7441DA0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674270701;
	bh=5FZA0tYrlTD/x1FDYm/kqNeLkaLEpKA3UOPUl/MDsLE=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sFDBzqu6NIRzv2RzCPXkVi5famCECSaQbjGjv/D2RwqktJKeLQ5JM3wiTUfvf2hrT
	 /M8RxoBLFah43jmMMD1bAZxiC+1JyMgQk8cn9rBXkhaXF1N8MdwWv6XVCRUCokxYm3
	 zBfCbv56f1+8wf6ZwcsMw56CDBnVpXg6XLc5QUfaV7Nxl54Ok/5wD3DVnpugrVdr9+
	 6s8xY09+zmeHn0EugL5lDEW/kfAX9JLwtwSEqNoX9CLKQGs42tKyYSGVTZyoBacUqn
	 8gZQZnAF90lnRXqkYHKsapfLKCievi9B/VOXzcxUVCQM9XzCMK7qfM0cdAOXQh8qrv
	 meTMZMRTnN7jQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AjLRMbqXGi3k; Sat, 21 Jan 2023 03:11:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 85EB141D95;
	Sat, 21 Jan 2023 03:11:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 85EB141D95
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 82F8C1BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jan 2023 03:11:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 58C9461015
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jan 2023 03:11:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 58C9461015
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tKxx02CWPxbY for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Jan 2023 03:11:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 313CD60F98
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 313CD60F98
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jan 2023 03:11:33 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 1E736B82B88;
 Sat, 21 Jan 2023 03:11:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89DB8C433D2;
 Sat, 21 Jan 2023 03:11:27 +0000 (UTC)
Date: Fri, 20 Jan 2023 19:11:26 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Lorenzo Bianconi <lorenzo@kernel.org>
Message-ID: <20230120191126.06c9d514@kernel.org>
In-Reply-To: <272fa19f57de2d14e9666b4cd9b1ae8a61a94807.1674234430.git.lorenzo@kernel.org>
References: <cover.1674234430.git.lorenzo@kernel.org>
 <272fa19f57de2d14e9666b4cd9b1ae8a61a94807.1674234430.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674270688;
 bh=0Ahj2+lLhgamHf1JuTMBQvTGpUhCziAO+zN7cZlAgC8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=svDoaH82a7e6lBsakjnsprasdriJYV5fpwVBhgA/gbE6g9PX1jrqMkqnFVWV7TwLk
 X3Zeg0eteiYeAmcW4hC0VOug9SlqzDWNvm0xxa7emc/RqzNyHkGxro9Yv+DK/dv1Ri
 92r02by2ezsn9dkkE1vsIGlmQ2alDPRKEKLcRaJF8d6O1sRXl57GRf/59sf7GwUGxz
 /Uj2zP+lYxnaRJlyta7+8tVJHeov8gTyUjH/Ewrzo9Wokruj0T9189gPaHDK4fqetZ
 grpMZy67/YX6VoTXviUDO0rdd9cLS3fi7NjGkVRaBYBNCeRi2en3IgVg4BSN8S74w9
 TFu08XGxYEbYw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=svDoaH82
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 1/7] netdev-genl: create a
 simple family for netdev stuff
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

On Fri, 20 Jan 2023 18:16:50 +0100 Lorenzo Bianconi wrote:
> From: Jakub Kicinski <kuba@kernel.org>
> 
> Add a Netlink spec-compatible family for netdevs.
> This is a very simple implementation without much
> thought going into it.
> 
> It allows us to reap all the benefits of Netlink specs,
> one can use the generic client to issue the commands:
> 
>   $ ./gen.py --spec netdev.yaml --do dev_get --json='{"ifindex": 2}'
>   {'ifindex': 2, 'xdp-features': 31}
> 
>   $ ./gen.py --spec netdev.yaml --dump dev_get
>   [{'ifindex': 1, 'xdp-features': 0}, {'ifindex': 2, 'xdp-features': 31}]

In the meantime I added support for rendering enums in Python.
So you can show names in the example. eg:

$ ./cli.py --spec netdev.yaml --dump dev_get 
[{'ifindex': 1, 'xdp-features': set()},
 {'ifindex': 2,
  'xdp-features': {'ndo-xmit', 'pass', 'redirect', 'aborted', 'drop'}},
 {'ifindex': 3, 'xdp-features': {'rx-sg'}}]

> the generic python library does not have flags-by-name
> support, yet, but we also don't have to carry strings
> in the messages, as user space can get the names from
> the spec.
> 
> Co-developed-by: Lorenzo Bianconi <lorenzo@kernel.org>
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> Co-developed-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
> Signed-off-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
> Co-developed-by: Marek Majtyka <alardam@gmail.com>
> Signed-off-by: Marek Majtyka <alardam@gmail.com>
> Signed-off-by: Jakub Kicinski <kuba@kernel.org>
> ---
>  Documentation/netlink/specs/netdev.yaml |  72 ++++++++++

FWIW I'm not 100% sure if we should scope the family to all of netdev
or just xdp. Same for the name of the op, should we call the op dev_get
or dev_xdp_get..

> diff --git a/include/uapi/linux/netdev.h b/include/uapi/linux/netdev.h
> new file mode 100644
> index 000000000000..254fc336d469
> --- /dev/null
> +++ b/include/uapi/linux/netdev.h
> @@ -0,0 +1,66 @@
> +/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
> +/* Do not edit directly, auto-generated from: */

Like this line says, you can't hand edit this file.
Next time someone adds an attribute all your changes will be wiped.

> +/*	Documentation/netlink/specs/netdev.yaml */
> +/* YNL-GEN uapi header */
> +
> +#ifndef _UAPI_LINUX_NETDEV_H
> +#define _UAPI_LINUX_NETDEV_H
> +
> +#define NETDEV_FAMILY_NAME	"netdev"
> +#define NETDEV_FAMILY_VERSION	1
> +
> +enum netdev_xdp_act {
> +	NETDEV_XDP_ACT_ABORTED_BIT,
> +	NETDEV_XDP_ACT_DROP_BIT,
> +	NETDEV_XDP_ACT_PASS_BIT,
> +	NETDEV_XDP_ACT_TX_BIT,
> +	NETDEV_XDP_ACT_REDIRECT_BIT,
> +	NETDEV_XDP_ACT_NDO_XMIT_BIT,
> +	NETDEV_XDP_ACT_XSK_ZEROCOPY_BIT,
> +	NETDEV_XDP_ACT_HW_OFFLOAD_BIT,
> +	NETDEV_XDP_ACT_RX_SG_BIT,
> +	NETDEV_XDP_ACT_NDO_XMIT_SG_BIT

You need to add -bit to all the enum names in the yaml if you want 
to have _BIT in the name here.

> +};
> +
> +#define NETDEV_XDP_ACT_ABORTED		BIT(NETDEV_XDP_ACT_ABORTED_BIT)
> +#define NETDEV_XDP_ACT_DROP		BIT(NETDEV_XDP_ACT_DROP_BIT)
> +#define NETDEV_XDP_ACT_PASS		BIT(NETDEV_XDP_ACT_PASS_BIT)
> +#define NETDEV_XDP_ACT_TX		BIT(NETDEV_XDP_ACT_TX_BIT)
> +#define NETDEV_XDP_ACT_REDIRECT		BIT(NETDEV_XDP_ACT_REDIRECT_BIT)
> +#define NETDEV_XDP_ACT_NDO_XMIT		BIT(NETDEV_XDP_ACT_NDO_XMIT_BIT)
> +#define NETDEV_XDP_ACT_XSK_ZEROCOPY	BIT(NETDEV_XDP_ACT_XSK_ZEROCOPY_BIT)
> +#define NETDEV_XDP_ACT_HW_OFFLOAD	BIT(NETDEV_XDP_ACT_HW_OFFLOAD_BIT)
> +#define NETDEV_XDP_ACT_RX_SG		BIT(NETDEV_XDP_ACT_RX_SG_BIT)
> +#define NETDEV_XDP_ACT_NDO_XMIT_SG	BIT(NETDEV_XDP_ACT_NDO_XMIT_SG_BIT)
> +
> +#define NETDEV_XDP_ACT_BASIC		(NETDEV_XDP_ACT_DROP |	\
> +					 NETDEV_XDP_ACT_PASS |	\
> +					 NETDEV_XDP_ACT_TX |	\
> +					 NETDEV_XDP_ACT_ABORTED)
> +#define NETDEV_XDP_ACT_FULL		(NETDEV_XDP_ACT_BASIC |	\
> +					 NETDEV_XDP_ACT_REDIRECT)
> +#define NETDEV_XDP_ACT_ZC		(NETDEV_XDP_ACT_FULL |	\
> +					 NETDEV_XDP_ACT_XSK_ZEROCOPY)

These defines don't belong in uAPI. Especially the use of BIT().

> +			if (err < 0)
> +				break;
> +cont:
> +			idx++;
> +		}
> +	}
> +
> +	rtnl_unlock();
> +
> +	if (err != -EMSGSIZE)
> +		return err;
> +
> +	cb->args[1] = idx;
> +	cb->args[0] = h;
> +	cb->seq = net->dev_base_seq;
> +	nl_dump_check_consistent(cb, nlmsg_hdr(skb));

I think that this line can be dropped.

> +	return skb->len;
> +}
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
