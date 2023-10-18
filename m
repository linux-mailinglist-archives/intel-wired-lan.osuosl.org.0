Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A577CD65D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Oct 2023 10:26:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C2E22405C6;
	Wed, 18 Oct 2023 08:26:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C2E22405C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697617598;
	bh=2gWjySmuKTXdRKw9Kp3fe2WZ3AKTHlyPK0rd4VIe8LM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Z20WFlswcZvgiGMx5oWNN3+UrJT6mExY8uLmBPz+ZBBvlZwgMuO1GEycPG3Aa+eGh
	 mMfnmbby/MnNfyyY4lEz2yRd8IZ57EpaXSeuwf0eR1NWa0ESzfV3vFXuKfVSXfNZxe
	 euX/oYquh1vMzl2ETzvJBseYMNPXfMbmF3S9M9ojgA8guy9cFMwHeKCtRLpBvwl52h
	 VTXPC32lBmHOHV7xJ9ttaUwTWTafYwoDfzVf5b8oeYPmr+3DFE3eb0RiGIMahx3z+g
	 F4vwtTjvvJOb4ZHOeqCMaDSj1jmwutm41u0KDX/cUUIYEz2CmGLTReMez8UVF+GVff
	 Xud4HCdRFlvcA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9gKBBem1jos2; Wed, 18 Oct 2023 08:26:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 63FC7404F4;
	Wed, 18 Oct 2023 08:26:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 63FC7404F4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D20F91BF285
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 08:26:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B50C6404F4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 08:26:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B50C6404F4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ICregRT3Qn2M for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Oct 2023 08:26:30 +0000 (UTC)
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org
 [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 29202404D4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 08:26:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 29202404D4
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
 (envelope-from <laforge@gnumonks.org>)
 id 1qt1sl-00Bhme-QA; Wed, 18 Oct 2023 10:26:23 +0200
Received: from laforge by nataraja with local (Exim 4.97-RC2)
 (envelope-from <laforge@gnumonks.org>) id 1qt1sD-00000002YxM-3yh4;
 Wed, 18 Oct 2023 10:25:49 +0200
Date: Wed, 18 Oct 2023 10:25:49 +0200
From: Harald Welte <laforge@gnumonks.org>
To: takeru hayasaka <hayatake396@gmail.com>
Message-ID: <ZS-WjVVaoBXqdZgB@nataraja>
References: <20231012060115.107183-1-hayatake396@gmail.com>
 <20231016152343.1fc7c7be@kernel.org>
 <CADFiAcKOKiTXFXs-e=WotnQwhLB2ycbBovqS2YCk9hvK_RH2uQ@mail.gmail.com>
 <CADFiAcLiAcyqaOTsRZHex8g-wSBQjCzt_0SBtBaW3CJHz9afug@mail.gmail.com>
 <CADFiAcLvrpm+HGotr=UWiqyLGG-Bp1vf1E7bwKH_-MTCc84Jjw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CADFiAcLvrpm+HGotr=UWiqyLGG-Bp1vf1E7bwKH_-MTCc84Jjw@mail.gmail.com>
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

Hi Takeru,

On Wed, Oct 18, 2023 at 01:49:08AM +0900, takeru hayasaka wrote:
> I'm not very proficient in English, so I'm worried whether I can
> explain it well.

Don't worry, you were very clear in this e-mail.

> Therefore, I will try to briefly explain the flow and what kind of
> cases these are in a straightforward manner.

Thanks for taking the time.  As stated, I think it would be best to have
these or some other some brief comments about the different flow types
in the source code (and especially the documentation) of ethtool.

Based on your explanation, I agree that indeed those are all different
flow types that occur in real-life on PGW/UPF and other 3GPP network
elements/functions.  I can also very well imagine that there are use
cases to steer all of those separately, including the EH and UL/DL types
you mentioned.

So I'm supporing your patch with all its many different flow types for RSS.

Thanks,
	Harald
-- 
- Harald Welte <laforge@gnumonks.org>          https://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
