Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F331BCCFA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2020 22:06:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 823A72281C;
	Tue, 28 Apr 2020 20:06:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KKxQWXRr-4ez; Tue, 28 Apr 2020 20:06:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 30B96227AA;
	Tue, 28 Apr 2020 20:06:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2E9841BF404
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2020 05:37:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2430D85CA3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2020 05:37:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hnwgs35gxY5i for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Apr 2020 05:37:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 68ADC85BEE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Apr 2020 05:37:46 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id 19so17473335ioz.10
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Apr 2020 22:37:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:message-id:in-reply-to:references:subject
 :mime-version:content-transfer-encoding;
 bh=tL+qipNVp0axt8MgUNyBBCFISAXshnda5LNf/QeXDZM=;
 b=fsUxvgCB+VPK0/aDbVBI8gWq6EZDbyD5rBfJzFhy4GewS9VPZjQrUcaHnvMOtQ5ARF
 4UsT32cx6QpEWUVe5tmX4RjkDLjMU3PlqP2LHtRDnu/vgUYTrnjMpZ1WAFplGZZZxfQX
 +EP5mb8D229S1kG7ApB0kKEoJ5pSDrKqBlohqjrrJWOKiPDQwq7vltco9Z9Zobd8jHF5
 dHUEfnFtrJWnb9YTaCHvsm12y6M0ytR0F7eN9xAOQfFHIBuX8X4RmljqBPm6GsHo/m6J
 wOHFvhHY7OL/2hCBSzjj6DlSzHAXJBB5xT8sA7WKtSHA96NJeT510PentoA+mL+Fhpzv
 NMNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:message-id:in-reply-to
 :references:subject:mime-version:content-transfer-encoding;
 bh=tL+qipNVp0axt8MgUNyBBCFISAXshnda5LNf/QeXDZM=;
 b=FqV/2SfuxAjeoSofTAf4GJDoGl3tG7cJWtoaobW/mw0n8hD4DpZ5yS5sn4CEKp9i+3
 1vMmnbOUs9XyFkQPxCAL/iTGstnUol5fu6/k5+mEGoIffUnW/cExWmqPYv5C10qBCxfc
 Zu1dSqv192eiEvC+yUxWngp24IgDGrQvI/OZmo/5VR18w2gg7W3MX+BwwN8lBRhhl1kF
 FdFH+qVImNW0M79cc/Yi2jp21WuNsO80lGlbBfJaf5cX9ifgoKLLchvyKgxXPnWkNaEQ
 ZqK/554Of12Bay6e7RFUfwdfmqu0BzT/bWRFiNUbGV3VPuq4ipE69mwYkf87xp9aNG75
 6sYA==
X-Gm-Message-State: AGi0PubURWKVruQUhmv162O+v5NDWrsvk4cWy5Q6n6IVPdjWr6Br/LM1
 ht3Q+VYfx5ZX/QUzzplkY60=
X-Google-Smtp-Source: APiQypJREIYV3srg4ohE4ydykarXFEdfvDdWLOdvIjnpzBL1w/3ntCsfDxXZPrRMc/IHRDbaGfLknA==
X-Received: by 2002:a6b:6405:: with SMTP id t5mr19000277iog.149.1587965865574; 
 Sun, 26 Apr 2020 22:37:45 -0700 (PDT)
Received: from localhost ([184.63.162.180])
 by smtp.gmail.com with ESMTPSA id o1sm5059676ilg.34.2020.04.26.22.37.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Apr 2020 22:37:44 -0700 (PDT)
Date: Sun, 26 Apr 2020 22:37:35 -0700
From: John Fastabend <john.fastabend@gmail.com>
To: Jesper Dangaard Brouer <brouer@redhat.com>, 
 sameehj@amazon.com
Message-ID: <5ea66f9f84ba1_59462aeb755845b813@john-XPS-13-9370.notmuch>
In-Reply-To: <158757160439.1370371.13213378122947426220.stgit@firesoul>
References: <158757160439.1370371.13213378122947426220.stgit@firesoul>
Mime-Version: 1.0
X-Mailman-Approved-At: Tue, 28 Apr 2020 20:06:39 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next 00/33] XDP extend with
 knowledge of frame size
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
Cc: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>,
 Jason Wang <jasowang@redhat.com>, GR-everest-linux-l2@marvell.com,
 thomas.petazzoni@bootlin.com, akiyano@amazon.com, steffen.klassert@secunet.com,
 Wei Liu <wei.liu@kernel.org>, Stephen Hemminger <sthemmin@microsoft.com>,
 Ioana Radulescu <ruxandra.radulescu@nxp.com>,
 Toshiaki Makita <toshiaki.makita1@gmail.com>,
 Alexei Starovoitov <alexei.starovoitov@gmail.com>,
 Saeed Mahameed <saeedm@mellanox.com>, intel-wired-lan@lists.osuosl.org,
 Jesper Dangaard Brouer <brouer@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>, gtzalik@amazon.com,
 Sunil Goutham <sgoutham@marvell.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>, Ariel Elior <aelior@marvell.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 Michael Chan <michael.chan@broadcom.com>,
 Andy Gospodarek <andrew.gospodarek@broadcom.com>, bpf@vger.kernel.org,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Daniel Borkmann <borkmann@iogearbox.net>, zorik@amazon.com,
 netdev@vger.kernel.org, Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Mao Wenan <maowenan@huawei.com>, Robert Richter <rrichter@marvell.com>,
 David Ahern <dsahern@gmail.com>, Andy Gospodarek <gospo@broadcom.com>,
 Tariq Toukan <tariqt@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Jesper Dangaard Brouer wrote:
> (Send for net-next due to all the driver updates)
> 
> XDP have evolved to support several frame sizes, but xdp_buff was not
> updated with this information. This have caused the side-effect that
> XDP frame data hard end is unknown. This have limited the BPF-helper
> bpf_xdp_adjust_tail to only shrink the packet. This patchset address
> this and add packet tail extend/grow.
> 
> The purpose of the patchset is ALSO to reserve a memory area that can be
> used for storing extra information, specifically for extending XDP with
> multi-buffer support. One proposal is to use same layout as
> skb_shared_info, which is why this area is currently 320 bytes.
> 
> When converting xdp_frame to SKB (veth and cpumap), the full tailroom
> area can now be used and SKB truesize is now correct. For most
> drivers this result in a much larger tailroom in SKB "head" data
> area. The network stack can now take advantage of this when doing SKB
> coalescing. Thus, a good driver test is to use xdp_redirect_cpu from
> samples/bpf/ and do some TCP stream testing.
> 
> Use-cases for tail grow/extend:
> (1) IPsec / XFRM needs a tail extend[1][2].
> (2) DNS-cache responses in XDP.
> (3) HAProxy ALOHA would need it to convert to XDP.
> 
> [1] http://vger.kernel.org/netconf2019_files/xfrm_xdp.pdf
> [2] http://vger.kernel.org/netconf2019.html
> 

Hi Jesper, Overall series looks good to me. One question about the
memset on grow though. (typo in specific reply meant data for with and
without the memset would be nice) For a hairpin use case where the
data is then sent back onto the wire it would be nice to avoid that
memset. Could we mark the packet with a flag and then only clear if
the user tries to pass it to the stack for instance?

Lots of patches but also seems OK given the majority are for each
driver.

The comment about the warning being a warn on once also seems like a
good catch.

Thanks,
John
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
