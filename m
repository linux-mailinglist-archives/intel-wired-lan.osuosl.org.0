Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2BC2D26C1
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Dec 2020 10:01:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DE6E486C7F;
	Tue,  8 Dec 2020 09:01:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WFo6mTMS6xG0; Tue,  8 Dec 2020 09:01:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D006F86BBB;
	Tue,  8 Dec 2020 09:01:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4790B1BF29F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 09:01:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 41C1B86C71
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 09:01:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c-NnkU3oDDmx for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Dec 2020 09:01:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0DCFE86C43
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 09:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1607418059;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=OGa5H1ZvMxlMFviWO00pWzusbenqRVQjzyCUZblh5To=;
 b=LkyN13TohCpbRX6k6drdZ+cySNt9IsCoOGQ/4Z5XeqDHiJgk7WdFQ/09uRGY4Wd6vkctPJ
 4WsrNhp4gwbn5M+iRgc1hRGf5YJgPtSTMVgGy/0it2KXB0nB5smpGwCjrIeJr4R8zaFytY
 2saf+s6A+MvLLf5vZkMqtlDtchaSOcw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-309-7zrk8IWcOOmy3X7IBmJgew-1; Tue, 08 Dec 2020 04:00:55 -0500
X-MC-Unique: 7zrk8IWcOOmy3X7IBmJgew-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A04AE1005513;
 Tue,  8 Dec 2020 09:00:52 +0000 (UTC)
Received: from carbon (unknown [10.36.110.55])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 03A3E6E521;
 Tue,  8 Dec 2020 09:00:41 +0000 (UTC)
Date: Tue, 8 Dec 2020 10:00:40 +0100
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: John Fastabend <john.fastabend@gmail.com>
Message-ID: <20201208100040.0d57742a@carbon>
In-Reply-To: <5fce960682c41_5a96208e4@john-XPS-13-9370.notmuch>
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
 <20201204102901.109709-2-marekx.majtyka@intel.com>
 <878sad933c.fsf@toke.dk>
 <20201204124618.GA23696@ranger.igk.intel.com>
 <048bd986-2e05-ee5b-2c03-cd8c473f6636@iogearbox.net>
 <20201207135433.41172202@carbon>
 <5fce960682c41_5a96208e4@john-XPS-13-9370.notmuch>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
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
 hawk@kernel.org, Daniel Borkmann <daniel@iogearbox.net>,
 netdev@vger.kernel.org,
 Toke =?UTF-8?B?SMO4aWxhbmQt?= =?UTF-8?B?SsO4cmdlbnNlbg==?= <toke@redhat.com>,
 ast@kernel.org, Marek Majtyka <marekx.majtyka@intel.com>, alardam@gmail.com,
 jonathan.lemon@gmail.com, intel-wired-lan@lists.osuosl.org, brouer@redhat.com,
 kuba@kernel.org, bpf@vger.kernel.org, bjorn.topel@intel.com,
 davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 07 Dec 2020 12:52:22 -0800
John Fastabend <john.fastabend@gmail.com> wrote:

> > Use-case(1): Cloud-provider want to give customers (running VMs) ability
> > to load XDP program for DDoS protection (only), but don't want to allow
> > customer to use XDP_TX (that can implement LB or cheat their VM
> > isolation policy).  
> 
> Not following. What interface do they want to allow loading on? If its
> the VM interface then I don't see how it matters. From outside the
> VM there should be no way to discover if its done in VM or in tc or
> some other stack.
> 
> If its doing some onloading/offloading I would assume they need to
> ensure the isolation, etc. is still maintained because you can't
> let one VMs program work on other VMs packets safely.
> 
> So what did I miss, above doesn't make sense to me.

The Cloud-provider want to load customer provided BPF-code on the
physical Host-OS NIC (that support XDP).  The customer can get access
to a web-interface where they can write or upload their BPF-prog.

As multiple customers can upload BPF-progs, the Cloud-provider have to
write a BPF-prog dispatcher that runs these multiple program.  This
could be done via BPF tail-calls, or via Toke's libxdp[1], or via
devmap XDP-progs per egress port.

The Cloud-provider don't fully trust customers BPF-prog.   They already
pre-filtered traffic to the given VM, so they can allow customers
freedom to see traffic and do XDP_PASS and XDP_DROP.  They
administratively (via ethtool) want to disable the XDP_REDIRECT and
XDP_TX driver feature, as it can be used for violation their VM
isolation policy between customers.

Is the use-case more clear now?


[1] https://github.com/xdp-project/xdp-tools/tree/master/lib/libxdp
-- 
Best regards,
  Jesper Dangaard Brouer
  MSc.CS, Principal Kernel Engineer at Red Hat
  LinkedIn: http://www.linkedin.com/in/brouer

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
