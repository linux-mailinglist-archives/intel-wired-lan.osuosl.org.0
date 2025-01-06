Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA0DA02353
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Jan 2025 11:44:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DDB5B404CC;
	Mon,  6 Jan 2025 10:44:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9GhpFDnuxX5T; Mon,  6 Jan 2025 10:44:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BBDEC4049F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736160293;
	bh=SfwtnNJC4GWPAi9ycf6yP1XKH6caklV70mz2yVDUcxY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=z9wMv41taZ2mo2QWnymBnvglWEYb78xHXe9u6jkunynEjrOddXCbEuFDWA3b+KKRy
	 Z/Gj1lGKhmV+5/wywD+hCVhlAeS/G0mzsLCvLAfZri3fR7u+ZWWYHfkbzUxIoDhcRW
	 PQrM8NADh0NyxZ/5FA9f3BHEsbVD0/7d56PCqlkYo4F4c5e10aobDSymxg2w5aWzc3
	 +5aFJWCvsmXnUS2N7d55GE6vyNU7nqqOKKy1pvmE+H8PsFedV3DXfwxvvnb/Bpnjw4
	 LNYCgu2YZ/JdB/2xQAODJtxlJFdq8Ux7+R6NZrF/dj8ldQZcg3H3Bkc+zyhvhdFyO7
	 zRipbxONuINJg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BBDEC4049F;
	Mon,  6 Jan 2025 10:44:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C326FD92
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 10:44:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A763740352
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 10:44:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pmT2uAsim9mp for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jan 2025 10:44:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A64BD40362
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A64BD40362
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A64BD40362
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 10:44:50 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id B5C06A41444;
 Mon,  6 Jan 2025 10:43:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB27BC4CEE0;
 Mon,  6 Jan 2025 10:44:46 +0000 (UTC)
Date: Mon, 6 Jan 2025 10:44:44 +0000
From: Simon Horman <horms@kernel.org>
To: Emil Tantilov <emil.s.tantilov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 larysa.zaremba@intel.com, decot@google.com, willemb@google.com,
 anthony.l.nguyen@intel.com, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 aleksander.lobakin@intel.com
Message-ID: <20250106104444.GB4068@kernel.org>
References: <20241220020932.32545-1-emil.s.tantilov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241220020932.32545-1-emil.s.tantilov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1736160289;
 bh=AWEemNc0raKKH2Kwou+f+1lTew6hT8lUQDDjqNXpkYU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=abI/2IcLyUSdp0uLJFdfrPKPqudyuCYfQ8X6peVfNIrIif9rlaUa7do2SrtSpDuQw
 VdVFMNfsb+0bfqSyfziDL6Pdk6qRuL6gIV9yCPoMV6QvyC/tb5Sko15cYe2Lhu1P0i
 yJutXWyXaFRwQhLQ5zNbWakgbV75wgZLdQi/gw06prOr79RGH8CYs/wrOlFdZmX55x
 MczEgi3g0+lo/5OYsxTXKiR+rkEoNYVG4o3X3ns0wgjI0K0WA58rs0MnIPDX5hJiPU
 K/OHEFINy7iSYm6CqkchLdoIN25A04DG3TyfW8MfQonoZ/jnLI/ZOmauhc5Fz7MZe9
 rY+yG9R9iz1mg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=abI/2IcL
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] idpf: fix transaction
 timeouts on reset
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

On Thu, Dec 19, 2024 at 06:09:32PM -0800, Emil Tantilov wrote:
> Restore the call to idpf_vc_xn_shutdown() at the beginning of
> idpf_vc_core_deinit() provided the function is not called on remove.
> In the reset path the mailbox is destroyed, leading to all transactions
> timing out.
> 
> Fixes: 09d0fb5cb30e ("idpf: deinit virtchnl transaction manager after vport and vectors")
> Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> ---
> Changelog:
> v2:
> - Assigned the current state of REMOVE_IN_PROG flag to a boolean
>   variable, to be checked instead of reading the flag twice.
> - Updated the description to clarify the reason for the timeouts on
>   reset is due to the mailbox being destroyed.
> 
> v1:
> https://lore.kernel.org/intel-wired-lan/20241218014417.3786-1-emil.s.tantilov@intel.com/
> 
> Testing hints:
> echo 1 > /sys/class/net/<netif>/device/reset

Thanks for the update,

Reviewed-by: Simon Horman <horms@kernel.org>

