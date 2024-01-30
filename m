Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B651842154
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jan 2024 11:33:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A250405A6;
	Tue, 30 Jan 2024 10:33:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A250405A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706610795;
	bh=xLbOPGXhMi++GhmbXpiqXz45+BGlWNHNdXImhw4Tado=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oxOlSkA+8JElocWY2t0+32Rim/WPCpaeT00yhv0qddsOiKcmWqQihWqUfKho6gWLD
	 0/0t1zShVCHGPvWTBt0H3KB1op2wa1qQY5zx0nDYcmto/6rqJuXw0iYUxludwC/WmQ
	 8x1cKop2/r6GrwYDkJelLENGL28xiDrEjXq83cPcPXVoktodkoM7x2LFj/V8vFjNSK
	 +cJM31KqOP4Q9dW1U55X/GJFzi3hX7UgPHLDQBrPLuMe0TFUWFMJyZY4m4Knqr3O/M
	 rfrJEevpjHZBhet1qKnv/gZg/DrAaQGf/aGqb7eDLBCy4TSlfkR8o2WUNDzwiKrkh1
	 JrCaWepDTUyJA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rpepNLZ636uI; Tue, 30 Jan 2024 10:33:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6A756408C4;
	Tue, 30 Jan 2024 10:33:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6A756408C4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 09C0B1BF29C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 10:33:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E221940541
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 10:33:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E221940541
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vdr31e4m9xPr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jan 2024 10:33:07 +0000 (UTC)
X-Greylist: delayed 1072 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 30 Jan 2024 10:33:07 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B216E4052B
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org
 [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B216E4052B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 10:33:07 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
 (envelope-from <laforge@gnumonks.org>)
 id 1rUl90-00F0vY-2G; Tue, 30 Jan 2024 11:15:06 +0100
Received: from laforge by localhost.localdomain with local (Exim 4.97)
 (envelope-from <laforge@gnumonks.org>) id 1rUl5f-0000000FnQK-1I97;
 Tue, 30 Jan 2024 11:11:39 +0100
Date: Tue, 30 Jan 2024 11:11:39 +0100
From: Harald Welte <laforge@gnumonks.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <ZbjLWwG8m-FdyxMH@nataraja>
References: <20240127140747.905552-1-hayatake396@gmail.com>
 <154f979e-a335-461b-b72e-5e9c54fe940c@linux.intel.com>
 <CADFiAcJShbgBLXdVgs1vK1jqDFopkRcw-se4b4h0V3Yd60xLVw@mail.gmail.com>
 <92958c7b-7e5f-4e25-819f-4e52f9ffcf7b@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <92958c7b-7e5f-4e25-819f-4e52f9ffcf7b@linux.intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next RESENT v3] ethtool: ice:
 Support for RSS settings to GTP from ethtool
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
Cc: Jonathan Corbet <corbet@lwn.net>, vladimir.oltean@nxp.com,
 linux-doc@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 takeru hayasaka <hayatake396@gmail.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, mailhol.vincent@wanadoo.fr
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

hi Marcin,

Disclaimer: I have no understanding of the proposed implementation here, just commenting
on this from a 3GPP protocol architecture point of view.

On Tue, Jan 30, 2024 at 10:59:40AM +0100, Marcin Szycik wrote:
> >> gtpc(4|6) doesn't include TEID, so what is its purpose?
> > In GTPC communication, there is no TEID in the CSR (Create Session Request).
> > Therefore, there are cases of GTPC that do not include TEID.
> 
> The way I understand it now, this patch (and the ethtool one) adds hashing on
> TEID field in GTP* headers. So I wanted to ask why do we have a case (gtpc(4|6))
> that doesn't include TEID? Do we hash on other fields in this header?

There are many differen GTPv2C messages, most of which contain a TEID.  So it does
in general still make sense to be able to use RSS for all those other messages.

The CSR (Create Session Request) will not be able to benfit from it, but
it's just the first message initiating a dialogue between two elements
(think of it like a TCP SYN).  All the follow-up messages in that
dialogue contain TEIDs and hence can benefit from RSS.

-- 
- Harald Welte <laforge@gnumonks.org>          https://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
