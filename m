Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D34927BE6A7
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Oct 2023 18:38:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E806C40A49;
	Mon,  9 Oct 2023 16:38:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E806C40A49
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696869486;
	bh=EKhJkjQ3MvAZ3WY2nojFOWNf2Hj1PSLUunbJavTt5SI=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dWLMukoJC4eSje60VWl+O/sEdsx7nBPR6OOh0b6qILGB0teY0N8eIXKx54xgHkvlK
	 9/2/70/CS9wqTU5n0s4Yt6MSTzgIQ2kr+AJOWCGOa3I0IflulT8//9UEX8Kuo+5671
	 IyqrtNlwqIm+GuT3+5Tl97Bs6EehdQuP+F+z+FhF+PKLLwOlx4j1NR+JpKac7Xwvnc
	 /q7yuN/3I4qIEtD/nkSP5o3mXdF4M/ppUXC0PXvDB/4mi6JQW6FnMH8paYfB8qLin/
	 xdisZRbzV9dRMOdS/u8yOgfZT3MCYcB56/NcmSK6SJmXO2d4OKB5oEc6KXc7J4dGvc
	 sFjSGhYeXVZCQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KECGi1M37FEw; Mon,  9 Oct 2023 16:38:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CBB2C40516;
	Mon,  9 Oct 2023 16:38:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CBB2C40516
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 167B91BF328
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Oct 2023 16:38:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EB39440516
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Oct 2023 16:38:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EB39440516
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ij9u8g3_J_w4 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Oct 2023 16:38:00 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4399A4050C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Oct 2023 16:38:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4399A4050C
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id EB5DACE1814;
 Mon,  9 Oct 2023 16:37:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B489DC433C8;
 Mon,  9 Oct 2023 16:37:56 +0000 (UTC)
Date: Mon, 9 Oct 2023 09:37:55 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <20231009093755.19f9ec9c@kernel.org>
In-Reply-To: <20231006224726.443836-3-ahmed.zaki@intel.com>
References: <20231006224726.443836-1-ahmed.zaki@intel.com>
 <20231006224726.443836-3-ahmed.zaki@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1696869477;
 bh=qlRswpJRFpIH5Iy48M5LSdwCmWTl90kKMCV2ExLF/EQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=jTDzFvnmUfShJHJDdWz4lW8h8tANOLQ6wB1tT/XTuNQdahE8Wo2p1rZtdVII1Czr0
 oGGza2C7Y8cka2FZhZZKl7Epeg7kvxcIZfNZz0UhRwfy44uW0hEKDT809cB0saglQ0
 UEa+8uoS4rTd5IqpriPgWvDkY2gbluW5/DOOkUT+hQ4lN6Vj4Gk7Wu/7EArtRu8C7t
 0BBRa3K8Ywy08/RWW8nsjFOQrLCe5jexNiliCE8GozheWa/SvTi/vJuNjWzi9HGLLW
 q2oL83ME5NYAc1bztvpFAOyceh4kbXBu1ykYc1rv7e+J8rCyVysAngspljKq563x5F
 z6RCwUChQBjgg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=jTDzFvnm
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 2/6] ice: fix
 ICE_AQ_VSI_Q_OPT_RSS_* register values
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
Cc: mkubecek@suse.cz, andrew@lunn.ch,
 Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 vladimir.oltean@nxp.com, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri,  6 Oct 2023 16:47:22 -0600 Ahmed Zaki wrote:
> Fixes: 7bd527aa174f ("ice: Adjust naming for inner VLAN operations")

If there is v3 please drop the Fixes tag.

If the mistake doesn't result in a triggerable bug there's no need 
to backport this and therefore no need to annotate the source of 
the problem. It will just confuse people into thinking it's a real
issue.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
