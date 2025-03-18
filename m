Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 735C1A67828
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Mar 2025 16:43:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 321A681768;
	Tue, 18 Mar 2025 15:43:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aYBa2VsBhQPU; Tue, 18 Mar 2025 15:43:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 367CD81815
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742312595;
	bh=T2msgjxCz2DcPYQE12074YoE2WnARoI0a5JesfxOEjE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZjLJ+IfmZQfLGmljZQg5nbHtQNf/jFNUjVOLLzlh1oRapBmI0yK2Jf9hIz0ixoUAa
	 o0O84hTkfeoswAbsFZ9Ts/m4KoJneWAbbQ1KscOMPbbE15XF4VyDaQr2eVNU1F82X3
	 q3Rx/xQ42JkQ+yWW7qicrYsk6aC31vG3ZBGpRUghjLkK1vJTbAMb1JYRPhuKTIDNpd
	 +bC44HqxuXdmrod1dCK3P8jXSWPyzl+F3cyYK7BgUZ8TV7mr28XPxOFpyARUG0oCpw
	 UmBTOwzmYuRtuIrP3r3eDkkS+Njvb+htZvwFc8rMRkjVtdwoOptDUxCH0OGjMDGO+R
	 mWYegQU4HrbAA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 367CD81815;
	Tue, 18 Mar 2025 15:43:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 10E5716E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 15:43:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0C20D4077A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 15:43:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3KyMRpe2K8tp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Mar 2025 15:43:11 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32b; helo=mail-wm1-x32b.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 57472407F9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57472407F9
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 57472407F9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 15:43:09 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 5b1f17b1804b1-43cf06eabdaso34882975e9.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Mar 2025 08:43:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1742312587; x=1742917387;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=T2msgjxCz2DcPYQE12074YoE2WnARoI0a5JesfxOEjE=;
 b=Sxi+EoLiLlIqBuLbBzLceUgMXXCcmmOb8V0CZQ3F0ps08Mk4N0wKxawhwjjSBvpsW0
 XGN9DL5FU5mFPBhINM9oJgu6tKk2yrZV4YVRzzZh4t2N8XTmYAqGRh0ZLHNCG78eD/v3
 c/OgJdmLtNF5KwEvo7GwC7EZZ40pcwtlBzLYqqXbm5L0ixfgRAUnplgRu0hGxzFSGsue
 zMGnfHMXtyl+U2Ugb3H8oO/oSlKUo1qFRvo22rzEtl3iYmj71oar+jPa1NrJM3TWJu8N
 8dLA9hA5LxVv2baBucQQDRha+w6k8KYMIocbUQauF6fMteTwIidJhUrfISdPUPrCvC/C
 x2VA==
X-Gm-Message-State: AOJu0YzlpPWHHcxgTVgPRE23LbsGIK+OxkNggieehKusbHHIeJUDmgvR
 xagB0BDRuIvZ0s+6XuxW+OCAEA1S34TXL1myjD6CWUMtw+aF3BOi/y3PWvFd25g=
X-Gm-Gg: ASbGncvl2r4Ckngw6DNkVAXq8HtkCvNxT/kogz+czDd43YOTdWtDnqiaesXgVJi06rM
 nX70n9nUGCBxzThY/4WuI8pAbKs1ms9+MNpTzbgu/CcHInzn7JM5v01eovKLD3c3zYIwAmgOxTS
 fE4tVVxcVXVG8v3s9pyY/2say6vouVG/MD3D+LxaCHwHEOR8yWTCTlnlA9Vk99bBBt2NUP13te1
 C4obuTpJSpw/pM1b13RKPYmOHtbUHR9VrLp/jBwOQUgUknkh4EUhWj6QlNsdhNM3U7CUyZTAyka
 LmByW8pYiWp6ztfJU5/fgisK8OBW9LFjRHaAmpkOxRiYsycp57kSl/p2iBomCiWeVyp0m5Z46Xe
 Q
