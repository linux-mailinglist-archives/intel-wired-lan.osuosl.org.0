Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB0DDD62E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Oct 2019 04:25:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id ABFBF8874B;
	Sat, 19 Oct 2019 02:25:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PZGcGgoxLtyZ; Sat, 19 Oct 2019 02:25:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5BCAB88522;
	Sat, 19 Oct 2019 02:25:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DD5191BF389
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Oct 2019 02:25:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D85C0875E9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Oct 2019 02:25:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lhAp7pdiWwbx for <intel-wired-lan@lists.osuosl.org>;
 Sat, 19 Oct 2019 02:25:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1E8E285B9D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Oct 2019 02:25:31 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id w8so3713534plq.5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2019 19:25:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=pSjFlThG+9eji70eoDwhHSYbzwOeRqvhhwPaCLJ8OT8=;
 b=spKzl0o37sdvis0PVp7oGbG5QStNow7CDKSy4RTHOoDVEBilUb4Eai2lfJ9VZ1T8GQ
 UaCguJKVBzqv4HRmMYkQr+CAvIUglhV/ZjeHJchaoRgsunkg9HryfkzS8F6egRqvtyI9
 7c7UubIMBFd1g41pPFgVZvb7Sw0oGTpJIP6NaCXjIgGNOq8bmtpiS5My5h25W7uOy78P
 bwEqc2bqhASrQPXCOWW91se/wUCP1rFcJiv0B8aAar9XfKHgfW25VCn6SGBywHN06Bq4
 t42kjKgh9yvr9zQuiL26EBOJ5JdwBfuK17P+flVSda80w3rlP3nHtOWBNxHg/oI8GraU
 AqtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=pSjFlThG+9eji70eoDwhHSYbzwOeRqvhhwPaCLJ8OT8=;
 b=YUx53ZMCG3k5o3pgD/+nGGHfF3ivVYYvl/0v0WGt1rAaxAiHQmZzjsyzrevbSPwUx2
 cPVF5CiKxx4SfN31/6Ou4g00cNu7pQVC0LVMw4SR+20ETnn8lxHRf0FDqocm5vcmCe3m
 w023dgX9lgQ+5BhH6xpSow9/jmJeJVB2OYDbE1AeTahro9zH5cbp+AeIC12MXW8GuX98
 UNXrQ0jfu/9IGomQMpwu3vM+ZbatIFGblD7iu7feKTKfKRj6v0hd1pwBIR3aqz4TmMqE
 6Ud+h0nLdgSjeh8gFDvgy1jaadb/Y4h/U04EaJ7jDyAtJDcgTmnpqu1i04oY3KCyMsw4
 FETw==
X-Gm-Message-State: APjAAAWGorKcdRlnshVBuF5ebvmureExvNLN2ZvNrqnMaeOpSym3OMdf
 rxvI5ugiPouE3syOtJvKTVc=
X-Google-Smtp-Source: APXvYqzB+eqxlDw+kW0HaGgvXZD49GJDLzcEgMX+BE5wOjM4JjOLm/8LCPF0tYRP+mmkavAhYaQEXg==
X-Received: by 2002:a17:902:6acb:: with SMTP id
 i11mr12542551plt.273.1571451930480; 
 Fri, 18 Oct 2019 19:25:30 -0700 (PDT)
Received: from ast-mbp ([2620:10d:c090:180::6038])
 by smtp.gmail.com with ESMTPSA id k17sm8253109pgh.30.2019.10.18.19.25.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 18 Oct 2019 19:25:29 -0700 (PDT)
Date: Fri, 18 Oct 2019 19:25:27 -0700
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
To: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Message-ID: <20191019022525.w5xbwkav2cpqkfwi@ast-mbp>
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
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6f281517-3785-ce46-65de-e2f78576783b@intel.com>
User-Agent: NeoMutt/20180223
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
 Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
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

