Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CEB38810F4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Mar 2024 12:30:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C5FFF60BC6;
	Wed, 20 Mar 2024 11:30:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id huDMDiKjmnsq; Wed, 20 Mar 2024 11:30:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 19CC7608AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710934217;
	bh=aTym/nC5xD61zbRK5hpctTKsJawMwlPvb8OVQ2E/Od4=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=w/CkAPJxEgU6OMB1twt9J7OH1OIBUf+oINrCigzUbT5WkkrNiV3X79EhhULq6PfxP
	 gmLDP6MFP/BTsZHoiFExJSaIGQ5s8BkoF21lXq9IKv7QwSNR9qWVWJJsSF3gBxt5y9
	 4VOq4PiKLrKFYWWAIRAOxjWMLpqe8Z70ID/uGFbPOTTzErPDMNWvbeqrkGTDXiVhHz
	 IEv1RAoCvj3c11ERGrbeT43nltlF/oLWcr3yxFkwkt/IiD+9CFG2jEFA2uL2JDycdT
	 37rL1twdKpBAaBHMFoHhSRAWXLHZJnEv6QMw8N4u1OlSL1ixQNzIgg3DankdeWzEwg
	 Qx+ud7gG/j3+w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 19CC7608AD;
	Wed, 20 Mar 2024 11:30:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BB25A1BF2F5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Mar 2024 11:30:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B417A608AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Mar 2024 11:30:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XtmVwKetSI_z for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Mar 2024 11:30:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=tglx@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DCA816063F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DCA816063F
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DCA816063F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Mar 2024 11:30:13 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
To: lakshmi.sowjanya.d@intel.com, jstultz@google.com, giometti@enneenne.com,
 corbet@lwn.net, linux-kernel@vger.kernel.org
In-Reply-To: <20240319130547.4195-2-lakshmi.sowjanya.d@intel.com>
References: <20240319130547.4195-1-lakshmi.sowjanya.d@intel.com>
 <20240319130547.4195-2-lakshmi.sowjanya.d@intel.com>
Date: Wed, 20 Mar 2024 12:23:37 +0100
Message-ID: <875xxhi1ty.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1710933818;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=aTym/nC5xD61zbRK5hpctTKsJawMwlPvb8OVQ2E/Od4=;
 b=KvlwfhtKxgD4GRV4La6sGDGFZr+2/2uQrcTfqM3vprppbQRBkL/TLG6IXU/hXtuEdKTRWU
 8j62Nfc078Ao9H36UHuTIm9El2GoZ0LbJ4UnXyyIh2KtBC0/qwC14k1SmTqRP/f177mK7B
 DlIuApaSsLAFcCx09fnG5xqcxZf/lewP6w/aPQFYdFLQkKbMHzXVPSVQTwD4g380A5a0nR
 bohRu65iUTWfJXh2G9qDlxCeLHYbtn/1RxX6elSI50rVI25EjfOaq1jApa+jCL4PJS35ME
 6FOW71TXq+emFfTlbaT2VVOyWI/HQuDjjudpJRADjjmMZ+Gw/YNJKYhb0SCrew==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1710933818;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=aTym/nC5xD61zbRK5hpctTKsJawMwlPvb8OVQ2E/Od4=;
 b=5S4OJ0Bqq8GLmgf1t47z3Wr7Pn74Q0Z8hp6uTTCi/CglQBez4Y7PgP+9Y8m7R18/ZWh6QO
 7N63F1Og9OVrh6Aw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=KvlwfhtK; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=5S4OJ0Bq
Subject: Re: [Intel-wired-lan] [PATCH v5 01/11] x86/tsc: Add base clock
 properties in clocksource structure
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
Cc: linux-doc@vger.kernel.org, mallikarjunappa.sangannavar@intel.com,
 alexandre.torgue@foss.st.com, perex@perex.cz, basavaraj.goudar@intel.com,
 thejesh.reddy.t.r@intel.com, christopher.s.hall@intel.com, x86@kernel.org,
 joabreu@synopsys.com, peter.hilber@opensynergy.com,
 intel-wired-lan@lists.osuosl.org, subramanian.mohan@intel.com,
 linux-sound@vger.kernel.org, lakshmi.sowjanya.d@intel.com,
 andriy.shevchenko@linux.intel.com, netdev@vger.kernel.org, pandith.n@intel.com,
 eddie.dong@intel.com, mcoquelin.stm32@gmail.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Mar 19 2024 at 18:35, lakshmi.sowjanya.d@intel.com wrote:
> From: Lakshmi Sowjanya D <lakshmi.sowjanya.d@intel.com>
>
> Add base clock hardware abstraction in clocksource structure.
>
> Add clocksource ID for x86 ART(Always Running Timer).

This change log tells the WHAT but not the WHY. You have to add context
and explanation WHY this change is required and why it makes sense.

Also I think this should be ordered differently:

  1) Add the clocksource_base struct and provide the infrastructure in
     get_device_system_crosststamp()

  2) Make TSC/ART use it

  3) Add the realtime muck

Thanks,

        tglx
