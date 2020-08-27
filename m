Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB2F2540BD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Aug 2020 10:25:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0084986BED;
	Thu, 27 Aug 2020 08:25:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qB9jo8oqIr-B; Thu, 27 Aug 2020 08:25:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 51F7786890;
	Thu, 27 Aug 2020 08:25:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 131D51BF59D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Aug 2020 08:25:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 083C387A62
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Aug 2020 08:25:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CHbLRs+RUv0M for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Aug 2020 08:25:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 335E6878C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Aug 2020 08:25:43 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id q14so4461586wrn.9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Aug 2020 01:25:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=fNByeHVDbFMOoS5ytnGv8lYTbDplR4L0uTAVH8FeXIc=;
 b=Jg22yXHtJrmmzdSayxlM/zCN6OsSfAq7h2GvuU7W7Y2gwfiUPKRqMDkn09IkqPMZMA
 r8V+4Acu5BiYn2ZTgS11CT7Vi0+nGzRB1NKvaqOijPu5sPCGXGZ7WCHxzfd8yMF/CQ77
 +Kv3/VMrVJCs13N4SMYWudKSwwKKSpgMQaF643mGW+f44RSHBH9WOTAkmtIX34FV+r9t
 WpmM353Cz/ohkP0W8p3otwUbJ16T3OmMgEf58cdPelk4ZmS21C/AOraZ40zCwWbVamSH
 qsA8tBoU1s2DBxS7c0ujXyd94bPhqVwTJeE4c8OPSpysPvmGbGoWdfAwYC/Tz21Ns3+Q
 rwgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=fNByeHVDbFMOoS5ytnGv8lYTbDplR4L0uTAVH8FeXIc=;
 b=ufo2u0SW9r3zrb6Qc6wbEUXDlAbAU1Y2c0ZcrsvNptB0lh4q/bDFmdaHrjjHdWKzwg
 LCzG6TeqDs9GSIYDWB3FFcGUmN8JfBx6eaS3Iq6ionyaYyjctOdqGUh+H44WN+mL+FkS
 AguY9kzPxtyubi+KEu2Rnp+YBpEUwWZVHueTplbrjmEGNQ5TtrUnfq3K0Zxy9miSSJhO
 9IvQm8YnAItElpRWNE6xGyy88am1Sw+KxksmSPbvL01J6R+RAIeUm5wkkWYdjcPjDbEh
 I3+MpQKWMb+BcAaNnSqol4zAkSTLbHOm/DnKkocSwJb/HpDyxBXjVF2uGSdQFf+jP7gl
 RKzw==
X-Gm-Message-State: AOAM531eCyocQoN47j/9M6cY6zGj1aXoaFYjcZWFFdKqL8nsWKEfuI3a
 7yLxIofb5hCIW8yaUi069GBFqZdcGbQ=
X-Google-Smtp-Source: ABdhPJzikUzl1kIXdD/a3Q2Ptvq4OjlgHmK9EvZIaGmR2S3S8k+2Y0omrIo/r4f/bkSlHgmBvLv9Gw==
X-Received: by 2002:a5d:5272:: with SMTP id l18mr18645010wrc.89.1598516740662; 
 Thu, 27 Aug 2020 01:25:40 -0700 (PDT)
Received: from [192.168.8.147] ([37.171.26.29])
 by smtp.gmail.com with ESMTPSA id j5sm3808507wma.45.2020.08.27.01.25.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 27 Aug 2020 01:25:40 -0700 (PDT)
To: Li RongQing <lirongqing@baidu.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
References: <1598514788-31039-1-git-send-email-lirongqing@baidu.com>
From: Eric Dumazet <eric.dumazet@gmail.com>
Message-ID: <6d89955c-78a2-fa00-9f39-78648d3558a0@gmail.com>
Date: Thu, 27 Aug 2020 01:25:38 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <1598514788-31039-1-git-send-email-lirongqing@baidu.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] iavf: use kvzalloc instead of kzalloc
 for rx/tx_bi buffer
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/27/20 12:53 AM, Li RongQing wrote:
> when changes the rx/tx ring to 4096, kzalloc may fail due to
> a temporary shortage on slab entries.
> 
> kvmalloc is used to allocate this memory as there is no need
> to have this memory area physical continuously.
> 
> Signed-off-by: Li RongQing <lirongqing@baidu.com>
> ---


Well, fallback to vmalloc() overhead because order-1 pages are not readily available
when the NIC is setup (usually one time per boot)
is adding TLB cost at run time, for billions of packets to come, maybe for months.

Surely trying a bit harder to get order-1 pages is desirable.

 __GFP_RETRY_MAYFAIL is supposed to help here.


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
