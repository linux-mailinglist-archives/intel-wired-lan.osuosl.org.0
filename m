Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1E9B2F014
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Aug 2025 09:50:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B412E41775;
	Thu, 21 Aug 2025 07:50:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JMrfuMI_Kw1s; Thu, 21 Aug 2025 07:50:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3850F41785
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755762629;
	bh=dKiVVI7dxTB2KqSBmt6ytWWdgaP4+YJtf5CAboYFUAg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tqsM7sbSGvv7egOkQJtsjuoXj/5FM2JQHjZANXL7wl3ZketKNoTDjEJB11a2sjbH6
	 u0yOR6VjVKXrBU4QFvRyQlpH52rVsyfvIWWPkkVS+MWSidQgdR5zN2t44Cf+tLqtd0
	 +vDFelxcWWCIrc8uZ7QQohaWo/PI7fODtlCMzmHx6/ZzZ5ZOroIzFGBfCl0ML/Y/9L
	 +v5BtWcjJv40ljYX7gAesiM/hscRECfQiwbEO4D5FxQcirMsoPFcKFPpY10uSv4bJK
	 A3/5zRBlW309mseEmWgHjwghYOG1t+k60BFcG6jy5nXb/2sPl3V30l7FMqfsjZV5pZ
	 12PA14KpB+VAw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3850F41785;
	Thu, 21 Aug 2025 07:50:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 73B15E0A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 07:50:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6582883F62
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 07:50:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OIJURtkugNGE for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Aug 2025 07:50:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mlichvar@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 913B483EE8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 913B483EE8
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 913B483EE8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 07:50:27 +0000 (UTC)
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-344-NUtxdQwOPbCdUA9eDb1Jpg-1; Thu,
 21 Aug 2025 03:50:23 -0400
X-MC-Unique: NUtxdQwOPbCdUA9eDb1Jpg-1
X-Mimecast-MFC-AGG-ID: NUtxdQwOPbCdUA9eDb1Jpg_1755762621
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id C8CFC19560B6; Thu, 21 Aug 2025 07:50:20 +0000 (UTC)
Received: from localhost (unknown [10.43.135.229])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id B029719560B2; Thu, 21 Aug 2025 07:50:16 +0000 (UTC)
Date: Thu, 21 Aug 2025 09:50:14 +0200
From: Miroslav Lichvar <mlichvar@redhat.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Kurt Kanzenbach <kurt@linutronix.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <aKbPtoZqfWqSOzLN@localhost>
References: <20250815-igb_irq_ts-v1-1-8c6fc0353422@linutronix.de>
 <aKMbekefL4mJ23kW@localhost>
 <c3250413-873f-4517-a55d-80c36d3602ee@intel.com>
 <aKV_rEjYD_BDgG1A@localhost>
 <81c1a391-3193-41c6-8ab7-c50c58684a22@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <81c1a391-3193-41c6-8ab7-c50c58684a22@intel.com>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1755762626;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=dKiVVI7dxTB2KqSBmt6ytWWdgaP4+YJtf5CAboYFUAg=;
 b=D7gAUN48vpynWhYDLDTUeuw4CswWXjTWlQUERtvGZlP820bBb+jCcv7Fx2ROZzhqRYDEiV
 vbgRfvd1SBWt2nJH6242kkJrT0SyirEj2yKIfl/QIpNtZ12cmWl5hYSwPo1ZJeIv4hXTTK
 S2B+bs0lfIqIUCf7q8e2JwA5dtm+E/Q=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=D7gAUN48
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] igb: Retrieve Tx timestamp
 directly from interrupt
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Aug 20, 2025 at 01:29:31PM -0700, Jacob Keller wrote:
> On 8/20/2025 12:56 AM, Miroslav Lichvar wrote:
> > Without the patch:
> > NTP daemon TX timestamps   : 35835
> > NTP kernel TX timestamps   : 1410956
> > NTP hardware TX timestamps : 581575            
> > 
> > With the patch:
> > NTP daemon TX timestamps   : 476908
> > NTP kernel TX timestamps   : 646146
> > NTP hardware TX timestamps : 412095
> > 
> 
> When does the NTP daemon decide to go with timestamping within the
> daemon vs timestamping in the kernel? It seems odd that we don't achieve
> 100% kernel timestamps...

Yes, it is odd. The daemon uses the best timestamp it has when the
new request comes from the client asking for the TX timestamp of the
previous response. With 16384 clients and 200000 requests per second,
that's 12 milliseconds between two requests of a client. I tried
increasing the receive buffer size of the server UDP socket and also
increase the number of clients to make the server wait longer for the
SW TX timestamps, but that didn't help. It looks like they are lost.

Due to the way the server implements the interleaved mode, it's the
first two exchanges with a client always have the TX daemon timestamp,
so the "without the patch" result above has only 35835 - 2 * 16384 =
3067 missing SW or HW timestamps (1.5% of all responses), but "with
the patch" it is 476908 - 2 * 16384 = 444140 (28.9% of all responses). 

-- 
Miroslav Lichvar

