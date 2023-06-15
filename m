Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A270731C1C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jun 2023 17:02:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B955941943;
	Thu, 15 Jun 2023 15:02:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B955941943
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686841361;
	bh=KM9Nzoqje+MXet6QBJCJ7+Eg3cYp5qmKRA3qiQj+NmA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pT57PRAX09bdYCXmLvDLBhXuOYMxDDFsallU3Yh5fDlGpKWvIywkOTaoEPdBKNtsX
	 idk2q1Tk5HDJXnRXsvYGHIVf3w7OV+eNQSlx9TY1L6NzaC/+wQ6H3cxPfPxwXffFps
	 i5dxusBnIYBagVWlymxChdDMnLnuCboClfB1411SicbLDYLYdBjMnllRICqjaHARMQ
	 EsJY4S2ULNBBY8fdxh76XlUf/zx2o6KHHdB7hyYApJGvBkDTkvsoWl8RaK1FxCiLYR
	 fgNaZ6z403CK4cRnMv51fBd+HEJEa08CjtPZVi5BruEZD/h4ZiN4VmTt1oVkUGP4be
	 8crFQTT+jhDNg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pv3itYJJ0uF5; Thu, 15 Jun 2023 15:02:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 71D4141939;
	Thu, 15 Jun 2023 15:02:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 71D4141939
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 56C991BF263
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 14:14:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3930D405F9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 14:14:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3930D405F9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tfEz3hisSAOw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jun 2023 14:14:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 84998404E9
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 84998404E9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 14:14:23 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 5981362D90;
 Thu, 15 Jun 2023 14:14:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 415DFC433C8;
 Thu, 15 Jun 2023 14:14:18 +0000 (UTC)
Date: Thu, 15 Jun 2023 16:14:15 +0200
From: Simon Horman <horms@kernel.org>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Message-ID: <ZIsct/J9NeY874b9@kernel.org>
References: <20230615-igc-err-ptr-v1-1-a17145eb8d62@kernel.org>
 <ZIrgEVVQfvJwneLx@boxer> <ZIr1s6KHVGh/ZuEj@kernel.org>
 <ZIr/iX7qNbUpXocP@boxer>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZIr/iX7qNbUpXocP@boxer>
X-Mailman-Approved-At: Thu, 15 Jun 2023 15:02:27 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1686838461;
 bh=8rQHH3i3Wo5LBZJWaXmkXUPZ8PkbfaTGdpx89FRgdlc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eVcq7D+at5yU0wLc1QcYhsVui8Qh4sjzCQOmfZTW/SkJguIl18b8rCQ87bK+4S6ce
 GTgYQ7a3ULd9Q9jbw0aKUE53rEzMtCacbOkv2PyXg2zyT5m6znaljpCNOFAOeSouF4
 H9sDSyYWUXO0HIyFl8MP44EHK6fW3R9G82sHpJwCPTP8rJ20OLktaLOdKRt7ncF2TO
 Hg2BAqej9rLPAXu76YWTd+9Kr7n5uYZQrVHTFGh67kRibKGkHGy/r1HNfcqNKWBkpz
 b6YIDKE3+0OPG98Hw+JduIooHL2+58pZtetJmmJUlxR3+NpGUpGj8Drl9dkgrccw66
 wSJUxdl44hiXA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=eVcq7D+a
Subject: Re: [Intel-wired-lan] [PATCH RFC net] igc: Avoid dereference of
 ptr_err in igc_clean_rx_irq()
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
Cc: Andre Guedes <andre.guedes@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Jithu Joseph <jithu.joseph@intel.com>,
 intel-wired-lan@lists.osuosl.org, John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vedang Patel <vedang.patel@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Dan Carpenter <dan.carpenter@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jun 15, 2023 at 02:09:45PM +0200, Maciej Fijalkowski wrote:
> On Thu, Jun 15, 2023 at 01:27:47PM +0200, Simon Horman wrote:
> > On Thu, Jun 15, 2023 at 11:55:29AM +0200, Maciej Fijalkowski wrote:
> > > On Thu, Jun 15, 2023 at 11:45:36AM +0200, Simon Horman wrote:
> > 
> > Hi Marciej,
> > 
> > > Hi Simon,
> > > 
> > > > In igc_clean_rx_irq() the result of a call to igc_xdp_run_prog() is assigned
> > > > to the skb local variable. This may be an ERR_PTR.
> > > > 
> > > > A little later the following is executed, which seems to be a
> > > > possible dereference of an ERR_PTR.
> > > > 
> > > > 	total_bytes += skb->len;
> > > > 
> > > > Avoid this problem by continuing the loop in which all of the
> > > > above occurs once the handling of the NULL case completes.
> > > > 
> > > > This proposed fix is speculative - I do not have deep knowledge of this
> > > > driver.  And I am concerned about the effect of skipping the following
> > > > logic:
> > > > 
> > > >   igc_put_rx_buffer(rx_ring, rx_buffer, rx_buffer_pgcnt);
> > > >   cleaned_count++;
> > > 
> > > this will break - you have to recycle the buffer to have it going.
> > 
> > Thanks. As I said I wasn't sure about the fix: it was a strawman.
> > 
> > > > Flagged by Smatch as:
> > > > 
> > > >   .../igc_main.c:2467 igc_xdp_run_prog() warn: passing zero to 'ERR_PTR'
> > > 
> > > how about PTR_ERR_OR_ZERO() ? this would silence smatch and is not an
> > > intrusive change. another way is to get rid of ERR_PTR() around skb/xdp
> > > run result but i think the former would be just fine.
> > 
> > Sorry, there were two warnings. And I accidently trimmed the one
> > that is more relevant instead of the one that is less relevant.
> > I do agree the one above does not appear to be a bug.
> > 
> > But I am concerned abut this one:
> > 
> >   .../igc_main.c:2618 igc_clean_rx_irq() error: 'skb' dereferencing possible ERR_PTR()
> > 
> > If skb is an error pointer, e.g. ERR_PTR(-IGC_XDP_PASS), and
> > it is dereferenced, that would be a problem, right?
> 
> IGC_XDP_PASS is 0. -0 is still 0 right?

Yes, I missed that point.
Though I could have chosen a different value which is not zero.

> this means skb is NULL and igc_{build,construct}_skb() will init it. For
> ERR_PTR, igc_cleanup_headers() does IS_ERR() against it and continues. So
> you will get to line 2618 only for valid skb, it just happens that logic
> is written in a way that skb is supposed to carry XDP return code. We
> removed this in ice for example but i40e works like that for many years
> without issues, AFAICT...

Thanks. I now see that the key point I was missing is the IS_ERR()
check in igc_cleanup_headers().

I agree this is not a bug.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
