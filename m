Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B1E950DF69
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Apr 2022 13:52:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2764D4099B;
	Mon, 25 Apr 2022 11:52:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XxlYO9BxPi96; Mon, 25 Apr 2022 11:52:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id ED3C14092F;
	Mon, 25 Apr 2022 11:52:00 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 25F5A1BF3CD
 for <intel-wired-lan@osuosl.org>; Mon, 25 Apr 2022 11:51:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1260640489
 for <intel-wired-lan@osuosl.org>; Mon, 25 Apr 2022 11:51:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=6wind.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r7HGlYiHp1wK for <intel-wired-lan@osuosl.org>;
 Mon, 25 Apr 2022 11:51:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4E1BF4045C
 for <intel-wired-lan@osuosl.org>; Mon, 25 Apr 2022 11:51:55 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 ay11-20020a05600c1e0b00b0038eb92fa965so12322523wmb.4
 for <intel-wired-lan@osuosl.org>; Mon, 25 Apr 2022 04:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=6wind.com; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Ib6nQlp08A5L9C0VdErv324vMKIB/tKGFJooHE6SPao=;
 b=FGPew/JsMHemqppExogpDPOAw5g4gf1ssAKTU8fEoDX/TYrqhqAgx36NUbhIHfxaxO
 oGCt5CK2FsLLjjcHAuSPTrThgGRIqlrWQMHnrmZyf0JSJyqDjvrjQYK4tUkqgX1qx0Lu
 5yGCgzmxlkwn2fZfqW2Jv3JM938EbEunI/vGTmh5yFSWsU5lr6FoQth79T/LrEb0UhBS
 /3/zjjJGFYSJp2AdQUMsZG3QiYUzMih4wfHLiglTYwfQCtRm/US0vOI7RuiQHcY0XerE
 5xdNs5OqFcAzVGc0Cv54TyVkjrOzE/R8SljWIFQ4Vkd9C7s248D6rCUJ93Ue1XOjrsFf
 QvQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Ib6nQlp08A5L9C0VdErv324vMKIB/tKGFJooHE6SPao=;
 b=7lLusvDdVo7fhi7lV7DR4Yy3Xoeib/OmENi9ZbI1krJY0YZOWH5DNa4OCrljBzEagu
 3uTRHTMvOauXSRUQTSA76tbibKZOG3HGngzfwSDzWM70k9zmsrG25a1wUFlTGgIV/fXb
 YD0m17CTcsvRvQ8ChW9nBjzMeNHUZsg377xDTfONwnNYBsnm7YUopi9R3T06kGgECmvP
 CDNBfjOgeZNOLKQVUJZ2rlKAMdyFZcfeum2WXMj46CFUMXniixQAJxVlG8WTg8FlLjY5
 khiJNRLLVZvZ0LfgTKrFnBei6NeXL+NncNaZCU/K2tkrlA3fFb+KxD97hlgkCzSlGwhL
 k2hA==
X-Gm-Message-State: AOAM532Ocyr4fFSluKkHjT0ZwHpsIaiIW1F+a/J0kJ02ovhEiK5JGkSL
 qUagGHSVW3CY6xMtjXTG69kSYA==
X-Google-Smtp-Source: ABdhPJwTi7rTFUk/I2iEam2Reae+PhOpYVcJX2xASabdJn+lKdmLrBwmczED1vVi1f2ATPqORx5UTg==
X-Received: by 2002:a7b:c7c3:0:b0:389:cbf1:fadf with SMTP id
 z3-20020a7bc7c3000000b00389cbf1fadfmr26141200wmk.147.1650887513507; 
 Mon, 25 Apr 2022 04:51:53 -0700 (PDT)
Received: from 6wind.com ([2a01:e0a:5ac:6460:c065:401d:87eb:9b25])
 by smtp.gmail.com with ESMTPSA id
 a16-20020a056000051000b00207b5d9f51fsm8796490wrf.41.2022.04.25.04.51.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 04:51:53 -0700 (PDT)
Date: Mon, 25 Apr 2022 13:51:52 +0200
From: Olivier Matz <olivier.matz@6wind.com>
To: netdev@vger.kernel.org
Message-ID: <YmaLWN0aGIKCzkHP@platinum>
References: <20220406095252.22338-1-olivier.matz@6wind.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220406095252.22338-1-olivier.matz@6wind.com>
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

On Wed, Apr 06, 2022 at 11:52:50AM +0200, Olivier Matz wrote:
> These 2 patches fix issues related to the promiscuous mode on VF.
> 
> Comments are welcome,
> Olivier
> 
> Cc: stable@vger.kernel.org
> Cc: Nicolas Dichtel <nicolas.dichtel@6wind.com>
> 
> Changes since v1:
> - resend with CC intel-wired-lan
> - remove CC Hiroshi Shimamoto (address does not exist anymore)
> 
> Olivier Matz (2):
>   ixgbe: fix bcast packets Rx on VF after promisc removal
>   ixgbe: fix unexpected VLAN Rx in promisc mode on VF
> 
>  drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Any feedback about this patchset?
Comments are welcome.

Thanks,
Olivier
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
