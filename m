Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C47AC0D30
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 15:48:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 919C5419E2;
	Thu, 22 May 2025 13:48:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g3o3m6qX81fF; Thu, 22 May 2025 13:48:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C8063419C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747921724;
	bh=VBLj7J43+So+I8xDAgHLIdQIWBeYy1lB0DB9trhyeWM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=J88wPzasX+ZEeYayu0riga6CtxbDyNOtQlJP5o41vAx19CivgUYqpXNt0Xl4hCXcI
	 34M5v6uFvZXRtmcDub7enjYPQwUvdm+8TZSgLaUPlVW+rwO0Y5YsYv+WmX67racIZ2
	 5d/ToP2rnn3KPkbehXFj1N9Y7Z/gSaqO93IKst3ggF0HCQBZ58iZurnqrS98MG2HAp
	 b+sqxSpmOD3I0pC5lbLzgnbTsI5zQt3rX9VxfG4bZix631YrNdQVHKXp+fWWFlldwi
	 lF3QhVwywjAI0p57Zt+UuhDAlxAHGYriILDuepKcEXxFIZibl0F/c79A0gOl8ZkvYM
	 0LI3uOJkpizmg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C8063419C8;
	Thu, 22 May 2025 13:48:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id DBD1B69
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 13:48:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CE11883E1F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 13:48:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6vE8bD8cCbgm for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 May 2025 13:48:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2788583DA7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2788583DA7
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2788583DA7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 13:48:42 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id AEE255C46C6;
 Thu, 22 May 2025 13:46:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E036C4CEE4;
 Thu, 22 May 2025 13:48:39 +0000 (UTC)
Date: Thu, 22 May 2025 14:48:37 +0100
From: Simon Horman <horms@kernel.org>
To: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20250522134837.GG365796@horms.kernel.org>
References: <20250521142332.449045-1-dawid.osuchowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250521142332.449045-1-dawid.osuchowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747921720;
 bh=xPVPJPDU9wpwhb6wXhxg8TZYODtzniGKx7XYTwgsd3U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dmc/chWXnA2FQb2GzXOWaNgCeC+APRSsP754PvPCQFbZXnbbGrwOrLvtVvcUSQ5XF
 Q3Y77kOfNt3LwXSvaxHJAWOZCRFXlju9ZUznRb8OmRvCRHUYYMbuWcgi4zSydtShtO
 hF9vhkTbNMe7V2eVi/NZE7/u4q0FHnoytI6KdNBtFfA8/7gFeANup7H3B+xvGL+CnB
 rclAha70yCY4pjOytYHNbi3w2PMN+W1xHTv3/WnVqI5fD4GxEBsIF9hajmFk65MLZ9
 uglEkuJRq5urgvGFXGt9pXHntg3VMEMbz1bx3LYWL/QUkxAM5DZ4OOyCRI4l2GO5Wg
 zusPPFA90nfvQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=dmc/chWX
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] i40e: add link_down_events
 statistic
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

On Wed, May 21, 2025 at 04:23:32PM +0200, Dawid Osuchowski wrote:
> Introduce a link_down_events counter to the i40e driver, incremented
> each time the link transitions from up to down.
> This counter can help diagnose issues related to link stability,
> such as port flapping or unexpected link drops.
> 
> The value is exposed via ethtool's get_link_ext_stats() interface.
> 
> Co-developed-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
> Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
> ---
> Based on series [1] from Martyna where this was implemented for ixgbe
> and ice drivers.
> 
> [1] https://lore.kernel.org/netdev/20250515105011.1310692-1-martyna.szapar-mudlaw@linux.intel.com/

Reviewed-by: Simon Horman <horms@kernel.org>

