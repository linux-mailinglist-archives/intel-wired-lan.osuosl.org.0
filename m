Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B23E5B2D543
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Aug 2025 09:56:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9477C40AB9;
	Wed, 20 Aug 2025 07:56:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aHjkuqsAjaUV; Wed, 20 Aug 2025 07:56:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DCC9F40A0C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755676609;
	bh=JL4/RTCr1wG7n9TqI8dawujOVLp09ZQA/NyuJYZQpDE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EdBUmQlY/mE4Ppo1v0ZaZe8qWBIAxY4Gegnat/cVEuMW5qc6Lhwvwo6YeQeIFz69N
	 /MHPsD55wDGr7SNSbEzwSb6WmUgee34vSjNjIHplcJpSCO2OHAy2etFnbzkL6o+rMM
	 W2S/blltaj2gwvc7K/r1c5yYn0IEPvxs1mdUWbq1lxPruKoYlkXQZnZhnMWMDG4eF3
	 zW1iEQNr1vprh2GnZTpzmCuaDh9qM4oJfurV/zPmxdUillu5ClyjFD8L4Ez6+hyZIE
	 C/xvBBmkB+csF5mvKGerHd+7lsHEtlo+7mZJadAQ2ha3YU30G0aQGDspyLa2M1pM7D
	 aECX3iFfZWIIw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DCC9F40A0C;
	Wed, 20 Aug 2025 07:56:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id BA80DE0A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 07:56:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AC6C660AC9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 07:56:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JjuTEnsluUK1 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Aug 2025 07:56:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mlichvar@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0FA5E60A44
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0FA5E60A44
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0FA5E60A44
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 07:56:44 +0000 (UTC)
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-458-K1saE8n2OFWAFNbzeLg5UA-1; Wed,
 20 Aug 2025 03:56:37 -0400
X-MC-Unique: K1saE8n2OFWAFNbzeLg5UA-1
X-Mimecast-MFC-AGG-ID: K1saE8n2OFWAFNbzeLg5UA_1755676595
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 2018319775A6; Wed, 20 Aug 2025 07:56:35 +0000 (UTC)
Received: from localhost (unknown [10.43.135.229])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 1A64519560B0; Wed, 20 Aug 2025 07:56:30 +0000 (UTC)
Date: Wed, 20 Aug 2025 09:56:28 +0200
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
Message-ID: <aKV_rEjYD_BDgG1A@localhost>
References: <20250815-igb_irq_ts-v1-1-8c6fc0353422@linutronix.de>
 <aKMbekefL4mJ23kW@localhost>
 <c3250413-873f-4517-a55d-80c36d3602ee@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c3250413-873f-4517-a55d-80c36d3602ee@intel.com>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1755676603;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=JL4/RTCr1wG7n9TqI8dawujOVLp09ZQA/NyuJYZQpDE=;
 b=LHyTXFDi+jCwZTVTnyE9jGhYw2fpsC3WNI+bcdfmvTtqAT0d71/27bISlTFRXtlqpV9hZO
 eZw3/qVoX/gKflUvJj3kBEqa01x2Bs5+C+ztc9ajrgJ4NmzkCmpOTidxViC82pMLNAyZDe
 OBNcNLpYDGMGz06evPtZdEOtsOuRvV0=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=LHyTXFDi
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

On Tue, Aug 19, 2025 at 04:31:49PM -0700, Jacob Keller wrote:
> I'm having trouble interpreting what exactly this data shows, as its
> quite a lot of data and numbers. I guess that it is showing when it
> switches over to software timestamps.. It would be nice if ntpperf
> showed number of events which were software vs hardware timestamping, as
> thats likely the culprit. igb hardare only has a single outstanding Tx
> timestamp at a time.

The server doesn't have a way to tell the client (ntpperf) which
timestamps are HW or SW, we can only guess from the measured offset as
HW timestamps should be more accurate, but on the server side the
number of SW and HW TX timestamps provided to the client can be
monitored with the "chronyc serverstats" command. The server requests
both SW and HW TX timestamps and uses the better one it gets from the
kernel, if it can actually get one before it receives the next
request from the same client (ntpperf simulates up to 16384 concurrent
clients).

When I run ntpperf at a fixed rate of 140000 requests per second
for 10 seconds (-r 140000 -t 10), I get the following numbers.

Without the patch:
NTP daemon TX timestamps   : 28056
NTP kernel TX timestamps   : 1012864
NTP hardware TX timestamps : 387239

With the patch:
NTP daemon TX timestamps   : 28047
NTP kernel TX timestamps   : 707674
NTP hardware TX timestamps : 692326

The number of HW timestamps is significantly higher with the patch, so
that looks good.

But when I increase the rate to 200000, I get this:

Without the patch:
NTP daemon TX timestamps   : 35835
NTP kernel TX timestamps   : 1410956
NTP hardware TX timestamps : 581575            

With the patch:
NTP daemon TX timestamps   : 476908
NTP kernel TX timestamps   : 646146
NTP hardware TX timestamps : 412095

With the patch, the server is now dropping requests and can provide
a smaller number of HW timestamps and also a smaller number of SW
timestamps, i.e. less work is done overall.

Could the explanation be that a single CPU core now needs to do more
work, while it was better distributed before?

-- 
Miroslav Lichvar

