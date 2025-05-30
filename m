Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF0AAC85BD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 May 2025 02:49:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 37B5C41C83;
	Fri, 30 May 2025 00:49:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MLkNGkchiIdl; Fri, 30 May 2025 00:49:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9128441C80
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748566160;
	bh=8Bl71w9e4E6Qo6rtxryDax3y08LU+Nx9kHzGp2J0tEk=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fBAZU6i9bjM2+e2+m8F/qLxJFNEbMxRFPEbgG1njragjlagoYywcZ0F0jqA4XWDki
	 S8574dG361rv0Z91/WXQq26xfMeF+5558az4J5ZoOYfqeuhN7qXwn1BoESrKjbfVmp
	 9v5iErLxRPTpqTndsp64WZvw87eGhCIi3C/le2H0HDtHM7MBf+yFqRPFEJys60hO6N
	 ozw5JrrJJmc5Z7D2ueXIzIZOySq1EUkjmyXOCVY8aBtUsvcnmVRUX+V8Yyu1sbNGbJ
	 x92FC8XyPyFzVJWpKup6WW7smPgRFzBju3GW3rzADMJDsElRothWfMPreRU8c10t7E
	 SSp77t/z4VExg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9128441C80;
	Fri, 30 May 2025 00:49:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 47F46127
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 May 2025 00:49:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3995A84154
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 May 2025 00:49:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LTlAetjgUxeX for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 May 2025 00:49:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9269784152
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9269784152
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9269784152
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 May 2025 00:49:18 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 7A6AF60010;
 Fri, 30 May 2025 00:49:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D524C4CEE7;
 Fri, 30 May 2025 00:49:16 +0000 (UTC)
Date: Thu, 29 May 2025 17:49:14 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Cc: donald.hunter@gmail.com, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, horms@kernel.org, vadim.fedorenko@linux.dev,
 jiri@resnulli.us, anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, aleksandr.loktionov@intel.com, corbet@lwn.net,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 linux-doc@vger.kernel.org, Milena Olech <milena.olech@intel.com>
Message-ID: <20250529174914.179c1a34@kernel.org>
In-Reply-To: <20250523172650.1517164-2-arkadiusz.kubalewski@intel.com>
References: <20250523172650.1517164-1-arkadiusz.kubalewski@intel.com>
 <20250523172650.1517164-2-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1748566156;
 bh=8Bl71w9e4E6Qo6rtxryDax3y08LU+Nx9kHzGp2J0tEk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=G/1oTXcJfmrJCGtkYZhcTh5rIRqFiCd1irrdkiqp+Y9mefG/2ac0qSvw0Siko8rua
 nkWTbjqN2s0i9vCAzlyfo9hgqUVVST/i0soLWxMWm4yQjizSGOXk60eYH6ZwA9gJo6
 msmtC3+9MnNrYGQlmDNGHFCkGVQQGq8RIj0S5Yda/uLOFsYE213XkUgtCGmPje2a/i
 nJd9uNugpY/u0gfYejO2l96XH7tkBD1HPcsSg/Db/NMqAqynIl3Osi86IwwxKaHs/C
 O4wBg4PoQsi8v2s94WAEuZbI5Pi3nUZx9xV0csl4K6W3CCPBHPZxn0r9/DU8BDQdqh
 /pMKhYRPE4aHg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=G/1oTXcJ
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/3] dpll: add
 reference-sync netlink attribute
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

On Fri, 23 May 2025 19:26:48 +0200 Arkadiusz Kubalewski wrote:
> +The device may support the Reference SYNC feature, which allows the combination
> +of two inputs into a Reference SYNC pair. In this configuration, clock signals
> +from both inputs are used to synchronize the dpll device. The higher frequency
> +signal is utilized for the loop bandwidth of the DPLL, while the lower frequency
> +signal is used to syntonize the output signal of the DPLL device. This feature
> +enables the provision of a high-quality loop bandwidth signal from an external
> +source.

I'm uninitiated into the deeper arts of time sync, but to me this
sounds like a reference clock. Are you trying not to call it clock
because in time clock means a ticker, and this is an oscillator?

> +A capable input provides a list of inputs that can be paired to create a
> +Reference SYNC pair. To control this feature, the user must request a desired
> +state for a target pin: use ``DPLL_PIN_STATE_CONNECTED`` to enable or
> +``DPLL_PIN_STATE_DISCONNECTED`` to disable the feature. Only two pins can be
> +bound to form a Reference SYNC pair at any given time.

Mostly I got confused by the doc saying "Reference SYNC pair".
I was expecting that you'll have to provide 2 ref sync signals.
But IIUC the first signal is still the existing signal we lock
into, so the pair is of a reference sync + an input pin?
Not a pair of two reference syncs.

IOW my reading of the doc made me expect 2 pins to always be passed in
as ref sync, but the example from the cover letter shows only adding
one.
