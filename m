Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 703367CE5BC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Oct 2023 20:00:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5F96C4192F;
	Wed, 18 Oct 2023 18:00:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5F96C4192F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697652020;
	bh=qY1RVN4kD2j5mziWMqJE/TCr/tDxJHJB3rhBdKt4bxo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Rlg8QU1/OLH6U+guC/7nTJJ31mZPwTzPaNLHxfQuRcVNfAqwMk+h9duTP7StDPUOW
	 vsvMGISGVD6hqxTHTjl8kWnuRgfDJTFEyNDEnGuPw3zwRpmQPaK2IhiThj5AZ9dTQF
	 GzyjIOUj3zZmIbhw4rFCiHcd2mgqf49ZJfH119+FhtvzgXzpJyAkUmPTGw1jH3gnPI
	 me3+oVTWsSPDNmBP7KzCCRUjyr2p9yC4TXd+op4mhD/gYnP+jh6KNJ55BHBMQJU1Y8
	 0tU4HVdPcwoXoZeLdD7+bocp/fdunkLRVL+/wAdGzDbP0WrmawQ2lZLIswrlkX7lPt
	 SKIjcU4BrzvYw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B5zteoj-0bZE; Wed, 18 Oct 2023 18:00:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 939BC4047D;
	Wed, 18 Oct 2023 18:00:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 939BC4047D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 828071BF5D7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 18:00:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 585684192E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 18:00:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 585684192E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DDmLU5pdpjWY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Oct 2023 18:00:11 +0000 (UTC)
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org
 [IPv6:2001:780:45:1d:225:90ff:fe52:c662])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AA8784047D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 18:00:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA8784047D
Received: from uucp by ganesha.gnumonks.org with local-bsmtp (Exim 4.94.2)
 (envelope-from <laforge@gnumonks.org>)
 id 1qtApx-00EjDB-RY; Wed, 18 Oct 2023 20:00:05 +0200
Received: from laforge by nataraja with local (Exim 4.97-RC2)
 (envelope-from <laforge@gnumonks.org>) id 1qtAnC-00000002j2L-0xli;
 Wed, 18 Oct 2023 19:57:14 +0200
Date: Wed, 18 Oct 2023 19:57:14 +0200
From: Harald Welte <laforge@gnumonks.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <ZTAceqxFSmL-jFuw@nataraja>
References: <20231012060115.107183-1-hayatake396@gmail.com>
 <20231016152343.1fc7c7be@kernel.org>
 <CADFiAcKOKiTXFXs-e=WotnQwhLB2ycbBovqS2YCk9hvK_RH2uQ@mail.gmail.com>
 <CADFiAcLiAcyqaOTsRZHex8g-wSBQjCzt_0SBtBaW3CJHz9afug@mail.gmail.com>
 <20231017164915.23757eed@kernel.org>
 <CADFiAc+OnpyNTXntZBkDAf+UfueRotqqWKg+BrApWcL=x_8vjQ@mail.gmail.com>
 <20231018103703.41fd4d9b@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231018103703.41fd4d9b@kernel.org>
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
 takeru hayasaka <hayatake396@gmail.com>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Pablo Neira Ayuso <pablo@netfilter.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Jakub,

On Wed, Oct 18, 2023 at 10:37:03AM -0700, Jakub Kicinski wrote:
> Harald went further and questioned use of the same IP addresses for 
> -U and -C traffic, but even within one endpoint aren't these running
> on a different port? 

yes.

> Can someone reasonably use the same UDP port for both types of traffic?

I don't think so.  In the entire 3GPP protocol world, the UDP port numbers
for GTP-U and GTP-C are fixed.  The various signaling protocols allow you to
communicate the IPv4/v6 address and TEID of tunnel endpoints, but never allow
you to communicate the port number - which hence must always be the well-known port
(2123 for GTP-C + 2152 for GTP-U).

Of course somebody could do whatever they want in some kind of internal interface
not required to interoperate with any other equipment/implementation/operator, but
I'd consider it not falling in your question of "reasonable use".

Regards,
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
