Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C85963FD195
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Sep 2021 04:57:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 44E598104C;
	Wed,  1 Sep 2021 02:57:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hxSJkZurFL95; Wed,  1 Sep 2021 02:57:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C97A68105B;
	Wed,  1 Sep 2021 02:57:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4DE561BF57C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Sep 2021 02:57:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 491378102A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Sep 2021 02:57:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b5KKnnHx_8un for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Sep 2021 02:57:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com
 [IPv6:2607:f8b0:4864:20::530])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CB15480E6B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Sep 2021 02:57:01 +0000 (UTC)
Received: by mail-pg1-x530.google.com with SMTP id c17so1358652pgc.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 19:57:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=u7p4mg6NKghg3cKJ3dCfxdhdxCfpMBcRYX0ibCXG1nM=;
 b=r7+5i8DLfKV2FWLzr1+P1diMy+R2Fk6PjZJ98fe4q9BMMgMmYbOQCNZqdQvxYNrvBe
 XLWnyNAM2hcSh27DL9fQjXFk6Cmx4228sOwf4Ng7S6HQxALmQL6E3WIfiyIm9u9UnzS0
 lhsSdgVuhxea2vvw7EDRbBebJKmY0Hr9LQ4IoXaOJrqn+BjUqvXLD+q6IF/8aJO4UgqO
 J8NXIsTy9EOO4gMvs99q91vN5smGqCa9eyDkS/ijs3MeLWBrvYufQPxynJFmrmHtI0S6
 PRQSLjy+41+rPnBy8MOG0i6CH7oAb+uftz8rQsUkSaf8hDA3VEq6Czv2H29lN353QAxK
 IJbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=u7p4mg6NKghg3cKJ3dCfxdhdxCfpMBcRYX0ibCXG1nM=;
 b=JYi7QbPQje8EtXq8t7mdIfpMv10MQMQmA5fQa/I+iRCcIf8MDudv+C4HrOAmUP4ko0
 vm0iZX7Raade+vYMVhoLZDJnWV5EMSNzxvGf0WFNcimD5NW8/ZpPdY9lgZjxL2O+UvZZ
 qouhBpjJcLtzsb6iN9BO4ErEvh8GsjA6lIhiQKT530ZWWHuEhssu8PwAY44bZbIzgeD9
 2/RHieZW65HawQ/h9jByFbz2mPchro/lP0/qWoMTpse3iwht+PCFNxtNVc8SBJTdsYtN
 M5SXJE9sE7r+F8y3d+r1SqHcwGGt8jiwLJMqvWtm6ApgSAmuJ/hRpT2blsMjkEhsdCb6
 NCzw==
X-Gm-Message-State: AOAM533y4F3YFalMBUx+B/eUq7t3KwxFTDMMr8spyuzQetv2bimMzzxL
 RZ0Fw/mz/sIinmFoGQwZoyQ=
X-Google-Smtp-Source: ABdhPJytdnYXQQqln+Cx1IlJxVik860QOtkbaKurvcvvMZVEkx9r1BgLQG5hiaa9ZGc8Iki5IhRY5g==
X-Received: by 2002:a65:62c1:: with SMTP id m1mr30109534pgv.339.1630465021367; 
 Tue, 31 Aug 2021 19:57:01 -0700 (PDT)
Received: from hoboy.vegasvil.org ([2601:645:c000:2163:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id 141sm22312568pgg.16.2021.08.31.19.56.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Aug 2021 19:57:00 -0700 (PDT)
Date: Tue, 31 Aug 2021 19:56:58 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20210901025658.GB18779@hoboy.vegasvil.org>
References: <20210829080512.3573627-1-maciej.machnikowski@intel.com>
 <20210829080512.3573627-2-maciej.machnikowski@intel.com>
 <20210829151017.GA6016@hoboy.vegasvil.org>
 <PH0PR11MB495126A63998DABA5B5DE184EACA9@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210830205758.GA26230@hoboy.vegasvil.org>
 <20210830162909.110753ec@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20210831161927.GA10747@hoboy.vegasvil.org>
 <SJ0PR11MB4958D55CB9EDD459AF076525EACC9@SJ0PR11MB4958.namprd11.prod.outlook.com>
 <20210831190235.00fa780b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210831190235.00fa780b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [RFC v2 net-next 1/2] rtnetlink: Add new
 RTM_GETSYNCESTATE message to get SyncE status
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
Cc: "bsd@fb.com" <bsd@fb.com>, "abyagowi@fb.com" <abyagowi@fb.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Machnikowski,
 Maciej" <maciej.machnikowski@intel.com>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 31, 2021 at 07:02:35PM -0700, Jakub Kicinski wrote:
> On Tue, 31 Aug 2021 22:09:18 +0000 Machnikowski, Maciej wrote:
> > OK I can strip down the RTNL EEC state interface to only report 
> > the state without any extras, like pin. Next step would be to add 
> > the control over recovered clock also to the netdev subsystem.
> > 
> > The EEC state read is needed for recovered/source clock validation
> > and that's why I think it belongs to the RTNL part as it gates the QL
> > for each port.
> 
> If you mean just reporting state and have a syncE on/off without any
> option for other sources that's fine by me.

Yeah, that is what I also imagined for a generic SyncE interface.

Thanks,
Richard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
