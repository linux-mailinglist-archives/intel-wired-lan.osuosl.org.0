Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 75278B94FB7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Sep 2025 10:25:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 33DEA40B5F;
	Tue, 23 Sep 2025 08:25:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 74siJ2Fl_uPt; Tue, 23 Sep 2025 08:25:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9F43340B5C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758615956;
	bh=/CJeBRmjfgan3gR/ATwH++/RYnsTgQ6yPqZhiRFuAQs=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WMV/2o7TVxsvJHDvsX7d2QTmC6X+BXJpytrGAXLoT0xd6kVULU6RqNGgkYN0xTNbZ
	 7FVKi+i1GnMPvOleAunVvCl5d/6d7f87NaHMHH4RiDfLDugmxR6uqmbGlDljJUoAsB
	 P5lm4HdJVfyRkYXTqAZr/6R5zavFO2xdiRO6q1HgDlc8KJ2LTgS5y4r9zDIkrHgH/3
	 +8MZg+d4nzaKEwTNWr1Ze01HIZgbOzl+Nebh131L5Z4ruxp/jzlmsy4guowvZoajpK
	 IlgwPxC0Ff3DLxFFvWEImiSnhpOblBMhvAwhb7xHEvyGG23Asc9LtbVnD9fQBoxM+I
	 vKBhqgEWZhCWg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9F43340B5C;
	Tue, 23 Sep 2025 08:25:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D04DA498
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Sep 2025 08:25:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B5C5E40B59
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Sep 2025 08:25:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VAkwLJmTBka5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Sep 2025 08:25:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mlichvar@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C226440B56
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C226440B56
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C226440B56
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Sep 2025 08:25:53 +0000 (UTC)
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-48-qdsA3oX5PZ2yxjEY-3Iung-1; Tue,
 23 Sep 2025 04:25:48 -0400
X-MC-Unique: qdsA3oX5PZ2yxjEY-3Iung-1
X-Mimecast-MFC-AGG-ID: qdsA3oX5PZ2yxjEY-3Iung_1758615946
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id BA3A918005B6; Tue, 23 Sep 2025 08:25:43 +0000 (UTC)
Received: from localhost (unknown [10.43.135.229])
 by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id B436C1955F21; Tue, 23 Sep 2025 08:25:39 +0000 (UTC)
Date: Tue, 23 Sep 2025 10:25:37 +0200
From: Miroslav Lichvar <mlichvar@redhat.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: Kurt Kanzenbach <kurt@linutronix.de>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <aNJZgRkY66BCu9Aj@localhost>
References: <20250815-igb_irq_ts-v1-1-8c6fc0353422@linutronix.de>
 <aKMbekefL4mJ23kW@localhost>
 <c3250413-873f-4517-a55d-80c36d3602ee@intel.com>
 <aKV_rEjYD_BDgG1A@localhost> <87ikhodotj.fsf@jax.kurt.home>
 <20250913212212.3nwetWbI@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250913212212.3nwetWbI@linutronix.de>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1758615952;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/CJeBRmjfgan3gR/ATwH++/RYnsTgQ6yPqZhiRFuAQs=;
 b=aaZrtAJtACfdTb14qthnXxJe0mHLZFqEmtypErI/rxbfq/fX6v8ueIH908eyNnX+/haCUO
 tZ85vG28PdI3aX/+Glw0PSj0UqprDRexblIf+HS/Clt0UfAUcGp07GFqszIi3ay7zCwNUk
 WmFnVjyOS5zZuJKLKK4xNHr/B7o2Xu0=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=aaZrtAJt
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

On Sat, Sep 13, 2025 at 11:22:12PM +0200, Sebastian Andrzej Siewior wrote:
> If I do
> | ntpperf -i X … -I -r 1000 -t 2
> 
> then there is no loss and on other side I see
> 
> | NTP packets received       : 2201
> | NTP timestamps held        : 2101
> | NTP daemon TX timestamps   : 200
> | NTP kernel TX timestamps   : 901
> | NTP hardware TX timestamps : 1100
> | tx_hwstamp:2101
> 
> Here the tx_hwstamp counter colorates with "NTP timestamps held". Does
> it this make any sense? I don't see this matching with the "larger" runs
> where ntpperf reports loss.

The serverstats counters are for timestamps that were served to the
client, which is different from timestamps it got from the kernel.

Some HW timestamps are not used because chronyd is not tracking the
PHC yet. That takes at least one second in default configuration (it
can be reduced by the minpoll option of hwtimestamp). If there was no
other NTP activity on that interface before the test was started, in
the first second of the test (i.e. 50% of -t 2, or 10% of -t 10)
chronyd will be serving kernel TX timestamps, even though it is
receiving HW timestamps from the kernel. To minimize that effect, you
can run a client chronyd instance in background polling the server
once per second (minpoll 0 maxpoll 0) and wait for a few seconds
before starting ntpperf after the server chronyd instance was
restarted.

There is a 2-packet delay in the interleaved mode for each client
(ntpperf has a warmup phase to avoid counting basic responses). With
-r 1000 ntpperf simulates 100 clients. So, for the 2201 requests
chronyd received, the first 200 (2 * 100 clients) responses had a
daemon TX timestamp, 901 responses had a kernel TX timestamp before
the PHC tracking initialized in the first second, and the remaining
1100 responses had a HW TX timestamp.

The "NTP timestamps held" matching tx_hwstamp is a coincidence. It
is not related to the number of HW timestamps received from the kernel
or served to the client. Until chronyd starts dropping timestamps to
not exceed clientloglimit, it's just counting requests in interleaved
mode, i.e. the number of requests minus the first request from each
client: 2201 - 1 * 100 = 2101.

-- 
Miroslav Lichvar

