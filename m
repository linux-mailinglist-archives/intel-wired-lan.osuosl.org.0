Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E366F9483CE
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Aug 2024 23:02:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EC522405FC;
	Mon,  5 Aug 2024 21:01:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CtNZSnGdzExa; Mon,  5 Aug 2024 21:01:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1C83C402C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722891719;
	bh=jAHNzyJpueYa5jrZ1Rl0+lmFg/9zCFdgJcZew0FPnCc=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YT1I2HorJmrVKZhI4qVugGXSOwrti8jukM8iI0MJX6HFizFtWtIWxRdjfkoX5vH9A
	 b1fhmJ0HH0d9gMkqkRfBdpM85axsBUuxXhzBsxlrMJLd3Ah6KfGBdaJuQsFmVCMJVv
	 XYTPtmNe6a9qP5uZe0E8aZMhdPpX6PK1G7hiXMBbZFTbtPwEgu3ajEHFG9LUM6YULe
	 D7I6hm4pvOvVRuuwdoKw2Y07oM5kPQDDiqAz9+rOOSN3o7TWitCs75b9nDhwwOPc91
	 1kzJXdQgEb3MxsDKelhC88vFwgoFYzu0Bqq3AwXXBHeDALc3EaXMHR6lQcqLxeqnSr
	 asnRqqGRZRxhw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1C83C402C3;
	Mon,  5 Aug 2024 21:01:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 96DE21BF335
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2024 21:01:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8FC7B4017D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2024 21:01:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Kn5eC9PEbaQG for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Aug 2024 21:01:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8D4B54015A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8D4B54015A
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8D4B54015A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Aug 2024 21:01:54 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 5A892CE0B66;
 Mon,  5 Aug 2024 21:01:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 655C7C32782;
 Mon,  5 Aug 2024 21:01:50 +0000 (UTC)
Date: Mon, 5 Aug 2024 14:01:49 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <20240805140149.7a184ca6@kernel.org>
In-Reply-To: <20240805124651.125761-1-wojciech.drewek@intel.com>
References: <20240805124651.125761-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1722891710;
 bh=KE4D7BaqTSe/EOV15sIqsEKbHrGf19aKqboJTjsfYuI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=CuwLnjcLR7NC9HoMe3q1j2VWVoTyYCFLe7o6vPOdSbdSKtaCWm7KfYUzOuegkNzF2
 e196K9gn48CR+N7Q97eMLjt47HSrLaDe+9YqwUMNVcnkygR7XOvvBu2IiKNJly6fK8
 XPdrM7BZdCsJdcco6pcqxD+tc0uYIPaH2e2cOYyM+d427ZL3INBLKC0cKWQM1pZ+WQ
 lfcj1NzrJDiRRJZW1/R6/+wZrnEn/6mH5PY3FQk21uDN3I3oj2KUCQz3ugDjgBc3z0
 YsNucqh/tibsljQWQxFjdTaTt9JVxQipgpgKFtWECE3/TgcjV1TEqSu7qfgY2KG4Fo
 k4ohVEZ4GNKUQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=CuwLnjcL
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Implement ethtool
 reset support
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
Cc: netdev@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 horms@kernel.org, przemyslaw.kitszel@intel.com,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon,  5 Aug 2024 14:46:51 +0200 Wojciech Drewek wrote:
> Enable ethtool reset support. Ethtool reset flags are mapped to the
> E810 reset type:
> PF reset:
>   $ ethtool --reset <ethX> irq dma filter offload
> CORE reset:
>   $ ethtool --reset <ethX> irq-shared dma-shared filter-shared \
>     offload-shared ram-shared
> GLOBAL reset:
>   $ ethtool --reset <ethX> irq-shared dma-shared filter-shared \
>     offload-shared mac-shared phy-shared ram-shared
> 
> Calling the same set of flags as in PF reset case on port representor
> triggers VF reset.

Acked-by: Jakub Kicinski <kuba@kernel.org>

Thanks!
