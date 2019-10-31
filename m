Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 72372EB9BF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Oct 2019 23:38:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0825C20390;
	Thu, 31 Oct 2019 22:38:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id owWvzQlgUmSK; Thu, 31 Oct 2019 22:38:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 02483233B8;
	Thu, 31 Oct 2019 22:38:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D876A1BF27A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2019 22:38:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B28BF23340
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2019 22:38:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tWd9cUpwJlcJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Oct 2019 22:38:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id A662F20390
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2019 22:38:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Oct 2019 15:38:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,253,1569308400"; d="scan'208";a="194483061"
Received: from unknown (HELO [10.241.228.161]) ([10.241.228.161])
 by orsmga008.jf.intel.com with ESMTP; 31 Oct 2019 15:38:42 -0700
To: bjorn.topel@gmail.com
References: <CAJ+HfNigHWVk2b+UJPhdCWCTcW=Eh=yfRNHg4=Fr1mv98Pq=cA@mail.gmail.com>
From: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Message-ID: <2e27b8d9-4615-cd8d-93de-2adb75d8effa@intel.com>
Date: Thu, 31 Oct 2019 15:38:42 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAJ+HfNigHWVk2b+UJPhdCWCTcW=Eh=yfRNHg4=Fr1mv98Pq=cA@mail.gmail.com>
Content-Language: en-US
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
Cc: jakub.kicinski@netronome.com, netdev@vger.kernel.org, toke@redhat.com,
 intel-wired-lan@lists.osuosl.org, tom.herbert@intel.com,
 maciej.fijalkowski@intel.com, bpf@vger.kernel.org, bjorn.topel@intel.com,
 alexei.starovoitov@gmail.com, magnus.karlsson@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


[...]
> >
> > With mitigations ON
> > -------------------
> > Samples: 6K of event 'cycles', 4000 Hz, Event count (approx.): 5646512726
> > bpf_prog_3c8251c7e0fef8db  bpf_prog_3c8251c7e0fef8db [Percent: local period]
> >   45.05      push   %rbp
> >    0.02      mov    %rsp,%rbp
> >    0.03      sub    $0x8,%rsp
> >   22.09      push   %rbx

> [...]
> >
> > Do you see any issues with this data? With mitigations ON push %rbp and push %rbx overhead seems to
> > be pretty high.

> That's sample skid from the retpoline thunk when entring the XDP
> program. Pretty expensive push otherwise! :-)

> Another thought; Disclaimer: I'm no spectrev2 expert, and probably not
> getting the mitigations well enough. So this is me trying to swim at
> the deep end! Would it be possible to avoid the retpoline when
> entering the XDP program. At least for some XDP program that can be
> proved "safe"? If so, PeterZ's upcoming static_call could be used from
> the driver side.

Alexei, Jakub

Do you think it will be possible to avoid this overhead when mitigations are turned ON?
The other part of the overhead is going through the redirect path.

Can i assume that your silence as an indication that you are now okay with optional bypass
flag as long as it doesn't effect the normal XDP datapath. If so, i will respin and submit
the patches against the latest bpf-next

-Sridhar
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
