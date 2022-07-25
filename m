Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DD62F58025A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Jul 2022 18:00:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9F5506125C;
	Mon, 25 Jul 2022 16:00:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F5506125C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658764812;
	bh=YbnifO4jrZi8JPpJVHNwK6SlrOOP+JPomyimXjsRwdg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yosm0x/41ZoUnmPVlphJplayTwTkPWNwv5syZ86sN9TDSdi73uVLuRwb1mS6OorOy
	 iK8m6CK8pICRP05jQgGNR0P/qQkDX3AfOpcHO4HxSW1rbpL09GCT3ZQKl+cmnqiq9g
	 1aS8hx9czkCzp7/Cke7ZfGOXz37YNT72B8jZUa8YHbjtj906l42/GHPowZxYZYMNfE
	 BDo/GUMgGVYPmFfI/ELKZw6hLew/OymfLOKDpW2ahlSCyqW8OVUTeZEbLS7EepD8P8
	 ertte7jYULuLREUq2Q2KjRHYMOgUdUE2P82SEltyStIx5ZLwTx71dvyql7fStudCky
	 2Pbg/b/DaIzdQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o_sIMfSO1Ofy; Mon, 25 Jul 2022 16:00:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8CC5E6126A;
	Mon, 25 Jul 2022 16:00:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8CC5E6126A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B9B8B1BF379
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jul 2022 16:00:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9C35360E50
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jul 2022 16:00:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C35360E50
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RMZ0dLkQ7YSo for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Jul 2022 15:59:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F056860E38
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F056860E38
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jul 2022 15:59:56 +0000 (UTC)
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-210-fiyWcMZDOYinUmiKs361Mg-1; Mon, 25 Jul 2022 11:59:53 -0400
X-MC-Unique: fiyWcMZDOYinUmiKs361Mg-1
Received: by mail-wm1-f70.google.com with SMTP id
 v11-20020a1cf70b000000b003a318238826so4253455wmh.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jul 2022 08:59:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=tY2aon/f125PpUF2utZCx2LZaCcEv6DZkZmWDwPeZms=;
 b=U7irbxWI9CJW3kZ+JoDFws/o/EDK8wH/RHDaTY4ZG30BKC+p52SjGSYpJmhOuxNF1N
 2/oe32dpz6/P/660eoaPkS+x2YVSonYdC9SbiuTr5BokjAuAIEnzjCqFH8wRDe6sLZp5
 gU7MoIpGKbx0fxZacBXmJ75rMH2GJ/fpCbg//GhLdtoXulwN+TjHUQjhjRj9PqnNYV3W
 +HU7Z/YnDpBrSLli4d3cpyZO0l44Pbi9hJ+wkL2JIOXT9XnkXUO9VupUmQ8jLnLLW3f/
 OUnmiOH7v5uXtLXkflp8fq//4VocZxcjnOGspK5kOvqeF7dA5U74gF9gkA5/6tq8tXo0
 G+tg==
X-Gm-Message-State: AJIora+CrecyMjed8zOl8Dxe8i57vBSC1RpygO4fGjPF9bkxDgBglo5h
 7OS1nkmh0aKGPVg26rB2EpxZrmsU0OLsFiDlR1xSiBTDD/IRMTvIn1h+l/FN92CWSepqF3Kqtuf
 eMVy8vACPhZOv4VbT62h/QXbp+EK2sg==
X-Received: by 2002:a5d:47c2:0:b0:21e:37b9:3b0b with SMTP id
 o2-20020a5d47c2000000b0021e37b93b0bmr8471509wrc.450.1658764792260; 
 Mon, 25 Jul 2022 08:59:52 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1ud1B8beje1+rVeYF3sJwS5B0hQU3eYnQhd9GZBmbM1M4Ns7lhVQMyFQQSQeRSi9oM5CqNwfg==
X-Received: by 2002:a5d:47c2:0:b0:21e:37b9:3b0b with SMTP id
 o2-20020a5d47c2000000b0021e37b93b0bmr8471474wrc.450.1658764791971; 
 Mon, 25 Jul 2022 08:59:51 -0700 (PDT)
Received: from pc-4.home (2a01cb058918ce00dd1a5a4f9908f2d5.ipv6.abo.wanadoo.fr.
 [2a01:cb05:8918:ce00:dd1a:5a4f:9908:f2d5])
 by smtp.gmail.com with ESMTPSA id
 p20-20020a1c5454000000b003a30c3d0c9csm19132485wmi.8.2022.07.25.08.59.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Jul 2022 08:59:51 -0700 (PDT)
Date: Mon, 25 Jul 2022 17:59:48 +0200
From: Guillaume Nault <gnault@redhat.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <20220725155948.GA18808@pc-4.home>
References: <20220718121813.159102-1-marcin.szycik@linux.intel.com>
 <20220718121813.159102-2-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <20220718121813.159102-2-marcin.szycik@linux.intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1658764795;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=tY2aon/f125PpUF2utZCx2LZaCcEv6DZkZmWDwPeZms=;
 b=B4P/FxUI33dDyddrhWHvMDoJIwEhjlFb7KK78LkmvMVq8IpM2jZg7CR6wLcj3pFB9pmAkH
 kfz37h90nLl1bUBhxnRv98Uu1svQyv9Ru5rb/+g72tCFWMsXMeC4lKX58YSlHfB2czl0e9
 GZ028QMjL4I22GzUw1719t6CBMlsJaY=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=B4P/FxUI
X-Mailman-Original-Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=gnault@redhat.com
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v6 1/4] flow_dissector:
 Add PPPoE dissectors
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
Cc: simon.horman@corigine.com, kurt@linutronix.de, paulb@nvidia.com,
 edumazet@google.com, boris.sukholitko@broadcom.com, jiri@resnulli.us,
 paulus@samba.org, jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, zhangkaiheb@126.com, pablo@netfilter.org,
 baowen.zheng@corigine.com, komachi.yoshiki@gmail.com, jhs@mojatatu.com,
 xiyou.wangcong@gmail.com, pabeni@redhat.com, netdev@vger.kernel.org,
 gustavoars@kernel.org, mostrows@speakeasy.net, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jul 18, 2022 at 02:18:10PM +0200, Marcin Szycik wrote:
> From: Wojciech Drewek <wojciech.drewek@intel.com>
> 
> Allow to dissect PPPoE specific fields which are:
> - session ID (16 bits)
> - ppp protocol (16 bits)
> - type (16 bits) - this is PPPoE ethertype, for now only
>   ETH_P_PPP_SES is supported, possible ETH_P_PPP_DISC
>   in the future
> 
> The goal is to make the following TC command possible:
> 
>   # tc filter add dev ens6f0 ingress prio 1 protocol ppp_ses \
>       flower \
>         pppoe_sid 12 \
>         ppp_proto ip \
>       action drop
> 
> Note that only PPPoE Session is supported.

Acked-by: Guillaume Nault <gnault@redhat.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
