Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDCC15E6D76
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Sep 2022 22:59:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B7FB84025D;
	Thu, 22 Sep 2022 20:59:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B7FB84025D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663880352;
	bh=7wISPwbaVJ6ux9J29J3KBf7jWxbR4kJMS5Ba6ptONKg=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6m2uPKOONzdR2G/iqfTDUtiULL56brlqKpglu+/XnRacEKFkWK2RNcUxG+sHEfUHx
	 G4hXwPWGSqnGUV7l7fZ7RoYE4CxOdHv599KdyIa4Wh35B12nSHY12tx25uNUAEqWTq
	 gIuRAZXQsDHcUOtdWjWobBYMryO6vFUDyu2+A2Ko56MaBF6O+sGh2J76K921w+w/FA
	 jRxq1lCcf1xmrLx52BiTqK0GhFUjV2I7Lqdtiu0OUaxGZMCRQOm7nmiy204jZ96XEz
	 ziKDxA04OFBLpHi5fR3XFxkqUtfV/BR/6FEJveveHabP4y5bCWQAMKSLdwwQTmW6V0
	 qOTAha1mNJx9w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pGw_qC-W0fc9; Thu, 22 Sep 2022 20:59:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A9488401B7;
	Thu, 22 Sep 2022 20:59:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A9488401B7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 61F4B1BF228
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 20:59:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3C0D0817A3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 20:59:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3C0D0817A3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HqhYc3IsPixb for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Sep 2022 20:59:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A98C981774
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com
 [IPv6:2607:f8b0:4864:20::629])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A98C981774
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 20:59:02 +0000 (UTC)
Received: by mail-pl1-x629.google.com with SMTP id l10so9929810plb.10
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 13:59:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date;
 bh=U3NGbjctdNtYZUAw53yWij8HwInl1GKHMSlSeRHwL2A=;
 b=GTxJDB/SskFdEiKL4xq7ZalXfEyBOOhiPtkXoYVChBAd9KNf7Hdya8vyfwytBXQMLM
 rThc2cZO8kQeYI5Am2AOGGo55KIub3jQZBVzS9N5xBrXt4xWONhrmZvjgJzWUY0LdgEf
 Qaae1I4FyvDpRMLip+w9ujW5jQ1NvxBUX1xB7NvasJAiQU7I4DsPPogjm3wJkZAX9X3t
 VGsTXuz6jiVJCzraDQVd4U/VZ9ugtfS/xMpGh+IAZIBYtM4Tlk9Ehi/COI0ji1WWxEHL
 Kswi+Pqthwbu+aJG/H8WJ7cIqiDdo4lVdOaOswGGqVwuPZxxgMnu0BitoMYe6r3SoI8M
 o1mQ==
X-Gm-Message-State: ACrzQf397S1lH9sTI353Idg7Ur7hYK4qg+fHZk+wdI1q/QZWl3ZNN0/2
 9wfoUE0W7mASgmbTc3n59JHLRItMRd92Rxwjpkj9DMRvLow=
X-Google-Smtp-Source: AMsMyM6oJjIZZLJOip9RU/PURA1Apfde1gyOXQdWAhXUo+O1vvKxwVKmxa5bDasXL2u3+HXcXog35fGDjELw4SR2P7I=
X-Received: by 2002:a17:90b:3912:b0:203:c0a0:f582 with SMTP id
 ob18-20020a17090b391200b00203c0a0f582mr12014942pjb.141.1663880342080; Thu, 22
 Sep 2022 13:59:02 -0700 (PDT)
MIME-Version: 1.0
References: <20220629085836.18042-1-fmdefrancesco@gmail.com>
 <2254584.ElGaqSPkdT@opensuse>
 <CAKgT0UfThk3MLcE38wQu5+2Qy7Ld2px-2WJgnD+2xbDsA8iEEw@mail.gmail.com>
 <2834855.e9J7NaK4W3@opensuse> <d4e33ca3-92e5-ba30-f103-09d028526ea2@intel.com>
In-Reply-To: <d4e33ca3-92e5-ba30-f103-09d028526ea2@intel.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Thu, 22 Sep 2022 13:58:50 -0700
Message-ID: <CAKgT0Uf1o+i0qKf7J_xqC3SACRFhiYqyhBeQydgUafB5uFkAvg@mail.gmail.com>
To: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date;
 bh=U3NGbjctdNtYZUAw53yWij8HwInl1GKHMSlSeRHwL2A=;
 b=O94ciy7HakFm25cgL9FxzuFEvodLFGdVNX4xWMGxwhnQ9kRVsEdnU9538O5Z6Y/zRM
 ICn2RYFoam+WVao99bv2zTAsu6If+eHCcUwdNR9e6QyjVNjif/fi0Y2Ww202HB7rPUzT
 0OPBqhJK/p0JiJhAso96iAiGciuZLso6k1kwtZ1mHSHGqteBCxja3tlHDKWICjNWm62o
 k/2hRRnLCPl44cW/dPQqlJQKSWf4sgDTael/1STTxuhKVM2wmA72AziOr1vaq2umKCmt
 Sp9PyEXx5QrTBb35iqpqrkVcvFibgp8Tj4onsnkM2heTUouvjOyw+28ib2oiiHgIiEXV
 SXog==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=O94ciy7H
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Use kmap_local_page in
 ixgbe_check_lbtest_frame()
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Netdev <netdev@vger.kernel.org>,
 Alexander Duyck <alexanderduyck@fb.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Ira Weiny <ira.weiny@intel.com>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, bpf <bpf@vger.kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 "Fabio M. De Francesco" <fmdefrancesco@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Sep 22, 2022 at 1:07 PM Anirudh Venkataramanan
<anirudh.venkataramanan@intel.com> wrote:
>
>
> Following Fabio's patches, I made similar changes for e1000/e1000e and
> submitted them to IWL [1].
>
> Yesterday, Ira Weiny pointed me to some feedback from Dave Hansen on the
> use of page_address() [2]. My understanding of this feedback is that
> it's safer to use kmap_local_page() instead of page_address(), because
> you don't always know how the underlying page was allocated.
>
> This approach (of using kmap_local_page() instead of page_address())
> makes sense to me. Any reason not to go this way?
>
> [1]
>
> https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20220919180949.388785-1-anirudh.venkataramanan@intel.com/
>
> https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20220919180949.388785-2-anirudh.venkataramanan@intel.com/
>
> [2]
> https://lore.kernel.org/lkml/5d667258-b58b-3d28-3609-e7914c99b31b@intel.com/
>
> Ani

For the two patches you referenced the driver is the one allocating
the pages. So in such a case the page_address should be acceptable.
Specifically we are falling into alloc_page(GFP_ATOMIC) which should
fall into the first case that Dave Hansen called out.

If it was the Tx path that would be another matter, however these are
Rx only pages so they are allocated by the driver directly and won't
be allocated from HIGHMEM.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
