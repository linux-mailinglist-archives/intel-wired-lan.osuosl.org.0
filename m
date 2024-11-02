Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 25AA19BA100
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Nov 2024 16:12:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 303AF820BC;
	Sat,  2 Nov 2024 15:12:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hqeXfJuqJ680; Sat,  2 Nov 2024 15:12:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 82097820B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730560366;
	bh=R9Mscw9WzEcjuEtTJtu8rs6dhaZl0J3g17rlbgFlYl8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BSAuEcAw61aOlyjSsv99zCxlmfpbeUKNDcSa4oQaThnKefjaZalP7NPahy7uhaOsQ
	 +afOV3tvFtQN7M26mLhMVfkNWUP+NF6h95OGEeH1nyvQg9eDuoohQhBt0NHgqdesa1
	 94rwuXC06kRjy23u0K0ziyRz8uXNbly6ssWMJGBHdzbnazeFIFyzRTeCUor0RT/Pxw
	 UI9QXgb+yjMyIJAdquPc8znEdQFsK5WImHxOo6iHDtwAuTiWQMsyL6SorMu0PgGdYD
	 aGZgFwFbmZAitILOxDh5JxS9g/9juldhQCStetBTpgA1SdBoXqVT2wwgKraovDDUz1
	 omswwsMnMlipg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 82097820B4;
	Sat,  2 Nov 2024 15:12:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id A9B0327E1
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Nov 2024 15:12:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8A2AB4026C
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Nov 2024 15:12:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FCjmmfpxl69l for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 Nov 2024 15:12:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B7012401B1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B7012401B1
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B7012401B1
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Nov 2024 15:12:42 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id BE356A40CD3;
 Sat,  2 Nov 2024 15:10:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 79D1AC4CEC3;
 Sat,  2 Nov 2024 15:12:39 +0000 (UTC)
Date: Sat, 2 Nov 2024 15:12:36 +0000
From: Simon Horman <horms@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20241102151236.GQ1838431@kernel.org>
References: <20241028204543.606371-1-grzegorz.nitka@intel.com>
 <b6abb7f2-22a3-4e93-a201-292e2b5f907b@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b6abb7f2-22a3-4e93-a201-292e2b5f907b@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1730560360;
 bh=XVLfr2k/iwF8BCftxJoWl1LX1LkLaC8R7bn44UptcJk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=szwgrSEZvGkYDfNy6IiBkDLUPhVc2/mDJc7tpzADsNUOSd+0jvliqDJ5DxD5tXg4O
 ugyNaD9IseLJy2hjktGO0UPx8dlkocs2v6suqfSWy1aiLxhKnNVfp2prjFX4u9E3r8
 XSn6pak9DSLxQ6kPfGkdfYjkVA6sCtiD+3iAQMicS6ZIK5COPfw/2Bm+toT65l9fQU
 HjKEUxkvbEosAfEJLmIk9742f+r8X6xBvKUC0suOOSeH+aJbEhur+TR9QGLdsACflq
 GQbPt9g080u8A8W4NiImT+VDFSmI84iGnyt5bi5dubt3iVurLlSQlq1YngiC6BGjFT
 W6bpirmTFexag==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=szwgrSEZ
Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-net 0/4] Fix E825 initialization
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Oct 29, 2024 at 09:33:32AM +0100, Przemek Kitszel wrote:
> On 10/28/24 21:45, Grzegorz Nitka wrote:
> > E825 products have incorrect initialization procedure, which may lead to
> > initialization failures and register values.
> > 
> > Fix E825 products initialization by adding correct sync delay, checking
> > the PHY revision only for current PHY and adding proper destination
> > device when reading port/quad.
> > 
> > In addition, E825 uses PF ID for indexing per PF registers and as
> > a primary PHY lane number, which is incorrect.
> > 
> > Karol Kolacinski (4):
> >    ice: Fix E825 initialization
> >    ice: Fix quad registers read on E825
> >    ice: Fix ETH56G FC-FEC Rx offset value
> >    ice: Add correct PHY lane assignment
> 
> Grzegorz, thank you for picking this series up!
> It is legally required that you sign-off too, but please wait for other
> feedback instead of rushing with re-send ;)

Likewise, thanks Grzegorz.

FWIIW, I've provided some feedback on patch 2/4.
And the rest of the series looks good to me.
