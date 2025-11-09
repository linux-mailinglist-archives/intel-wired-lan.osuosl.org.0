Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E9744C43BE7
	for <lists+intel-wired-lan@lfdr.de>; Sun, 09 Nov 2025 11:40:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6F044808BE;
	Sun,  9 Nov 2025 10:40:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nVMjDrJQWKK0; Sun,  9 Nov 2025 10:40:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D115A808C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762684800;
	bh=M9k5NU9CvPXHOQFjRFf4cyiGap0OxcUU7zGSG67KNV0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qY8DdBEeKHgXN3F2xe82UZaptUUXu9VmOVtOhzM+/1ZMo96bzAnCliphtTJ2ntOPo
	 usOK5zZzc4zwYou0rbni3SZNSUXHftz1n4ngcC1JO35e48d8NpRKPtMRpM0YHmtlEj
	 h/xcN5mN/ahlWF8KVyyCrJc5qeFhwANe+RewM5egM2/qPqT49U/BYKM/Z3gvMuynuR
	 /U/xm0r5QEK+DrRFNZw9aqXgy1ZjuY2GNAyBMS8cDNHbvZRhnpJ6DZ7scjFGLoZNMY
	 mTrGQzMBep9z1AgfjXw4lrp2nuuZp02GMN8Eo7xrBVdhQA+qarsNyEhYOtmjkmUq/z
	 z1A1c7jzsb4Og==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D115A808C2;
	Sun,  9 Nov 2025 10:40:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 199FC25D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Nov 2025 10:39:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 002A4405DF
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Nov 2025 10:39:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RmqGgo-1jpB9 for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Nov 2025 10:39:58 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::636; helo=mail-ej1-x636.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 45981405DB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 45981405DB
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 45981405DB
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Nov 2025 10:39:57 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id
 a640c23a62f3a-b713c7096f9so298976566b.3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 09 Nov 2025 02:39:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762684795; x=1763289595;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=M9k5NU9CvPXHOQFjRFf4cyiGap0OxcUU7zGSG67KNV0=;
 b=BqnxZnc6OiVBTRXLYQlYSNvMF2ba4gQJER68Ia/HCqLqyFCw/HMvIhF6wIy2COxj+x
 4S8Bi98vf1kQBi8PgvkBexG9TmjQWWwH1RJoIyorbEF9qJY/+bxNCDMZ+geA81gpywjm
 KfoWYtHfi5M8ba3juNE72382aizK3zkseU/atf+4Y0wrp+k+GxQz40bCtFOkHfVi9Naa
 X8fpUQVgOBaRekU/h9SzCTlUN2ib3zoZmWW3dsJbrihP+K/qp51kItAdRdM22aE2+r6O
 LJ30KzKChTHmXGozgFK2AADcwzDF4Tq8AwFcMJUKuzipRU5Fonuk9yNqnoD5FOStv104
 5uMw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUPE9sOLJDnMAFp07V/2l0xh3706I4fBK8h+uxOfjRWmOr0BAlwZ8gH1DnOV/xu7lsiz3REN14SAmEGouO3DV4=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yztn8yDIpvflfii7Lc+o0zNu6HrBkBB20NOhTlmLOgGLMhmMRua
 ODDLAoayLqhpoJJWEQyroyKLcugajfqFipnvuKEQs9cq+TSk0gQhoHnWbzN3UfAjW74=
X-Gm-Gg: ASbGncsanRqc71w/ZiFrHJkZDM/AeYHWeW6RLbNHwqOzIhf8rbf0SJRPMFNCmt1ZQar
 ckOxL/Un8ZDtLemI2ZR1mWCTiu+ABgFafnBBLmh4Hh6RPjIT0OS099cHjFE+S3+wzES/R73Is1b
 e+G4YPTmFS7GKtBzSK3Nskr+8flrdjojN5wwe6a3e7DViAG+v1XgjmhCRf44+GLv+1/exBXcxvZ
 hRBmJAwMncOdeiB85lRMHh3jdjNeomctLv2gFNAgjvngRQhkFktjIfvIuQ3YmHr1UfaHRVC7/F9
 aGhUE1cVqdf4wJRLPeY1IeodmNYfGHA/zE3Rcda2ux7bmRjQTVlr2ILUxYWt698LJZ002DU3iQb
 /MczLbRu+KWexIjHlV/XIgN4g91mbjQtpDGFVpiq+hCu/HiRxTar0nu31o9IfaXlJDMDeTo++Nv
 h6XNmqDnwkmUmoa4RO
