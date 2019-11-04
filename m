Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EC846ED7B4
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Nov 2019 03:30:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A7E408A325;
	Mon,  4 Nov 2019 02:30:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YprVSp4UmJGT; Mon,  4 Nov 2019 02:30:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1F2E78A46B;
	Mon,  4 Nov 2019 02:30:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 589EC1BF277
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2019 02:30:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5474D8A325
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2019 02:30:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AXIN2ttZC11k for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Nov 2019 02:30:37 +0000 (UTC)
X-Greylist: delayed 00:22:24 by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F304A8A31F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2019 02:30:36 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id e2so16161895qkn.5
 for <intel-wired-lan@lists.osuosl.org>; Sun, 03 Nov 2019 18:30:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=coverfire.com; s=google;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=NZjd1aiE9ljfVyAYAzmVOMl1dm7M7bVI1+859Yvsuy4=;
 b=Mn9trFmjs68dJ50ygRmLgqUHFvL0TJmACdy2aoW2tUO3BLClWdSF1qTRAfQRD/Hkrr
 TMgF3WdJGW2WKP6rrgRH4ONQcj+Vjrc16KSroyYRYwWQFSr/iPQr8GlzM6Ith9qMQo8O
 gT8D8y8dp3kiShYRaL2yOK//vS4viogmucdRoJQhmjb0Wkl8FA0lzcNR191wN3htQDz+
 5yPEp98QWhZ9MLZArTjs0Ch/9u1uzBzc5xu4V3iHk0BUV4M+gwSaRF8ikMG4ouDlkkvN
 rLOCD7bI/zjPdZStNDzddlA16eRy9ecHjShjmbx0wn4ut/H/ImOpAEIQjshZ9XvQ1QeH
 JljQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=NZjd1aiE9ljfVyAYAzmVOMl1dm7M7bVI1+859Yvsuy4=;
 b=R7hHYSI8Sku2J9DInz4wCH64zt+jMScdazEP4E297fBLnrHT8C3QMlhaY7KmK3ce96
 6pLV/q0sgl1HZlH0ywP/MevwCPuWkJgJU2EHt2NyHuI70QvTNrnfPwAiBEQ0ZYI0Ie/K
 xZ9/PaPbTq4Fah4noBYQeJXmLCw2JUJUhFJox1bGKSkttR4PFttLPADkGtUFWE+A2wNu
 +yvtonmBjP8I0GSSNR5Cprc3Yc+ybLGy1lATgPLGjckXTX+l6iJ2NvE74UmLEWWI4/SQ
 CYBrkV3SjlMAuyTGk2ey7R28fiq9XDr/RfNskOcVp5TK7N/Zd3z0LVLwF3aNP4TI7p7F
 VrrA==
X-Gm-Message-State: APjAAAXr3Mgb4BNtKJV5u9sS+B2HQ94lLkXN25X58mdH5+DDTvOGU6Ld
 1CEISrS5FWITvCKex2KUIhgkpaMswitNOA==
X-Google-Smtp-Source: APXvYqyfHeKPje0Zs+td+720nNdYHowg5XX/TSNKHED/Ko7t6ratKpzO8Pb3oTDD4F8fUFumf1/Opw==
X-Received: by 2002:a37:a00f:: with SMTP id j15mr6707654qke.103.1572833291510; 
 Sun, 03 Nov 2019 18:08:11 -0800 (PST)
Received: from localhost.home ([69.41.199.68])
 by smtp.gmail.com with ESMTPSA id x194sm3617001qkb.66.2019.11.03.18.08.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 Nov 2019 18:08:10 -0800 (PST)
Message-ID: <82fb2eba56d84887772f9d533faa7bda9e3b2ee4.camel@coverfire.com>
From: dan@coverfire.com
To: Jakub Kicinski <jakub.kicinski@netronome.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>
Date: Sun, 03 Nov 2019 21:08:08 -0500
In-Reply-To: <20191031172148.0290b11f@cakuba.netronome.com>
References: <CAJ+HfNigHWVk2b+UJPhdCWCTcW=Eh=yfRNHg4=Fr1mv98Pq=cA@mail.gmail.com>
 <2e27b8d9-4615-cd8d-93de-2adb75d8effa@intel.com>
 <20191031172148.0290b11f@cakuba.netronome.com>
User-Agent: Evolution 3.34.1 (3.34.1-1.fc31) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] FW: [PATCH bpf-next 2/4] xsk: allow AF_XDP
 sockets to receive packets directly from a queue
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
Cc: maciej.fijalkowski@intel.com, toke@redhat.com,
 David Miller <davem@davemloft.net>, intel-wired-lan@lists.osuosl.org,
 tom.herbert@intel.com, netdev@vger.kernel.org, bpf@vger.kernel.org,
 bjorn.topel@intel.com, alexei.starovoitov@gmail.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 2019-10-31 at 17:21 -0700, Jakub Kicinski wrote:
> 
> My concern was that we want the applications to encode fast path
> logic
> in BPF and load that into the kernel. So your patch works
> fundamentally
> against that goal:

I'm only one AF_XDP user but my main goal is to get packets to
userspace as fast as possible. I don't (currently) need a BPF program
in the path at all. I suspect that many other people that look at
AF_XDP as a DPDK replacement have a similar view.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
