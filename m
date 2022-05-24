Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADECC532435
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 May 2022 09:38:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3B055404CC;
	Tue, 24 May 2022 07:38:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PWA7poMQ57XA; Tue, 24 May 2022 07:38:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4BD6240338;
	Tue, 24 May 2022 07:38:01 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E21751BF2B0
 for <intel-wired-lan@osuosl.org>; Tue, 24 May 2022 07:37:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DC73E41299
 for <intel-wired-lan@osuosl.org>; Tue, 24 May 2022 07:37:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=6wind.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VCpNJLG0D0nb for <intel-wired-lan@osuosl.org>;
 Tue, 24 May 2022 07:37:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DA01D41298
 for <intel-wired-lan@osuosl.org>; Tue, 24 May 2022 07:37:55 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id e2so12798873wrc.1
 for <intel-wired-lan@osuosl.org>; Tue, 24 May 2022 00:37:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=6wind.com; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=kBh4Q11GjjoCmn9oHvVJ+UO224sUnrM4p4PfaUvrWck=;
 b=jU9N4xRdgYZbp3SgzjL/ZGKE2sBYy8lJllpnugwyyxtja/wrdOmUZa277Mj54fesS1
 9haJoxr3ki3XLYosAxZsl2BoobTC/kJL0gN1+ppKLaWm3hez4PTQ+Nl5GDb0jUXHfH8S
 vu6IfZY6eAuSrIzgUxbQx6QHMC8KG7aeFGGjmgYX/n8l/a69bxChPjV3wJD6yRzgbLm3
 oq2dYcE0yv5e/VlLqhxMFdtqDMbbX9Ouwv1FHus/9GzPlIpL7Yz6vX4PvKeWTP3t9COi
 aRT3275i333H1u8VpSSkg4+mqq/01pR5pkYKWqdiuJQNCoYXMyliN4nOISUl3XItGMwx
 LcOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=kBh4Q11GjjoCmn9oHvVJ+UO224sUnrM4p4PfaUvrWck=;
 b=pdSqypXkOxP6mDwh6o838wFcojkwJMPPbE7WdtDILu3yolfzVobCjP9iiiqPsahISk
 tSm6rt/lwKpl5smg4cq5FqWxqKcBUQXPoPbbxJo4wRPntJQQzpeK++nHW+7KTrcktoiP
 EGyi3MyUHiqmWEOApY+G27b10a/aG2mkqTO9g009Nl7cuM3PQjkhv1Tsuof/f7ZEcl81
 i8zOXvennxhX74N+XIA6iphaW5Evg6/WHhJkMLt8sn3azyTiBlW8YlDN3iEp3OXlRUCN
 NiDdW3rQow9atfA00ppLm0lAQt9OOwNySwgUmxPA61XAFY1c6779fYOy5XvIYpDqyua2
 seMQ==
X-Gm-Message-State: AOAM532TpfSaSXB6oWV82z3oR6X6DyrPlU/5ZVu7RUgEPcPkrP7LTBRB
 kluds0O65i1VC8BAongRgc5dfg==
X-Google-Smtp-Source: ABdhPJwua5YP/u3Cf5c9aMABHdiaJ+jF8V019sUQTwndAnDJSMgOh6/yyQjTdQEQ/9MbDDhgR+JedA==
X-Received: by 2002:a5d:4d8a:0:b0:20d:2ba:7db8 with SMTP id
 b10-20020a5d4d8a000000b0020d02ba7db8mr22390965wru.624.1653377873865; 
 Tue, 24 May 2022 00:37:53 -0700 (PDT)
Received: from 6wind.com ([2a01:e0a:5ac:6460:c065:401d:87eb:9b25])
 by smtp.gmail.com with ESMTPSA id
 v3-20020adfc5c3000000b0020fcda69b7fsm8257971wrg.109.2022.05.24.00.37.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 May 2022 00:37:53 -0700 (PDT)
Date: Tue, 24 May 2022 09:37:52 +0200
From: Olivier Matz <olivier.matz@6wind.com>
To: netdev@vger.kernel.org
Message-ID: <YoyLUEk9n1uXHscH@platinum>
References: <20220406095252.22338-1-olivier.matz@6wind.com>
 <YmaLWN0aGIKCzkHP@platinum>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YmaLWN0aGIKCzkHP@platinum>
Subject: Re: [Intel-wired-lan] [PATCH net v2 0/2] ixgbe: fix promiscuous
 mode on VF
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, intel-wired-lan@osuosl.org,
 stable@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Nicolas Dichtel <nicolas.dichtel@6wind.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

On Mon, Apr 25, 2022 at 01:51:53PM +0200, Olivier Matz wrote:
> Hi,
> 
> On Wed, Apr 06, 2022 at 11:52:50AM +0200, Olivier Matz wrote:
> > These 2 patches fix issues related to the promiscuous mode on VF.
> > 
> > Comments are welcome,
> > Olivier
> > 
> > Cc: stable@vger.kernel.org
> > Cc: Nicolas Dichtel <nicolas.dichtel@6wind.com>
> > 
> > Changes since v1:
> > - resend with CC intel-wired-lan
> > - remove CC Hiroshi Shimamoto (address does not exist anymore)
> > 
> > Olivier Matz (2):
> >   ixgbe: fix bcast packets Rx on VF after promisc removal
> >   ixgbe: fix unexpected VLAN Rx in promisc mode on VF
> > 
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> Any feedback about this patchset?
> Comments are welcome.

I didn't get feedback for this patchset until now. Am I doing things
correctly? Am I targeting the appropriate mailing lists and people?

Please let me know if I missed something.

Thanks,
Olivier
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
