Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA7D7892CF
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Aug 2023 02:55:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A740083C2D;
	Sat, 26 Aug 2023 00:55:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A740083C2D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693011306;
	bh=wXTQik1L5kMne2cRhLMvf3rXf9/TnkWfuq07qRHSIr0=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=R6fkEGuG3F32kqY2B4YP1hNmyNS3RNYhv6H8GqSXpHLnM3m5al3F7HGUwIBtvsSMw
	 TR1vLOEbbbdKrT6qmTgh7/Dpygh4jJVmfUSYHKHiATpybm3xXsMWOhZJvLzfqJqFsE
	 wZhA6OA7QC0sgGtjTA8Arv2ztPZZJ48ZSosWe81Xl2+/+MveLg62lER5KhQOY67fd4
	 VJvLP50ArZiRhctgrxmiJGDn4AByUWarFwtkZamyVJaUU2fB2HJkCqNTLECq7xbaXQ
	 +BAxrL7vLeL59R41OJqJEs4yyMc+szQJMi968533noVfPWUVGrLtABx8TkKWN4jriY
	 aDPObSUolEm6w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z_R_rqaBifSr; Sat, 26 Aug 2023 00:55:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 951C283B3D;
	Sat, 26 Aug 2023 00:55:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 951C283B3D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 68E081BF997
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Aug 2023 00:55:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3ADAC83C00
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Aug 2023 00:55:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3ADAC83C00
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ldpnh4prnq7i for <intel-wired-lan@lists.osuosl.org>;
 Sat, 26 Aug 2023 00:54:59 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 91F6F83B3D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Aug 2023 00:54:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 91F6F83B3D
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id B567A628CB;
 Sat, 26 Aug 2023 00:54:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DCC56C433C8;
 Sat, 26 Aug 2023 00:54:57 +0000 (UTC)
Date: Fri, 25 Aug 2023 17:54:56 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>
Message-ID: <20230825175456.44051773@kernel.org>
In-Reply-To: <MW4PR11MB57768054635E8DEF841BB2A9FDE3A@MW4PR11MB5776.namprd11.prod.outlook.com>
References: <20230824085459.35998-1-wojciech.drewek@intel.com>
 <20230824083201.79f79513@kernel.org>
 <MW4PR11MB57768054635E8DEF841BB2A9FDE3A@MW4PR11MB5776.namprd11.prod.outlook.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1693011298;
 bh=/yywbGq6ACHFhnVK1HEPC1x6NEHvjwMXNT4AE6QpBpc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=TeWq8O4es9uTN7wHQKmtKLZwe41v4hN/Yrigp2WZf+YdtRtAkvpx+lCIkdJ6DWI4w
 4SoI9qSjI0htVCG97rEOx2Q9EDFJGrVIgAtJ55IA+v2TQIKIS87jMQGfe56DAQ/ZBS
 TKKIfmiDlD2ca3U65flk4CUWZmzx6s2ya6dfGt18eKdHpG4NNFA0lzlwXlEiHi8/aK
 ALCxB4Ot3xFqCu5zaK60qeIygX4zimv17ukrTDXw87qPUXdJ5ssl1dtzXHojB2xQuD
 U2x7nyJk3PlMEEepqJeGXjFghAbpd6JierHd1P9vgQc6JUi4mTzh3HxiPoWtw10dwL
 lC3qhVSTYfuNw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=TeWq8O4e
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Disable Cage Max
 Power override
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "idosch@nvidia.com" <idosch@nvidia.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 25 Aug 2023 11:01:07 +0000 Drewek, Wojciech wrote:
> > Can you say more? We have ETHTOOL_MSG_MODULE_GET / SET, sounds like
> > something we could quite easily get ethtool to support?  
> 
> So you're suggesting that ethtool could support setting the maximum power in the cage? 
> Something like:
>  - new "--set-module" parameter called "power-max"
>  - new "--get-module" parameters: "power-max-allowed",
>   "power-min-allowed" indicating limitations reported by the HW.

Yup. Oh, nice you even CCed Ido already :)

> About the patch itself, it's only about restoration of the default
> settings upon port split. Those might be overwritten by Intel's
> external tools.

I guess, the thing that sent me down the path of putting the control
in hands of the user more directly was the question of "why do we need
to reset on port split"? Why is that a policy the driver is supposed
to follow?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
