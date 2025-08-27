Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 46277B38428
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Aug 2025 15:57:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D8B5380E82;
	Wed, 27 Aug 2025 13:57:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EexyEqRGc5fM; Wed, 27 Aug 2025 13:57:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4375B80E7F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756303043;
	bh=lARuK9/oHAO5hZ8DSoFp95Tj5e5SnDh8mVdcAdZjl6k=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LU2b/CRWzDGEfiCdHCRLNSpyH7KES7LSdo5I2J11B5KzDU4wcCAWxzvUkho+Bd8vk
	 QTkLFBj73Gz1rL4CCKh9vo9Q6AuTBe8wfid11wE9+p7i+wl03Q4/kSCM6f6YjSlkOj
	 zu5V6uX2d6DQjzJ3RKSQgL3McxpJ5v2VJBYRouyusTyHgD4OdWJmGMmxzjfl/BLJHE
	 O9orBwOvG4XDzJE7542sA4u8+O/jo0g9c7Jjf8NPg/LXI++BcZkWsxIcBq1Frn+iwC
	 gbjy71OIiI5v8MJgXrFS4qaYiLjfAQBlOi3WpGorIY1hx8zu+mscUt289gWKWX1tVr
	 nK5gVMb4UHkWw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4375B80E7F;
	Wed, 27 Aug 2025 13:57:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C0B72114
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 13:57:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A587280E79
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 13:57:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id plx4CL4oDXul for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Aug 2025 13:57:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mlichvar@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CEA3480E12
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CEA3480E12
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CEA3480E12
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 13:57:20 +0000 (UTC)
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-298-0T7Pay7yObSdBY8dPXStcg-1; Wed,
 27 Aug 2025 09:57:13 -0400
X-MC-Unique: 0T7Pay7yObSdBY8dPXStcg-1
X-Mimecast-MFC-AGG-ID: 0T7Pay7yObSdBY8dPXStcg_1756303031
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 8FD4219541A0; Wed, 27 Aug 2025 13:57:09 +0000 (UTC)
Received: from localhost (unknown [10.43.135.229])
 by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id D6017180044F; Wed, 27 Aug 2025 13:57:03 +0000 (UTC)
Date: Wed, 27 Aug 2025 15:57:01 +0200
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
Message-ID: <aK8OrXDsZclpSQzF@localhost>
References: <20250822-igb_irq_ts-v2-1-1ac37078a7a4@linutronix.de>
 <20250822075200.L8_GUnk_@linutronix.de>
 <87ldna7axr.fsf@jax.kurt.home>
 <02d40de4-5447-45bf-b839-f22a8f062388@intel.com>
 <20250826125912.q0OhVCZJ@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250826125912.q0OhVCZJ@linutronix.de>
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1756303039;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=lARuK9/oHAO5hZ8DSoFp95Tj5e5SnDh8mVdcAdZjl6k=;
 b=hFsick+TokFUgtcBzY9KwFUiyOqdwWkc/sM2xn/4W9iaq2p3/hNYvcPcUR8rB1AAyaxLpW
 HgjHngO5w0H6khpleINQ84/zzsTiQi29YHxx7YWghLf3zWLpziF1str1DdkPRW46KZ1rB9
 R2vfIA1RAC+l/rymOzkzaMB1C5xGePE=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=hFsick+T
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

On Tue, Aug 26, 2025 at 02:59:12PM +0200, Sebastian Andrzej Siewior wrote:
> The benchmark is about > 1k packets/ second while in reality you have
> less than 20 packets a second.

I don't want to argue about which use case is more important, but it's
normal for NTP servers to receive requests at much higher rates than
that. In some countries, public servers get hundreds of thousands of
packets per second. A server in a local network may have clients
polling 128 times per second each.

Anyway, if anyone is still interested in finding out the cause of
the regression, there is a thing I forgot to mention for the
reproducer using ntpperf. chronyd needs to be configured with a larger
clientloglimit (e.g. clientloglimit 100000000), otherwise it won't be
able to respond to the large number of clients in interleaved mode
with a HW TX timestamp. The chronyc serverstats report would show
that. It should look like the outputs I posted here before.

-- 
Miroslav Lichvar

