Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F11B68AA223
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 20:39:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A79C4820CF;
	Thu, 18 Apr 2024 18:39:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EYD8sYVQR6uy; Thu, 18 Apr 2024 18:39:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E265E820E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713465582;
	bh=1NHcpbW6y3BZbQqvYCxr7LToRLFCWxCOy6hjQ/k0/AI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ddbaMZ7SZwMSl3GhOokq7wG2cfspIGfNztT9EwWLvWjaDtK3O9ZSps6DMKAxSLpPU
	 lzj5sRUCLimgf9prEwiBB7e8XryyVLrjM+G9ZtZuoRq24HSCJFr8mrxd2DPg0ftS34
	 G79QeIw5MqfN+R8DZV58kryx05VeVSD+aHn4bVSuaisBbuVWmh2s4l1GYIpjifewVB
	 WrOSKSeR2uLEwwuqGwWdg8hhlAsSFmMPCObvYsxmjTL5zo1GjAMXtDJQRkeUgdgIPZ
	 HyUeRvCt3O/dswWaAv8ZwWEIncsXYf1qlVL3maGfB5LzffpRhrMkQ07ceBHER0Q6yP
	 uVpZUuSd2Cxaw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E265E820E1;
	Thu, 18 Apr 2024 18:39:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5C76C1BF8A8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 18:39:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 53AD8820CB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 18:39:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7zKGkHCw70PG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 18:39:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9EE6581FE3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9EE6581FE3
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9EE6581FE3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 18:39:39 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id E3060CE17C1;
 Thu, 18 Apr 2024 18:39:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1694DC113CC;
 Thu, 18 Apr 2024 18:39:33 +0000 (UTC)
Date: Thu, 18 Apr 2024 19:39:32 +0100
From: Simon Horman <horms@kernel.org>
To: =?utf-8?Q?Asbj=C3=B8rn_Sloth_T=C3=B8nnesen?= <ast@fiberby.net>
Message-ID: <20240418183932.GP3975545@kernel.org>
References: <20240416144325.15319-1-ast@fiberby.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240416144325.15319-1-ast@fiberby.net>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1713465576;
 bh=x6lJS0NA7gStQdsKP4gCf9gYcQbe5tpoNsr9tDbm544=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WBDr+AbG2T3QYewowJUP6w7Kw+9SbCxxx+yj1PJLE9c4jjXcyBN5LLmcKydXEYJg3
 NkGlojFgq92aTTGDrOWUtXi3WoHOW1TKDYjNzc5BAFQ4fFTgyVMnrd62NMUur8qTWY
 rWtQHhN7Ky3uG6pDXYNFgDBaRuRYOfWL6fx0KxOcCezK6dbUK4Eee8JhS+qpmbBT+E
 ah0LQ3c0zPANMZtDsRd892PjKERv9ekVgypV1G/sC6Vab4FIcrLZe5R5GlGDNGC3U8
 IK1rZIyC0Zq/Mmzvive2UWnlRvfxRfcAsNvdMVmgFlZCmbPYhvQaV72f4Wtxc19Rp+
 hSIEOfVopz5Ww==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=WBDr+AbG
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] iavf: flower: validate
 control flags
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
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Apr 16, 2024 at 02:43:25PM +0000, Asbjørn Sloth Tønnesen wrote:
> This driver currently doesn't support any control flags.
> 
> Use flow_rule_has_control_flags() to check for control flags,
> such as can be set through `tc flower ... ip_flags frag`.
> 
> In case any control flags are masked, flow_rule_has_control_flags()
> sets a NL extended error message, and we return -EOPNOTSUPP.
> 
> Only compile-tested.
> 
> Signed-off-by: Asbjørn Sloth Tønnesen <ast@fiberby.net>

Reviewed-by: Simon Horman <horms@kernel.org>

