Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F70AD1839
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Oct 2019 21:12:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 19FF286AE3;
	Wed,  9 Oct 2019 19:12:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aXtVIqFpsc0O; Wed,  9 Oct 2019 19:12:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2AACE87852;
	Wed,  9 Oct 2019 19:12:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B3E3B1BF3BB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 19:12:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A05EA8832C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 19:12:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jhLpB1QKfrze for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2019 19:12:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 949AC882F8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2019 19:12:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 12:12:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,277,1566889200"; d="scan'208";a="218776999"
Received: from unknown (HELO [10.241.228.165]) ([10.241.228.165])
 by fmsmga004.fm.intel.com with ESMTP; 09 Oct 2019 12:12:35 -0700
To: Alexei Starovoitov <alexei.starovoitov@gmail.com>
References: <1570515415-45593-1-git-send-email-sridhar.samudrala@intel.com>
 <1570515415-45593-3-git-send-email-sridhar.samudrala@intel.com>
 <CAADnVQ+XxmvY0cs8MYriMMd7=2TSEm4zCtB+fs2vkwdUY6UgAQ@mail.gmail.com>
 <3ED8E928C4210A4289A677D2FEB48235140134CE@fmsmsx111.amr.corp.intel.com>
 <2bc26acd-170d-634e-c066-71557b2b3e4f@intel.com>
 <CAADnVQ+qq6RLMjh5bB1ugXP5p7vYM2F1fLGFQ2pL=2vhCLiBdA@mail.gmail.com>
From: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Message-ID: <2032d58c-916f-d26a-db14-bd5ba6ad92b9@intel.com>
Date: Wed, 9 Oct 2019 12:12:34 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAADnVQ+qq6RLMjh5bB1ugXP5p7vYM2F1fLGFQ2pL=2vhCLiBdA@mail.gmail.com>
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
Cc: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 Netdev <netdev@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, "Herbert,
 Tom" <tom.herbert@intel.com>, "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/9/2019 10:17 AM, Alexei Starovoitov wrote:
> On Wed, Oct 9, 2019 at 9:53 AM Samudrala, Sridhar
> <sridhar.samudrala@intel.com> wrote:
>>
>>
>>>> +
>>>> +u32 bpf_direct_xsk(const struct bpf_prog *prog, struct xdp_buff *xdp)
>>>> +{
>>>> +       struct xdp_sock *xsk;
>>>> +
>>>> +       xsk = xdp_get_xsk_from_qid(xdp->rxq->dev, xdp->rxq->queue_index);
>>>> +       if (xsk) {
>>>> +               struct bpf_redirect_info *ri =
>>>> + this_cpu_ptr(&bpf_redirect_info);
>>>> +
>>>> +               ri->xsk = xsk;
>>>> +               return XDP_REDIRECT;
>>>> +       }
>>>> +
>>>> +       return XDP_PASS;
>>>> +}
>>>> +EXPORT_SYMBOL(bpf_direct_xsk);
>>>
>>> So you're saying there is a:
>>> """
>>> xdpsock rxdrop 1 core (both app and queue's irq pinned to the same core)
>>>      default : taskset -c 1 ./xdpsock -i enp66s0f0 -r -q 1
>>>      direct-xsk :taskset -c 1 ./xdpsock -i enp66s0f0 -r -q 1 6.1x improvement in drop rate """
>>>
>>> 6.1x gain running above C code vs exactly equivalent BPF code?
>>> How is that possible?
>>
>> It seems to be due to the overhead of __bpf_prog_run on older processors
>> (Ivybridge). The overhead is smaller on newer processors, but even on
>> skylake i see around 1.5x improvement.
>>
>> perf report with default xdpsock
>> ================================
>> Samples: 2K of event 'cycles:ppp', Event count (approx.): 8437658090
>> Overhead  Command          Shared Object     Symbol
>>     34.57%  xdpsock          xdpsock           [.] main
>>     17.19%  ksoftirqd/1      [kernel.vmlinux]  [k] ___bpf_prog_run
>>     13.12%  xdpsock          [kernel.vmlinux]  [k] ___bpf_prog_run
> 
> That must be a bad joke.
> The whole patch set is based on comparing native code to interpreter?!
> It's pretty awesome that interpreter is only 1.5x slower than native x86.
> Just turn the JIT on.

Thanks Alexei for pointing out that i didn't have JIT on.
When i turn it on, the performance improvement is a more modest 1.5x 
with rxdrop and 1.2x with l2fwd.

> 
> Obvious Nack to the patch set.
> 

Will update the patchset with the right performance data and address 
feedback from Bjorn.
Hope you are not totally against direct XDP approach as it does provide 
value when an AF_XDP socket is bound to a queue and a HW filter can 
direct packets targeted for that queue.



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
