Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9065BAC3D04
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 May 2025 11:36:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3D6DF80B4C;
	Mon, 26 May 2025 09:36:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rGYmfymWgp6G; Mon, 26 May 2025 09:36:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BD26680B53
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748252186;
	bh=akRWiY61vXSqwjUp4+3SAOB/I392KNgK//SHiZbby44=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DggzqztJzAXm20GWgdku68bbS4AxSKlxXtdkEQJi1HUzoJhIYphxZyRykcMQnCmxv
	 Dd+NACt+f399Naab1IQBOwXGR0BT3FltMTjgDxF1BNW+oiq860hKow2fayBQ9gcxlB
	 Xc/w4srMk8fRN/FNXwFmwBJj/m4Qhf/Zv0V5gOjl7MY2sTrToIC0MtVan9DbVKVFBC
	 4F44DH47WWsFgF6bmnM4PQva1bgv8k7kfLCXg4zMeYIyLJbhgLFuJVDvolFvaI9uwz
	 bLdy82s5R+PC+GPwzZJZH04PvfNFJyQva4KCPAnUpZocivGiahpwDK/mSCJ559EQFk
	 3rDVC5/AteaaQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BD26680B53;
	Mon, 26 May 2025 09:36:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 96E7F19D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 May 2025 09:36:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 867BD4035A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 May 2025 09:36:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 09mSXihDs3a1 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 May 2025 09:36:24 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::335; helo=mail-wm1-x335.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E4B6D40353
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E4B6D40353
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E4B6D40353
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 May 2025 09:36:22 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id
 5b1f17b1804b1-442ec3ce724so16862245e9.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 May 2025 02:36:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1748252181; x=1748856981;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=akRWiY61vXSqwjUp4+3SAOB/I392KNgK//SHiZbby44=;
 b=gX3WSk9NRm5DvH+k7SSLGdsvcmbxzDBRczt8rJswPPOko4ZFAYB4Rh8/ke7hNAFgWV
 LOh43+xA0vst5UhbTphqY6qg5TpmfDIrYHy/fgF1E2XxxpE1hNOyuAaM4hKlwNK/Hw7q
 JKXcnp9CObXnMGrnj7G5DzNjVijbuNH1F9k2SPfTz4RCBn/7i/enLirC+aFNbPZLG5oq
 cCLcfW/n9ZgLT1SNA8mnMl1dYlXCruWxnDjEhfz7BwgJYGJ0HIR5S0sUwcbkbSxJm5yt
 Dgd/aj7NNW5ExOad/7QEb7TKyGK3BHP7CxP7aa45UQGNCJe0qLWAclTzhA2m3quZNVBj
 OjsQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCU3QwPILyqGncAMBcMoOILp/NkByN0LH7LW5/xKG6DeSlDicXfoM+BupahvG8DUfdGqkM/y1kMNIFz+hsn+pL8=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yz1RNSS8/9EpsD+AqSzTD/06xDhmaf4x+GNTK49XdotV5T+I1Pb
 4CReh1A+QUY/7mesYIoCoM1jf/4k02DSZgA72wKYhmLGFNsGlXys27cN1bxfC4YVH8c=
X-Gm-Gg: ASbGnctQRqvYFKtW8rVpBDbsCkz5zV3vXgAFfIcc1jg4s7jecg/kbA+XTUKvzsHkgqU
 Wt2rR8pEML1j0h9J/+lIiSgRCs1FhV5iYSzmYqObhEsuA1fKobOyhDSTEcb+WaoXmT6WvDSDAt/
 04iANMoUiHzeOvg4ktDkHnQ5yxqp6LFUU88VvmRvS309caU7/ax8mpAtBrJpdb8+o8NQfdprQj9
 2p9nowKjB9W5fDJ2G1BdWR0DpHmlQWQ+6Z5Eq76USvSuZ6Y9AV8MKz2iUA+jOcTQi8pf2y71ukz
 ZqdIMEInwwMeENuc24Z5uaP7g20LIZM56AH8ltj1zkLSUyZwSNNMoQO/363RP/OGMRf2S/8ttvC
 K6TaRHNuzLMvehg==
X-Google-Smtp-Source: AGHT+IHdDy9HaiyBHAWl1b2RTOZvmcqUOl/x5XI+mJD2ZIuIvNRG2stc5RkHbBIlxB8zAvuJ5iXn8Q==
X-Received: by 2002:a5d:584b:0:b0:3a3:6a1b:6885 with SMTP id
 ffacd0b85a97d-3a4cb486043mr6616468f8f.47.1748252180662; 
 Mon, 26 May 2025 02:36:20 -0700 (PDT)
Received: from jiri-mlt (37-48-1-197.nat.epc.tmcz.cz. [37.48.1.197])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3a4babec83csm13835277f8f.80.2025.05.26.02.36.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 May 2025 02:36:20 -0700 (PDT)
Date: Mon, 26 May 2025 11:36:18 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Cc: donald.hunter@gmail.com, kuba@kernel.org, davem@davemloft.net, 
 edumazet@google.com, pabeni@redhat.com, horms@kernel.org,
 vadim.fedorenko@linux.dev, 
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 aleksandr.loktionov@intel.com, milena.olech@intel.com, corbet@lwn.net,
 netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-doc@vger.kernel.org
Message-ID: <3unqj7hiplrlcaaq56hf24d6vohi6rsxu6b5g75s6aypjwqgwk@hpewzyd77dhq>
References: <20250523154224.1510987-1-arkadiusz.kubalewski@intel.com>
 <20250523154224.1510987-3-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250523154224.1510987-3-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1748252181; x=1748856981;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=akRWiY61vXSqwjUp4+3SAOB/I392KNgK//SHiZbby44=;
 b=B/FU8cLp4zgcFZi7JWtJ22s6lz2AmVrYbTyJEGC9An23eBcVdgSszxeYGoklNx8Qhv
 bOj6wr7CECFCldDu7+7pTJ3swsbXlCW9xgwdSDMHtFnWZDPnUfpHT+SkM8fYTfr9fsPE
 UVI9c0RfvxiaG9mgCk+eaqFk3Jf2t4FU7Da42nV94EY2XgPJJ2P7LKuuUvLfBhbvE2Zp
 Xf7orNTreRmAXquy4Cn2KpBMylg39pxT0aulBZvbIf4EMHeOGoowkDq2wbxXTJ/LyBjj
 7TBUzTlj5tkraOiU0prh4Mb2BMnWBIZ3OACU9iV6sKbp+k1SXoHZBXOGxKITLlWCq5O1
 K9ew==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=B/FU8cLp
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 2/3] dpll: add
 phase_offset_monitor_get/set callback ops
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

Fri, May 23, 2025 at 05:42:23PM +0200, arkadiusz.kubalewski@intel.com wrote:
>Add new callback operations for a dpll device:
>- phase_offset_monitor_get(..) - to obtain current state of phase offset
>  monitor feature from dpll device,
>- phase_offset_monitor_set(..) - to allow feature configuration.
>
>Obtain the feature state value using the get callback and provide it to
>the user if the device driver implements callbacks.
>
>Execute the set callback upon user requests.
>
>Reviewed-by: Milena Olech <milena.olech@intel.com>
>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

Reviewed-by: Jiri Pirko <jiri@nvidia.com>
