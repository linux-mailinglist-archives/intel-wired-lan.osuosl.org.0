Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A53E515B410
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Feb 2020 23:48:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5720E87D46;
	Wed, 12 Feb 2020 22:47:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WKhFh6+-9yt7; Wed, 12 Feb 2020 22:47:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E8E6D87D1D;
	Wed, 12 Feb 2020 22:47:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 61D671BF421
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2020 22:47:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5AD0E87D05
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2020 22:47:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wsbqtoP6U7o0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Feb 2020 22:47:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f195.google.com (mail-il1-f195.google.com
 [209.85.166.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BEA4C87CCB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2020 22:47:45 +0000 (UTC)
Received: by mail-il1-f195.google.com with SMTP id s18so3260038iln.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2020 14:47:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kE0KGymJ9SlCv4yo/rGYDDeCZQbIiylTg7opYya3OZs=;
 b=XsPiS2HfJnQbnVjm94c1T4U3qbtOpA15x1GdbAksuS2P1vs9Sl9CPA1vgFQuVbblOJ
 xE13HZuxkAU7eV0l/fNUfTPVt1Lab+C80T1ei/jymT83rNbGHqlMhy44P/56bWfRCodu
 nC0/z9jI3fHufEH6IzcF0JoaeMkrMGCJ/5NjrCIz35+xeYGaF32VAjdR+H08RRB+vQNv
 od6L2AIGLmPsYpBCxm8cHqM988CXKzLhTtX+BD2Fwc+P1UObVuLQas+3WBxUYZe7wKk3
 Rh0LyFjd6rbea9gtP3pBT+V5TUJ5TKEFCHQVkwf4wGK0pOWk7VCg0fJUJ1/r4OUGNbAH
 sHQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kE0KGymJ9SlCv4yo/rGYDDeCZQbIiylTg7opYya3OZs=;
 b=Jax4E6Fq5XRA2OanCANihOsP7IHQ2WP5sLqnxC6hiM1vQ2E63oUtVUKvKL2fZ9duRb
 jTahEtxlLBmTCgUBWKLFBpVEpMQW744Se5cfeCPwSG1L2/FGE+oYxy3F3RlWTxl4k1ly
 ydnQ3I/e8dLPNP+ZAs9uMZyMvOdEptlp/uhEzXZH3dEHBTNi97BEzbFFjUnSAoHUQfZb
 kQt4YVKLql9KIBjA6Cp9Uuf+psX92siq/X74+4MHucUSAtXNDbBC/t3CqOQubVvV9why
 EybS0PchlRH4GnsGW2N8ReKSANJqHu02Ryzdb7kLdR6lSVXS3h8U12DDXmI+f5SvABTs
 s48w==
X-Gm-Message-State: APjAAAXYxO66EBFU6NU4PjeiUFXFdW6uxBXqP4PbiFaarp/2Oh7cKoC2
 jWqyttScktPJDuFolf+DckNwBdAq1LKfl0jfY+A=
X-Google-Smtp-Source: APXvYqwAVGhgw9eqxvyg9R750HwiL9ohaXhNvLpQPrFCEkAc4g1i8HWmAGqgKMvvIbOG3gzkpIaLKYcj4lFf3p6/n+s=
X-Received: by 2002:a05:6e02:c8d:: with SMTP id
 b13mr13798942ile.42.1581547665006; 
 Wed, 12 Feb 2020 14:47:45 -0800 (PST)
MIME-Version: 1.0
References: <20200205123115.44103-1-sasha.neftin@intel.com>
 <309B89C4C689E141A5FF6A0C5FB2118B971F357D@ORSMSX103.amr.corp.intel.com>
In-Reply-To: <309B89C4C689E141A5FF6A0C5FB2118B971F357D@ORSMSX103.amr.corp.intel.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Wed, 12 Feb 2020 14:47:34 -0800
Message-ID: <CAKgT0UfvFZBPEYf1-b+WU48RKk1_sp8xzJtKe6rAXAk8_bCZ9Q@mail.gmail.com>
To: "Brown, Aaron F" <aaron.f.brown@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Complete to commit Add
 support for TSO
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Feb 12, 2020 at 2:39 PM Brown, Aaron F <aaron.f.brown@intel.com> wrote:
>
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> > Sasha Neftin
> > Sent: Wednesday, February 5, 2020 4:31 AM
> > To: intel-wired-lan@lists.osuosl.org
> > Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Complete to commit Add
> > support for TSO
> >
> > commit f38b782dccab ("igc: Add support for TSO")
> > Add option to setting transmit command (TUCMD) of the context
> > descriptor based on skb_shinfo gso_type and SKB_GSO_UDP_L4 flag.
> >
> > Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> > ---
> >  drivers/net/ethernet/intel/igc/igc_defines.h | 1 +
> >  drivers/net/ethernet/intel/igc/igc_main.c    | 3 ++-
> >  2 files changed, 3 insertions(+), 1 deletion(-)
> >
> Aside from possibly including the responses to Jesse's questions on this...
> Tested-by: Aaron Brown <aaron.f.brown@intel.com>

I'm not sure the patch makes any sense. Does the driver support UDP
GSO? I don't see the feature flag (NETIF_F_GSO_UDP_L4) anywhere that
enables it.

If it doesn't enable it then it doesn't make much sense to update the
code to add this one bit until it does since you can't actually test
it as the stack will not ask you to segment UDP frames.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
