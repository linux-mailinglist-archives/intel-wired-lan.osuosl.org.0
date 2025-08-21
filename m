Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D822B2FD54
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Aug 2025 16:51:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF06241559;
	Thu, 21 Aug 2025 14:51:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4g4-DVfGTtW4; Thu, 21 Aug 2025 14:51:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 52416415D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755787906;
	bh=rr9rUoIkr1nx8JPvQgy7YChPIsLZS2L4L5UXWNYbAxw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ls8RCEM4pX0DSKhJ0clQM5tkJJqG2pxoPvPf4pFBiIoWxGYHPSCuuW96x1pGWJesl
	 jtE5nuLGSt68SmcprAJyM1M3JSvXvga3HliMYYFKTArCytljnlHeJoYxzRO9K4euyG
	 m1+/xzuCcz4Fk8hpKoelvPE3DXr/eF4tR+ptPu/k4LMpEWh6maufhFGa55fIiXRhnx
	 oZCG6VDnl72TZ5VuyE+3F/UU+3tO+xLWDt0fZfs+D8CIpjxPQcHf/hzvzyWQGDqDbf
	 92sD/fRwPLI1PpAz5kpGf3T9OrC5sEsxaCXNy8hgyfb4HjyqvBSXVqk5Gr7G/3urY8
	 lga3V4vab3ITA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 52416415D8;
	Thu, 21 Aug 2025 14:51:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id CBC0B7AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 14:51:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B2282843E7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 14:51:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jsPQnw6-tV0b for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Aug 2025 14:51:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mlichvar@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0A4D9843DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A4D9843DF
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0A4D9843DF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 14:51:43 +0000 (UTC)
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-470-JBwv4IN1NdmZ4D-jFOQ2Bw-1; Thu,
 21 Aug 2025 10:51:37 -0400
X-MC-Unique: JBwv4IN1NdmZ4D-jFOQ2Bw-1
X-Mimecast-MFC-AGG-ID: JBwv4IN1NdmZ4D-jFOQ2Bw_1755787895
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id C259D19541BD; Thu, 21 Aug 2025 14:51:34 +0000 (UTC)
Received: from localhost (unknown [10.43.135.229])
 by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id B836F3001453; Thu, 21 Aug 2025 14:51:30 +0000 (UTC)
Date: Thu, 21 Aug 2025 16:51:28 +0200
From: Miroslav Lichvar <mlichvar@redhat.com>
To: Kurt Kanzenbach <kurt@linutronix.de>
Cc: Jacob Keller <jacob.e.keller@intel.com>,
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
Message-ID: <aKcycAXlKfSxxhZ3@localhost>
References: <20250815-igb_irq_ts-v1-1-8c6fc0353422@linutronix.de>
 <aKMbekefL4mJ23kW@localhost>
 <c3250413-873f-4517-a55d-80c36d3602ee@intel.com>
 <aKV_rEjYD_BDgG1A@localhost>
 <81c1a391-3193-41c6-8ab7-c50c58684a22@intel.com>
 <87ldncoqez.fsf@jax.kurt.home> <aKcYFbzbbfPXlrlN@localhost>
 <87cy8ooji5.fsf@jax.kurt.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87cy8ooji5.fsf@jax.kurt.home>
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1755787902;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=rr9rUoIkr1nx8JPvQgy7YChPIsLZS2L4L5UXWNYbAxw=;
 b=UBNf941Ou0XR3KlPAcqtip0eiUzrCucHuCXCt0a5lvvfTkS/SyCBc3wnOdXTGycmQN6kEt
 7SRnSh2b3BlbvCNfGyjL2rHi7imOkqH4z16jROY8eeUXZ8ggShCZOX1cdeqkpafQ98wMhJ
 jV/TJXRjOwdVIknZLmWjJAwyfQvHgsc=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=UBNf941O
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

On Thu, Aug 21, 2025 at 04:08:02PM +0200, Kurt Kanzenbach wrote:
> On Thu Aug 21 2025, Miroslav Lichvar wrote:
> >> >> Without the patch:
> >> >> NTP daemon TX timestamps   : 35835
> >> >> NTP kernel TX timestamps   : 1410956
> >> >> NTP hardware TX timestamps : 581575            
> >> >> 
> >> >> With the patch:
> >> >> NTP daemon TX timestamps   : 476908
> >> >> NTP kernel TX timestamps   : 646146
> >> >> NTP hardware TX timestamps : 412095

> > With the new patch at 200000 requests per second:
> > NTP daemon TX timestamps   : 192404
> > NTP kernel TX timestamps   : 1318971
> > NTP hardware TX timestamps : 418805

> Here's what I can see in the traces: In the current implementation, the
> kworker runs directly after the IRQ on the *same* CPU. With the AUX
> worker approach the kthread can be freely distributed to any other
> CPU. This in turn involves remote wakeups etc.
> 
> You could try to pin the PTP AUX worker (e.g. called ptp0) with taskset
> to the same CPU where the TS IRQs are processed. That might help to get
> the old behavior back. Adjusting the priority is not necessary, both the
> kworker and AUX thread run with 120 (SCHED_OTHER, nice value 0) by
> default.

Yes, that helps!

The server timestamping stats now show:
NTP daemon TX timestamps   : 32902
NTP kernel TX timestamps   : 1479293
NTP hardware TX timestamps : 520146

And the maximum response rate is only about 2-3% lower, so that looks
good to me.

Thanks,

-- 
Miroslav Lichvar

