Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F26867AF61
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jan 2023 11:12:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7CB8E40C03;
	Wed, 25 Jan 2023 10:12:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7CB8E40C03
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674641561;
	bh=n9Wjq4S6m49ESIaEQVE5KkPzjx05WLG+1u6uHa5V9bs=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jOudQwnFzB2ARtqULsjf34qDY/wVxNRIF1LnJdemzP7eBmAiABrnewXsYpHgAEwQe
	 tpGukGQK52MR94lt4Yuaa6mvLMa4K1iWb4V0EBKxPvU6xpGkhAryeTHqJ9GaFDFh+g
	 rHatCor5CFe6v59/+iipTfEwAxweuAT2/mDKFxxUjCyfg7iVtcH/3vlD4JSoGuZmtB
	 FbCpwpurUjjtN5Am48NYtuAkHtTDHfmS14onsR3/8UTpe6f1sH0AgWBxw4K377Xnc0
	 4toNTozYv04qZ+076u0MlTfGJisrKYDawaR2xXiY8c8inhmBzEcVUnWza7BJOo9Lvg
	 FTQasupQkKWfw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ARvbxO0jq366; Wed, 25 Jan 2023 10:12:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4B01F4020B;
	Wed, 25 Jan 2023 10:12:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4B01F4020B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 38F461BF2BF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 10:12:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1E5FA6112B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 10:12:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1E5FA6112B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q5sItOdrPOR4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jan 2023 10:12:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 389F161122
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 389F161122
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 10:12:34 +0000 (UTC)
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-556-fMa8F9N4M4yRM8Y0tOR2tw-1; Wed, 25 Jan 2023 05:12:31 -0500
X-MC-Unique: fMa8F9N4M4yRM8Y0tOR2tw-1
Received: by mail-ed1-f71.google.com with SMTP id
 s14-20020a056402520e00b0049e0bea1c3fso12543175edd.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 02:12:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=39uUoxo0wfRAwahgj1y7dgLynrBafUqvtoFkUK46E0w=;
 b=uIOfCrX57VVCzh3wChskPT6Sqw9iQHRCqKgw7RJEFklGSe6ekD7/3RauNweRnTHmHp
 qclLRsSLEjGGWuBrDfjnxebsrAi1V01O72pcm9wFEESJYoHIRS98tQdWLrgNxi6g+e2k
 HPbdDP5R7Mvkk379NDOIgMeo+RD/6dx7FEYdWp+bifyQ92800ly9pqmgVgO/4u3DEOoy
 kohkl+3US+an0OuAmBN+dOYbI4YqS0DtpEou3ZBpaaqrRErR+43AuiygfkG0rG4JDDcR
 lleMjS8vNm4s2LL9xGb/ih15MnHJPHgKw4pzmMxhycWGKne537caHWYUCSKWmvfAQUvH
 EvsA==
X-Gm-Message-State: AFqh2krNM0/3QXP55uClWc0XH3y9FWofPYrGEy0C1igULRLg0inxt3i7
 czX6A36EyE54VFod9MUBjSPE+G8ykUK6J34qHFKHGqltSGZG0YAHFWWZ1Z7wus0IEFfJvvL4Hk6
 dhuvrRGWWkV+yd4Fymt60RZ60YDSptQ==
X-Received: by 2002:a05:6402:4019:b0:467:c3cb:49aa with SMTP id
 d25-20020a056402401900b00467c3cb49aamr39111460eda.4.1674641550415; 
 Wed, 25 Jan 2023 02:12:30 -0800 (PST)
X-Google-Smtp-Source: AMrXdXsVVXP8jouC5bDivbcMNoye/GXXOZe7JAjOCC0dE5q1ukSbNqOwTCdV8EhiTmYy6uLAjflwGQ==
X-Received: by 2002:a05:6402:4019:b0:467:c3cb:49aa with SMTP id
 d25-20020a056402401900b00467c3cb49aamr39111405eda.4.1674641550076; 
 Wed, 25 Jan 2023 02:12:30 -0800 (PST)