X-Google-Smtp-Source: AGHT+IGiAUMWo+QvSERmjIIMyP89hGQRiOZTK4ZUYS5n6Hi8A+5UCIsgg27hL+sayFE1WTxmR9XApA==
X-Received: by 2002:a17:906:6a08:b0:b70:b83a:73d5 with SMTP id
 a640c23a62f3a-b72e0591f8dmr463037266b.46.1762684795103; 
 Sun, 09 Nov 2025 02:39:55 -0800 (PST)
Received: from jiri-mlt ([85.163.81.98]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b72bf97d0f3sm813415066b.48.2025.11.09.02.39.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 09 Nov 2025 02:39:54 -0800 (PST)
Date: Sun, 9 Nov 2025 11:39:52 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Daniel Zahka <daniel.zahka@gmail.com>
Cc: "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, 
 Jonathan Corbet <corbet@lwn.net>, Srujana Challa <schalla@marvell.com>, 
 Bharat Bhushan <bbhushan2@marvell.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, 
 Brett Creeley <brett.creeley@amd.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Sunil Goutham <sgoutham@marvell.com>, Linu Cherian <lcherian@marvell.com>, 
 Geetha sowjanya <gakula@marvell.com>, Jerin Jacob <jerinj@marvell.com>, 
 hariprasad <hkelam@marvell.com>, Subbaraya Sundeep <sbhatta@marvell.com>, 
 Tariq Toukan <tariqt@nvidia.com>, Saeed Mahameed <saeedm@nvidia.com>, 
 Leon Romanovsky <leon@kernel.org>, Mark Bloch <mbloch@nvidia.com>,
 Ido Schimmel <idosch@nvidia.com>, 
 Petr Machata <petrm@nvidia.com>, Manish Chopra <manishc@marvell.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Siddharth Vadapalli <s-vadapalli@ti.com>, Roger Quadros <rogerq@kernel.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Sergey Ryazanov <ryazanov.s.a@gmail.com>, 
 Johannes Berg <johannes@sipsolutions.net>, Vladimir Oltean <olteanv@gmail.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Dave Ertman <david.m.ertman@intel.com>,
 Vlad Dumitrescu <vdumitrescu@nvidia.com>, 
 "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>, 
 Lorenzo Bianconi <lorenzo@kernel.org>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-omap@vger.kernel.org
Message-ID: <mfuluoi4nebyc4avj52gkfs4nqikn6uwhqnkf4o6xfswtpceuq@zhpokcx6bb6l>
References: <20251107204347.4060542-1-daniel.zahka@gmail.com>
 <20251107204347.4060542-3-daniel.zahka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251107204347.4060542-3-daniel.zahka@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1762684795; x=1763289595;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=M9k5NU9CvPXHOQFjRFf4cyiGap0OxcUU7zGSG67KNV0=;
 b=J3O02WZU4v8bkphfm5yBP88bD0AdcA8+gB46gdfZe3aoTdTC7exKdMjn2LYYf/A5kt
 7LcQrFN6n+/u7vjeFFgtMudxx4h2O87E3da9RgrGFxYYUzcBvulL5WD+EyqO7pHMV4U9
 SrCTCLxndcWL9uFjZ9QQy8C5g5RWzKomOh1PDIJKrxtWXUsw+r0hSSzRvQnJnOOwdG0N
 vepp2lxkduqFHJN4XXVwd6AihSW0Dg3yq5vaw0Fj4qFAm5uOBkfGR8pY32jyBfBCpSbA
 oG/J7syaNZFdMnhOYlhEkgQc3r8m0vO6aqAqwM6ebUpQN6K7tRc49t6sSX191lgCiZpy
 J6Wg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=J3O02WZU
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/2] net/mlx5: implement
 swp_l4_csum_mode via devlink params
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

Fri, Nov 07, 2025 at 09:43:46PM +0100, daniel.zahka@gmail.com wrote:
>swp_l4_csum_mode controls how L4 transmit checksums are computed when
>using Software Parser (SWP) hints for header locations.
>
>Supported values:
>  1. device_default: use device default setting.
>  2. full_csum: calculate L4 checksum with the pseudo-header.
>  3. l4_only: calculate L4 checksum without the pseudo-header. Only
>     available when swp_l4_csum_mode_l4_only is set in
>     mlx5_ifc_nv_sw_offload_cap_bits.
>
>The l4_only setting is a dependency for PSP initialization in
>mlx5e_psp_init().
>
>Signed-off-by: Daniel Zahka <daniel.zahka@gmail.com>

Daniel, I asked twice if this could be a non-driver param. Jakub asked
for clearer definition of this know in that context.

Not sure why you are ignoring this :/

