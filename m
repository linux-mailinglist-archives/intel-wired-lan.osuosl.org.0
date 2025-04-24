Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 77870A9B3E2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Apr 2025 18:24:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 94726846F5;
	Thu, 24 Apr 2025 16:24:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zocRbXbOkTWs; Thu, 24 Apr 2025 16:24:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B98C8846ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745511893;
	bh=BCJRla7iluwL2Xh9NDyxCMmhOZPkqKTACwAX5bO6Lqg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kywKckEuKDZcCqv9s+u/g2zPuTiis72K7om47e8wisA4iS6LumYHJPEFZdIzbwzTB
	 p7JC2AHV1RmYaYkHzacrrDlY8cxNm+SHI4qGSSqrsNqnhay6QD2t9//hLC/Ot03Gzg
	 SLREflJTahvbV6KhHl3leJF38+NzcTu/3uZBiz7xG3tRFKVCNPBgJ5+9iAN+hM2+u5
	 Ll4UOKp0qpR78LUG9W7Ni/3zH9ZyJFe9G6z9l9XSfGVvN2z0qJ+vZbqc2UbX0mMPQ6
	 mSDVW4RHs5/VsZ024GIC80fSMqQfOcTzJsHznGzBrXNmYLB4G0cds5wvehlal47lmV
	 8Ap0TYmXazwQw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B98C8846ED;
	Thu, 24 Apr 2025 16:24:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id A3902EC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 16:24:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 94B6E703BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 16:24:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hcgR8LYv6gLk for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Apr 2025 16:24:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D52DC6FCB0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D52DC6FCB0
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D52DC6FCB0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 16:24:50 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 86D6CA4CFD7;
 Thu, 24 Apr 2025 16:19:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B101C4CEE3;
 Thu, 24 Apr 2025 16:24:46 +0000 (UTC)
Date: Thu, 24 Apr 2025 17:24:44 +0100
From: Simon Horman <horms@kernel.org>
To: Jacek Kowalski <jacek@jacekk.info>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <20250424162444.GH3042781@horms.kernel.org>
References: <5555d3bd-44f6-45c1-9413-c29fe28e79eb@jacekk.info>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5555d3bd-44f6-45c1-9413-c29fe28e79eb@jacekk.info>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1745511889;
 bh=ehthhJRsT67ePCHd7tekdu+92oqaTFfVHKePVSJFtCA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Q4qjxZvR6FaqZL4R+VVLTh009Rpx+NCL7vIjuEb3ilJm/CfGsr2sP411UqEsJFwZ+
 Py/Uo/xbi8SxuQ/rkxVjQ+hZulcPX8hjFyqk3YlO6rUw/Spq20yz4sBCYua/PQb02C
 V3erMw/pp/3x0K9ybnA/g/IvKSuDpnF7u8aqYCVH9L8u0VC6lmPVwf7tpiYgkr/MuA
 vCO2zwMKfeq7/YhEv0S0edvlZkF7sPV5FbCUicNwsyV8G7c/IcbQI1X9mC4xKBYdT9
 RXCtJ0PLSX7PhG8oehjhjroD+/n/9RsldsOhLmzEX55LVt8J0BNbTXsV2yhlOcZybG
 H+PH/FeUioUPQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Q4qjxZvR
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: disregard NVM checksum on tgp
 when valid checksum mask is not set
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

On Tue, Apr 22, 2025 at 09:43:01AM +0200, Jacek Kowalski wrote:
> Some Dell Tiger Lake systems have incorrect NVM checksum. These also
> have a bitmask that indicates correct checksum set to "invalid".
> 
> Because it is impossible to determine whether the NVM write would finish
> correctly or hang (see https://bugzilla.kernel.org/show_bug.cgi?id=213667)
> it makes sense to skip the validation completely under these conditions.
> 
> Signed-off-by: Jacek Kowalski <Jacek@jacekk.info>
> Fixes: 4051f68318ca9 ("e1000e: Do not take care about recovery NVM checksum")

I think that while the commit cited above relates to this problem,
this bug actually dates back to the patch I'm citing immediately below.
And I think we should cite that commit here. IOW, I'm suggesting:

Fixes: fb776f5d57ee ("e1000e: Add support for Tiger Lake")

> Cc: stable@vger.kernel.org

That not withstanding, based on the commit message,
and the use of e1000_pch_tgp in another Tiger Lake fix [1],
I think this patch looks good.

Reviewed-by: Simon Horman <horms@kernel.org>

[1] commit ffd24fa2fcc7 ("e1000e: Correct NVM checksum verification flow")

