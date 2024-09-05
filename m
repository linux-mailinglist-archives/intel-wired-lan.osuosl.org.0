Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9800A96CBE3
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Sep 2024 02:41:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E54C540BA8;
	Thu,  5 Sep 2024 00:41:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9Z4Ixh6caCAR; Thu,  5 Sep 2024 00:41:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 20BAB40B9B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725496861;
	bh=MaQbh4DYcFQhtyQ0MhnYx+5wZdKFTmqvdLwPvBFK0ec=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=joksytq/fOx+g8XUKg5W+54gXWjyesN0c5lPco9VpX5AFcjKSMDMkHEh5Mv2tU15s
	 aBUcJDXH+TJ86XsWusUU7dbDFKmy0KvZFT65k3DH/RterlRLqjIoTl20M3yslYykk9
	 CwSyew2jyPuJCO6q7CK+S0nIACI6876UsvT3jkE+BfC4wjv9376LERJ0xnxF+em7vi
	 RZPgZt889NafP3yjvcTEeanyP4EvF6cnakmdjUABKk4IgflWbaUOWafL1zpXbQs7An
	 dDTVbKMohNCXAz9PQ2KpZOQs5b9PNYUwmlL6AMxYv1x+eg9jyklHcpc5ZjM1od9ffb
	 koQ5CxTnMA0xg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 20BAB40B9B;
	Thu,  5 Sep 2024 00:41:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8E8801BF97A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 00:40:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8872181249
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 00:40:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gN9Q96Nd9Jth for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Sep 2024 00:40:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DDE9380D9C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DDE9380D9C
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DDE9380D9C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 00:40:57 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 1A4415C58A7;
 Thu,  5 Sep 2024 00:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE0D8C4CEC2;
 Thu,  5 Sep 2024 00:40:55 +0000 (UTC)
Date: Wed, 4 Sep 2024 17:40:55 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <20240904174055.6e2a95d7@kernel.org>
In-Reply-To: <b67adf159b412f7618df7b40fcdb1d8f94b3766f.1725457317.git.pabeni@redhat.com>
References: <cover.1725457317.git.pabeni@redhat.com>
 <b67adf159b412f7618df7b40fcdb1d8f94b3766f.1725457317.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1725496856;
 bh=LMvpfzvbJHjRNldRE72Zzb1I187lsNQdVHfTCGCfaT0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=gfa/idANISWni59Nc1GXCYL7wTpIPyeUmgeLFt3gc51kYLkJ8XKwCvlg7ihBPuFdl
 caQRQwKpG5hhbZ0Lu+E5uKmR3VzwCeLYSE/ugerhrRDriqqrukCLa7V0KgoAcAbuC/
 7L8/ofpb3ZiEJmMX+A1Cke2pEQXyE2DK1Vmb55uWEmiSV/HMcBPDsNiAdnsanFYRLc
 wLzoqW3Nk8AXTclkq00JmhWZo5Cd1EaJUMcRnYfCHo8OUf+OObgucRmBNinwywIIN6
 y/kea+NUKgKXQRU+x+BPopQ+wqvZmM7AzODC4WDUiHgKjKx8bDoNKRoHtJU52Z+VG2
 NfUJ9VHEqivjg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=gfa/idAN
Subject: Re: [Intel-wired-lan] [PATCH v6 net-next 01/15] genetlink: extend
 info user-storage to match NL cb ctx
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
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Jamal Hadi Salim <jhs@mojatatu.com>,
 edumazet@google.com, Madhu Chittim <madhu.chittim@intel.com>,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Donald Hunter <donald.hunter@gmail.com>, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com, Sunil Kovvuri Goutham <sgoutham@marvell.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed,  4 Sep 2024 15:53:33 +0200 Paolo Abeni wrote:
> This allows a more uniform implementation of non-dump and dump
> operations, and will be used later in the series to avoid some
> per-operation allocation.
> 
> Additionally rename the NL_ASSERT_DUMP_CTX_FITS macro, to
> fit a more extended usage.
> 
> Suggested-by: Jakub Kicinski <kuba@kernel.org>
> Signed-off-by: Paolo Abeni <pabeni@redhat.com>

Reviewed-by: Jakub Kicinski <kuba@kernel.org>

Thank you!
