Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D19E4AE6BFE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 18:03:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7B15880DA2;
	Tue, 24 Jun 2025 16:03:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 34R4phInpsxO; Tue, 24 Jun 2025 16:03:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F34EB80D94
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750780992;
	bh=xqeaO97v0nlxXhZ8zzacXPQKw15x34UZU+/5Fbj7H4Y=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sa7Bc35HW1aTL1pHIriXMfCq9pyA5llwVof5wPVAtxZCNPR1Sb5tGp5LaToaoBeZk
	 z+GW+XJSTDYUB4adgRMKDQDPe4Z4e8IKcZb0s74EFTT5bYgggEvq2cOUm/rWnm3/VE
	 rBm8NcAfpCrEHOo1xhegUKFQxWgs82VwmKh2MZdhqk+yyfiV9GhOq7X5oSkPVF+7nT
	 h+1GeiUIk7qLiOgSWMu4Z10hb6ck3YXzwbQ3IAuGM3gDWw0YEPQYNGT44AqQC6+NRc
	 AaWP1f0qFYrOWQUKsZQqDxPFBiuhvU/vCYHSPGmadpRji0NQXB42GCUaXPggU2VBJn
	 gpoagqtcbv30A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F34EB80D94;
	Tue, 24 Jun 2025 16:03:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id E1883154
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 16:03:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C7B9241173
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 16:03:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yXbG4OThfvsb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 16:03:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 496BD41147
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 496BD41147
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 496BD41147
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 16:03:09 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 92D114ABBA;
 Tue, 24 Jun 2025 16:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A8F9C4CEF0;
 Tue, 24 Jun 2025 16:03:06 +0000 (UTC)
Date: Tue, 24 Jun 2025 17:03:04 +0100
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
Message-ID: <20250624160304.GB5265@horms.kernel.org>
References: <fe064a2c-31d6-4671-ba30-198d121782d0@jacekk.info>
 <b7856437-2c74-4e01-affa-3bbc57ce6c51@jacekk.info>
 <20250624095313.GB8266@horms.kernel.org>
 <cca5cdd3-79b3-483d-9967-8a134dd23219@jacekk.info>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cca5cdd3-79b3-483d-9967-8a134dd23219@jacekk.info>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1750780988;
 bh=KV3OmoqbIFpb1DXvXtj2VuD9NpNW4mY2HLxDfq8IF0M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LiQWlWfwV8V7sLkemZoKsu0cwJ6bIcmlCznpocInMarpQoeifFuQdfbcn91HnDsGh
 cZu+i1Yhb7yVxf6XAgl5tSjvEgnqPwBim6IGIPIDrA6CsgyiEF9Lv02DIHjjCWvJjE
 LNAG06rYU+c+zuSn/8UKg7agdqm+m2qiB/V01M2TlJef/hfpM6pN2zlk552rkCvb6p
 IUrrgt+0aD5mf3mvvQcSwxAFL7yN8O1dJWQnzB1c3+/+rPQnIdIIEd6Q/vuuNesVbe
 raLU0NYRgFcKXmyQStCc8p6skBx/Stk/umfLfFsqGE29qsHAvrNZl1yBV595XVUENo
 kuMdf+BaUuBjA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=LiQWlWfw
Subject: Re: [Intel-wired-lan] [PATCH v2 2/2] e1000e: ignore factory-default
 checksum value on TGP platform
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

On Tue, Jun 24, 2025 at 02:51:09PM +0200, Jacek Kowalski wrote:
> > > +	if (hw->mac.type == e1000_pch_tgp && checksum == (u16)NVM_SUM_FACTORY_DEFAULT) {
> > 
> > I see that a similar cast is applied to NVM_SUM. But why?
> > If it's not necessary then I would advocate dropping it.
> 
> It's like that since the beginning of git history, tracing back to e1000:
> 
> $ git show 1da177e4c3f4:drivers/net/e1000/e1000_hw.c | grep -A 1 EEPROM_SUM
>     if(checksum == (uint16_t) EEPROM_SUM)
>         return E1000_SUCCESS;
> (...)
> 
> 
> I'd really prefer to keep it as-is here for a moment, since similar
> constructs are not only here, and then clean them up separately.
> 
> Examples instances from drivers/net/ethernet/intel:
> 
> e1000/e1000_ethtool.c:  if ((checksum != (u16)EEPROM_SUM) && !(*data))
> e1000/e1000_hw.c:       if (checksum == (u16)EEPROM_SUM)
> e1000e/ethtool.c:       if ((checksum != (u16)NVM_SUM) && !(*data))
> igb/e1000_82575.c:      if (checksum != (u16) NVM_SUM) {
> igb/e1000_nvm.c:        if (checksum != (u16) NVM_SUM) {
> igc/igc_nvm.c:  if (checksum != (u16)NVM_SUM) {

Ok. But can we look into cleaning this up as a follow-up?

Reviewed-by: Simon Horman <horms@kernel.org>
