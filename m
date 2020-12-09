Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35DAE2D3B1E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Dec 2020 07:04:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CC19B8753F;
	Wed,  9 Dec 2020 06:04:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VAWKZWN8dSto; Wed,  9 Dec 2020 06:04:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3C6FE87532;
	Wed,  9 Dec 2020 06:04:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D24C01BF9B6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Dec 2020 06:04:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C61D087522
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Dec 2020 06:04:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m82+yZmcRF5x for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Dec 2020 06:04:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4F180874C7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Dec 2020 06:04:01 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id p126so601276oif.7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 08 Dec 2020 22:04:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:message-id:in-reply-to:references:subject
 :mime-version:content-transfer-encoding;
 bh=xw4WlY+gecPL6DnhDENOYEz8RjK6qkVO+Z0UKbUq6rg=;
 b=blwLBC8I1ol4VExUBqHsBtI6x0pnw4U9cZxawk5zq5P+jhWlGmVILWBjufi50F8loU
 WojsXW9aVAUWw+4Y2PdjbPOPLwoIt0/7GeopTLMG/+jEXSEkZ5ecA+zXjjnTOk2uFwG7
 kmJYGE2S/K0UHiFUvZWmmh8ia3O7af3Mzii4qhds/1x8YS+2dCtKR6TVPDHsPBeuqZBH
 cmpb3ZwZM+WWRyXmI1MsedriU66ezUuOKPPIXns6a50R8arW1J2ghUj7okehG7uCsxYX
 q/+CVLJolt7dnHvij8gBSy5bmiRz9mSDVAW85kW5GawlUZMk5mJCo5pzhzdEMHHOAcz/
 EMug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:message-id:in-reply-to
 :references:subject:mime-version:content-transfer-encoding;
 bh=xw4WlY+gecPL6DnhDENOYEz8RjK6qkVO+Z0UKbUq6rg=;
 b=enPOxxzn+Dhm0aPW01EUfkfEnKXTNMF6Xrp34V4fwzuYf0S6dUH+vvBhAdCbh9ISFT
 ifZ+z1gcLZ9/qLyczAVV1yY5B6MauBS4LhtUYKrD7dg/P/Y+lMAG0Ft6JcS6i1csj7hj
 9Re5WEDCJS2B6vyCKAH3re7TKvczhsKIhTG9xvWZsBzMNftlxplC+vKCMJ5S1sVrLdAs
 qkb8/kQS7hhGdE2U1pzUBn4meF08l4iKIDqclv87g6pLjkTLLlykkbNOUZxehMAhijam
 Ob4zgls3Oz7kAH9u48uktRWAyvhkZcC+i9aRpwIDCzvZX0VRJE31oFcYIFMl0D0YEE62
 gMaw==
X-Gm-Message-State: AOAM533oIKKYCFWSmNOqc40SOzlqyWFIGy1We5hzrYNRlckpWA4PQZ9E
 s369aIq491R4DcL3+Y491cs=
X-Google-Smtp-Source: ABdhPJzV0J/ZAp54eywd2BpQ5szxmUsuNU04Mn+rnJMPMdPd0aR0tQNtc8qfELb8e1bBcroRKkVURA==
X-Received: by 2002:aca:6287:: with SMTP id w129mr702445oib.82.1607493840475; 
 Tue, 08 Dec 2020 22:04:00 -0800 (PST)
Received: from localhost ([184.21.204.5])
 by smtp.gmail.com with ESMTPSA id v123sm159783oie.20.2020.12.08.22.03.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Dec 2020 22:03:59 -0800 (PST)
Date: Tue, 08 Dec 2020 22:03:51 -0800
From: John Fastabend <john.fastabend@gmail.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, 
 John Fastabend <john.fastabend@gmail.com>
Message-ID: <5fd068c75b92d_50ce20814@john-XPS-13-9370.notmuch>
In-Reply-To: <20201207230755.GB27205@ranger.igk.intel.com>
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
 <20201204102901.109709-2-marekx.majtyka@intel.com>
 <878sad933c.fsf@toke.dk>
 <20201204124618.GA23696@ranger.igk.intel.com>
 <048bd986-2e05-ee5b-2c03-cd8c473f6636@iogearbox.net>
 <20201207135433.41172202@carbon>
 <5fce960682c41_5a96208e4@john-XPS-13-9370.notmuch>
 <20201207230755.GB27205@ranger.igk.intel.com>
Mime-Version: 1.0
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
 Marek Majtyka <marekx.majtyka@intel.com>, netdev@vger.kernel.org,
 =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>, ast@kernel.org,
 Jesper Dangaard Brouer <jbrouer@redhat.com>, alardam@gmail.com,
 intel-wired-lan@lists.osuosl.org, jonathan.lemon@gmail.com, kuba@kernel.org,
 bpf@vger.kernel.org, bjorn.topel@intel.com, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> On Mon, Dec 07, 2020 at 12:52:22PM -0800, John Fastabend wrote:
> > Jesper Dangaard Brouer wrote:
> > > On Fri, 4 Dec 2020 16:21:08 +0100
> > > Daniel Borkmann <daniel@iogearbox.net> wrote:

[...] pruning the thread to answer Jesper.

> > > 
> > > Use-case(2): Disable XDP_TX on a driver to save hardware TX-queue
> > > resources, as the use-case is only DDoS.  Today we have this problem
> > > with the ixgbe hardware, that cannot load XDP programs on systems with
> > > more than 192 CPUs.
> > 
> > The ixgbe issues is just a bug or missing-feature in my opinion.
> 
> Not a bug, rather HW limitation?

Well hardware has some max queue limit. Likely <192 otherwise I would
have kept doing queue per core on up to 192. But, ideally we should
still load and either share queues across multiple cores or restirct
down to a subset of CPUs. Do you need 192 cores for a 10gbps nic,
probably not. Yes, it requires some extra care, but should be doable
if someone cares enough. I gather current limitation/bug is because
no one has that configuration and/or has complained loud enough.

> 
> > 
> > I think we just document that XDP_TX consumes resources and if users
> > care they shouldn't use XD_TX in programs and in that case hardware
> > should via program discovery not allocate the resource. This seems
> > cleaner in my opinion then more bits for features.
> 
> But what if I'm with some limited HW that actually has a support for XDP
> and I would like to utilize XDP_TX?
> 
> Not all drivers that support XDP consume Tx resources. Recently igb got
> support and it shares Tx queues between netstack and XDP.

Makes sense to me.

> 
> I feel like we should have a sort-of best effort approach in case we
> stumble upon the XDP_TX in prog being loaded and query the driver if it
> would be able to provide the Tx resources on the current system, given
> that normally we tend to have a queue per core.

Why do we need to query? I guess you want some indication from the
driver its not going to be running in the ideal NIC configuraition?
I guess printing a warning would be the normal way to show that. But,
maybe your point is you want something easier to query?

> 
> In that case igb would say yes, ixgbe would say no and prog would be
> rejected.

I think the driver should load even if it can't meet the queue per
core quota. Refusing to load at all or just dropping packets on the
floor is not very friendly. I think we agree on that point.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
