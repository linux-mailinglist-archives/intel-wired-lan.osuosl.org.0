Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FCD5908A4B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jun 2024 12:40:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 45D45843EA;
	Fri, 14 Jun 2024 10:40:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ltgRQ7UZbYnP; Fri, 14 Jun 2024 10:40:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2527B843E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718361645;
	bh=qDg4O3H8RlI5ZS4Q279g5o/jrSo7vnXb099jBVZYfs4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cRhx2pvPSjU9tKDQPaz2UOlSZ+ETvjthNfbVoCY2mRMRs9h9JWX8dmzuNwXPNTZcy
	 xdJOO0uq7ja+L4xJAQZLc+S2x1pk743v93alVSYP3Q2s9UrdiuIeZ3+TaKFrTgy+4w
	 OSmFY6U8YVj4GZrmFB5Orvt0TElO/rufXSPV9mWg/1TzAIpZHE97ubG9DuB55FsApq
	 iTq2VM3VYy7xzg86zFGgCyWUe9bS5PndD1pFfzb/Sp6H1aHcuDSsq1vQd5Qm5DZLfN
	 ZYXu+lhbtSFQssnPBQt59KYCeDGQkjs1Qkcl0O/Woo4JcQivhfRCQKQYlwR0K9ufmW
	 mk58FaOjOB6RA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2527B843E7;
	Fri, 14 Jun 2024 10:40:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A83E01BF33E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 10:40:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 94BB3410EC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 10:40:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zdXi_s5G5gUd for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jun 2024 10:40:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CC139409C5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CC139409C5
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CC139409C5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 10:40:42 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 1E0BB61F0E;
 Fri, 14 Jun 2024 10:40:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 176BAC2BD10;
 Fri, 14 Jun 2024 10:40:39 +0000 (UTC)
Date: Fri, 14 Jun 2024 11:40:37 +0100
From: Simon Horman <horms@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20240614104037.GE8447@kernel.org>
References: <20240606224701.359706-1-jesse.brandeburg@intel.com>
 <20240606224701.359706-3-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240606224701.359706-3-jesse.brandeburg@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1718361641;
 bh=ub95+rc8EQDLycc7ngH9VSDLKcfdT6+T1cS4ojnuVkM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gzC8a44RKY3IGTRB0xApvqaNQhw+E7jPoiyxFdzAs6FFfzHrLzQVmN2OThroNkq4B
 is8PU/3GhB80W8g6jbbYB/jazHfBkCdx73X84/CwEGKCSy6ZkKrNwGKocUitnseHBU
 iMx+ipjNgn+E5cK4onCB2DhnQYmR1kR0r5EpBCs+0bNTLUSEBA5VkuJ8nDFKTp6Ls2
 CH+1dd37Si+c9wZ1lYFbVFDqMNEKfkIGxg7GE/Zlf5X48N16W1kkTTZlg+mCd84w8x
 vrpo/nYhPsK0fNP6ni0FVKx4Vov4HorFZD1luK14JsRVLhGwVvSfiHKtwDKbak7XMD
 +K2Ra1Hngrq9w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=gzC8a44R
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/5] ice: implement
 ethtool standard stats
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
Cc: linux-doc@vger.kernel.org, netdev@vger.kernel.org, corbet@lwn.net,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jun 06, 2024 at 03:46:56PM -0700, Jesse Brandeburg wrote:
> Add support for MAC/pause/RMON stats. This enables reporting hardware
> statistics in a common way via:
> 
> ethtool -S eth0 --all-groups
> and
> ethtool --include-statistics --show-pause eth0
> 
> While doing so, add support for one new stat, receive length error
> (RLEC), which is extremely unlikely to happen since most L2 frames have
> a type/length field specifying a "type", and raw ethernet frames aren't
> used much any longer.
> 
> NOTE: I didn't implement Ctrl aka control frame stats because the
> hardware doesn't seem to implement support.
> 
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Jakub Kicinski <kuba@kernel.org>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

