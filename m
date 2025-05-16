Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CFFD1AB9918
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 May 2025 11:43:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7EAA683C7A;
	Fri, 16 May 2025 09:43:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZRjy35wj7pAY; Fri, 16 May 2025 09:43:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DD93983C80
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747388624;
	bh=vA+ogr+U3l1p11wyrg+2zcEmKWZmQdM3kaLnpNQEriY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4SuhcsLRhUVzJYNbhyvFWxDnP6elvMDmVrVgA8dfIi8P1zwIJVllw/CBKcndXYW55
	 SKbPnP9yk+k9ZbbhO3DOhkVZJgEhvuO26VFkxoCE77Iug4RflwYcrjOrPYYyR3Wne6
	 RXCKRS5fsM/R13ODKVYA8cEIzZd7+kpqcXn9EYBVPbthYuZ2FLv4xPHUSBCGKfo0tk
	 Dacdux0/PoBCuT5kmp7NyImqS23uSA9B7dIj4V+9SI6kG0rPQKe0xXgpv1+uI2ZdfS
	 ivilmaGLf92g1d7WkdamRN01yRMabwsyZE2KL6v/4HmBfd1OUIoRq8sjxEtdKZhUX3
	 e+ULMV6nRdkYQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DD93983C80;
	Fri, 16 May 2025 09:43:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 12660185
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 09:43:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0364941575
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 09:43:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dilEgyrN6G40 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 May 2025 09:43:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6FF06412C2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6FF06412C2
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6FF06412C2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 09:43:43 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id D8A8E629FC;
 Fri, 16 May 2025 09:43:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96455C4CEEF;
 Fri, 16 May 2025 09:43:38 +0000 (UTC)
Date: Fri, 16 May 2025 10:43:36 +0100
From: Simon Horman <horms@kernel.org>
To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>
Message-ID: <20250516094336.GH1898636@horms.kernel.org>
References: <20250514042945.2685273-1-faizal.abdul.rahim@linux.intel.com>
 <20250514042945.2685273-9-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250514042945.2685273-9-faizal.abdul.rahim@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747388621;
 bh=NP6mTkOPwLJDrCmSPzzyuQwIji4vlTM5i4FIApv+93E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AA7tcPpuuBBOKSESNckNFwlPbcMV3qNttniRQMmbV2GTxUw/NUIwVFpLjIEZyiE2p
 B0MuUmTLo/4Siki/ts2ZDDf2shTu5xui/f12/8Xvxe3KzF3P0Bn2+wsdpNKQMu70KJ
 eOmxV2zNefmpE2BZ/S/V1BmbaHbcJiTON8sR3r5dyt0o4hEppnw6Ia2zx6kt0AueWc
 Vg87lujeX8CdTuJu1P6ZA7itWXaoiT4hyTomJreJ/uXSDNelxYvy7Nkf02GeXJBc+b
 2J36/FAHRtaqqliE64LQN3NL79mOFVLVz+xweNJf9QhVuCSCs0kRn/CuvMrcylyBCE
 hB/amVK/N0uSg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=AA7tcPpu
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 8/8] igc: SW pad
 preemptible frames for correct mCRC calculation
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

On Wed, May 14, 2025 at 12:29:45AM -0400, Faizal Rahim wrote:
> From: Chwee-Lin Choong <chwee.lin.choong@intel.com>
> 
> A hardware-padded frame transmitted from the preemptible queue
> results in an incorrect mCRC computation by hardware, as the
> padding bytes are not included in the mCRC calculation.
> 
> To address this, manually pad frames in preemptible queues to a
> minimum length of 60 bytes using skb_padto() before transmission.
> This ensures that the hardware includes the padding bytes in the
> mCRC computation, producing a correct mCRC value.
> 
> Signed-off-by: Chwee-Lin Choong <chwee.lin.choong@intel.com>
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>

Hi Faizal, all,

Perhaps it would be best to shuffle this patch within this series
so that it appears before the patches that add pre-emption support.
That way, when the are added the bug isn't present.
