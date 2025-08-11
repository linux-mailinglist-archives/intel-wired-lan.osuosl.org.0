Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F401B21027
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Aug 2025 17:48:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1A58F412E3;
	Mon, 11 Aug 2025 15:48:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TJLCjobgCTlT; Mon, 11 Aug 2025 15:48:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 894A7414FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754927318;
	bh=SQokX4qKpZBZKKFR7Bx+oze8RVAejE94ceUD0Ety1Rk=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XAMCHQAjLgN+AZRdfy+p9O/xcWyZS5OzysmHYXXh/jkoQ2IDIS4VkNj58qoIQgUrI
	 XasvGPOYsmjrphCLi9SQiZTc5jpsq7vZ/TbmBk34HbOwjLulFwQhPG8cpIPjBsqwWu
	 BREBi0PY/sjbAIdestei70s9hhTQVavnsmKoPYtjwHzhopC3XTeXQCdxGFtfqBzSPa
	 vS6lAjdqI8peotSvYrIrNQjY19TLNUJhAPQ0qsmWihFSOHYQlyOw8S7V6rV+UeI3Lf
	 cZn0ejBjM8gfBV3W5rDl+e9kKzzwep/A3IbXBaS6GRRmFFZy6fNkuKtbpaBbSkpEPN
	 w6G7CpR7PwxHQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 894A7414FB;
	Mon, 11 Aug 2025 15:48:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id EB3FD154
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 15:48:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D1266414FB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 15:48:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8VBHnr1Q413j for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Aug 2025 15:48:36 +0000 (UTC)
X-Greylist: delayed 412 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 11 Aug 2025 15:48:36 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4DBED4141A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4DBED4141A
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4DBED4141A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 15:48:36 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 356DB43451;
 Mon, 11 Aug 2025 15:41:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA879C4CEED;
 Mon, 11 Aug 2025 15:41:43 +0000 (UTC)
Date: Mon, 11 Aug 2025 08:41:42 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Cc: Andrew Lunn <andrew@lunn.ch>, Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, intel-wired-lan@lists.osuosl.org, Donald
 Hunter <donald.hunter@gmail.com>, Carolina Jubran <cjubran@nvidia.com>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org
Message-ID: <20250811084142.459a9a75@kernel.org>
In-Reply-To: <ec9e7da6-30f0-40aa-8cb7-bfa0ff814126@linux.dev>
References: <20250807155924.2272507-1-vadfed@meta.com>
 <20250808131522.0dc26de4@kernel.org>
 <ec9e7da6-30f0-40aa-8cb7-bfa0ff814126@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1754926904;
 bh=F5bH9wCajdZ8aY2x4pPk3brOqFaahwF3R3J0oiktE78=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=XhoioDC6njhfhtCdQh5Trj5t3/sonMmMfi9zz469Ck8UHeiWwy9z+BVdj6dx4oC2n
 WVIGrbFAeWjrUp1UTXyuAbEgHJqUY+7wuyC1t5L+Fi7sAtkzstuQVdRWwwI/NfkKrD
 8ujQ03SHM81qkx469j1HANCqnx8aDp7cn1ZDjHQFHH2K14VIeQ70Y6QAJ/GQgjcKJU
 QdYOTliB4P8dOLiXmAgJraigUw/OQ0/jIsk/k7kXRzfyYNfFqr7jpc2YzNPduijqA/
 rRhF1bVlgUE8iKH34HHoODxWt7EWGfFA8Fq8P0enzVYnSODd0T3JHc36Qz2knoz/9s
 jjbm9j2eMQDRg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=XhoioDC6
Subject: Re: [Intel-wired-lan] [RFC PATCH v4] ethtool: add FEC bins
 histogramm report
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

On Sun, 10 Aug 2025 11:52:55 +0100 Vadim Fedorenko wrote:
> > TBH I'm a bit unsure if this is really worth breaking out into
> > individual nla_puts(). We generally recommend that, but here it's
> > an array of simple ints.. maybe we're better of with a binary / C
> > array of u64. Like the existing FEC stats but without also folding
> > the total value into index 0.  
> 
> Well, the current implementation is straight forward. Do you propose to
> have drivers fill in the amount of lanes they have histogram for, or
> should we always put array of ETHTOOL_MAX_LANES values and let
> user-space to figure out what to show?

Similar logic to what you have, you can move the put outside of the
loop, let the loop break or exit, and then @j will tell you how many
entries to fill..
