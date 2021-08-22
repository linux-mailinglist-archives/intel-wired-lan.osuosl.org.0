Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 177783F3D27
	for <lists+intel-wired-lan@lfdr.de>; Sun, 22 Aug 2021 04:31:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 32E3A40221;
	Sun, 22 Aug 2021 02:31:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fxTqkHGaKoQT; Sun, 22 Aug 2021 02:31:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B437B40155;
	Sun, 22 Aug 2021 02:31:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6FBF61BF5DC
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Aug 2021 02:31:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5DEAC6065F
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Aug 2021 02:31:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j5MLvcyFiZvH for <intel-wired-lan@lists.osuosl.org>;
 Sun, 22 Aug 2021 02:31:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com
 [IPv6:2607:f8b0:4864:20::529])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4FB0C6062E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Aug 2021 02:31:01 +0000 (UTC)
Received: by mail-pg1-x529.google.com with SMTP id r2so13211267pgl.10
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Aug 2021 19:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=XSTqDa97zOWgSBwGLOjBEzY0W1HCbmfHTpND18fwsyA=;
 b=PhbRgYaQFfP7M8LtuZ0DJCgRqBc2hijhPP12YvRUKwgoWfGJfWjb4yDuFfii56KLZx
 UApdP4wFmmp+bk/JkRzpa0RZ0bNMO6dk2YGX3PubQBqiSvbPWBns8puXAyEgDCmG00B7
 tr1Ug/czFutolnj2Qe36ZPYYZhOAnccfghpigop6gfOoSkm04XMamwXZxuQ23biWfg5r
 QTc60M6NIaNGgnBLGkI/blXBoEWtl6MR0PEvsYzfewnZge+ORNa8GokVvugIQtnbX9vk
 Cb5bInAXy/ZIHsL06t2tqvp3KODH+/9slG/it09ZgKWWEofwipch7QXYfXPvXvEqC1LS
 OC1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XSTqDa97zOWgSBwGLOjBEzY0W1HCbmfHTpND18fwsyA=;
 b=bq+I84zbSJBv/vOpvzs9sCXFIfZRuSRJIIhaSlqIDz0vmY1lJkGP6a5nnKjYOiwsAQ
 SB3lFtuh0qUbaaZ8dFY0dmkgd+tnZxhSLI+xwsUg/HFZcrHfxW1bDhhoOkcrIYwMFxuk
 bZvR2XOhKpqNugmigGkqrR67UDlPRtttmPZ6Qk1vVXC8aJpuH7O6BHIZsDpTvUapJ1ul
 LbtjcqVda89OnMdHBbN+DRr0O16KJ6LPbsXk48Q6fjny58Cq9N4i9eYfbiHlk89H8JGW
 2mjOP42vqsEivNr3ilvDgSPDfeuQQ/HMGT5mP/aSdLSwdTbxOtTYVISUb2uUss/5qkM2
 xMgQ==
X-Gm-Message-State: AOAM530AEdXaJnrpNuvnQAi7TNdPMQbjFlhGjgvG5HTO0qEbuMSXwn8D
 415CrxpH2RCaKSada19ZMt8=
X-Google-Smtp-Source: ABdhPJwWkVfbhs8JZCkYB40Ea1nyaA/y97j+qEa6V5jVVdosZTc+l16NXyb9birWU12gqKpy95GIYQ==
X-Received: by 2002:a63:2541:: with SMTP id l62mr26438157pgl.183.1629599460655; 
 Sat, 21 Aug 2021 19:31:00 -0700 (PDT)
Received: from hoboy.vegasvil.org ([2601:645:c000:2163:e2d5:5eff:fea5:802f])
 by smtp.gmail.com with ESMTPSA id mq18sm9743976pjb.45.2021.08.21.19.30.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Aug 2021 19:31:00 -0700 (PDT)
Date: Sat, 21 Aug 2021 19:30:57 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
Message-ID: <20210822023057.GA6481@hoboy.vegasvil.org>
References: <20210816160717.31285-1-arkadiusz.kubalewski@intel.com>
 <20210816160717.31285-2-arkadiusz.kubalewski@intel.com>
 <20210816235400.GA24680@hoboy.vegasvil.org>
 <PH0PR11MB4951762ECB04D90D634E905DEAFE9@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210818170259.GD9992@hoboy.vegasvil.org>
 <PH0PR11MB495162EC9116F197D79589F5EAFF9@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210819153414.GC26242@hoboy.vegasvil.org>
 <PH0PR11MB4951F51CBA231DFD65806CDAEAC09@PH0PR11MB4951.namprd11.prod.outlook.com>
 <20210820155538.GB9604@hoboy.vegasvil.org>
 <PH0PR11MB49518ED9AAF8B543FD8324B9EAC19@PH0PR11MB4951.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <PH0PR11MB49518ED9AAF8B543FD8324B9EAC19@PH0PR11MB4951.namprd11.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-wired-lan] [RFC net-next 1/7] ptp: Add interface for
 acquiring DPLL state
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
Cc: "cong.wang@bytedance.com" <cong.wang@bytedance.com>, "Stanton,
 Kevin B" <kevin.b.stanton@intel.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "gustavoars@kernel.org" <gustavoars@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Bross,
 Kevin" <kevin.bross@intel.com>,
 "colin.king@canonical.com" <colin.king@canonical.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "nikolay@nvidia.com" <nikolay@nvidia.com>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "shuah@kernel.org" <shuah@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>, Ahmad Byagowi <abyagowi@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Aug 20, 2021 at 06:30:02PM +0000, Machnikowski, Maciej wrote:

> Since the 40.5.2 is not applicable to higher-speed ethernet which
> don't use auto-negotiation, but rather the link training sequence
> where the RX side always syncs its clock to the TX side.

By "the RX side always syncs its clock to the TX side" do you mean the
RX channel synchronizes to the link partner's TX channel?

Wow, that brings back the 100 megabit scheme I guess.  That's cool,
because the same basic idea applies to the PHYTER then.

Still we are doing to need a way for user space to query the HW
topology to discover whether a given ports may be syntonized from a
second port.  I don't think your pin selection thing works unless user
space can tell what the pins are connected to.

Thanks,
Richard
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
