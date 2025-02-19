Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D3CF2A3C7A0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Feb 2025 19:34:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 294BF848B6;
	Wed, 19 Feb 2025 18:31:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1zU-HTKRmFVV; Wed, 19 Feb 2025 18:31:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 79B6883B10
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739989767;
	bh=BrMRw+Mc/8Jx430eNqd73IrlG76BWV0j9faRomGwI8o=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=I0DeI/VhiV8QdncY32qtRyImD4q8CT0JSWNFJ/3R8HPS3tLgrGIrVl0OSxQRXvgYX
	 5sB6zv/bZZZfPKgId2o3NvuW2IGbtsf2KnVuklXrb2nda1roqPwnTEZQLPY1h0bqZ6
	 Yg1mC2BDu59Hgkc8JXpA5bk4JS9pVm+BHof4V2iRakx5cJozmL5aX/G+jQHxCXsJGB
	 Ua0ktYuPE/5rBJL2GUG/pkrFeeLtXP4Ajc3+mcl35O2M9EzUmaXQTivOzxq3cU7KQJ
	 reLqmuNLLm+96JzDaMT5TBjiHIzqVoJkG4OglAhpg2PE36PhXN9go3/73oanfN/bAU
	 h+EHEGXnt+fpw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 79B6883B10;
	Wed, 19 Feb 2025 18:29:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id EBCDC940
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 17:51:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E59504134F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 17:51:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rfhIWD-azcNA for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Feb 2025 17:51:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::731; helo=mail-qk1-x731.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 47E5641342
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 47E5641342
Received: from mail-qk1-x731.google.com (mail-qk1-x731.google.com
 [IPv6:2607:f8b0:4864:20::731])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 47E5641342
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 17:51:46 +0000 (UTC)
Received: by mail-qk1-x731.google.com with SMTP id
 af79cd13be357-7c0b0ca6742so4138585a.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 09:51:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739987505; x=1740592305;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=BrMRw+Mc/8Jx430eNqd73IrlG76BWV0j9faRomGwI8o=;
 b=mWDHE7f4ttXSZDStt7QrLSuhH+cwBWub0OUU9h44kYXAG1iyQmx7TBt8OYidAj0vo5
 I5SUCCZ43QrdkXxJ2/1bxttiey93Cwrf5Kc4BPBCVOXt1XJG6btjlZ0xSy84FYaBaUVj
 tU0jl+nx5M5FjRVUY6DRTQobPJ2yEHyWjjtRbgdC0wdC7MQ3G+jozou97epVzlmZTmM7
 BrO/w/B+23wqrS5Tin8ejXvDXTzCkSWdp+w5DUcq5j5yXBQhge6Fjkb78/bJtxoJbnNS
 gE0dtudQfBBxEmSqV3VpU9fveODDbRbINw+NzdCDqR9IJT2Y8KChqtxpFdixddpehKTJ
 srnA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXUBccXIOvc1hldOLAk+rIcIaUnANBqtzh/1Ixd+1s00d+gMTIQbg/u5bqFKdOPOAGa287HglvCHqEPdeEZM4Q=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzmP5nBtZIVtUmxNT4jaPPqJbH740qVvyA7TXy3npG8dWZ+py9f
 1JNlRBQSzYXjF9oXkG2L3FU21zK38g40xTcbKcLZTgfMdyAxn1z8mmiDOmbGavE=
X-Gm-Gg: ASbGncsRxAbTaruvz37nm6nWJqPERycpfiRtgIdcIFRmQS4tslXEto/R0Ak6qVzJxbG
 DmxIJ0n+iLnJmxNsNA3uaGsm194DW07yE9pwN5tbguN+uW9fEZotmWCrRi782K2NDwejSONYUZo
 VxMO8qBK+S1Kr2Ygg5tztMKsyp6UDoAXo+0Madx8DTNGfBy/rSmL9rKaGkh3YN71TEQ+CU/RaLu
 NJJXSng+qp0fhXi3cFI24bMhDMDoXhAgYo3DvkFoIdj4RJoRXnQWgMTxBAHUFqR0HxIOIZq4kA5
 r9Qx63S2gXPBmecQXG63pLvvpxXZfPFdi4Y+13royMHqZdfZHEnk3A==
X-Google-Smtp-Source: AGHT+IHApQu5GuOGRlxUUed1aJja9KJUXPqMCjqow4lDfmqrja11JuARF6fyOdqZ0NDKDqPkBA++Rw==
X-Received: by 2002:a05:620a:414b:b0:7c0:b1aa:ba5a with SMTP id
 af79cd13be357-7c0b527404amr648255885a.33.1739987504799; 
 Wed, 19 Feb 2025 09:51:44 -0800 (PST)
Received: from LQ3V64L9R2 (ool-44c5a22e.dyn.optonline.net. [68.197.162.46])
 by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-6e65d7a439esm77203766d6.67.2025.02.19.09.51.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2025 09:51:44 -0800 (PST)
