Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 303EA9972C4
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Oct 2024 19:13:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD194407AE;
	Wed,  9 Oct 2024 17:13:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fBCC8ge9SHBY; Wed,  9 Oct 2024 17:13:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC0D6407A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728494036;
	bh=tUJ9rnG2uJ0j7bwfLc8ihegGzcRS1BQcJMo5xx5rPvM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TbZzPpERYTh9820wE5A7Jg5sC/t+3o9jEGB0+9sufMpnzBRfkjYRai54Xoz38EK4n
	 IKhyrp2oVrwOg+wmo22jCacAxM0eiFPbY6usQ4LQkxo3O51U4w+g8EaCQCLbPmUMb5
	 0CXBhm0jMnMO3Adm41qgqkHMvXFvPak7pXy9tYmoB8h6D7U5F0pI6QH6ytZahVipJA
	 53O11Qx/nCXySzElqeul7zNelvUcMMshQu6A6+5MAY+HgKbwwkD7+4fXVkCgIWjpQ+
	 hbVxZjc+Uw2wam4ijDfIIK831Nwv2AixCwdu6Rk0Fg9HEfKb1f0m378Z08xPmlE4mf
	 m0HItZUwKLiHA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DC0D6407A1;
	Wed,  9 Oct 2024 17:13:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ACA7A1BF3E8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 17:13:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9B36C80E5B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 17:13:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RQ9qD1IQX428 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2024 17:13:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1035; helo=mail-pj1-x1035.google.com;
 envelope-from=jdamato@fastly.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DA76180E08
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DA76180E08
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com
 [IPv6:2607:f8b0:4864:20::1035])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DA76180E08
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 17:13:52 +0000 (UTC)
Received: by mail-pj1-x1035.google.com with SMTP id
 98e67ed59e1d1-2e2a96b23e4so67077a91.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 09 Oct 2024 10:13:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728494032; x=1729098832;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=tUJ9rnG2uJ0j7bwfLc8ihegGzcRS1BQcJMo5xx5rPvM=;
 b=GGV+w4aTewhVkz6dTNGCCVIpJ2XxV3FndK+4lhZexageyRinpTWk4Z5qRrsJ055REQ
 EJ1BwC6NeUcfRwJ7S//vG5bC7S3iiPViWhPM5BaaeKXCk2SlLGqbqg9pbKj+pk+LYQcs
 kGMx8zsWfrQrE/7bzl8ounrsyOQAHgqg73L4gvY+noSlWYOvo3r0mvY81tJ3lZLyRK1j
 sYyupvBwLeItoBEcN5x2tACeCSBkuPhjVo7gGlE7/YdZPLj8MJ3h1WdWOzbe2TJQg0Eu
 U6/WIGM4XZIS/3pQfwEBBC2kK1h3eo8mUpm3tkAaq2vtc6NqDGpil8BPZOMHrElEHWjy
 hB5Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCVhJhwbUwDTEOVlCzyqrUnVlVKJ4TTtknrtj5hnHTTWqR5oRHMI/WtkwckEudMpu+H8oixy5cfWYSHrTrsdvhw=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxcJaNDuCBSsuVm+svo/bbQSoM5diCp2SuFGYK0E4FrULfJK5tx
 PdDSUzdVe7QmX0SMttEAS19ZHMTPzi49LmCdnzjzzC+s9QcTHTeRoJnTCmYLDvE=
X-Google-Smtp-Source: AGHT+IGCxMaZ1teuexWUVBV5sBk+xGYqduyCYApVj9E/JdnEvtvGwcwBKdd3sP443QuWLbWgg5eCfA==
X-Received: by 2002:a17:90a:9e6:b0:2e2:b45e:88b7 with SMTP id
 98e67ed59e1d1-2e2b45e89a4mr2237542a91.26.1728494032134; 
 Wed, 09 Oct 2024 10:13:52 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2e2a55ffa00sm1944174a91.21.2024.10.09.10.13.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2024 10:13:51 -0700 (PDT)
Date: Wed, 9 Oct 2024 10:13:49 -0700
From: Joe Damato <jdamato@fastly.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <Zwa5zdhtxlqJxIj7@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
References: <20241003233850.199495-1-jdamato@fastly.com>
 <87h69ntt23.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87h69ntt23.fsf@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google; t=1728494032; x=1729098832; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=tUJ9rnG2uJ0j7bwfLc8ihegGzcRS1BQcJMo5xx5rPvM=;
 b=oC4/oAFfeGK9QIZEOU1QPjyc6LR0p+TWXHlraGFTd2SFlrbU5HwA+GEIT7JzG7vuPr
 hfsSKdkhg/yVAPqwpOfrTcsZE9XsG8r14Zs6w0/9cfI4+5t83pcm42vzqPP993ZZxdvz
 E/8/7EsrUpjxto2hS+PxttQPQoxacuvbSGvMM=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fastly.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=fastly.com header.i=@fastly.com header.a=rsa-sha256
 header.s=google header.b=oC4/oAFf
Subject: Re: [Intel-wired-lan] [RFC net-next 0/2] igc: Link IRQs and queues
 to NAPIs
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
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Oct 07, 2024 at 04:03:00PM -0700, Vinicius Costa Gomes wrote:
> Joe Damato <jdamato@fastly.com> writes:
> 
> > Greetings:
> >
> > This is an RFC to get feedback before submitting an actual series and
> > because I have a question for igc maintainers, see below.
> >
> > This series addss support for netdev-genl to igc so that userland apps
> > can query IRQ, queue, and NAPI instance relationships. This is useful
> > because developers who have igc NICs (for example, in their Intel NUCs)
> > who are working on epoll-based busy polling apps and using
> > SO_INCOMING_NAPI_ID, need access to this API to map NAPI IDs back to
> > queues.
> >
> > See the commit messages of each patch for example output I got on my igc
> > hardware.
> >
> > My question for maintainers:
> >
> > In patch 2, the linking should be avoided for XDP queues. Is there a way
> > to test that somehow in the driver? I looked around a bit, but didn't
> > notice anything. Sorry if I'm missing something obvious.
> >
> 
> From a quick look, it seems that you could "unlink" the XDP queues in
> igc_xdp_enable_pool() and (re-)link them in igc_xdp_disable_poll().

That approach seems reasonable to me, but I am not an igc expert by
any means :)

I checked and it seems that igc_xdp_enable_pool and
igc_xdp_disable_poll are only called while RTNL is held, which is
good because netif_queue_set_napi uses ASSERT_RTNL.
 
> Or just the existence of the flag IGC_RING_FLAG_AF_XDP_ZC in the rings
> associated with the queue is enough?

I didn't notice that flag, thanks for pointing that out.

It might be better to go the link/unlink route as you described
above, though.

> I still have to take a better look at your work to help more, sorry.

No worries, thanks for taking a look.

I'll implement what you suggested above and send another RFC.
