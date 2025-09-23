Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1116DB94E60
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Sep 2025 10:02:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A65D680DF3;
	Tue, 23 Sep 2025 08:02:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id alpxWKxHl6xK; Tue, 23 Sep 2025 08:02:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1654D80DFD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758614535;
	bh=TOkyzE0c1T3gu5dI+oIIOizv6pKHsRXJTQzDXcjJAJc=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PniHxfpZlwqqL8iTIorzg64cG0659Xb5nnXXFM6TH+jaojNSdRG4kARqkHDNAAHu0
	 JqGufGZGr0otABBrpuzhdh8RyRtlbfPWzpBSIRQkxTybKsRu80wbJBWb5TNFmViVim
	 qQ+6mEIueHF9RgnuWLSfMjl4mnkGjpavnaWByY2NQt1xNcuGn3OeiPD6y28Y+3dDUb
	 FVUfbktha+jbujknEF8r2H9g9pXOFQN88Z9hpXZkM46cpOkSxJPcKwI27BVZhnHBzV
	 8ySl8WJk6okGe9eXpM8UXUuupkWFdRfB4Igow7cFCqfYpcYsGfwA5kFv3sje44NPUn
	 7je7PQQFPFmNQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1654D80DFD;
	Tue, 23 Sep 2025 08:02:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 35134E7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Sep 2025 08:02:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1AB8140B48
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Sep 2025 08:02:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M9A3dtQT5hkM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Sep 2025 08:02:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mlichvar@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 22B7F40B46
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 22B7F40B46
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 22B7F40B46
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Sep 2025 08:02:11 +0000 (UTC)
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-436-xVpVznRlPtaQEpkQYh-fBw-1; Tue,
 23 Sep 2025 04:02:06 -0400
X-MC-Unique: xVpVznRlPtaQEpkQYh-fBw-1
X-Mimecast-MFC-AGG-ID: xVpVznRlPtaQEpkQYh-fBw_1758614524
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 7A3C21955F45; Tue, 23 Sep 2025 08:02:04 +0000 (UTC)
Received: from localhost (unknown [10.43.135.229])
 by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id B9A7D195608E; Tue, 23 Sep 2025 08:01:59 +0000 (UTC)
Date: Tue, 23 Sep 2025 10:01:57 +0200
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
Message-ID: <aNJT9a0FA0cM_oBa@localhost>
References: <20250815-igb_irq_ts-v1-1-8c6fc0353422@linutronix.de>
 <aKMbekefL4mJ23kW@localhost>
 <c3250413-873f-4517-a55d-80c36d3602ee@intel.com>
 <aKV_rEjYD_BDgG1A@localhost> <87ikhodotj.fsf@jax.kurt.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87ikhodotj.fsf@jax.kurt.home>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1758614530;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=TOkyzE0c1T3gu5dI+oIIOizv6pKHsRXJTQzDXcjJAJc=;
 b=C9lErGtJ9jYQoV0ET/UhXraL6iY9ftTfATlcjG/m5KOobURK7wyNXsSaFiQqw7J9a1MZqh
 kHRbxM3cEoJkmIJzaBIK7RRqFLNFU2FQuD1dKwp43wZQQe8602/XEwkGCo1VG/mt9+gNg4
 UdZHiUdpfl2VL0QPPHVYZ4Z6z0btVBg=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=C9lErGtJ
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

On Fri, Sep 12, 2025 at 11:04:24AM +0200, Kurt Kanzenbach wrote:
> Sebastian found a machine with i350 and gave me access.
> 
> I did run the same test as you mentioned here. But, my numbers are
> completely different. Especially the number of hardware TX timestamps
> are significantly lower overall.
> 
> Without the patch:
> 
> ./ntpperf -i eno8303 -m X -d Y -s Z -I -r 200000 -t 10
> 
> NTP daemon RX timestamps   : 0
> NTP daemon TX timestamps   : 565057
> NTP kernel RX timestamps   : 100208
> NTP kernel TX timestamps   : 281215
> NTP hardware RX timestamps : 882823
> NTP hardware TX timestamps : 136759
> 
> With the patch:
> 
> NTP daemon RX timestamps   : 0
> NTP daemon TX timestamps   : 576561
> NTP kernel RX timestamps   : 99232
> NTP kernel TX timestamps   : 255634
> NTP hardware RX timestamps : 868392
> NTP hardware TX timestamps : 135429

ntpperf sending 200k requests per second for 10 seconds is 2 million,
but the sums of RX or TX timestamps in both your results show it
handled only about half of that. The CPU seems to be too slow for such
rate in either case.

I was testing it with an Intel E3-1220 v6 (4 cores, no hyperthreading)
and I set "-r 200000" to roughly match the maximum rate my machine can
handle before the patch. Can you please try adjusting the rate to
minimize the loss in the test without the patch first?

> What am I doing wrong? Here's my chrony config:

Your config looks good to me. Here is mine, but it is functionally
equivalent wrt this test:

hwtimestamp i350b
clientloglimit 1000000000
local
allow

> 
> |########## i350 NTP performance regression test ###########
> |local stratum 10
> |allow X
> |allow Y
> |allow Z
> |
> |hwtimestamp eno0
> | 
> |clientloglimit 134217728
> |log measurements statistics tracking
> |logdir /var/log/chrony

-- 
Miroslav Lichvar

