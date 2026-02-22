Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gN8EGhRZm2nTyQMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 22 Feb 2026 20:29:24 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D122E1702D5
	for <lists+intel-wired-lan@lfdr.de>; Sun, 22 Feb 2026 20:29:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B99F83D89;
	Sun, 22 Feb 2026 19:20:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PoPZB3nD-TEx; Sun, 22 Feb 2026 19:20:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4B55183D6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771788035;
	bh=7AXFH+vuOnnn9PkWkiJdfT8gFe6PP/Z9KQnHfrVnI7M=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=55qTo9V/yKXKk01RKyTfudomcsp4uYAUm/sHoQZkSJeh+DIpamUiuX82ZLYkXzyA5
	 tnoMjOdyT8zomZPAPQeQEM3uRfQlva2Xau2afsAEcDTz61P0LySbPHZR+h3/79wDOX
	 FGUruvIKILkMM7PAc0Z+VWCmA0SM0R5PKZKSzF8+TiMsYeJidd8T7tKVbGL1smXvYv
	 GKs37AOuBRUCzNQK1MLzN45Oqwwjnm0chppmoaNssMPt38ZtEoh6cvk9SWb1k1eq1S
	 7QIA/SFJxFSxPp4T2gUHnon+UWNT+MiOjgjKbAZsAbMkIWzn/eSSJdBPpmeKB3V368
	 Tz9MfkoMo4yxA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4B55183D6B;
	Sun, 22 Feb 2026 19:20:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id EB2222DF
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Feb 2026 19:20:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DC47740C91
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Feb 2026 19:20:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q8kIddJ2Nl3t for <intel-wired-lan@lists.osuosl.org>;
 Sun, 22 Feb 2026 19:20:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=34.218.115.239;
 helo=pdx-out-013.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=50615ff3e=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BC6BF40C7D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC6BF40C7D
Received: from pdx-out-013.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-013.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [34.218.115.239])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BC6BF40C7D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 22 Feb 2026 19:20:32 +0000 (UTC)
X-CSE-ConnectionGUID: VxIbJwiBS5Sm4s1MW9hdmg==
X-CSE-MsgGUID: be32y7KeSjadlkwIrYuphQ==
X-IronPort-AV: E=Sophos;i="6.21,305,1763424000"; d="scan'208";a="13362928"
Received: from ip-10-5-12-219.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.12.219])
 by internal-pdx-out-013.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Feb 2026 19:20:29 +0000
Received: from EX19MTAUWC002.ant.amazon.com [205.251.233.111:27511]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.38.188:2525]
 with esmtp (Farcaster)
 id a94a9f8d-db01-4698-8020-45b8dd150707; Sun, 22 Feb 2026 19:20:29 +0000 (UTC)
