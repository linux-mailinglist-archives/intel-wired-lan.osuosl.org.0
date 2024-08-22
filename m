Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9833D95B317
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Aug 2024 12:40:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A07960B4A;
	Thu, 22 Aug 2024 10:40:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ti68G7IB1QRW; Thu, 22 Aug 2024 10:40:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7B08160B2E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724323221;
	bh=5xAIu9B4Vl3KoqN1f4LWGERnwrll19Oe35IzheBVJ0k=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SyOPTf0iamwFqolVQvSi6/m4J35dsrWGWb8TAz5/R5oPl2Rc6KIdpxz+U0HsGCv7l
	 N+hH0gT4eJSNPVGkplM9KMaNX3w8eGzA/R6b3eZnmTFbuYVSRVt7tVq47hGB5mw+MC
	 L7Bem1Ra5U7jTd6VpMEVAIcSlAGWXwckDrT9scVlxmXYYUtjWWHtBksnKwVR3VDeBa
	 LC7823KPbrznMfzeDmrwcvVdhZJBavYR5yvpsLbAzPE6vokmzf5AZeWAZo78Wb9keL
	 ogqCErlFwLlB5ZFydX++eC7fuZcn0ljBynRn7vJuhpVd6MXbqqB+lI+SSPSbmd+9wT
	 n9jkiUjaRmCgA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7B08160B2E;
	Thu, 22 Aug 2024 10:40:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E9D261BF346
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 10:40:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D600360B29
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 10:40:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IAVOCI_5yAa4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Aug 2024 10:40:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CDD8E60AF9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CDD8E60AF9
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CDD8E60AF9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 10:40:17 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 5C22FCE0F80;
 Thu, 22 Aug 2024 10:40:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E180C32782;
 Thu, 22 Aug 2024 10:40:09 +0000 (UTC)
Date: Thu, 22 Aug 2024 11:40:07 +0100
From: Simon Horman <horms@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20240822104007.GL2164@kernel.org>
References: <20240821133714.61417-1-przemyslaw.kitszel@intel.com>
 <20240821133714.61417-4-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240821133714.61417-4-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1724323212;
 bh=fq6WxlddeTPwRmrjo9kprPP5PAIJy0zQ4SnYvgRtKwU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lucMqYMvFlq6JNTdcdUQucSJnyOba56S2T0vVPi5OgwlXx2m2HygCMCj0SvVqyPcA
 QcZXEN2d9/14ueoh/XJwqdxO5JMS1qFbqIvxJVwyfq1810egn9y074dyc9BzCON9fk
 mAgSclfFeKy3dsZK8LPUJF467MRDE9CAQ0gjGY91nhzoqsIapwGWEU2fHNUrv8n2Fx
 yc99oAwM9SsTAbHyXlqn2xREG8+2F9AMTN/97EbjmMvkLBv8vbfUxSq05UpdNr1sOr
 Emf1Sfvur3IuKDL0AMJYJ6T+TCyNM5MQiYEPxb8AaVZzSgtMxSw+ibcMd3/d5/0fef
 XOxSApbsLagEQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=lucMqYMv
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 3/6] devlink: add
 devlink_fmsg_dump_skb() function
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
Cc: lukas.bulwahn@gmail.com, willemb@google.com, Jiri Pirko <jiri@resnulli.us>,
 dwaipayanray1@gmail.com, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 netdev@vger.kernel.org, Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 joe@perches.com, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 apw@canonical.com, intel-wired-lan@lists.osuosl.org, akpm@linux-foundation.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Aug 21, 2024 at 03:37:11PM +0200, Przemek Kitszel wrote:
> From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> 
> Add devlink_fmsg_dump_skb() function that adds some diagnostic
> information about skb (like length, pkt type, MAC, etc) to devlink
> fmsg mechanism using bunch of devlink_fmsg_put() function calls.
> 
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

...

> diff --git a/net/devlink/health.c b/net/devlink/health.c
> index acb8c0e174bb..b98ca650284c 100644
> --- a/net/devlink/health.c
> +++ b/net/devlink/health.c
> @@ -1241,3 +1241,70 @@ int devlink_nl_health_reporter_test_doit(struct sk_buff *skb,
>  
>  	return reporter->ops->test(reporter, info->extack);
>  }
> +
> +/**
> + * devlink_fmsg_dump_skb - Dump sk_buffer structure
> + * @fmsg: devlink formatted message pointer
> + * @skb: pointer to skb
> + *
> + * Dump diagnostic information about sk_buff structure, like headroom, length,
> + * tailroom, MAC, etc.
> + */
> +void devlink_fmsg_dump_skb(struct devlink_fmsg *fmsg, const struct sk_buff *skb)
> +{
> +	struct skb_shared_info *sh = skb_shinfo(skb);
> +	struct sock *sk = skb->sk;
> +	bool has_mac, has_trans;
> +
> +	has_mac = skb_mac_header_was_set(skb);
> +	has_trans = skb_transport_header_was_set(skb);
> +
> +	devlink_fmsg_pair_nest_start(fmsg, "skb");
> +	devlink_fmsg_obj_nest_start(fmsg);
> +	devlink_fmsg_put(fmsg, "actual len", skb->len);
> +	devlink_fmsg_put(fmsg, "head len", skb_headlen(skb));
> +	devlink_fmsg_put(fmsg, "data len", skb->data_len);
> +	devlink_fmsg_put(fmsg, "tail len", skb_tailroom(skb));
> +	devlink_fmsg_put(fmsg, "MAC", has_mac ? skb->mac_header : -1);
> +	devlink_fmsg_put(fmsg, "MAC len",
> +			 has_mac ? skb_mac_header_len(skb) : -1);
> +	devlink_fmsg_put(fmsg, "network hdr", skb->network_header);
> +	devlink_fmsg_put(fmsg, "network hdr len",
> +			 has_trans ? skb_network_header_len(skb) : -1);
> +	devlink_fmsg_put(fmsg, "transport hdr",
> +			 has_trans ? skb->transport_header : -1);
> +	devlink_fmsg_put(fmsg, "csum", skb->csum);

Hi,

One minor nit here, which I don't think needs to stop progress of this
patchset. Sparse warns that:

error: no generic selection for 'restricted __wsum const [usertype] csum'

I believe this can be addressed by casting: (__force __u32) skb->csum,
perhaps incorporated into devlink_fmsg_put(). Which seems fine enough for
this case.

However, my observation is that there are a lot of sparse warnings
present in the tree due to similar issues around the use of __wsum.
And IMHO naked casts are error prone and not obviously correct to the
reader (me). So I wonder if there is some value in introducing some
helpers. E.g.

	wsum_to_cpu()
	cpu_to_wsum()

To my mind, that would clearly be out of scope for this patchset.
But It seems appropriate to raise this as it's been on my mind for a while.

...
