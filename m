Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E170E6E1663
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Apr 2023 23:20:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 78FFC60EEC;
	Thu, 13 Apr 2023 21:20:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 78FFC60EEC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681420802;
	bh=0DIb4GbUACyqtPewA8agPEt05aAH6dwi0a+5T2jlBJ0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DKuAiauT4dTy5I6mi6Nzo1K3pFOdm3rq/eitsagnztWut6CsjbEE9nR1bVCTraoDS
	 0V3riuUUIrPm7jyjSeqVgu+w1aoDtEPg2zJiJ2n+x/CqJsg7SKhs0v3iCxBv0DAu8K
	 0dMH2SrC95iDHNSTYQU/Zm0uFlUS+KiNY3aw+Hr1Z7IPKmCwxn1CCX+o9IyKNN8/c7
	 JdCGw9oQEtkqF3G/NW8I/6D6jjaKPjljenBuAqw4W3syn0FJDmqVyhGygykoZyN/6G
	 JHpN/b4yp6m5PBP3Kv+Ok1VyWDL2AcNeN/1Ga/ZmIcv5eqRh+xNtNtHSQIbrl/t0IG
	 SBIEupANYLrSQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kv807DMv1Wbd; Thu, 13 Apr 2023 21:20:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F1C660EE3;
	Thu, 13 Apr 2023 21:20:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7F1C660EE3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 176231C3E2B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 21:19:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DD8A860EE3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 21:19:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DD8A860EE3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1STL8qst_dos for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Apr 2023 21:19:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA0AB606AA
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [185.58.85.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CA0AB606AA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Apr 2023 21:19:54 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) by
 relay.mimecast.com with ESMTP with both STARTTLS and AUTH (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 uk-mta-178-S4iCgMItMLWsvBD8stFdOw-1; Thu, 13 Apr 2023 22:19:51 +0100
X-MC-Unique: S4iCgMItMLWsvBD8stFdOw-1
Received: from AcuMS.Aculab.com (10.202.163.6) by AcuMS.aculab.com
 (10.202.163.6) with Microsoft SMTP Server (TLS) id 15.0.1497.48; Thu, 13 Apr
 2023 22:19:49 +0100
Received: from AcuMS.Aculab.com ([::1]) by AcuMS.aculab.com ([::1]) with mapi
 id 15.00.1497.048; Thu, 13 Apr 2023 22:19:48 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Jacob Keller' <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>
Thread-Topic: [PATCH net-next] igc: Avoid transmit queue timeout for XDP
Thread-Index: AQHZbiakwvsvL10nUEK6fgXm9Mv0Na8pvMgA
Date: Thu, 13 Apr 2023 21:19:48 +0000
Message-ID: <05bd675ff1e3438888ea1387df5110d1@AcuMS.aculab.com>
References: <20230412073611.62942-1-kurt@linutronix.de>
 <1809a34d-dcf4-4b54-089a-a7be3f4c23e1@intel.com>
 <20230413090344.20796001@kernel.org>
 <5076f138-2090-921c-7f01-32211f27d400@intel.com>
In-Reply-To: <5076f138-2090-921c-7f01-32211f27d400@intel.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next] igc: Avoid transmit queue
 timeout for XDP
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Ong Boon Leong <boon.leong.ong@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller
> Sent: 13 April 2023 17:40
> 
> On 4/13/2023 9:03 AM, Jakub Kicinski wrote:
> > On Wed, 12 Apr 2023 15:30:38 -0700 Jacob Keller wrote:
> >> Is most driver's XDP implementation broken? There's also
> >> netif_trans_update but this is called out as a legacy only function. Far
> >> more drivers call this but I don't see either call or a direct update to
> >> trans_start in many XDP implementations...
> >>
> >> Am I missing something or are a bunch of other XDP implementations also
> >> wrong?
> >
> > Only drivers which use the same Tx queues for the stack and XDP need
> > this.
> 
> Ok that explains it. igc has few enough queues they need to be shared,
> but other devices have more queues and can use dedicated queues.

Aren't there some generic problems with multiple transmit queues?
The tg3 driver only uses a single tx queue because sending enough
large packets to saturate the network through one queue has the
effect of significantly delaying packets on other queues because
of the 'round robin' algorithm used by the hardware.

Transmit processing is also a lot less demanding than the receive
processing.
So you may want to split the receive traffic into multiple
queues (with the processing happening on multiple cpu) but
keep the transmit processing (which is much less critical)
only running on a single cpu - so with a single queue.
(Trying to process 10000 RTP streams gets 'interesting'.)

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
