Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D115B7CD627
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Oct 2023 10:15:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 556674071B;
	Wed, 18 Oct 2023 08:15:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 556674071B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697616921;
	bh=03fQjPHgInwdjf6p8dN674Gw8bX9L3SyOPJ8Ivx4RKo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mHA7NXuJ8XUjnyAu5tcXoRgDJiGLxueqmGdmOa9HQlCJRj1/T2DVFEcsr6ZKjflKC
	 C6xyMad+8fpl0/7pGqWosfr8pCezJ+VjuWWSyNphzzpKt5pD7CPetQn/QAAc9lfvo5
	 UbYIOtC1d5oioT2ssT720Q5DGfquD9FCv3KbcOn6cfzDSZNfJ9eUpGgzc2Lsb6VJi1
	 vjNweFekASEH38DLu2+kpdypA6fRRwl5v9S5JdM3vu0HgH4ntHsK/tiptW/bVHpu/g
	 /gKsQ47mS0iKLejnQ7lYqDOEBhVXMSNgeQXHNS98bUK6O6oMElL6aGISLFa4iULuYc
	 JAwEb0HwSlAMQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3mBfWfqVCtxb; Wed, 18 Oct 2023 08:15:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D1EBE404D3;
	Wed, 18 Oct 2023 08:15:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D1EBE404D3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 18A2A1BF285
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 08:15:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E452B60E03
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 08:15:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E452B60E03
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ged80BpkEzYC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Oct 2023 08:15:14 +0000 (UTC)
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org
 [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C66C560B29
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 08:15:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C66C560B29
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
 (envelope-from <laforge@gnumonks.org>)
 id 1qt1hq-00BbbJ-Ah; Wed, 18 Oct 2023 10:15:06 +0200
Received: from laforge by nataraja with local (Exim 4.97-RC2)
 (envelope-from <laforge@gnumonks.org>) id 1qt1fY-00000002Ylo-3fKj;
 Wed, 18 Oct 2023 10:12:44 +0200
Date: Wed, 18 Oct 2023 10:12:44 +0200
From: Harald Welte <laforge@gnumonks.org>
To: takeru hayasaka <hayatake396@gmail.com>
Message-ID: <ZS-TfMKAxHLEiXBl@nataraja>
References: <20231012060115.107183-1-hayatake396@gmail.com>
 <20231016152343.1fc7c7be@kernel.org>
 <CADFiAcKOKiTXFXs-e=WotnQwhLB2ycbBovqS2YCk9hvK_RH2uQ@mail.gmail.com>
 <CADFiAcLiAcyqaOTsRZHex8g-wSBQjCzt_0SBtBaW3CJHz9afug@mail.gmail.com>
 <20231017164915.23757eed@kernel.org>
 <CADFiAc+OnpyNTXntZBkDAf+UfueRotqqWKg+BrApWcL=x_8vjQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CADFiAc+OnpyNTXntZBkDAf+UfueRotqqWKg+BrApWcL=x_8vjQ@mail.gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ethtool: ice: Support for
 RSS settings to GTP from ethtool
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
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 intel-wired-lan@lists.osuosl.org, osmocom-net-gprs@lists.osmocom.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Pablo Neira Ayuso <pablo@netfilter.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Takeru, Jakub and list,

On Wed, Oct 18, 2023 at 10:53:02AM +0900, takeru hayasaka wrote:
> > Let's forget about capabilities of Intel NICs for now - can you as a
> > user think of practical use cases where we'd want to turn on hashing
> > based on TEID for, e.g. gtpu6 and not gtpc6?
> 
> of course!
> There are clearly cases where we would want to use gtpu4|6 instead of gtpc4|6.
> 
> For instance, there are PGWs that have the capability to separate the
> termination of communication of 4G LTE users into Control and User
> planes (C/U).

I would argue it is the standard case in any PGW (or SMF+UPF) to process
GTP-C differently than GTP-U.  That's what the entire CUPS (control/user plane
split) architecture is meant for.

Now the question is how does one implement that? As the related signaling protocols
all allow to specify different IP addresses for GTPv1/v2-C (v1 for 2G/3G
and v2 for 4G) and GTPv1-U (v1 used everywhere) it is always possible to
use separate IP addresses for control and user plane.  It's even normal
that a single GTP-C instance (on one IP) manages multiple GTP-U
instances on other IP-addresses.  Those IPs are then handled by
completely different physical servers/systems/VMs/...

So only in case the user intentionally configures their network to use
the same IP address for GTP-C and GTP-U traffic one will need to start
distinguishing GTP-C and GTP-U on one host/NIC with the RSS mechanism:
Steer the GTP-C traffic to the control plane instance on one CPU and
spread the GTP-U traffic via hash function to multiple other
queues/CPUs.  I personally think it's short-sighted to use identical IPs
for control and user plane, as it means you can never scale out to
multiple machines without introducing some kind of dedicated load
balancer in front.  But assuming some people still want to do it that
way: Yes, then you need the feature to split GTP-C form GTP-U via RSS to
scale well.

What I'm somehwat more wondering about is the usability to load-balance
GTP-C traffic over multiple queues/cores.  As stated earlier, that's
just signaling.

> If we were to propose again, setting aside considerations specific to
> Intel, I believe, considering the users of ethtool, the smallest units
> should be gtpu4|6 and gtpc4|6.

agreed.  Though I'm not entirely sure one would usually want to treat v4
different from v6.  I'd assume they would usually both follow the same
RSS scheme?

> Regarding Extension Headers and such, I think it would be more
> straightforward to handle them implicitly.

I would also agree to that.
-- 
- Harald Welte <laforge@gnumonks.org>          https://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
