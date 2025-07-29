Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F7EB15214
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Jul 2025 19:31:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 87D58610B4;
	Tue, 29 Jul 2025 17:31:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MFfC2IRJAA5G; Tue, 29 Jul 2025 17:31:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EB0DA610A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753810292;
	bh=aKSxifxHJIONDr0VjJJF1bsS+31GhF1VK0dWldW+/t4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2bCPGR8YNUevRvMPZb0m5wkRd5vBL8zYMQQvcgP5Ik3zXXjf6f3uSjMwAOQGO1flp
	 y3d/IJPtJBbmoocdJrvO4Qkud1GQI4Ip2WINZduqSGcup14RK8AUp0HUWoDDfGANG3
	 hhVSUjGxy6z88RVmtSJDtQijbG/gEzGrhMMzUGdK3eTKxaiU/GpT5xenJ6+WQ7AhQA
	 QQ6UbEaW67spBTzXg8xCVVIqD1kScTs1THGYR3ffmvxxbqH5zvOhWhVUUZQJlq4jAW
	 EyIf32QLRBJxLSVqd+9bpLtuN4EdnfVxgpfDH0WPc5Aq7ZVtgNvivSvjqm4aEuIIcW
	 oLKH2ZfVeJOHg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EB0DA610A6;
	Tue, 29 Jul 2025 17:31:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C07A613D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jul 2025 17:31:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B269561085
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jul 2025 17:31:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BdGonjIX5YWo for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Jul 2025 17:31:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CF6DC60F84
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CF6DC60F84
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CF6DC60F84
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jul 2025 17:31:29 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1ugoAa-003DW2-PA; Tue, 29 Jul 2025 19:31:20 +0200
Date: Tue, 29 Jul 2025 19:31:20 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Cc: Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>,
 Tariq Toukan <tariqt@nvidia.com>, Gal Pressman <gal@nvidia.com>,
 intel-wired-lan@lists.osuosl.org, Donald Hunter <donald.hunter@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, netdev@vger.kernel.org
Message-ID: <c52af63b-1350-4574-874e-7d6c41bc615d@lunn.ch>
References: <20250729102354.771859-1-vadfed@meta.com>
 <982c780a-1ff1-4d79-9104-c61605c7e802@lunn.ch>
 <1a7f0aa0-47ae-4936-9e55-576cdf71f4cc@linux.dev>
 <9c1c8db9-b283-4097-bb3f-db4a295de2a5@lunn.ch>
 <4270ff14-06cd-4a78-afe7-1aa5f254ebb6@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4270ff14-06cd-4a78-afe7-1aa5f254ebb6@linux.dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=aKSxifxHJIONDr0VjJJF1bsS+31GhF1VK0dWldW+/t4=; b=aGvb/i+J7eQlpUuA5uH9y3LVox
 /Pkdq0soFJwPFlloCPNVy6qQbb8d1+SS/1r3kTbncqkcIENqPABuZqVl9EFrbg0ESJH+tWRt+4pu+
 aBJwkXm3EFOsVLMoGINPaiD5KWIyVrXzHFOMayInCmr1E9ph6gi1Gj7EUbZ3+w5q9JQw=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=aGvb/i+J
Subject: Re: [Intel-wired-lan] [RFC PATCH] ethtool: add FEC bins histogramm
 report
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

> The only one bin will have negative value is the one to signal the end
> of the list of the bins, which is not actually put into netlink message.
> It actually better to change spec to have unsigned values, I believe.

Can any of these NICs send runt packets? Can any send packets without
an ethernet header and FCS?

Seems to me, the bin (0,0) is meaningless, so can could be considered
the end marker. You then have unsigned everywhere, keeping it KISS.

	Andrew
