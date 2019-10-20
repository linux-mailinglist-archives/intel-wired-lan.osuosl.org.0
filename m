Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1E3DDE0E
	for <lists+intel-wired-lan@lfdr.de>; Sun, 20 Oct 2019 12:15:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B51AC8669A;
	Sun, 20 Oct 2019 10:15:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uoaqC5qjgdES; Sun, 20 Oct 2019 10:15:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0173B860F9;
	Sun, 20 Oct 2019 10:15:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9D4881BF4D8
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Oct 2019 10:14:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9905D8721E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Oct 2019 10:14:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SOFCB9Xif6cr for <intel-wired-lan@lists.osuosl.org>;
 Sun, 20 Oct 2019 10:14:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4FD8F86FF8
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Oct 2019 10:14:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571566496;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rBMRx7VKl+U03kBuVO96Nk+z6cMJJlJhVPE1Ji9EtVo=;
 b=I5UDidrZ0LlPj0zGbFNn5xF+JKb+ZV1anFP/E/opzYU/iQgs9B6HFkUyk//A1ynTrty50C
 t/pul5xdQ42UKZ4qAwfph3dTIKaoLdMEWpvpCzTDOwrB9ccdBaiuX+DfkAy1tD3LP646Up
 p/cmbDLFE5ycnmcZ+yA9FFL6azduBr0=
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-71-aGXS7PKQP8ekE8bAvyERHg-1; Sun, 20 Oct 2019 06:14:53 -0400
Received: by mail-lj1-f198.google.com with SMTP id g88so1935223lje.10
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Oct 2019 03:14:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=lXtTDTE7K2RmqsVX0VCIrU7dqQ+2zlkBv2Zk4TX90ZI=;
 b=joWMKDIlG6jnJFKfV/xluubyCVrjR6yGhXYMadSIX44j8u0j3y8XiTl8JY2JA+FZAB
 tnwjHUOF71a/xTx4bVSIz3HmkYbsVW19QSp3P213RuPRNgpKq6hrut0j8FL34PgMnk13
 8iIOI8+V1YNYIkGxeG8wnrv08KmRb01hAYQHBWBFbW1FUHAqicyanjsZmgHGR5usjR+v
 e4Pg0ibgo/g3A3gNEysSWCXLgr3WjOrgeBb68VmZLxsWG34Jgki+nrYC7FIwKDEoJ73f
 RPNB2xT5j9sSjuFO6FOy1rRB+YEloFDZDCsxPbGRAF14K3xObO6ltvIzL2mw4d/fJ0ji
 8VKQ==
X-Gm-Message-State: APjAAAWC9Qv3fvai/Hm97wKLsYcbrdWB10pOgOHu4DsI4zmQjJ+6Uvyr
 Gn6UbLVZnHI9MYLtBBRI7LbnwEui33IsbCmKg+t/asyStW75hMB2DIiSzEiW3mf+LXdyPG6hGNm
 MxC0Qo+1Yp9XVCgEdbR1P9+IsFq4FBQ==
X-Received: by 2002:a2e:81cf:: with SMTP id s15mr9829353ljg.99.1571566492339; 
 Sun, 20 Oct 2019 03:14:52 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwk3PE8wyqtm9E0FO88pbqr/0aL7k1Lp5yiQfGBzgWtbyOMvfKaYdhTmahXXB++Ngh5GJPbgw==
X-Received: by 2002:a2e:81cf:: with SMTP id s15mr9829335ljg.99.1571566491980; 
 Sun, 20 Oct 2019 03:14:51 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id x3sm4685598ljm.103.2019.10.20.03.14.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 20 Oct 2019 03:14:50 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id BD30C1804C8; Sun, 20 Oct 2019 12:14:49 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Alexei Starovoitov <alexei.starovoitov@gmail.com>, "Samudrala\,
 Sridhar" <sridhar.samudrala@intel.com>
In-Reply-To: <20191019022525.w5xbwkav2cpqkfwi@ast-mbp>
References: <1570515415-45593-3-git-send-email-sridhar.samudrala@intel.com>
 <CAADnVQ+XxmvY0cs8MYriMMd7=2TSEm4zCtB+fs2vkwdUY6UgAQ@mail.gmail.com>
 <3ED8E928C4210A4289A677D2FEB48235140134CE@fmsmsx111.amr.corp.intel.com>
 <2bc26acd-170d-634e-c066-71557b2b3e4f@intel.com>
 <CAADnVQ+qq6RLMjh5bB1ugXP5p7vYM2F1fLGFQ2pL=2vhCLiBdA@mail.gmail.com>
 <2032d58c-916f-d26a-db14-bd5ba6ad92b9@intel.com>
 <CAADnVQ+CH1YM52+LfybLS+NK16414Exrvk1QpYOF=HaT4KRaxg@mail.gmail.com>
 <acf69635-5868-f876-f7da-08954d1f690e@intel.com>
 <20191019001449.fk3gnhih4nx724pm@ast-mbp>
 <6f281517-3785-ce46-65de-e2f78576783b@intel.com>
 <20191019022525.w5xbwkav2cpqkfwi@ast-mbp>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Sun, 20 Oct 2019 12:14:49 +0200