X-Farcaster-Flow-ID: a94a9f8d-db01-4698-8020-45b8dd150707
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWC002.ant.amazon.com (10.250.64.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.37;
 Sun, 22 Feb 2026 19:20:29 +0000
Received: from b0be8375a521.amazon.com (10.37.245.8) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.37;
 Sun, 22 Feb 2026 19:20:25 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <dsahern@kernel.org>
CC: <aleksandr.loktionov@intel.com>, <andrew+netdev@lunn.ch>,
 <anthony.l.nguyen@intel.com>, <daniel.zahka@gmail.com>,
 <davem@davemloft.net>, <david.m.ertman@intel.com>, <edumazet@google.com>,
 <intel-wired-lan@lists.osuosl.org>, <kuba@kernel.org>,
 <michal.swiatkowski@linux.intel.com>, <mustafa.ismail@intel.com>,
 <netdev@vger.kernel.org>, <nikolay@nvidia.com>, <pabeni@redhat.com>,
 <paul.greenwalt@intel.com>, <przemyslaw.kitszel@intel.com>,
 <shiraz.saleem@intel.com>, <tatyana.e.nikolova@intel.com>
Date: Mon, 23 Feb 2026 04:20:11 +0900
Message-ID: <20260222192011.1147-1-enjuk@amazon.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <56e04cb1-e205-4076-8236-1f172a75793d@kernel.org>
References: <56e04cb1-e205-4076-8236-1f172a75793d@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.245.8]
X-ClientProxiedBy: EX19D043UWC004.ant.amazon.com (10.13.139.206) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1771788032; x=1803324032;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7AXFH+vuOnnn9PkWkiJdfT8gFe6PP/Z9KQnHfrVnI7M=;
 b=ZZg0ucmKT2toaqeYe8fWhVBGA4AJuvtwPCY0T/GgMXBctonwpdJYXdmo
 f/gppIQNKFy4lPM0sHPUNgRpdm5odXUfH3+zq9xl3qzn6tr1SRvWuDW8y
 9uv/npl3/Vdje+zdPDJlr3ma+UDt/vKEDuYJ1mQiTOSsMO0M/ACrQ/cOS
 I8J6RL9HTwE5zE4ONJI+P7PEzFajdVE7F9d6Ga0GoD/mb+RoyaLx6TEq2
 JxdOLYQQkq/u1tE7g5J6Od4Pum+UgPP9hhClkpBLLpcB+pNptmA3ExQTc
 98QxGi1MEeo+MogU60UeOyxslCBNNPOhfVv5N8bHx1G+Zs7AoYtCU6+DY
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=ZZg0ucmK
Subject: Re: [Intel-wired-lan] [PATCH net] drivers: net: ice: fix devlink
 parameters get without irdma
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [9.79 / 15.00];
	BLACKLIST_DMARC(6.00)[amazon.com:D:-];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[amazon.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,body];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dsahern@kernel.org,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:daniel.zahka@gmail.com,m:davem@davemloft.net,m:david.m.ertman@intel.com,m:edumazet@google.com,m:kuba@kernel.org,m:michal.swiatkowski@linux.intel.com,m:mustafa.ismail@intel.com,m:netdev@vger.kernel.org,m:nikolay@nvidia.com,m:pabeni@redhat.com,m:paul.greenwalt@intel.com,m:przemyslaw.kitszel@intel.com,m:shiraz.saleem@intel.com,m:tatyana.e.nikolova@intel.com,m:andrew@lunn.ch,m:danielzahka@gmail.com,s:lists@lfdr.de];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	FORGED_SENDER(0.00)[enjuk@amazon.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,gmail.com,davemloft.net,google.com,lists.osuosl.org,kernel.org,linux.intel.com,vger.kernel.org,nvidia.com,redhat.com];
	FROM_NEQ_ENVFROM(0.00)[enjuk@amazon.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_XOIP(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_NONE(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[11]
X-Rspamd-Queue-Id: D122E1702D5
X-Rspamd-Action: add header
X-Spam: Yes

On Sun, 22 Feb 2026 11:27:30 -0700, David Ahern wrote:

> On 2/13/26 1:48 AM, Nikolay Aleksandrov wrote:
> > If CONFIG_IRDMA isn't enabled but there are ice NICs in the system, the
> > driver will prevent full devlink dev param show dump because its rdma get
> > callbacks return ENODEV and stop the dump. For example:
> >  $ devlink dev param show
> >  pci/0000:82:00.0:
> >    name msix_vec_per_pf_max type generic
> >      values:
> >        cmode driverinit value 2
> >    name msix_vec_per_pf_min type generic
> >      values:
> >        cmode driverinit value 2
> >  kernel answers: No such device
> > 
> > Returning EOPNOTSUPP allows the dump to continue so we can see all devices'
> > devlink parameters.
> > 
> > Fixes: c24a65b6a27c ("iidc/ice/irdma: Update IDC to support multiple consumers")
> > Signed-off-by: Nikolay Aleksandrov <nikolay@nvidia.com>
> > ---
> >  drivers/net/ethernet/intel/ice/devlink/devlink.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> 
> This patch was marked as awaiting upstream; I wanted to confirm it is in
> Intel's queue or was the expectation for netdev maintainer's to pick it up?

I see it's in Intel's queue.

https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git/log/?h=dev-queue