X-Google-Smtp-Source: AGHT+IFYgyumGr+fp7DYJkr3lnZZ0Wg+ROxQga4Jqlf85DUT7rg0dECXHPfzOdbnhe950EIsNaSwng==
X-Received: by 2002:a05:600c:46c5:b0:43c:fb95:c752 with SMTP id
 5b1f17b1804b1-43d3b9620ddmr27754325e9.3.1742312587310; 
 Tue, 18 Mar 2025 08:43:07 -0700 (PDT)
Received: from jiri-mlt.client.nvidia.com ([193.47.165.251])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-43d1ffbf901sm136872725e9.15.2025.03.18.08.43.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Mar 2025 08:43:06 -0700 (PDT)
Date: Tue, 18 Mar 2025 16:42:57 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>, 
 Cosmin Ratiu <cratiu@nvidia.com>, Tariq Toukan <tariqt@nvidia.com>,
 netdev@vger.kernel.org, Konrad Knitter <konrad.knitter@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, davem@davemloft.net, 
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Andrew Lunn <andrew@lunn.ch>, linux-kernel@vger.kernel.org,
 ITP Upstream <nxne.cnse.osdt.itp.upstreaming@intel.com>, 
 Carolina Jubran <cjubran@nvidia.com>
Message-ID: <olhqg2npoigaebjnwp5ddqoaegnafizk7jrtshs44v7ytrai7x@6yhpydbawdwn>
References: <20250219164410.35665-1-przemyslaw.kitszel@intel.com>
 <20250219164410.35665-2-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250219164410.35665-2-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1742312587; x=1742917387;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=T2msgjxCz2DcPYQE12074YoE2WnARoI0a5JesfxOEjE=;
 b=vBU9fgX6ODWIAxPkFPYe0VBGeDgmM2zGNnmJ4LDfGNKDc4GLLDU0z8pdjr5ZACktPc
 g5Q6A0TtvPl+kMiB6nGjn3nApwQQw1OCwFt/eQzRibMX+Ez5E03ooI03kK/671Uwy5Wf
 hEYoR1ob3nIYoxDH4aN8CVpxLqw9pt/AV2JNFKcZmlzmTIZiluR4DCdseX84rDvXVVTF
 NYjzPqN0OkzdWqOeAi6Rsgm6O6TT4m/WKd6KaWSvAvbvrDuHXV/g06+AF5Q1qFAOAtFZ
 f7nkmZdTgHKaDUs+01D5P53C/23Hr8P+WKtDng8VMwU7nbbBxG6Mnii/xJNTF3CP4eqq
 76LQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=vBU9fgX6
Subject: Re: [Intel-wired-lan] [RFC net-next v2 1/2] devlink: add whole
 device devlink instance
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

Wed, Feb 19, 2025 at 05:32:54PM +0100, przemyslaw.kitszel@intel.com wrote:
>Add a support for whole device devlink instance. Intented as a entity
>over all PF devices on given physical device.
>
>In case of ice driver we have multiple PF devices (with their devlink
>dev representation), that have separate drivers loaded. However those
>still do share lots of resources due to being the on same HW. Examples
>include PTP clock and RSS LUT. Historically such stuff was assigned to
>PF0, but that was both not clear and not working well. Now such stuff
>is moved to be covered into struct ice_adapter, there is just one instance
>of such per HW.
>
>This patch adds a devlink instance that corresponds to that ice_adapter,
>to allow arbitrage over resources (as RSS LUT) via it (further in the
>series (RFC NOTE: stripped out so far)).
>
>Thanks to Wojciech Drewek for very nice naming of the devlink instance:
>PF0:		pci/0000:00:18.0
>whole-dev:	pci/0000:00:18
>But I made this a param for now (driver is free to pass just "whole-dev").
>
>$ devlink dev # (Interesting part of output only)
>pci/0000:af:00:
>  nested_devlink:
>    pci/0000:af:00.0
>    pci/0000:af:00.1
>    pci/0000:af:00.2
>    pci/0000:af:00.3
>    pci/0000:af:00.4
>    pci/0000:af:00.5
>    pci/0000:af:00.6
>    pci/0000:af:00.7

Please check my RFC attempt to solve this for mlx5:
https://lore.kernel.org/all/20250318124706.94156-1-jiri@resnulli.us/

I believe that the same could work for you too.
