Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BF9859C5B44
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Nov 2024 16:05:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D09244034D;
	Tue, 12 Nov 2024 15:04:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X1VvLgC35yKc; Tue, 12 Nov 2024 15:04:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D0D0401C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731423897;
	bh=UrBuqAaec/SnMfI6WvyiJtuG1+qWFnWqIsoVsZGcooY=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SzpukO+XpQtVxaAAQ4xvyZH6soFJbtTpzeQ1rfEfu4oiEohZbIUEiJWTcAfXoqU4z
	 Q3rdG+pccRGfaRnpIQ5WbNho1zvM00gY4GFZ/1szQ4WoZ1f2Cp5mUw9FjAWwW2d8m1
	 Jma8cBLz2OaMOWMU1uW2kbG7BfsCX7gxOnM0JC401Ux8o6X4nICI38KDBFT35Z0u6g
	 7NZYy+dYEL/seLFE35pIWCSb7xcDwYhcp0FybUVTrWYn0BZNDaJw611ZAEg/YUpan6
	 nQujdsq6vGuwyt3VpLk8VwDspJ69lMFNuucUb8T9UrUYLlVJCNVs5buLyiMmT+WPf0
	 eTVaqIEWw9WuQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1D0D0401C7;
	Tue, 12 Nov 2024 15:04:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id E88B1E0D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 15:04:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C5135401C7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 15:04:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RD7mke0aKxTK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Nov 2024 15:04:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EB65E40189
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EB65E40189
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EB65E40189
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 15:04:53 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 42588A41D49;
 Tue, 12 Nov 2024 15:02:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67BD9C4CECD;
 Tue, 12 Nov 2024 15:04:51 +0000 (UTC)
Date: Tue, 12 Nov 2024 07:04:50 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>, Jacob Keller
 <jacob.e.keller@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "Wander Lairson Costa" <wander@redhat.com>, <tglx@linutronix.de>, Andrew
 Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Clark
 Williams <clrkwllms@kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Simon Horman <horms@kernel.org>, "moderated list:INTEL ETHERNET DRIVERS"
 <intel-wired-lan@lists.osuosl.org>, "open list:NETWORKING DRIVERS"
 <netdev@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, "open
 list:Real-time Linux (PREEMPT_RT):Keyword:PREEMPT_RT"
 <linux-rt-devel@lists.linux.dev>
Message-ID: <20241112070450.5917c986@kernel.org>
In-Reply-To: <2e6cea97-0ebf-4767-b014-680a0502e1f9@intel.com>
References: <20241106111427.7272-1-wander@redhat.com>
 <1b0ecd28-8a59-4f06-b03e-45821143454d@intel.com>
 <20241108122829.Dsax0PwL@linutronix.de>
 <9f3fe7f3-9309-441c-a2c8-4ee8ad51550d@intel.com>
 <20241111125345.T10WlDUG@linutronix.de>
 <2e6cea97-0ebf-4767-b014-680a0502e1f9@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1731423892;
 bh=UrBuqAaec/SnMfI6WvyiJtuG1+qWFnWqIsoVsZGcooY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Gis4+V27dEgIGMLFITeRvtwzqx0/dtMnpbKG+qjCb40btNZWCY0HKm1bLUUcGVq4p
 d05Gbxg8GRSGYM8AyAxJEhMLaqLEIbqaBTYmyE39N0AEM/mQTdEkOlQLFMWNCDYs1X
 1Ct/SdTyrNWRyasy7/LhYD7OVy9z6818e5fYiiKS029IQMXnj2ed4iAjJgr6XDqgCQ
 xzwecv0hgJ5eQm3SnWI3n3izI4DiN3LLv3XtLHgNYcST03U21aaOEk3Ts/5bX/97Tz
 5hZDFDNhaSy8aX+S78kDC+GtxbYuH4OuzQyJadosArHCmVWeMba2cg6iRB+xXhk08v
 LopIUEA3M4TSw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Gis4+V27
Subject: Re: [Intel-wired-lan] [PATCH v2 1/4] Revert "igb: Disable threaded
 IRQ for igb_msix_other"
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

On Tue, 12 Nov 2024 15:52:34 +0100 Przemek Kitszel wrote:
> Acked-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Do you want us to take this directly?
To be clear - we only treat an ack from the maintainer who usually
sends us patches as implicit "please take this directly".
