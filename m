Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E71D7EC9D5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Nov 2023 18:42:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A34CA8297F;
	Wed, 15 Nov 2023 17:42:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A34CA8297F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700070157;
	bh=xOYG8S2dhzNeUGfxlXl74VlhX/J0VhLm3CaLRYC/Z+c=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=stAYRKbhJG8t4830pksEi48Ra8cQAC123uByD/Bbca0VQZquw4c5GHxosNT04TUwW
	 CkqaJDvXSPOUCfxNfXlabd6J6ofXfEhdcXVzyRj+ttipFKxiuiP1L1lgqw92NbpRxr
	 SQE/5Nc2o+sexsP1Iw4KyVGDjgY3OPUghXdzltiA/nWXDQxOAbjXg6MINuT6ya89Hg
	 lAoG6CnnpwUlsVjHPjlhzcb320N5qxTJerjF25JE/uXYCy9siGSOx8tEoVi62b/iWR
	 mRupFSIl4tNuI613OspfW94UdaXN1D05UjDn75KTaT19/0uyqg+ojYUpOAJvQzzwdK
	 2rf0Iqzy2EWLA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o45tIPBGS4Sw; Wed, 15 Nov 2023 17:42:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 98BB982232;
	Wed, 15 Nov 2023 17:42:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 98BB982232
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8FBFB1BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 17:42:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6990D8214C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 17:42:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6990D8214C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wyh9W42smq6N for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Nov 2023 17:42:29 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 930CD82042
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Nov 2023 17:42:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 930CD82042
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 80C71CE1EA1;
 Wed, 15 Nov 2023 17:42:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DFADFC433C8;
 Wed, 15 Nov 2023 17:42:23 +0000 (UTC)
Date: Wed, 15 Nov 2023 17:42:21 +0000
From: Simon Horman <horms@kernel.org>
To: Sachin Bahadur <sachin.bahadur@intel.com>
Message-ID: <20231115174221.GU74656@kernel.org>
References: <20231113235856.772920-1-sachin.bahadur@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231113235856.772920-1-sachin.bahadur@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1700070144;
 bh=JbW47VpDwdRu4c5OuivrKS/Sf1gaYDn+svMHdpgnAL4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ACw//naRlSgdbF4bo3JspeQ8+Ls1OjiRTsgheudkI7ZAr6FF2krZ+nm20cNXNsypN
 hkuozuIiCn95u5AZGBCN6aV9cN9s4GIwfaTarAlQfgg/zb0TBDoiug1I3ufBJ068ve
 h3zs/DZIDp8Tl8xJ+jne9Vdz9H8IWesq1xmf7bCmdw8L/YOpymkln5fuZHc4E96erG
 d2mwAk8kzj1P9HannKunuCT7u9EfwykWFpG+cyvLdJy+maz7BFqwu2Hg7Y8MysY6BT
 o19LXzhmKLCd1BlrhsA1YrBT+I5JrklD1DdX8o+NeVfJ7xUAuiOola3tQsuTEIaHx4
 GbhbdCmbzSShw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ACw//naR
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Block PF reinit if
 attached to bond
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Nov 13, 2023 at 03:58:56PM -0800, Sachin Bahadur wrote:
> PF interface part of LAG should not allow driver reinit via devlink. The
> Bond config will be lost due to driver reinit. ice_devlink_reload_down is
> called before PF driver reinit. If PF is attached to bond,
> ice_devlink_reload_down returns error.
> 
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Sachin Bahadur <sachin.bahadur@intel.com>

Hi Sachin,

I wonder if this should have a Fixes tag and be targeted at iwl-net.
It does feel like a bug from the description, but I could be wrong.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
