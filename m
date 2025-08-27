Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EEDEB3852C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Aug 2025 16:41:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8ECDC40600;
	Wed, 27 Aug 2025 14:41:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F6tRAlUhHGKo; Wed, 27 Aug 2025 14:41:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 015A04066D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756305688;
	bh=zdHEF+eV56aJV+vBoHiN2XiyA3YYnRxoJ8lPFreiJp0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=p6B5cWWa/xdFzTRrybga7QI1W8HxdnxLSjnrf3gXz5zd97PEhRt4Xv7DDPZFFW/9S
	 OsgMRULtCBRuYq4/3QX4R6PiIbSm88LqarIr4zT2otkNSbMAJsknAUaY9SNraJW7D7
	 tLZ6FiGDUiwiXIxSbTQssdc5ynBeBMLilFSFI5gMWhyf/vLoN23SG4rnae3F1/NXWO
	 XvIVJohH7WVgbHbHAx7BNrcDnohZZ5ZA6dkuB7PfwPtWH0rGtkrLldgZqkk1IYHKlQ
	 y/k8MLzrkndY8N/8Z/d7sxihYU2OgzLni8rw4Ye6ZmAmygLhpApypWOKEvxslNprO5
	 l8faHzxvgy9/w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 015A04066D;
	Wed, 27 Aug 2025 14:41:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 015CE17D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 14:41:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DAFBC81324
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 14:41:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mh9XuDIhKEay for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Aug 2025 14:41:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mlichvar@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3408981321
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3408981321
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3408981321
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 14:41:25 +0000 (UTC)
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-396-MEdxNHV-OeumsV0o5eWsAg-1; Wed,
 27 Aug 2025 10:41:20 -0400
X-MC-Unique: MEdxNHV-OeumsV0o5eWsAg-1
X-Mimecast-MFC-AGG-ID: MEdxNHV-OeumsV0o5eWsAg_1756305678
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 7DC6D1800290; Wed, 27 Aug 2025 14:41:17 +0000 (UTC)
Received: from localhost (unknown [10.43.135.229])
 by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id DB1341800447; Wed, 27 Aug 2025 14:41:11 +0000 (UTC)
Date: Wed, 27 Aug 2025 16:41:09 +0200
From: Miroslav Lichvar <mlichvar@redhat.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <aK8ZBWokfWSNBW70@localhost>
References: <20250822-igb_irq_ts-v2-1-1ac37078a7a4@linutronix.de>
 <20250822075200.L8_GUnk_@linutronix.de>
 <87ldna7axr.fsf@jax.kurt.home>
 <02d40de4-5447-45bf-b839-f22a8f062388@intel.com>
 <20250826125912.q0OhVCZJ@linutronix.de>
 <aK8OrXDsZclpSQzF@localhost>
 <20250827141047.H_n5FMzY@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250827141047.H_n5FMzY@linutronix.de>
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1756305684;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=zdHEF+eV56aJV+vBoHiN2XiyA3YYnRxoJ8lPFreiJp0=;
 b=WH407/1mSVBVncqem2k1Cu0os0v4p3rYX3S4dTIHmXFBNJT7kX4LRPlYso4TAE0kkUSE3n
 aaSyyQWvWEHdFb81oziJWKjow2cCEWUC6TI9DyOWZsn2cTLTExzCv2YJhT69RUi6eFJTMe
 j604OrN7Rq2y1laLVdGLvRL1Qpywrqk=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=WH407/1m
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] igb: Convert Tx
 timestamping to PTP aux worker
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

On Wed, Aug 27, 2025 at 04:10:47PM +0200, Sebastian Andrzej Siewior wrote:
> On 2025-08-27 15:57:01 [+0200], Miroslav Lichvar wrote:
> > Anyway, if anyone is still interested in finding out the cause of
> > the regression, there is a thing I forgot to mention for the
> > reproducer using ntpperf. chronyd needs to be configured with a larger
> > clientloglimit (e.g. clientloglimit 100000000), otherwise it won't be
> > able to respond to the large number of clients in interleaved mode
> > with a HW TX timestamp. The chronyc serverstats report would show
> > that. It should look like the outputs I posted here before.
> 
> How does this work with HW timestamps vs SW? I can't believe that 1k
> packets are sent and all of them receive a HW timestamp.

From the results I posted before, the machine (CPU Intel E3-1220) with
the I350 NIC can provide about 59k HW TX timestamps per second without
any of the patches, about 41k with the original patch, and about 52k
with this patch and pinned aux worker.

The difference between ptp4l and chronyd is that chronyd is
asynchronous. It saves the timestamps as they come from the error
queue and provides the best timestamp to the clients later in their
subsequent response (NTP interleaved mode). At higher rates it's
random, only some of the packets get a HW timestamp. But the clients
can see less accurate (SW) timestamps as an increase in the measured
delay and they can filter them out if their clock is sufficiently
stable and the interval between HW timestamps is not too long. 

-- 
Miroslav Lichvar

