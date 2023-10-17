Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1197CC9DF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Oct 2023 19:26:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 10299821F4;
	Tue, 17 Oct 2023 17:26:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 10299821F4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697563586;
	bh=khcPWDGaCpwb4zPzEu9A2BXm/BruWtmJJQwNNji1eMY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CmnUOTojqFVzQOd9SXRXEDn/7FuODY7oUvyNE/9Zkmcr5zkzN4haf3UwF/+Wzk1Vm
	 lPGXsjJFd063SqBuD0+GUSE7M7Fm2S/Kgu7lwFblHa+SAIkgnWEUgj58EJPuzjCSRh
	 5R+H1KEiTPAgPJrOm+SS2pCOkERY+yMnt0k9S6hcnubtEgjzMnFdj869i6Pty6uRJo
	 aTDBOH4dGPlWdR+Jk8+Cuu7QfqTAsRfPVr6g+L4ZMRlAVK33d5R2TYOk5HtaK9TzNO
	 YI5R4kDgHg1RkdKvmOj8EjQ+NvZe9NASgW3lAzSgNLrkJ0PGfB4v8Sh3gwhHYpaXVq
	 YRRxVuN7O0xJQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KuAQQEBk2yqj; Tue, 17 Oct 2023 17:26:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CADF2820E4;
	Tue, 17 Oct 2023 17:26:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CADF2820E4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0A53D1BF3A3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 06:45:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D6355403A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 06:45:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D6355403A8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5pPdzLlLRkUL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Oct 2023 06:45:10 +0000 (UTC)
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org
 [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9CF7F40386
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 06:45:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9CF7F40386
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
 (envelope-from <laforge@gnumonks.org>)
 id 1qsdpC-003Ysp-QU; Tue, 17 Oct 2023 08:45:07 +0200
Received: from laforge by nataraja with local (Exim 4.97-RC2)
 (envelope-from <laforge@gnumonks.org>) id 1qsdoQ-000000020rj-2TUW;
 Tue, 17 Oct 2023 08:44:18 +0200
Date: Tue, 17 Oct 2023 08:44:18 +0200
From: Harald Welte <laforge@gnumonks.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <ZS4tQpFq6CnrKGIc@nataraja>
References: <20231012060115.107183-1-hayatake396@gmail.com>
 <20231016152343.1fc7c7be@kernel.org> <ZS4lkKv3xfnkEWRi@nataraja>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZS4lkKv3xfnkEWRi@nataraja>
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

Hi again,

On Tue, Oct 17, 2023 at 08:11:28AM +0200, Harald Welte wrote:
> I cannot really comment on that, as I haven't yet been thinking about how RSS
> might potentially be used in GTPU use cases.  I would also appreciate
> some enlightenment on that.  What kind of network element/function are we talking
> about (my guess is an UPF).  How does its architecture look like to spread GTPU flows
> across CPUs using RSS?

Thinking of this a few more minutes: In my opinion the usual use case
would be to perform RSS distribution based on a (hash of) the TEID,
possibly in combination with the destination IP(v4/v6) address of the
outer IP header, and possibly also including the [outer] destination UDP
port number.

The latter could likely be always included in the hash, as either it is
the standard port (like in all public standard GTPU traffic) and would
hence not contribute to the distribution across the hash function, or it
would be a non-standard port number in some kind of private/custom
deployment, and then you would want to use it to differentiate traffic,
as otherwise you wouldn't use non-standard ports.

> +#define GTPU_V4_FLOW 0x13    /* hash only */
> +#define GTPU_V6_FLOW 0x14    /* hash only */

so if I'm guessing correctly, those would be hashing only on the V4/V6
destination address?  Why would that be GTP specific?  The IPv4/v6
header in front of the GTP header is a normal IP header.

> +#define GTPC_V4_FLOW 0x15    /* hash only */
> +#define GTPC_V6_FLOW 0x16    /* hash only */

Are there really deployments where the *very limited* GTP-C control
traffic needs RSS for scalability?  The control plane GTP-C traffic
during session setup or mobility is extremely little, compared to GTP-U.

Also, same question applies: Why is hasing the v4/v6 destination address
GTP specific and not generic like any other IP packet?

> +#define GTPC_TEID_V4_FLOW 0x17       /* hash only */
> +#define GTPC_TEID_V6_FLOW 0x18       /* hash only */

Why do we have TEID based hashing only in GTP-C?  The User plane in
GTP-U is normally what you'd want to load-share across CPUs/nodes/...
That's where you have thousands to millions more packets than GTP-C.
What am I missing?

> +#define GTPU_EH_V4_FLOW 0x19 /* hash only */
> +#define GTPU_EH_V6_FLOW 0x20 /* hash only */
> +#define GTPU_UL_V4_FLOW 0x21 /* hash only */
> +#define GTPU_UL_V6_FLOW 0x22 /* hash only */
> +#define GTPU_DL_V4_FLOW 0x23 /* hash only */
> +#define GTPU_DL_V6_FLOW 0x24 /* hash only */

Can you explain what those are supposed to do?  what exactly are those
hashing on?

IMHO that kind of explanation should be in the comment next to the
#define (for all of them) rather than "hash only".  That way it's
obvious to the reader what they do, rather than having to guess.

-- 
- Harald Welte <laforge@gnumonks.org>          https://laforge.gnumonks.org/
============================================================================
"Privacy in residential applications is a desirable marketing option."
                                                  (ETSI EN 300 175-7 Ch. A6)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
