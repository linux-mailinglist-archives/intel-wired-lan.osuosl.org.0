Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C199A58025C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Jul 2022 18:00:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D0FD861263;
	Mon, 25 Jul 2022 16:00:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D0FD861263
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658764825;
	bh=WjBIdM+uGBheqvgORvl5RQBsrvqnVSX04qIR0LmDQlo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FfzlkYWVPKwf5qz7BmOVPBTwftiJHUUjpmPa3gbaMOpmnuCefzXx+mWtKrWfqk9aO
	 dh91xFufSkTnFzvnxxOz+Sl9Ox/SEjG21hQ7X+qKvRj/Tn8Aj1/KyPBwpN7sGoKCvB
	 XUV3DUC/7rKv46TbP9JzzQ9dTIcwQ6+yE/VapOo4KriPT4Sy/AiYObhQjLd9gtuCE2
	 imgFEr7+nt+K7jp8nBfvqOnplcoM0bKWkrAWR+uWFT2nGuRhUrkWYuZMczCplhIogw
	 LtiucWkTTWFGXJW5NLVlZkq9ptaPfv24qhktu6d0mWiRIP8vmdhTZadsZIZ6Yn07qd
	 DCoGJoopzP7JQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CAxc-2Vet1tE; Mon, 25 Jul 2022 16:00:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CCA79612A1;
	Mon, 25 Jul 2022 16:00:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CCA79612A1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3A98C1BF379
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jul 2022 16:00:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0EA7241A17
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jul 2022 16:00:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0EA7241A17
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VxNOJTXtDpLA for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Jul 2022 16:00:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 266F641A13
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 266F641A13
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jul 2022 16:00:18 +0000 (UTC)
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-107-guiogGnmO1uvO0CVXyK70A-1; Mon, 25 Jul 2022 12:00:16 -0400
X-MC-Unique: guiogGnmO1uvO0CVXyK70A-1
Received: by mail-wm1-f70.google.com with SMTP id
 z20-20020a1c4c14000000b003a3020da654so4242030wmf.5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jul 2022 09:00:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=pXQd8qsiueUyNLCwLanEF1sKoZG5cu8SXoCPRLwZkzY=;
 b=EQ+YAWyIIi/yHJT3UBl4pGmC6AWFugHkP3NDjSKrCpd7Pd++9vrkIR5wxQNQSu0AzU
 LT1iTxclswOnj4DO30Q8RvtsTU16zGTKiqKR9MZhEdSvaAm0anvfVfzHQKxVd1AZ6GZ9
 Mf4k35/h47hn/6x1ynsaCpI9XHSkEhXUoEQ810E1sRyxZPKnIc+YuWIKid2baZlATNym
 clY6SRl/11gxjQFAxfPofrynmegkzT4yKIICk+7FsCSvR0HX49+U7o3EpSr2qGAhZC+h
 yo72z4peQRZhC9uR1VxXyeM0ttIvXGr5yz6GH7WiYbpmYpiYVq/7jTldTysgya7/SCqA
 CyRA==
X-Gm-Message-State: AJIora/1+h9qMW4pl/K34tBWy6eJZlu93b8llgSX47AVF5FXph8LXY15
 JMXxKWm6kLVbmgb/43Gx+Q2K9Taa2N++leVMtvQ9A5Yz099AkRO58VWEo5GxwOp53mBiXGTqNx/
 vylgTXzV/UfpGpaa0P2xnz1KECtZtPQ==
X-Received: by 2002:a05:600c:254f:b0:3a3:2848:caeb with SMTP id
 e15-20020a05600c254f00b003a32848caebmr21666524wma.187.1658764815136; 
 Mon, 25 Jul 2022 09:00:15 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1uRFiHVAeQRhZYDaNBmO7NkOHQC5P2zy+an+ev9rSBv3hAwokWe0rX9Gjcv5nhFilHb9QSZHA==
X-Received: by 2002:a05:600c:254f:b0:3a3:2848:caeb with SMTP id
 e15-20020a05600c254f00b003a32848caebmr21666496wma.187.1658764814837; 
 Mon, 25 Jul 2022 09:00:14 -0700 (PDT)
Received: from pc-4.home (2a01cb058918ce00dd1a5a4f9908f2d5.ipv6.abo.wanadoo.fr.
 [2a01:cb05:8918:ce00:dd1a:5a4f:9908:f2d5])
 by smtp.gmail.com with ESMTPSA id
 z21-20020a05600c0a1500b0039c454067ddsm15650521wmp.15.2022.07.25.09.00.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Jul 2022 09:00:14 -0700 (PDT)
Date: Mon, 25 Jul 2022 18:00:11 +0200
From: Guillaume Nault <gnault@redhat.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <20220725160011.GB18808@pc-4.home>
References: <20220718121813.159102-1-marcin.szycik@linux.intel.com>
 <20220718121813.159102-3-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <20220718121813.159102-3-marcin.szycik@linux.intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1658764818;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=pXQd8qsiueUyNLCwLanEF1sKoZG5cu8SXoCPRLwZkzY=;
 b=I3aTs4qmLOVjxHfzvZ6aBDog/Aqm7DBYT5LlNfyVW6HJYvfRAJ6WLcXV+QfTtdT0zGPFMm
 eTljoI0gp9Cps/T3NFellQxtB/uzcyzOLgV6dIIqEXk9LA+A8Q+2BUW6r08SE1TEGBgiMK
 mrxIsruk8dDtBwH21CkC97ymauh6Hsc=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=I3aTs4qm
X-Mailman-Original-Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=gnault@redhat.com
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v6 2/4] net/sched:
 flower: Add PPPoE filter
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

On Mon, Jul 18, 2022 at 02:18:11PM +0200, Marcin Szycik wrote:
> From: Wojciech Drewek <wojciech.drewek@intel.com>
> 
> Add support for PPPoE specific fields for tc-flower.
> Those fields can be provided only when protocol was set
> to ETH_P_PPP_SES. Defines, dump, load and set are being done here.
> 
> Overwrite basic.n_proto only in case of PPP_IP and PPP_IPV6,
> otherwise leave it as ETH_P_PPP_SES.

Acked-by: Guillaume Nault <gnault@redhat.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
