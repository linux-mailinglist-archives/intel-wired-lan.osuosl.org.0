Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D58864CEC1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Dec 2022 18:16:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A81FA81F79;
	Wed, 14 Dec 2022 17:16:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A81FA81F79
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671038213;
	bh=mwlKK/QB8uFs2awNW42vW6ptwSK1cVXCjKCKL6y11NE=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sbAwIq0PcxDZ1jdmZvX8XbsGPret0jfire3B+g3RFc2N9I1QQHFKYvTlcrXDZoi9s
	 rnEjt9edi/sqcY3U2uiuaZnRDEYbvwQjF/hUXwwaB1APiig2MZWZ19RIRKVmDbuklA
	 8s4V4s2oZaW0co/ChgQOzX6YxTW/FUL9BNoh5yoV5bWPQUOeDIG5hAmVirCbSn3trU
	 BGdGq/qWtH354Re2hfOLubQegcypoXTCAjAARIyLzKYHg64uRrnKvFn2HCuL+Gn1zK
	 wGtvhktueZtdUhCjJiq0hNslsj8GSCsuAt3S2MuXXfwjgDDBLGADFkw9L5+NbpBPqm
	 KIn90ywR2GhJw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JwvmRf6Hqese; Wed, 14 Dec 2022 17:16:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A515F81F64;
	Wed, 14 Dec 2022 17:16:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A515F81F64
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A29D21BF45A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Dec 2022 17:16:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 89E2660BB3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Dec 2022 17:16:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 89E2660BB3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cadVQNV9IyKB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Dec 2022 17:16:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D392E60A77
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com
 [IPv6:2607:f8b0:4864:20::62f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D392E60A77
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Dec 2022 17:16:46 +0000 (UTC)
Received: by mail-pl1-x62f.google.com with SMTP id d7so4000202pll.9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Dec 2022 09:16:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=/1zG2tuJHv8bGjiNOZxxKGVCb/5dQUpWtcN2nAv7ybI=;
 b=IBZpF+N+fsCQTkgkZiMN81ZZ/KUa+M/ph+/lBb21QYPZ3gc7g8Hh9zf2jsYCwTBxAw
 y1lkWgxyykB0AHQyFWSHxg3FB5fT1GT9lmJaulBKXqk3SrycE41vL3oWUQZLSq7lHxqO
 43BHOBARBjQNiem6PqH+wNbAfpViye7yR0WjGx83G0X+8SU4DkYHVd/xq1LTTaZnKjpU
 KQ63QvuHzThUJ7ZlHnis9LoBV6XGzh3IdymSejzDOv8e3W/RmexP2CfbuqGNL/viZpqP
 RMLzBTt035EDf1fbUFR9TajjvMov3uFBWMeBwbt2MpvOo5avwqA034eF+Loux1p4N/Wh
 5VHg==
X-Gm-Message-State: ANoB5pnoTsryvuNNmITEivt40GW1KxYHnh0l+di2Ejuh3McrL9o1bt/l
 KWxxeZTCJnN2kouuToLRSuc7VOaLKz6F62Dm5gI=
X-Google-Smtp-Source: AA0mqf5S0+Von62w2CT1G5A0z9m2g63T5ixgtI9ZYiK2BnSStZ3EOCQkSdUSyB4FNpbAAm3hO2ljaV61ogv1RIu9aDg=
X-Received: by 2002:a17:902:9a8b:b0:190:c917:ab61 with SMTP id
 w11-20020a1709029a8b00b00190c917ab61mr479029plp.93.1671038206116; Wed, 14 Dec
 2022 09:16:46 -0800 (PST)
MIME-Version: 1.0
References: <20221213105023.196409-1-tirthendu.sarkar@intel.com>
 <cf6f03d04c8f2ad2627a924f7ee66645d661d746.camel@gmail.com>
 <CY4PR1101MB2360D262A260CCE7ED0FD87390E09@CY4PR1101MB2360.namprd11.prod.outlook.com>
In-Reply-To: <CY4PR1101MB2360D262A260CCE7ED0FD87390E09@CY4PR1101MB2360.namprd11.prod.outlook.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Wed, 14 Dec 2022 09:16:34 -0800
Message-ID: <CAKgT0Uc2cmK8+BZoBO_3of86MN0AvBQc2je-Jyoocjw2DVn+7A@mail.gmail.com>
To: "Sarkar, Tirthendu" <tirthendu.sarkar@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=/1zG2tuJHv8bGjiNOZxxKGVCb/5dQUpWtcN2nAv7ybI=;
 b=qVCfEroakM1a0+SJMCc0vLfW5rRuyGFzDfa67AYYRFrs9DJbQ4mQyDSCW0NfuttDWt
 iL8A5Ex05zK7XT1aGrAWbdkhDCEkJlE+b6L9rkQOFeZbTWjdNgdRUlDatMvW0BOxv2tA
 bGyjb4VUBUokGf01pCF3YEz8dZKNH9T9A7griEps/5l4F16uw3KTDZAjiMzHyFaH9jNt
 bT0326ZDfUyhz3YXy2DyvmpBpaPeaFbCQKu1CZvZJh8KtsDqD1D8dBGY6lC/fpj64nJJ
 HNbK+7ll/ZZjeQyKGoffKkvVCueJ8odsCKpwoYbQSqwob6vFLE5czjDhDhVLaK3SBHzD
 5Hmw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=qVCfEroa
Subject: Re: [Intel-wired-lan] [PATCH intel-next 0/5] i40e: support XDP
 multi-buffer
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
Cc: "hawk@kernel.org" <hawk@kernel.org>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>,
 "tirtha@gmail.com" <tirtha@gmail.com>,
 "john.fastabend@gmail.com" <john.fastabend@gmail.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "ast@kernel.org" <ast@kernel.org>,
 "edumazet@google.com" <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Dec 14, 2022 at 7:56 AM Sarkar, Tirthendu
<tirthendu.sarkar@intel.com> wrote:
>
> > From: Alexander H Duyck <alexander.duyck@gmail.com>
> > Sent: Tuesday, December 13, 2022 9:28 PM
> >
> > This approach seems kind of convoluted to me. Basically you are trying
> > to clean the ring without cleaning the ring in the cases where you
> > encounter a non EOP descriptor.
> >
> > Why not just replace the skb pointer with an xdp_buff in the ring? Then
> > you just build an xdp_buff w/ frags and then convert it after after
> > i40e_is_non_eop? You should then still be able to use all the same page
> > counting tricks and the pages would just be dropped into the shared
> > info of an xdp_buff instead of an skb and function the same assuming
> > you have all the logic in place to clean them up correctly.
>
> We have another approach similar to what you have suggested which sort
> of is a bit cleaner but not free of a burden of getting the rx_buffer struct
> back again for all of the packet frags post i40e_run_xdp() for recycling.
> We will examine if that turns out to be better.

Sounds good. Keep in mind that there are multiple use cases for the
NIC so you don't want to optimize for the less likely to be used ones
such as XDP_DROP/XDP_ABORT over standard use cases such as simply
passing packets up to the network stack.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