On Fri, Oct 18, 2019 at 05:45:26PM -0700, Samudrala, Sridhar wrote:
> On 10/18/2019 5:14 PM, Alexei Starovoitov wrote:
> > On Fri, Oct 18, 2019 at 11:40:07AM -0700, Samudrala, Sridhar wrote:
> > > 
> > > Perf report for "AF_XDP default rxdrop" with patched kernel - mitigations ON
> > > ==========================================================================
> > > Samples: 44K of event 'cycles', Event count (approx.): 38532389541
> > > Overhead  Command          Shared Object              Symbol
> > >    15.31%  ksoftirqd/28     [i40e]                     [k] i40e_clean_rx_irq_zc
> > >    10.50%  ksoftirqd/28     bpf_prog_80b55d8a76303785  [k] bpf_prog_80b55d8a76303785
> > >     9.48%  xdpsock          [i40e]                     [k] i40e_clean_rx_irq_zc
> > >     8.62%  xdpsock          xdpsock                    [.] main
> > >     7.11%  ksoftirqd/28     [kernel.vmlinux]           [k] xsk_rcv
> > >     5.81%  ksoftirqd/28     [kernel.vmlinux]           [k] xdp_do_redirect
> > >     4.46%  xdpsock          bpf_prog_80b55d8a76303785  [k] bpf_prog_80b55d8a76303785
> > >     3.83%  xdpsock          [kernel.vmlinux]           [k] xsk_rcv
> > 
> > why everything is duplicated?
> > Same code runs in different tasks ?
> 
> Yes. looks like these functions run from both the app(xdpsock) context and ksoftirqd context.
> 
> > 
> > >     2.81%  ksoftirqd/28     [kernel.vmlinux]           [k] bpf_xdp_redirect_map
> > >     2.78%  ksoftirqd/28     [kernel.vmlinux]           [k] xsk_map_lookup_elem
> > >     2.44%  xdpsock          [kernel.vmlinux]           [k] xdp_do_redirect
> > >     2.19%  ksoftirqd/28     [kernel.vmlinux]           [k] __xsk_map_redirect
> > >     1.62%  ksoftirqd/28     [kernel.vmlinux]           [k] xsk_umem_peek_addr
> > >     1.57%  xdpsock          [kernel.vmlinux]           [k] xsk_umem_peek_addr
> > >     1.32%  ksoftirqd/28     [kernel.vmlinux]           [k] dma_direct_sync_single_for_cpu
> > >     1.28%  xdpsock          [kernel.vmlinux]           [k] bpf_xdp_redirect_map
> > >     1.15%  xdpsock          [kernel.vmlinux]           [k] dma_direct_sync_single_for_device
> > >     1.12%  xdpsock          [kernel.vmlinux]           [k] xsk_map_lookup_elem
> > >     1.06%  xdpsock          [kernel.vmlinux]           [k] __xsk_map_redirect
> > >     0.94%  ksoftirqd/28     [kernel.vmlinux]           [k] dma_direct_sync_single_for_device
> > >     0.75%  ksoftirqd/28     [kernel.vmlinux]           [k] __x86_indirect_thunk_rax
> > >     0.66%  ksoftirqd/28     [i40e]                     [k] i40e_clean_programming_status
> > >     0.64%  ksoftirqd/28     [kernel.vmlinux]           [k] net_rx_action
> > >     0.64%  swapper          [kernel.vmlinux]           [k] intel_idle
> > >     0.62%  ksoftirqd/28     [i40e]                     [k] i40e_napi_poll
> > >     0.57%  xdpsock          [kernel.vmlinux]           [k] dma_direct_sync_single_for_cpu
> > > 
> > > Perf report for "AF_XDP direct rxdrop" with patched kernel - mitigations ON
> > > ==========================================================================
> > > Samples: 46K of event 'cycles', Event count (approx.): 38387018585
> > > Overhead  Command          Shared Object             Symbol
> > >    21.94%  ksoftirqd/28     [i40e]                    [k] i40e_clean_rx_irq_zc
> > >    14.36%  xdpsock          xdpsock                   [.] main
> > >    11.53%  ksoftirqd/28     [kernel.vmlinux]          [k] xsk_rcv
> > >    11.32%  xdpsock          [i40e]                    [k] i40e_clean_rx_irq_zc
> > >     4.02%  xdpsock          [kernel.vmlinux]          [k] xsk_rcv
> > >     2.91%  ksoftirqd/28     [kernel.vmlinux]          [k] xdp_do_redirect
> > >     2.45%  ksoftirqd/28     [kernel.vmlinux]          [k] xsk_umem_peek_addr
> > >     2.19%  xdpsock          [kernel.vmlinux]          [k] xsk_umem_peek_addr
> > >     2.08%  ksoftirqd/28     [kernel.vmlinux]          [k] bpf_direct_xsk
> > >     2.07%  ksoftirqd/28     [kernel.vmlinux]          [k] dma_direct_sync_single_for_cpu
> > >     1.53%  ksoftirqd/28     [kernel.vmlinux]          [k] dma_direct_sync_single_for_device
> > >     1.39%  xdpsock          [kernel.vmlinux]          [k] dma_direct_sync_single_for_device
> > >     1.22%  ksoftirqd/28     [kernel.vmlinux]          [k] xdp_get_xsk_from_qid
> > >     1.12%  ksoftirqd/28     [i40e]                    [k] i40e_clean_programming_status
> > >     0.96%  ksoftirqd/28     [i40e]                    [k] i40e_napi_poll
> > >     0.95%  ksoftirqd/28     [kernel.vmlinux]          [k] net_rx_action
> > >     0.89%  xdpsock          [kernel.vmlinux]          [k] xdp_do_redirect
> > >     0.83%  swapper          [i40e]                    [k] i40e_clean_rx_irq_zc
> > >     0.70%  swapper          [kernel.vmlinux]          [k] intel_idle
> > >     0.66%  xdpsock          [kernel.vmlinux]          [k] dma_direct_sync_single_for_cpu
> > >     0.60%  xdpsock          [kernel.vmlinux]          [k] bpf_direct_xsk
> > >     0.50%  ksoftirqd/28     [kernel.vmlinux]          [k] xsk_umem_discard_addr
> > > 
> > > Based on the perf reports comparing AF_XDP default and direct rxdrop, we can say that
> > > AF_XDP direct rxdrop codepath is avoiding the overhead of going through these functions
> > > 	bpf_prog_xxx
> > >          bpf_xdp_redirect_map
> > > 	xsk_map_lookup_elem
> > >          __xsk_map_redirect
> > > With AF_XDP direct, xsk_rcv() is directly called via bpf_direct_xsk() in xdp_do_redirect()
> > 
> > I don't think you're identifying the overhead correctly.
> > xsk_map_lookup_elem is 1%
> > but bpf_xdp_redirect_map() suppose to call __xsk_map_lookup_elem()
> > which is a different function:
> > ffffffff81493fe0 T __xsk_map_lookup_elem
> > ffffffff81492e80 t xsk_map_lookup_elem
> > 
> > 10% for bpf_prog_80b55d8a76303785 is huge.
> > It's the actual code of the program _without_ any helpers.
> > How does the program actually look?
> 
> It is the xdp program that is loaded via xsk_load_xdp_prog() in tools/lib/bpf/xsk.c
> https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf-next.git/tree/tools/lib/bpf/xsk.c#n268

I see. Looks like map_gen_lookup was never implemented for xskmap.
How about adding it first the way array_map_gen_lookup() is implemented?
This will easily give 2x perf gain.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
