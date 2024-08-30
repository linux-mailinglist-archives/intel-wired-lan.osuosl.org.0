Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F5C965523
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Aug 2024 04:11:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7D7AC42391;
	Fri, 30 Aug 2024 02:11:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C6pSegFlB85W; Fri, 30 Aug 2024 02:11:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9F9094238E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724983883;
	bh=SGpflhSM0PqeMjFcYhWTV3QFG/SC8VjjdxKTBNzYgsw=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GozT7a8oGunzhFqz8jh3KdJ8iOBGZ0kRrXH61KKUmnIMJ8zPe76FEq3R4qRCm3/x5
	 L6pGVQqsnZ0BXI6zkbNEh1Q1BvXO5rBLs+FEkQR5ID8KJzDJ9xhTwyGNaJ77qJ7/YL
	 nm72Alob8uRyckJ8v0nQRuI9tX1I8NnqS4+MQ1/XOecZOU2RGSqVXqJ0mBKfIRtx95
	 Go6aosoJrROy/qoOgDXyUvyVB+B0lJ0/Mw86sO28NiUkpMcHvEiRRfjT+oTion+CNB
	 rBaxsj3vuSNfsnDUtHVr9y7nO/5usqyNrd3Arl3B1WaAPfJutqp36t8TyOmOt0f5+R
	 r8SO89CyOLOAw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9F9094238E;
	Fri, 30 Aug 2024 02:11:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 061041BF344
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 02:11:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F407140280
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 02:11:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UhDqGXXIsyuT for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Aug 2024 02:11:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2050C40120
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2050C40120
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2050C40120
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 02:11:19 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 9C2CFA43569;
 Fri, 30 Aug 2024 02:11:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51B23C4CEC1;
 Fri, 30 Aug 2024 02:11:17 +0000 (UTC)
Date: Thu, 29 Aug 2024 19:11:16 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <20240829191116.2af4da33@kernel.org>
In-Reply-To: <2ddedcd3f4dd4d9986c3a3bc995a2c410c20440e.1724944117.git.pabeni@redhat.com>
References: <cover.1724944116.git.pabeni@redhat.com>
 <2ddedcd3f4dd4d9986c3a3bc995a2c410c20440e.1724944117.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1724983878;
 bh=CLF8/Dnt1U3GQdOjQN5yCqvSSG1ers65+eLXYDU8VsU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=hYRmVEbNI5jLFjY33pYMvVm4/QmXjzFxjeIs9E9bXEUDWFYXBEKT0vGFxO0w5dZ+N
 OztTzK4rCPQ0O+j9bVqgs7pyDnivTEUCojaLozM7i22YK8G/Ao6IX4HwHduBEjI2nJ
 Jzr0/V0/ju7fqIHg+EbXQXhNRVp+ZRhAN5WSYUNgDhXrw5//MewgwphO9eAYYx7Th6
 v4nhfMu1f0Nz+UjmOBHP5PcDC8meDaLV3opAv5rh0ErMw/FDimYKjZxDf9kg+ws1Mj
 f4EEO1ZG2k6bMEgx+63eYXpYO8o21U4yAfgSLaDiLW3rKxFENmeS0yjDIQpP96MAbK
 ck4ltRXarooLw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=hYRmVEbN
Subject: Re: [Intel-wired-lan] [PATCH v5 net-next 07/12] net: shaper:
 implement introspection support
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
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Jamal Hadi Salim <jhs@mojatatu.com>,
 edumazet@google.com, Madhu Chittim <madhu.chittim@intel.com>,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Donald Hunter <donald.hunter@gmail.com>, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com, Sunil Kovvuri Goutham <sgoutham@marvell.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 29 Aug 2024 17:17:00 +0200 Paolo Abeni wrote:
> The netlink op is a simple wrapper around the device callback.
> 
> Extend the existing fetch_dev() helper adding an attribute argument
> for the requested device. Reuse such helper in the newly implemented
> operation.


It's not just for introspection, it's also for the core to do error
checking. Does something prevent user from installing a PPS shaper 
in iavf right now ?