Date: Wed, 19 Feb 2025 12:51:42 -0500
From: Joe Damato <jdamato@fastly.com>
To: Kurt Kanzenbach <kurt@linutronix.de>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Gerhard Engleder <gerhard@engleder-embedded.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <Z7YaLuho0hXL7Jb1@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Gerhard Engleder <gerhard@engleder-embedded.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20250217-igb_irq-v2-0-4cb502049ac2@linutronix.de>
 <Z7T5G9ZQRBb4EtdG@LQ3V64L9R2> <Z7UDCSckkK7J30oP@LQ3V64L9R2>
 <87jz9mghfr.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87jz9mghfr.fsf@kurt.kurt.home>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1739987505; x=1740592305; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=BrMRw+Mc/8Jx430eNqd73IrlG76BWV0j9faRomGwI8o=;
 b=VSZnVGLE8m1qt1Hoae46J6GzMiu6cnSI9NJSGjkH53EnTpBsJs9cJskXZyqlHvmCQ2
 JaSfGuOIYrWc3RvKTe/UuDnxqNEs4DrpDhRihRrDAdr/z+DDlVtgzzttWsJBgY+Prc+d
 R2oCMoWf+Q6IMv4/Id4HI4wmoTuPTPElhiTjE=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=VSZnVGLE
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 0/4] igb: XDP/ZC follow up
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Feb 19, 2025 at 03:03:36PM +0100, Kurt Kanzenbach wrote:
> On Tue Feb 18 2025, Joe Damato wrote:
> > On Tue, Feb 18, 2025 at 04:18:19PM -0500, Joe Damato wrote:
> >> On Mon, Feb 17, 2025 at 12:31:20PM +0100, Kurt Kanzenbach wrote:
> >> > This is a follow up for the igb XDP/ZC implementation. The first two 
> >> > patches link the IRQs and queues to NAPI instances. This is required to 
> >> > bring back the XDP/ZC busy polling support. The last patch removes 
> >> > undesired IRQs (injected via igb watchdog) while busy polling with 
> >> > napi_defer_hard_irqs and gro_flush_timeout set.
> >> > 
> >> > Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> >> > ---
> >> > Changes in v2:
> >> > - Take RTNL lock in PCI error handlers (Joe)
> >> > - Fix typo in commit message (Gerhard)
> >> > - Use netif_napi_add_config() (Joe)
> >> > - Link to v1: https://lore.kernel.org/r/20250210-igb_irq-v1-0-bde078cdb9df@linutronix.de
> >> 
> >> Thanks for sending a v2.
> >> 
> >> My comment from the previous series still stands, which simply that
> >> I have no idea if the maintainers will accept changes using this API
> >> or prefer to wait until Stanislav's work [1] is completed to remove
> >> the RTNL requirement from this API altogether.
> >
> > Also, may be worth running the newly added XSK test with the NETIF
> > env var set to the igb device? Assuming eth0 is your igb device:
> >
> >   NETIF=eth0 ./tools/testing/selftests/drivers/net/queues.py
> >
> > should output:
> >
> >   KTAP version 1
> >   1..4
> >   ok 1 queues.get_queues
> >   ok 2 queues.addremove_queues
> >   ok 3 queues.check_down
> >   ok 4 queues.check_xdp
> >   # Totals: pass:4 fail:0 xfail:0 xpass:0 skip:0 error:0
> >
> > Note the check_xdp line above.
> >
> 
> Sure, why not. Seems to work.

Thanks for testing it.
 
> |root@apl1:~/linux# uname -a
> |Linux apl1 6.14.0-rc2+ #2 SMP PREEMPT_RT Wed Feb 19 14:41:23 CET 2025 x86_64 GNU/Linux
> |root@apl1:~/linux# NETIF=enp2s0 ./tools/testing/selftests/drivers/net/queues.py
> |KTAP version 1
> |1..4
> |ok 1 queues.get_queues
> |ok 2 queues.addremove_queues
> |ok 3 queues.check_down
> |ok 4 queues.check_xdp
> |# Totals: pass:4 fail:0 xfail:0 xpass:0 skip:0 error:0
> 
> Has this xsk netlink attribute been added fairly recently? The test
> failed on my kernel from a few days ago (kernel from today works).

Yes, it was just merged, see the commit date here:

https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/commit/?id=788e52e2b66844301fe09f3372d46d8c62f6ebe4

> I think there's room for improvement though:
> 
> |root@apl1:~/linux# NETIF=enp2s0 ./tools/testing/selftests/drivers/net/queues.py
> |KTAP version 1
> |1..4
> |ok 1 queues.get_queues
> |ok 2 queues.addremove_queues
> |ok 3 queues.check_down
> |# Exception| Traceback (most recent call last):
> |# Exception|   File "/root/linux/tools/testing/selftests/net/lib/py/ksft.py", line 218, in ksft_run
> |# Exception|     case(*args)
> |# Exception|   File "/root/linux/./tools/testing/selftests/drivers/net/queues.py", line 53, in check_xdp
> |# Exception|     ksft_eq(q['xsk'], {})
> |# Exception|             ~^^^^^^^
> |# Exception| KeyError: 'xsk'
> |not ok 4 queues.check_xdp
> |# Totals: pass:3 fail:1 xfail:0 xpass:0 skip:0 error:0
> 
> I'd assume this shouldn't be a Python exception, but rather say
> something like "Expected xsk attribute, but none found. Fix the driver!" :)
> 
> While at it would you mind to add a newline to the xdp_helper usage
> line (and fix the one typo)?

Jakub currently has a series out to change the test a bit and
improve it overall, see:

  https://lore.kernel.org/netdev/20250218195048.74692-1-kuba@kernel.org/

It looks like your concerns (the typo, newline, and better error)
may still remain. If so, I can submit a follow-up once his work has
been merged to address your concerns - unless you'd like to do
that?