Received: from [192.168.41.200] (83-90-141-187-cable.dk.customer.tdc.net.
 [83.90.141.187]) by smtp.gmail.com with ESMTPSA id
 p8-20020a170906a00800b0084d3bf4498csm2185594ejy.140.2023.01.25.02.12.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 25 Jan 2023 02:12:29 -0800 (PST)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <5b849f25-3e2e-0a9a-01c2-6f1fa483cd57@redhat.com>
Date: Wed, 25 Jan 2023 11:12:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
To: Lorenzo Bianconi <lorenzo@kernel.org>, bpf@vger.kernel.org
References: <cover.1674606193.git.lorenzo@kernel.org>
 <b420eea0f362daa127448a5647a801d1ae9cb6dd.1674606196.git.lorenzo@kernel.org>
In-Reply-To: <b420eea0f362daa127448a5647a801d1ae9cb6dd.1674606196.git.lorenzo@kernel.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1674641552;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=39uUoxo0wfRAwahgj1y7dgLynrBafUqvtoFkUK46E0w=;
 b=SSk6mGWAxgp6g0Nr8Hp0FDXUZBrQxchEiwZ3Uh5gQQyUBbn9pG7p3/enUB8uhGDBs67Czy
 HaBOBsri6N/VuvQnQRJf8l5crtCdIwj7mWdxy1FNuLnsy8YWF/NLN6pTGb+JDLdeUlc8AS
 KjLi7+kbwCZNdJOhtHdt0QpDyg+EHd8=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=SSk6mGWA
Subject: Re: [Intel-wired-lan] [PATCH v2 bpf-next 1/8] netdev-genl: create a
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
 andrii@kernel.org, intel-wired-lan@lists.osuosl.org, brouer@redhat.com,
 kuba@kernel.org, pabeni@redhat.com, aelior@marvell.com, hawk@kernel.org,
 christophe.jaillet@wanadoo.fr, memxor@gmail.com, john@phrozen.org,
 bjorn@kernel.org, magnus.karlsson@intel.com, leon@kernel.org,
 netdev@vger.kernel.org, toke@redhat.com, martin.lau@linux.dev,
 ecree.xilinx@gmail.com, alardam@gmail.com, simon.horman@corigine.com,
 gospo@broadcom.com, saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 25/01/2023 01.33, Lorenzo Bianconi wrote:
> diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
> index 90f2be194bc5..2cbe9a6ede76 100644
> --- a/include/linux/netdevice.h
> +++ b/include/linux/netdevice.h
> @@ -47,6 +47,7 @@
>   #include <uapi/linux/netdevice.h>
>   #include <uapi/linux/if_bonding.h>
>   #include <uapi/linux/pkt_cls.h>
> +#include <uapi/linux/netdev.h>
>   #include <linux/hashtable.h>
>   #include <linux/rbtree.h>
>   #include <net/net_trackers.h>
> @@ -2055,6 +2056,7 @@ struct net_device {
>   
>   	/* Read-mostly cache-line for fast-path access */
>   	unsigned int		flags;
> +	xdp_features_t		xdp_features;

Nice you found a 4 bytes hole to place the u32 xdp_features member in
and in a "Read-mostly cache-line for fast-path access" that is good :-)
(Added my pahole output for reference below)

Acked-by: Jesper Dangaard Brouer <brouer@redhat.com>

