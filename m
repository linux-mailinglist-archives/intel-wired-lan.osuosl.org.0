Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0171F2D27FB
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Dec 2020 10:43:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AA1D5875C5;
	Tue,  8 Dec 2020 09:43:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oZqE74FMjhzR; Tue,  8 Dec 2020 09:43:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 71260875CE;
	Tue,  8 Dec 2020 09:43:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E826B1BF255
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 09:43:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D807E86DA9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 09:43:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tRoDaFAbWGC1 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Dec 2020 09:43:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from www62.your-server.de (www62.your-server.de [213.133.104.62])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4659686D7B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 09:43:01 +0000 (UTC)
Received: from sslproxy02.your-server.de ([78.47.166.47])
 by www62.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.3) (envelope-from <daniel@iogearbox.net>)
 id 1kmZW9-0003EK-El; Tue, 08 Dec 2020 10:42:45 +0100
Received: from [85.7.101.30] (helo=pc-9.home)
 by sslproxy02.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <daniel@iogearbox.net>)
 id 1kmZW9-0000AX-3P; Tue, 08 Dec 2020 10:42:45 +0100
To: Jesper Dangaard Brouer <brouer@redhat.com>,
 John Fastabend <john.fastabend@gmail.com>
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
 <20201204102901.109709-2-marekx.majtyka@intel.com> <878sad933c.fsf@toke.dk>
 <20201204124618.GA23696@ranger.igk.intel.com>
 <048bd986-2e05-ee5b-2c03-cd8c473f6636@iogearbox.net>
 <20201207135433.41172202@carbon>
 <5fce960682c41_5a96208e4@john-XPS-13-9370.notmuch>
 <20201208100040.0d57742a@carbon>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <1c327ddf-f361-8abe-9f8d-605f05ddcc7a@iogearbox.net>
Date: Tue, 8 Dec 2020 10:42:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20201208100040.0d57742a@carbon>
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.102.4/26011/Mon Dec  7 15:37:03 2020)
Subject: Re: [Intel-wired-lan] [PATCH v2 bpf 1/5] net: ethtool: add xdp
 properties flag set
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
Cc: maciejromanfijalkowski@gmail.com, andrii.nakryiko@gmail.com,
 hawk@kernel.org, netdev@vger.kernel.org,
 =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>, ast@kernel.org,
 Marek Majtyka <marekx.majtyka@intel.com>, alardam@gmail.com,
 intel-wired-lan@lists.osuosl.org, jonathan.lemon@gmail.com, kuba@kernel.org,
 bpf@vger.kernel.org, bjorn.topel@intel.com, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/8/20 10:00 AM, Jesper Dangaard Brouer wrote:
> On Mon, 07 Dec 2020 12:52:22 -0800
> John Fastabend <john.fastabend@gmail.com> wrote:
> 
>>> Use-case(1): Cloud-provider want to give customers (running VMs) ability
>>> to load XDP program for DDoS protection (only), but don't want to allow
>>> customer to use XDP_TX (that can implement LB or cheat their VM
>>> isolation policy).
>>
>> Not following. What interface do they want to allow loading on? If its
>> the VM interface then I don't see how it matters. From outside the
>> VM there should be no way to discover if its done in VM or in tc or
>> some other stack.
>>
>> If its doing some onloading/offloading I would assume they need to
>> ensure the isolation, etc. is still maintained because you can't
>> let one VMs program work on other VMs packets safely.
>>
>> So what did I miss, above doesn't make sense to me.
> 
> The Cloud-provider want to load customer provided BPF-code on the
> physical Host-OS NIC (that support XDP).  The customer can get access
> to a web-interface where they can write or upload their BPF-prog.
> 
> As multiple customers can upload BPF-progs, the Cloud-provider have to
> write a BPF-prog dispatcher that runs these multiple program.  This
> could be done via BPF tail-calls, or via Toke's libxdp[1], or via
> devmap XDP-progs per egress port.
> 
> The Cloud-provider don't fully trust customers BPF-prog.   They already
> pre-filtered traffic to the given VM, so they can allow customers
> freedom to see traffic and do XDP_PASS and XDP_DROP.  They
> administratively (via ethtool) want to disable the XDP_REDIRECT and
> XDP_TX driver feature, as it can be used for violation their VM
> isolation policy between customers.
> 
> Is the use-case more clear now?

I think we're talking about two different things. The use case as I understood
it in (1) mentioned to be able to disable XDP_TX for NICs that are deployed in
the VM. This would be a no-go as-is since that would mean my basic assumption
for attaching XDP progs is gone in that today return codes pass/drop/tx is
pretty much available everywhere on native XDP supported NICs. And if you've
tried it on major cloud providers like AWS or Azure that offer SRIOV-based
networking that works okay and further restricting this would mean breakage of
existing programs.

What you mean here is "offload" from guest to host which is a different use
case than what likely John and I read from your description in (1). Such program
should then be loaded via BPF offload API. Meaning, if offload is used and the
host is then configured to disallow XDP_TX for such requests from guests, then
these get rejected through such facility, but if the /same/ program was loaded as
regular native XDP where it's still running in the guest, then it must succeed.
These are two entirely different things.

It's not clear to me whether some ethtool XDP properties flag is the right place
to describe this (plus this needs to differ between offloaded / non-offloaded progs)
or whether this should be an implementation detail for things like virtio_net e.g.
via virtio_has_feature(). Feels more like the latter to me which already has such
a facility in place.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
