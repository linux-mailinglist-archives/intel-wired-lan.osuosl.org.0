Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 025352D3072
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Dec 2020 18:02:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 85F1586DBF;
	Tue,  8 Dec 2020 17:02:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jw5Hd89lfHhT; Tue,  8 Dec 2020 17:02:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C69BF86C24;
	Tue,  8 Dec 2020 17:02:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4419F1BF29F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 08:28:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3CF738760F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 08:28:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kvLtja3Zq1Ow for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Dec 2020 08:28:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 38487875FB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 08:28:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1607416103;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ozHeWOUVNvM9ehZuxlacPEBx82ka0XhjHeiTLN5BskU=;
 b=WEip1/O6oCgEdEb+4JlRjTS1pZsokiMWgKBRT5seWxiH+JwaJwjdfwcoYowCk8WbZsZCYQ
 lu2JEJnNles/fNP5yyxgSLGrEhAA0goVB/GEu9aEEnHGzVIsOELEVtuI+Gxd4aA9i0t0xP
 ZuD8Ed6yH2WOinVYHULI8ZRpaXd+1CE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-313-h8PjrAhGMNKXN_aEdxfC4g-1; Tue, 08 Dec 2020 03:28:19 -0500
X-MC-Unique: h8PjrAhGMNKXN_aEdxfC4g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8572E1DDE3;
 Tue,  8 Dec 2020 08:28:16 +0000 (UTC)
Received: from carbon (unknown [10.36.110.55])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E9D815C1A3;
 Tue,  8 Dec 2020 08:28:06 +0000 (UTC)
Date: Tue, 8 Dec 2020 09:28:03 +0100
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
To: David Ahern <dsahern@gmail.com>
Message-ID: <20201208092803.05b27db3@carbon>
In-Reply-To: <431a53bd-25d7-8535-86e1-aa15bf94e6c3@gmail.com>
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
 <20201204102901.109709-2-marekx.majtyka@intel.com>
 <878sad933c.fsf@toke.dk>
 <20201204124618.GA23696@ranger.igk.intel.com>
 <048bd986-2e05-ee5b-2c03-cd8c473f6636@iogearbox.net>
 <20201207135433.41172202@carbon>
 <5fce960682c41_5a96208e4@john-XPS-13-9370.notmuch>
 <431a53bd-25d7-8535-86e1-aa15bf94e6c3@gmail.com>
Organization: Red Hat Inc.
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mailman-Approved-At: Tue, 08 Dec 2020 17:02:09 +0000
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
 Toke =?UTF-8?B?SMO4aWxhbmQtSsO4cmdlbnNlbg==?= <toke@redhat.com>,
 ast@kernel.org, Marek Majtyka <marekx.majtyka@intel.com>, alardam@gmail.com,
 intel-wired-lan@lists.osuosl.org, jonathan.lemon@gmail.com, kuba@kernel.org,
 bpf@vger.kernel.org, bjorn.topel@intel.com, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 7 Dec 2020 18:01:00 -0700
David Ahern <dsahern@gmail.com> wrote:

> On 12/7/20 1:52 PM, John Fastabend wrote:
> >>
> >> I think we need to keep XDP_TX action separate, because I think that
> >> there are use-cases where the we want to disable XDP_TX due to end-user
> >> policy or hardware limitations.  
> > 
> > How about we discover this at load time though. 

Nitpick at XDP "attach" time. The general disconnect between BPF and
XDP is that BPF can verify at "load" time (as kernel knows what it
support) while XDP can have different support/features per driver, and
cannot do this until attachment time. (See later issue with tail calls).
(All other BPF-hooks don't have this issue)

> > Meaning if the program
> > doesn't use XDP_TX then the hardware can skip resource allocations for
> > it. I think we could have verifier or extra pass discover the use of
> > XDP_TX and then pass a bit down to driver to enable/disable TX caps.
> >   
> 
> This was discussed in the context of virtio_net some months back - it is
> hard to impossible to know a program will not return XDP_TX (e.g., value
> comes from a map).

It is hard, and sometimes not possible.  For maps the workaround is
that BPF-programmer adds a bound check on values from the map. If not
doing that the verifier have to assume all possible return codes are
used by BPF-prog.

The real nemesis is program tail calls, that can be added dynamically
after the XDP program is attached.  It is at attachment time that
changing the NIC resources is possible.  So, for program tail calls the
verifier have to assume all possible return codes are used by BPF-prog.

BPF now have function calls and function replace right(?)  How does
this affect this detection of possible return codes?


> Flipping that around, what if the program attach indicates whether
> XDP_TX could be returned. If so, driver manages the resource needs. If
> not, no resource needed and if the program violates that and returns
> XDP_TX the packet is dropped.

I do like this idea, as IMHO we do need something that is connected
with the BPF-prog, that describe what resources the program request
(either like above via detecting this in verifier, or simply manually
configuring this in the BPF-prog ELF file)

The main idea is that we all (I assume) want to provide a better
end-user interface/experience. By direct feedback to the end-user that
"loading+attaching" this XDP BPF-prog will not work, as e.g. driver
don't support a specific return code.  Thus, we need to reject
"loading+attaching" if features cannot be satisfied.

We need a solution as; today it is causing frustration for end-users
that packets can be (silently) dropped by XDP, e.g. if driver don't
support XDP_REDIRECT.

-- 
Best regards,
  Jesper Dangaard Brouer
  MSc.CS, Principal Kernel Engineer at Red Hat
  LinkedIn: http://www.linkedin.com/in/brouer

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
