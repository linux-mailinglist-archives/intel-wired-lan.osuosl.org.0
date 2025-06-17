Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 699A9ADDF63
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Jun 2025 01:09:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0573D40A40;
	Tue, 17 Jun 2025 23:09:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ys-QZmf2qypM; Tue, 17 Jun 2025 23:09:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5012840A10
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750201780;
	bh=syHFYsJH70iiQmgNFgxDI7JKbOPPGDbuGeytZu3NM/A=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4OveeKTs4WWTUZv91En/ATae/S1YK8fARSh2oNMPaIWODrv1i15YlnJtm/DSZ//oT
	 6UjHdF7BoRBZKRo87kTDTiK2oQyBiSkqIUZ5ZZMu3/scKx8imuuXRDnPLJM5zJUP6w
	 xqNDzARTXMoF7ePIxjmv/TasRwkJr5+wy4BVoQzM2IzHpRjwCldd2d/2QcW6fJif66
	 LcqXEmXc1Mdc1scfkbea+uoEUiu5TLwMd54G+fr3bujEmadO7EJW4ZosO/ES7heDVs
	 JM9Y7PeElunN39oCJUIv1Fgwej+m9yU8s8yMToz+2D2/HZOKB+/+xPCBI6gKCNjmY3
	 Be0xgxlnFpchQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5012840A10;
	Tue, 17 Jun 2025 23:09:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 89647151
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jun 2025 23:09:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7ADEB404E0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jun 2025 23:09:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uv7lyRVP-3Zr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Jun 2025 23:09:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B55D340029
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B55D340029
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B55D340029
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jun 2025 23:09:37 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 2B59440BFF;
 Tue, 17 Jun 2025 23:09:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D1D8C4CEE3;
 Tue, 17 Jun 2025 23:09:36 +0000 (UTC)
Date: Tue, 17 Jun 2025 16:09:35 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: "Kaplan, David" <David.Kaplan@amd.com>, "jedrzej.jagielski@intel.com"
 <jedrzej.jagielski@intel.com>, "anthony.l.nguyen@intel.com"
 <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "horms@kernel.org" <horms@kernel.org>, Mateusz
 Polchlopek <mateusz.polchlopek@intel.com>, Bharath R <bharath.r@intel.com>,
 "regressions@lists.linux.dev" <regressions@lists.linux.dev>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Message-ID: <20250617160935.08f8652a@kernel.org>
In-Reply-To: <59faaf3b-d75d-4405-a7bb-a137918617e3@intel.com>
References: <LV3PR12MB92658474624CCF60220157199470A@LV3PR12MB9265.namprd12.prod.outlook.com>
 <59faaf3b-d75d-4405-a7bb-a137918617e3@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1750201777;
 bh=kcB9nqV0AvhUhiSM+/9o/yE+LthTXfXASBnzHnKLtFc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=iTqFISrkMfqk/W/J807m/XLuMWt+/AmOrQEkKc1cZ/1mbY74pGSV/dAH3axKBq+u8
 akoybs/Lo3s1slQSijkeVS2o0kS1Tkb1Dm8GNZF5++/1zAlH3xGDP7JOaCcfIBkCEI
 EjD6s6pk2mGvx1c1iyKZvr+9Up0XOwtForH0LqwBkq0DX+rGh403zqFXeeFmK3xIV0
 OaMah8fnboYyv6nGbbANYZsoIG7oGfq3RYIzBqPjGmTwitU3Q4W+Vh14OnjxjNETDB
 JF/MDxRfc6An9rwN7NVloYIFTX0PS1F2GzmzdA+w6ldzQMajdWofhr1PlGkv2zSPWT
 ZEJU2cNviJ4BQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=iTqFISrk
Subject: Re: [Intel-wired-lan] [REGRESSION] ixgbe broken after devlink
 support patch
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

On Tue, 17 Jun 2025 11:01:18 +0200 Przemek Kitszel wrote:
> > Normally, the device is given a name like enp194s0f0 and connects to the wired network.    
> 
> now the name is likely to be different, please see this thread:
> https://lkml.org/lkml/2025/4/24/1750
> 
> Is it possible that your network setup script has some part of interface
> discovery hardcoded?

Hi Przemek, could you/someone on your side try the workaround 
I suggested in the earlier thread? I'm not sure how actively 
developed ixgbe is, if the work is not related to any new devices 
with more complicated port topology breaking people's setups feels 
pretty unnecessary.
