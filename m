Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1FF9741A7A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jun 2023 23:12:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D82F14058E;
	Wed, 28 Jun 2023 21:12:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D82F14058E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687986728;
	bh=GpYHxaLLSs1WWgJS8ThWHzKU89MbjcWWVeG2d5ZA3Cc=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FVMCXGn+6FYuJn2ZF5jMsy1+P3dbc8e+OFM/9JNO3lRN2f3WSBajcg1PYDNth0E5n
	 fzq7UIPJQrrhDTCDuO1ff7Dezon+4iMCxHloP1MvufTTXb8/KEHxYbje3o25l0grGS
	 BIqbPQrvZLxvNOCRkjk/Ccr8dRL0w+zBrhGajQi0hnHCUDccfyLd+9Ha8T/QVGqjp5
	 cYKzfdzKLZXkMh7oOgNXAlpZpWMv+q2YTEruwx8nXWIkgtdOI4kFeIy9Jxzt4yDN18
	 SPEAZ8oo5r7wwtfxFyAxllcYiVaOz+Cz5TMagE8XnPxvezrLJH2cO4xOgdTxNAwrCD
	 hs7gR3/6eo7FA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c8jD-XTj6zvP; Wed, 28 Jun 2023 21:12:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2831A401ED;
	Wed, 28 Jun 2023 21:12:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2831A401ED
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9A5711BF343
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 21:12:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 716124096A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 21:12:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 716124096A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H770OTaAsyRG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jun 2023 21:11:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2F8F74005E
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2F8F74005E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 21:11:58 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 846CA6145E;
 Wed, 28 Jun 2023 21:11:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 441FDC433C8;
 Wed, 28 Jun 2023 21:11:54 +0000 (UTC)
Date: Wed, 28 Jun 2023 14:11:53 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <20230628141153.15709d97@kernel.org>
In-Reply-To: <20230623123820.42850-2-arkadiusz.kubalewski@intel.com>
References: <20230623123820.42850-1-arkadiusz.kubalewski@intel.com>
 <20230623123820.42850-2-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1687986716;
 bh=koy1OSVClFvab/lF2oDpHJ8TmCs3jlviG8/MsiVo+Go=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=rvmuZcGln587JyJuaJDrT+al7I2gKijxRz621UF4LqnsGqSeDrahvWqCqKroQFFhq
 ApOTUfy0a8iGFpGGntTJg1TBl3dd9VVM8kUAudJeLfkoLsujBbbfd4JPiP8Ht87M2m
 pZARl4XrdTylp3oTBYox5IqPadcRQ0OVbZKdqen7tQ25qtu5Em2rNL24xj+t1EhEIk
 p/qPwnfXtf3QwA6x4qizYyRkXUyEoPKUnCGRsvQKH8qIE+aA1FP8WB4m/VFCP3Wwla
 I6YJMAa9btFARFeIQxjsHsoBB9z/pa1AIHRNMGTj4+TSQGkzmtCk9p/+Kq9gov7Yiv
 q5jljPvmNR1nA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=rvmuZcGl
Subject: Re: [Intel-wired-lan] [RFC PATCH v9 01/10] dpll: documentation on
 DPLL subsystem interface
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
Cc: geert+renesas@glider.be, mst@redhat.com, razor@blackwall.org, phil@nwl.cc,
 javierm@redhat.com, edumazet@google.com, benjamin.tissoires@redhat.com,
 anthony.l.nguyen@intel.com, Bagas Sanjaya <bagasdotme@gmail.com>,
 netdev@vger.kernel.org, linux-clk@vger.kernel.org, lucien.xin@gmail.com,
 leon@kernel.org, corbet@lwn.net, linux-rdma@vger.kernel.org,
 masahiroy@kernel.org, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 vadfed@meta.com, intel-wired-lan@lists.osuosl.org, airlied@redhat.com,
 vadfed@fb.com, pabeni@redhat.com, ricardo.canuelo@collabora.com,
 jiri@resnulli.us, arnd@arndb.de, idosch@nvidia.com, richardcochran@gmail.com,
 claudiajkang@gmail.com, kuniyu@amazon.com, jacek.lawrynowicz@linux.intel.com,
 liuhangbin@gmail.com, nicolas.dichtel@6wind.com,
 linux-arm-kernel@lists.infradead.org, axboe@kernel.dk, sj@kernel.org,
 vadim.fedorenko@linux.dev, linux@zary.sk, gregkh@linuxfoundation.org,
 ogabbay@kernel.org, nipun.gupta@amd.com, linux-kernel@vger.kernel.org,
 andy.ren@getcruise.com, tzimmermann@suse.de, jonathan.lemon@gmail.com,
 saeedm@nvidia.com, davem@davemloft.net, milena.olech@intel.com,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 23 Jun 2023 14:38:11 +0200 Arkadiusz Kubalewski wrote:
> +    'pin-parent': [{'pin-id': 2, 'pin-state': 'connected'},
> +                   {'pin-id': 3, 'pin-state': 'disconnected'},
> +                   {'id': 0, 'pin-direction': 'input'},
> +                   {'id': 1, 'pin-direction': 'input'}],

This bit of documentation is out of date now, right?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
