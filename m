Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C77EEBB6E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Nov 2019 01:30:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 14FEE86783;
	Fri,  1 Nov 2019 00:30:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PNfANR_9oB70; Fri,  1 Nov 2019 00:30:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 64EEE86868;
	Fri,  1 Nov 2019 00:30:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EDAC91BF9D2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Nov 2019 00:30:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E994886709
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Nov 2019 00:30:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f9PGZ46smqnZ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Nov 2019 00:30:13 +0000 (UTC)
X-Greylist: delayed 00:08:13 by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0CF2586644
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Nov 2019 00:30:13 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id j14so6045972lfb.8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2019 17:30:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=EV2fbUKu73gEX5+CIj3b5YkYQITcbwccDU3gSlwZNAU=;
 b=itp86BjsasKlqgiwsIms8Ib6Hdl0ma48ViJ4vhEXxoXhlR6DRi1aTylRXntCcq9Ws4
 8soRV0LTFl27mtSTVh1OYImgL1OR0o6hh+wqfTKN6K/wnltUPIHuRvLnWggtt1es++sO
 sQbWaBtzpGw6lfZ+wTdmIICENwt86tFCLpvVW5g7tjFbmpRSqa+gmhMWbfD8lHqVvGtw
 fXanExQxG6sW7ICqVeakTqeT8w7jJIPxBIxKPdnbOBHPSRKkqG+Cm8m7R3HI3mG1AKno
 /WgPaSnGskagXLeWHhVFZSBFk0rIAFurvKXMDoDsEW0aV9epr/fBqJwH4sqcr/NfPgPl
 FCHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=EV2fbUKu73gEX5+CIj3b5YkYQITcbwccDU3gSlwZNAU=;
 b=pGRxskCYE1xuztlZVACsahlqcuxr2jYkvyZYhTk5b4lMCQu57gmUCmfVHKdqyAARSc
 svZceeBs96KWIWY+iNVg8TRVbhut2DXhGCsW/ogc0QPDvtFP6qDjIgUSJz/GCsrJGu/B
 a1QiLvbwBRRF0Bxn02SqSjl5HKcCiTNFCdSaxzzXOnV7zAFCvFAgNpb7WbBWVR3q6bnL
 9BU26D3GfMvwGk1qICaJXWSl1S42aEQh2G6C71nhk/K3HMdkmKhS0AnQOT1I3MEBprB9
 zbT9CP/cHNcgUk0vHoZtq2nikt3rYoruyApkpxoznPAF0eSwgDB36hvS0ASq9UOdUrnU
 yf5A==
X-Gm-Message-State: APjAAAUXF9Pi9Q0vj6E+G3Dppg1UgvW8lmGSJ3z7LrqwshI2NSChTgEu
 RZLAUC9zTr2iALfFSVRWdGRU1w==
X-Google-Smtp-Source: APXvYqwdOpLsUGthqHH2HozLFklWyWYEyoWpdzJcVOkKt3ba3wg8Z1Oo9UPDW0MZ+NNaTICdOe91/g==
X-Received: by 2002:ac2:5109:: with SMTP id q9mr5383215lfb.145.1572567717894; 
 Thu, 31 Oct 2019 17:21:57 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id 141sm1899971ljj.37.2019.10.31.17.21.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 17:21:57 -0700 (PDT)
Date: Thu, 31 Oct 2019 17:21:48 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Message-ID: <20191031172148.0290b11f@cakuba.netronome.com>
In-Reply-To: <2e27b8d9-4615-cd8d-93de-2adb75d8effa@intel.com>
References: <CAJ+HfNigHWVk2b+UJPhdCWCTcW=Eh=yfRNHg4=Fr1mv98Pq=cA@mail.gmail.com>
 <2e27b8d9-4615-cd8d-93de-2adb75d8effa@intel.com>
Organization: Netronome Systems, Ltd.
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

On Thu, 31 Oct 2019 15:38:42 -0700, Samudrala, Sridhar wrote:
> Do you think it will be possible to avoid this overhead when mitigations are turned ON?
> The other part of the overhead is going through the redirect path.

Yes, you should help Maciej with the XDP bulking.

> Can i assume that your silence as an indication that you are now okay with optional bypass
> flag as long as it doesn't effect the normal XDP datapath. If so, i will respin and submit
> the patches against the latest bpf-next

This logic baffles me. I absolutely hate when people repost patches
after I nack them without even as much as mentioning my objections in
the cover letter.

My concern was that we want the applications to encode fast path logic
in BPF and load that into the kernel. So your patch works fundamentally
against that goal:

I worry that with the volume of patches that get posted each day
objections of a measly contributor like myself will get forgotten 
if I don't reply to each posting, yet replying each time makes me look
bullish or whatnot (apart from being an utter waste of time).

Ugh.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
