Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 93FCBEC882
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Nov 2019 19:31:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2CA9124C03;
	Fri,  1 Nov 2019 18:31:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1SWdPbnU1+JZ; Fri,  1 Nov 2019 18:31:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0F01724BF8;
	Fri,  1 Nov 2019 18:31:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 46B511BF33C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Nov 2019 18:31:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3BAE524BEA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Nov 2019 18:31:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FgTC+EYSYJrt for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Nov 2019 18:31:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 7750C24BB3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Nov 2019 18:31:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Nov 2019 11:31:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,256,1569308400"; d="scan'208";a="194755221"
Received: from unknown (HELO [10.241.228.226]) ([10.241.228.226])
 by orsmga008.jf.intel.com with ESMTP; 01 Nov 2019 11:31:11 -0700
To: Jakub Kicinski <jakub.kicinski@netronome.com>
References: <CAJ+HfNigHWVk2b+UJPhdCWCTcW=Eh=yfRNHg4=Fr1mv98Pq=cA@mail.gmail.com>
 <2e27b8d9-4615-cd8d-93de-2adb75d8effa@intel.com>
 <20191031172148.0290b11f@cakuba.netronome.com>
From: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Message-ID: <8481fe0a-fa7b-c689-1e51-1a3253176509@intel.com>
Date: Fri, 1 Nov 2019 11:31:11 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191031172148.0290b11f@cakuba.netronome.com>
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
Cc: maciej.fijalkowski@intel.com, toke@redhat.com,
 David Miller <davem@davemloft.net>, intel-wired-lan@lists.osuosl.org,
 tom.herbert@intel.com, netdev@vger.kernel.org, bpf@vger.kernel.org,
 bjorn.topel@intel.com, alexei.starovoitov@gmail.com, magnus.karlsson@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/31/2019 5:21 PM, Jakub Kicinski wrote:
> On Thu, 31 Oct 2019 15:38:42 -0700, Samudrala, Sridhar wrote:
>> Do you think it will be possible to avoid this overhead when mitigations are turned ON?
>> The other part of the overhead is going through the redirect path.
> 
> Yes, you should help Maciej with the XDP bulking.
> 
>> Can i assume that your silence as an indication that you are now okay with optional bypass
>> flag as long as it doesn't effect the normal XDP datapath. If so, i will respin and submit
>> the patches against the latest bpf-next
> 
> This logic baffles me. I absolutely hate when people repost patches
> after I nack them without even as much as mentioning my objections in
> the cover letter.

Sorry if you got the impression that i didn't take your feedback. I CCed you
and also included the kernel rxdrop data that you requested in the original
series.

> 
> My concern was that we want the applications to encode fast path logic
> in BPF and load that into the kernel. So your patch works fundamentally
> against that goal:

So looks like you are saying that the fundamental requirement is that all AF_XDP
packets need to go via a BPF program.

The reason i proposed direct receive is because of the overhead we are seeing
with going via BPF program for apps that want to receive all the packets on a
specific queue.

I agree that there is work going on to reduce this overhead with bulking and avoiding
the retpoline.
We can revisit after these optimizations get in and then see if it is still useful
to provide a direct receive option.

-Sridhar
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
