Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A796A8AAE60
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Apr 2024 14:26:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6080A8218D;
	Fri, 19 Apr 2024 12:26:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m-nM0C7sUQio; Fri, 19 Apr 2024 12:26:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9977582192
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713529567;
	bh=DgmsLIH3Q6ggnVrR+r+LrWBb8lm/zGJY/FVQaMN0Dic=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ymbq+6uuU5ZX3eO2zg/qtt4mEy9Yza/6x0YvGyPPxqTSa+s3Kj3Sxvm1Tdlpc2BMM
	 gQt9WD67qev74JSZUSnk3JrVuDC8kBEpKHkgFEHUbTw3DZ2FHbbpr33uiES7YmSxij
	 E5pEEB3SfBCxJsK639adBP3Qrw6aTIBWLBGlPTXhbFHDH4Cw6sGB9NxigEQe+okfRv
	 mOsSp9maJdaZeTDNtSKuplWqv34QC2MHFxHt4mJEaXrvjnWn5tzzf661VL539cAQxH
	 lm9LWwpwKqmypbetIot/FHg44c3whGYRre4wooLAzgNwRRmPi2+lgOck5MuIB9Lgb7
	 VpfNVNkSUwUYQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9977582192;
	Fri, 19 Apr 2024 12:26:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9F39E1BF308
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 12:26:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 94E408217B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 12:26:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sBcruxux4uPK for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Apr 2024 12:26:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3296E82171
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3296E82171
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3296E82171
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 12:26:03 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 5439DCE19D4;
 Fri, 19 Apr 2024 12:25:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48C05C072AA;
 Fri, 19 Apr 2024 12:25:56 +0000 (UTC)
Date: Fri, 19 Apr 2024 13:25:53 +0100
From: Simon Horman <horms@kernel.org>
To: =?utf-8?Q?Asbj=C3=B8rn_Sloth_T=C3=B8nnesen?= <ast@fiberby.net>
Message-ID: <20240419122553.GX3975545@kernel.org>
References: <20240416144331.15336-1-ast@fiberby.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240416144331.15336-1-ast@fiberby.net>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1713529558;
 bh=aNT6Y/Xt7MC+J2M7UeIANbRkSx6dQV+zx46InVO37JU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bVOnq3iHBHsZyHnICpIF8td3agRFAUFGhEF/b+DyrwF+BuU9Moz4FttY6DSXZc2rS
 okYaqIeb/MmMKrZgtTAoEFDjWFA2by7oqhTVCWtfYDpBYh4Zl7X9zryV+sGNLiBQCl
 KGg9DrcfD2yCTONwtr9Mvqv1Zp9OFEdgANS3QCDtH1Zw+pK9GpKCGhHE2ZI6S1Ggtf
 8meMKrFLtaKhK0i2X/1PRiURZaAtTZ9r7Ew8/RZB77WHgL4PzlDt3ExTGJzEKOboSs
 FtPQxllyRVMaez6RaoI+Li/7lgjeMx/d1FSRxMHkvUCevJfK7ujMv1bd8MSRh15x9Y
 neugzmu1b/ZRQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=bVOnq3iH
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: flower: validate
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

On Tue, Apr 16, 2024 at 02:43:30PM +0000, Asbjørn Sloth Tønnesen wrote:
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

