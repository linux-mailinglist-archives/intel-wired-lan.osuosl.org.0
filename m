Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E50EBA43
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Nov 2019 00:15:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5312D8836B;
	Thu, 31 Oct 2019 23:15:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Cctg3Q-HNrQ7; Thu, 31 Oct 2019 23:15:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id ADD4F88368;
	Thu, 31 Oct 2019 23:15:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EA6A41BF280
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2019 23:15:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DB1A7203C7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2019 23:15:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P4zjeGFwWhJN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Oct 2019 23:15:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by silver.osuosl.org (Postfix) with ESMTPS id B36BC203BA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2019 23:15:48 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id w8so8348078lji.13
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2019 16:15:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=f3a8A0/l2UF+i77uTlp/YCUbm9HqgKFeZi6vGFlnxfM=;
 b=SmBEn84o1TKsmt3gjErkbu0+qg+GHgrFHTr8ShQcBYjQAmltbXb9lIJUHMEbFbVaAR
 ZO8NeEMPxeDYFekTj/565Kl5lpfB1ngPMvBkTzWL/QX7fa02stoHqk7EIFLWOyvwdKdk
 i5sTTpEXXvzGgDYYCbx2yhf0FVNxXtzWTkPMq77MxYqtQY7+IJ6lbsrHfJrZ/X0/ph+j
 JPXbOo9eo9jJfR0uFURUzTqqsKTW9FcOEAeWL1hFGFz9IeDQAtLniP/6ImLTu30e6LJ0
 9BeXsmxojGRPbj4MAlqBFngmwBm7t5QBqYF00mZMqkS0Rns3vadjPH4/4yh04ilcws+Z
 8I6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=f3a8A0/l2UF+i77uTlp/YCUbm9HqgKFeZi6vGFlnxfM=;
 b=chSx8JX2PEL+ubbFhkS2eekOGWVyi1V5kpF0xYowfPiTK5y6wOtcgHZBrFtmKSLht9
 6KMLUGxktpBGJfx+al4JUkcP3ICL5IfjmrlGtIthqg2KUajcEP7/FG9S+XBh5HnTFgbj
 7dBJ0yBIiWZ5ZfQ5lbyvPrim8HF85kDB2hOb5XnYKXdoCbOdS+ct4tNIgKjsTXpHnl4z
 LlXAYH1+wiWRoMqydomCQUwpgtEHeXoQSFTYcDx829dkDaqqAPW4v0f5wns3IQEQhErr
 VM2x3hEB9RQUjAgP1iOaX4E7OmadxTHVELiwVWE7wemgJCeKf7Dl/iJ01eaKrUPrGnM/
 xXtQ==
X-Gm-Message-State: APjAAAVERncteCeZcj3HKDFS0/Hwo+qnQqURe2MP+q2xROzFr7y6rhaY
 82lxBBPIPsX7Pfuy5BK7hf6EPT6cBqgszns98W0=
X-Google-Smtp-Source: APXvYqzm3NVAIKfvcCxCCPzBMZ+2ono4/z0daXiPapSXvjCWzDnY+jy8fxfoO7CLNJiQrCdtHG1T7cQTF+EnO7Rpnak=
X-Received: by 2002:a2e:9799:: with SMTP id y25mr6107877lji.228.1572563746550; 
 Thu, 31 Oct 2019 16:15:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAJ+HfNigHWVk2b+UJPhdCWCTcW=Eh=yfRNHg4=Fr1mv98Pq=cA@mail.gmail.com>
 <2e27b8d9-4615-cd8d-93de-2adb75d8effa@intel.com>
In-Reply-To: <2e27b8d9-4615-cd8d-93de-2adb75d8effa@intel.com>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Thu, 31 Oct 2019 16:15:34 -0700
Message-ID: <CAADnVQLJ95j5jfh5jFApjs4bYzOxuPcrMgH9jbdGGvOWQEPRyQ@mail.gmail.com>
To: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
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
Cc: Jakub Kicinski <jakub.kicinski@netronome.com>,
 =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, "Herbert,
 Tom" <tom.herbert@intel.com>, Network Development <netdev@vger.kernel.org>,
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Oct 31, 2019 at 3:38 PM Samudrala, Sridhar
<sridhar.samudrala@intel.com> wrote:
>
> Alexei, Jakub
>
> Do you think it will be possible to avoid this overhead when mitigations are turned ON?

yes

> The other part of the overhead is going through the redirect path.
>
> Can i assume that your silence as an indication that you are now okay with optional bypass
> flag as long as it doesn't effect the normal XDP datapath. If so, i will respin and submit
> the patches against the latest bpf-next

I'm still against it.
Looks like the only motivation for it is extra overhead due to retpolines.
imo it's not a good reason to introduce a bunch of extra code helping
single kernel feature.
We will have proper solution for indirect calls.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
