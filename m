Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 398C47CC9DE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Oct 2023 19:26:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C71678219A;
	Tue, 17 Oct 2023 17:26:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C71678219A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697563581;
	bh=71AX1k2MkeY51AS2SzAhrLvqs/PqbgcEEvRNksMbnqU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Hw7CRmusRuPXThmfYfxLF8Xovwj44DLTxvaHwmQviXnpmp+xFlJbjkJ6TVf8N3ln0
	 2ZAyXLpipgqm/ZqpdjZCK0eYJtt5A/oLcx+0lUt7zX3HRUPcZ4QLwvAZCUeFXYUJ7Q
	 sQVyA4GhEt//84H2N1Z7Y5ruQ/G6ftz/x1+Z9UMmhTm3j0S5OSLqbwc+IFhKbL4qRe
	 ZpgFBzZ/oscfC9w6oexUuZSjhYSTWQRtOwgLw1s7tIEpp7pmXSDrX3hx+z62KI+YhB
	 Lp0xBYpas4wHoDQEYZrjuerjVEwvHY7jNqfF3+uWiONcDOUFrWISDCzXNNRyUSan4J
	 HQIzxlxEZn3SQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jNdSjU7YmfJo; Tue, 17 Oct 2023 17:26:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD78C820E4;
	Tue, 17 Oct 2023 17:26:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD78C820E4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D9EE71BF3A3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 06:35:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A590F80F4E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 06:35:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A590F80F4E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yk9flaXYiqxx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Oct 2023 06:35:46 +0000 (UTC)
X-Greylist: delayed 1233 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 17 Oct 2023 06:35:46 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 62D3080E36
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org
 [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 62D3080E36
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 06:35:46 +0000 (UTC)
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
 (envelope-from <laforge@gnumonks.org>)
 id 1qsdMA-003P2Q-Dk; Tue, 17 Oct 2023 08:15:06 +0200
Received: from laforge by nataraja with local (Exim 4.97-RC2)
 (envelope-from <laforge@gnumonks.org>) id 1qsdIe-000000020Oa-1ZtF;
 Tue, 17 Oct 2023 08:11:28 +0200
Date: Tue, 17 Oct 2023 08:11:28 +0200
From: Harald Welte <laforge@gnumonks.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <ZS4lkKv3xfnkEWRi@nataraja>
References: <20231012060115.107183-1-hayatake396@gmail.com>
 <20231016152343.1fc7c7be@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231016152343.1fc7c7be@kernel.org>
X-Mailman-Approved-At: Tue, 17 Oct 2023 17:25:58 +0000
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
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>, netdev@vger.kernel.org,
 osmocom-net-gprs@lists.osmocom.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Takeru Hayasaka <hayatake396@gmail.com>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Pablo Neira Ayuso <pablo@netfilter.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Jakub and others,

On Mon, Oct 16, 2023 at 03:23:43PM -0700, Jakub Kicinski wrote:
> Adding Willem, Pablo, and Harald to CC (please CC them on future
> versions).

thanks for that Cc, it's much appreciated!

> My understanding of GTP is limited to what I just read on Wikipedia.

If there are any specific questions, I'm very happy to respond to them.

> IIUC the GTPC vs GTPU distinction comes down to the UDP port on
> which the protocol runs? 

that is a convention.  Similar to any other wll-known port

> Are the frames also different?

Yes, the message type is different. There is one specific message type used for GTP-U
and lots of others for GTP-C.

> I'm guessing UL/DL are uplink/downlink but what's EH?

Surprisingly, I also am not familiar with "EH" in the context of GTP.  It's an ancronym
I don't recall reading in any related 3GPP spec.

> Key question is - are there reasonable use cases that you can think of
> for enabling GTP hashing for each one of those bits individually or can
> we combine some of them?

I cannot really comment on that, as I haven't yet been thinking about how RSS
might potentially be used in GTPU use cases.  I would also appreciate
some enlightenment on that.  What kind of network element/function are we talking
about (my guess is an UPF).  How does its architecture look like to spread GTPU flows
across CPUs using RSS?

This is by the way something that I've been also seeing with patches
against the kernel gtp in recent years: People submit patches but are
not explaining the use cases, so it's hard to judge how relevant this
really is to most users.

-- 
- Harald Welte <laforge@gnumonks.org>          https://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