Message-ID: <877e4zd8py.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: aGXS7PKQP8ekE8bAvyERHg-1
X-Mimecast-Spam-Score: 0
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
 Netdev <netdev@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, "Herbert,
 Tom" <tom.herbert@intel.com>, "Fijalkowski,
 Maciej" <maciej.fijalkowski@intel.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Alexei Starovoitov <alexei.starovoitov@gmail.com> writes:

> On Fri, Oct 18, 2019 at 05:45:26PM -0700, Samudrala, Sridhar wrote:
>> On 10/18/2019 5:14 PM, Alexei Starovoitov wrote:
>> > On Fri, Oct 18, 2019 at 11:40:07AM -0700, Samudrala, Sridhar wrote:
>> > > 
>> > > Perf report for "AF_XDP default rxdrop" with patched kernel - mitigations ON
>> > > ==========================================================================
>> > > Samples: 44K of event 'cycles', Event count (approx.): 38532389541
>> > > Overhead  Command          Shared Object              Symbol
>> > >    15.31%  ksoftirqd/28     [i40e]                     [k] i40e_clean_rx_irq_zc
>> > >    10.50%  ksoftirqd/28     bpf_prog_80b55d8a76303785  [k] bpf_prog_80b55d8a76303785
>> > >     9.48%  xdpsock          [i40e]                     [k] i40e_clean_rx_irq_zc
>> > >     8.62%  xdpsock          xdpsock                    [.] main
>> > >     7.11%  ksoftirqd/28     [kernel.vmlinux]           [k] xsk_rcv
>> > >     5.81%  ksoftirqd/28     [kernel.vmlinux]           [k] xdp_do_redirect
>> > >     4.46%  xdpsock          bpf_prog_80b55d8a76303785  [k] bpf_prog_80b55d8a76303785
>> > >     3.83%  xdpsock          [kernel.vmlinux]           [k] xsk_rcv
>> > 
>> > why everything is duplicated?
>> > Same code runs in different tasks ?
>> 
>> Yes. looks like these functions run from both the app(xdpsock) context and ksoftirqd context.
>> 
>> > 
>> > >     2.81%  ksoftirqd/28     [kernel.vmlinux]           [k] bpf_xdp_redirect_map
>> > >     2.78%  ksoftirqd/28     [kernel.vmlinux]           [k] xsk_map_lookup_elem
>> > >     2.44%  xdpsock          [kernel.vmlinux]           [k] xdp_do_redirect
>> > >     2.19%  ksoftirqd/28     [kernel.vmlinux]           [k] __xsk_map_redirect
>> > >     1.62%  ksoftirqd/28     [kernel.vmlinux]           [k] xsk_umem_peek_addr
>> > >     1.57%  xdpsock          [kernel.vmlinux]           [k] xsk_umem_peek_addr
>> > >     1.32%  ksoftirqd/28     [kernel.vmlinux]           [k] dma_direct_sync_single_for_cpu
>> > >     1.28%  xdpsock          [kernel.vmlinux]           [k] bpf_xdp_redirect_map
>> > >     1.15%  xdpsock          [kernel.vmlinux]           [k] dma_direct_sync_single_for_device
>> > >     1.12%  xdpsock          [kernel.vmlinux]           [k] xsk_map_lookup_elem
>> > >     1.06%  xdpsock          [kernel.vmlinux]           [k] __xsk_map_redirect
>> > >     0.94%  ksoftirqd/28     [kernel.vmlinux]           [k] dma_direct_sync_single_for_device
>> > >     0.75%  ksoftirqd/28     [kernel.vmlinux]           [k] __x86_indirect_thunk_rax
>> > >     0.66%  ksoftirqd/28     [i40e]                     [k] i40e_clean_programming_status
>> > >     0.64%  ksoftirqd/28     [kernel.vmlinux]           [k] net_rx_action
>> > >     0.64%  swapper          [kernel.vmlinux]           [k] intel_idle
>> > >     0.62%  ksoftirqd/28     [i40e]                     [k] i40e_napi_poll
>> > >     0.57%  xdpsock          [kernel.vmlinux]           [k] dma_direct_sync_single_for_cpu
>> > > 
>> > > Perf report for "AF_XDP direct rxdrop" with patched kernel - mitigations ON
>> > > ==========================================================================
>> > > Samples: 46K of event 'cycles', Event count (approx.): 38387018585
>> > > Overhead  Command          Shared Object             Symbol
>> > >    21.94%  ksoftirqd/28     [i40e]                    [k] i40e_clean_rx_irq_zc
>> > >    14.36%  xdpsock          xdpsock                   [.] main
>> > >    11.53%  ksoftirqd/28     [kernel.vmlinux]          [k] xsk_rcv
>> > >    11.32%  xdpsock          [i40e]                    [k] i40e_clean_rx_irq_zc
>> > >     4.02%  xdpsock          [kernel.vmlinux]          [k] xsk_rcv
>> > >     2.91%  ksoftirqd/28     [kernel.vmlinux]          [k] xdp_do_redirect
>> > >     2.45%  ksoftirqd/28     [kernel.vmlinux]          [k] xsk_umem_peek_addr
>> > >     2.19%  xdpsock          [kernel.vmlinux]          [k] xsk_umem_peek_addr
>> > >     2.08%  ksoftirqd/28     [kernel.vmlinux]          [k] bpf_direct_xsk
>> > >     2.07%  ksoftirqd/28     [kernel.vmlinux]          [k] dma_direct_sync_single_for_cpu
>> > >     1.53%  ksoftirqd/28     [kernel.vmlinux]          [k] dma_direct_sync_single_for_device
>> > >     1.39%  xdpsock          [kernel.vmlinux]          [k] dma_direct_sync_single_for_device
>> > >     1.22%  ksoftirqd/28     [kernel.vmlinux]          [k] xdp_get_xsk_from_qid
>> > >     1.12%  ksoftirqd/28     [i40e]                    [k] i40e_clean_programming_status
>> > >     0.96%  ksoftirqd/28     [i40e]                    [k] i40e_napi_poll
>> > >     0.95%  ksoftirqd/28     [kernel.vmlinux]          [k] net_rx_action
>> > >     0.89%  xdpsock          [kernel.vmlinux]          [k] xdp_do_redirect
>> > >     0.83%  swapper          [i40e]                    [k] i40e_clean_rx_irq_zc
>> > >     0.70%  swapper          [kernel.vmlinux]          [k] intel_idle
>> > >     0.66%  xdpsock          [kernel.vmlinux]          [k] dma_direct_sync_single_for_cpu
>> > >     0.60%  xdpsock          [kernel.vmlinux]          [k] bpf_direct_xsk
>> > >     0.50%  ksoftirqd/28     [kernel.vmlinux]          [k] xsk_umem_discard_addr
>> > > 
>> > > Based on the perf reports comparing AF_XDP default and direct rxdrop, we can say that
>> > > AF_XDP direct rxdrop codepath is avoiding the overhead of going through these functions
>> > > 	bpf_prog_xxx
>> > >          bpf_xdp_redirect_map
>> > > 	xsk_map_lookup_elem
>> > >          __xsk_map_redirect
>> > > With AF_XDP direct, xsk_rcv() is directly called via bpf_direct_xsk() in xdp_do_redirect()
>> > 
>> > I don't think you're identifying the overhead correctly.
>> > xsk_map_lookup_elem is 1%
>> > but bpf_xdp_redirect_map() suppose to call __xsk_map_lookup_elem()
>> > which is a different function:
>> > ffffffff81493fe0 T __xsk_map_lookup_elem
>> > ffffffff81492e80 t xsk_map_lookup_elem
>> > 
>> > 10% for bpf_prog_80b55d8a76303785 is huge.
>> > It's the actual code of the program _without_ any helpers.
>> > How does the program actually look?
>> 
>> It is the xdp program that is loaded via xsk_load_xdp_prog() in tools/lib/bpf/xsk.c
>> https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf-next.git/tree/tools/lib/bpf/xsk.c#n268
>
> I see. Looks like map_gen_lookup was never implemented for xskmap.
> How about adding it first the way array_map_gen_lookup() is implemented?
> This will easily give 2x perf gain.

I guess we should implement this for devmaps as well now that we allow
lookups into those.

However, in this particular example, the lookup from BPF is not actually
needed, since bpf_redirect_map() will return a configurable error value
when the map lookup fails (for exactly this use case).

So replacing:

if (bpf_map_lookup_elem(&xsks_map, &index))
    return bpf_redirect_map(&xsks_map, index, 0);

with simply

return bpf_redirect_map(&xsks_map, index, XDP_PASS);

would save the call to xsk_map_lookup_elem().

-Toke

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
