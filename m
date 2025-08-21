Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D7050B2F91B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Aug 2025 14:59:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 769BD418AF;
	Thu, 21 Aug 2025 12:59:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id if9m6ENf6UDm; Thu, 21 Aug 2025 12:59:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E9DB7418B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755781159;
	bh=2MQ3vPPYOTLjunRW6rE1DAH1TekWqqlSxWTf5OGZsdo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zyhFGLRezLIv0taHNQrZQvHsoGLgggZ1PBPz7TtZx1UYwW8Dt9aXiyRiFYpC0KF8i
	 e8AD9grtSjPAeJ+n2oLBzU8vJuOQ3Nw9XWD12j453k8kBCUNe5+nmYCGPkS7iGgJI3
	 hCBXEHbbg3ocHKB9+eQMTz/Hrpntq/vPvOfnJP1BPosQBnlQ8B3gm2t0xk+KNvv4jX
	 wHLQavvkIbpdDs15K81v+0PKc7ZhkDniMKbzqhCthujZd+EeSG2d20Rx58eYnxEJQO
	 0ivduJhOXH7YCTEwUQ6qmzTCmf8dNVEO0r3OSXMD1wSkGgwjiLsLq/ZBsv6NsF+5Bl
	 dkuYNaOFo75mQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E9DB7418B1;
	Thu, 21 Aug 2025 12:59:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0F5A97AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 12:59:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ED44861514
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 12:59:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JA5fiwERI_Bt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Aug 2025 12:59:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mlichvar@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1CDED614DE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1CDED614DE
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1CDED614DE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Aug 2025 12:59:15 +0000 (UTC)
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-265-vkC7hbS4MquUfZc2ZtNobg-1; Thu,
 21 Aug 2025 08:59:10 -0400
X-MC-Unique: vkC7hbS4MquUfZc2ZtNobg-1
X-Mimecast-MFC-AGG-ID: vkC7hbS4MquUfZc2ZtNobg_1755781148
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 7546E195608B; Thu, 21 Aug 2025 12:59:08 +0000 (UTC)
Received: from localhost (unknown [10.43.135.229])
 by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 7B081180028F; Thu, 21 Aug 2025 12:59:04 +0000 (UTC)
Date: Thu, 21 Aug 2025 14:59:01 +0200
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
Message-ID: <aKcYFbzbbfPXlrlN@localhost>
References: <20250815-igb_irq_ts-v1-1-8c6fc0353422@linutronix.de>
 <aKMbekefL4mJ23kW@localhost>
 <c3250413-873f-4517-a55d-80c36d3602ee@intel.com>
 <aKV_rEjYD_BDgG1A@localhost>
 <81c1a391-3193-41c6-8ab7-c50c58684a22@intel.com>
 <87ldncoqez.fsf@jax.kurt.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87ldncoqez.fsf@jax.kurt.home>
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1755781154;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=2MQ3vPPYOTLjunRW6rE1DAH1TekWqqlSxWTf5OGZsdo=;
 b=AlfMMSGpJqVLTB2lAd/2Tf0bPBv06wEnmmCN1m0KmRfsgCcVx5PI+9MnYJ4dPIb6enCHTc
 r4BUto5OR+ttBdXeO2q6+ghYf5rNdby5Iy1gURC6ffH2SPiLzddmJWt8lVS8+ABYZkgy6E
 dtUn7AZhgSkb+s4VaT30ETxmeCfmSXo=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=AlfMMSGp
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

On Thu, Aug 21, 2025 at 01:38:44PM +0200, Kurt Kanzenbach wrote:
> On Wed Aug 20 2025, Jacob Keller wrote:
> > On 8/20/2025 12:56 AM, Miroslav Lichvar wrote:
> >> But when I increase the rate to 200000, I get this:
> >> 
> >> Without the patch:
> >> NTP daemon TX timestamps   : 35835
> >> NTP kernel TX timestamps   : 1410956
> >> NTP hardware TX timestamps : 581575            
> >> 
> >> With the patch:
> >> NTP daemon TX timestamps   : 476908
> >> NTP kernel TX timestamps   : 646146
> >> NTP hardware TX timestamps : 412095

> Miroslav, can you test the following patch? Does this help?

It seems better than with the original patch, but not as good as
before, at least in the tests I'm doing. The maximum packet rate the
server can handle is now only about 5% worse (instead of 40%), but the
the number of missing timestamps on the server still seems high.

With the new patch at 200000 requests per second:
NTP daemon TX timestamps   : 192404
NTP kernel TX timestamps   : 1318971
NTP hardware TX timestamps : 418805

I didn't try to adjust the aux worker priority.

-- 
Miroslav Lichvar