>   	unsigned long long	priv_flags;
>   	const struct net_device_ops *netdev_ops;
>   	const struct xdp_metadata_ops *xdp_metadata_ops;
> @@ -2839,6 +2841,7 @@ enum netdev_cmd {
>   	NETDEV_OFFLOAD_XSTATS_DISABLE,
>   	NETDEV_OFFLOAD_XSTATS_REPORT_USED,
>   	NETDEV_OFFLOAD_XSTATS_REPORT_DELTA,
> +	NETDEV_XDP_FEAT_CHANGE,
>   };
>   const char *netdev_cmd_to_name(enum netdev_cmd cmd);
>   
> diff --git a/include/net/xdp.h b/include/net/xdp.h
> index 91292aa13bc0..8d1c86914f4c 100644
> --- a/include/net/xdp.h
> +++ b/include/net/xdp.h
> @@ -7,6 +7,7 @@
>   #define __LINUX_NET_XDP_H__
>   
>   #include <linux/skbuff.h> /* skb_shared_info */
> +#include <uapi/linux/netdev.h>
>   
>   /**
>    * DOC: XDP RX-queue information
> @@ -43,6 +44,8 @@ enum xdp_mem_type {
>   	MEM_TYPE_MAX,
>   };
>   
> +typedef u32 xdp_features_t;
> +
>   /* XDP flags for ndo_xdp_xmit */
>   #define XDP_XMIT_FLUSH		(1U << 0)	/* doorbell signal consumer */
>   #define XDP_XMIT_FLAGS_MASK	XDP_XMIT_FLUSH


--Jesper

On 64 bit arch partial output from:
   pahole -C net_device net/core/skbuff.o

struct net_device {
         char                       name[16];             /*     0    16 */
         struct netdev_name_node *  name_node;            /*    16     8 */
         struct dev_ifalias *       ifalias;              /*    24     8 */
         long unsigned int          mem_end;              /*    32     8 */
         long unsigned int          mem_start;            /*    40     8 */
         long unsigned int          base_addr;            /*    48     8 */
         long unsigned int          state;                /*    56     8 */
         /* --- cacheline 1 boundary (64 bytes) --- */
         struct list_head           dev_list;             /*    64    16 */
         struct list_head           napi_list;            /*    80    16 */
         struct list_head           unreg_list;           /*    96    16 */
         struct list_head           close_list;           /*   112    16 */
         /* --- cacheline 2 boundary (128 bytes) --- */
         struct list_head           ptype_all;            /*   128    16 */
         struct list_head           ptype_specific;       /*   144    16 */
         struct {
                 struct list_head   upper;                /*   160    16 */
                 struct list_head   lower;                /*   176    16 */
         } adj_list;                                      /*   160    32 */
         /* --- cacheline 3 boundary (192 bytes) --- */
         unsigned int               flags;                /*   192     4 */

         /* XXX 4 bytes hole, try to pack */

         long long unsigned int     priv_flags;           /*   200     8 */
         const struct net_device_ops  * netdev_ops;       /*   208     8 */
         const struct xdp_metadata_ops  * xdp_metadata_ops; /*   216 
8 */
         int                        ifindex;              /*   224     4 */
         short unsigned int         gflags;               /*   228     2 */
         short unsigned int         hard_header_len;      /*   230     2 */
         unsigned int               mtu;                  /*   232     4 */
         short unsigned int         needed_headroom;      /*   236     2 */
         short unsigned int         needed_tailroom;      /*   238     2 */
         netdev_features_t          features;             /*   240     8 */
         netdev_features_t          hw_features;          /*   248     8 */
         /* --- cacheline 4 boundary (256 bytes) --- */
         netdev_features_t          wanted_features;      /*   256     8 */
         netdev_features_t          vlan_features;        /*   264     8 */
         netdev_features_t          hw_enc_features;      /*   272     8 */
         netdev_features_t          mpls_features;        /*   280     8 */
         netdev_features_t          gso_partial_features; /*   288     8 */
         unsigned int               min_mtu;              /*   296     4 */
         unsigned int               max_mtu;              /*   300     4 */
         short unsigned int         type;                 /*   304     2 */
         unsigned char              min_header_len;       /*   306     1 */
         unsigned char              name_assign_type;     /*   307     1 */

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
