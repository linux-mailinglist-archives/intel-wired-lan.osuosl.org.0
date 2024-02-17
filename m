Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D5994858D75
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Feb 2024 07:18:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C5ACC840C7;
	Sat, 17 Feb 2024 06:18:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CDDm37ZmL942; Sat, 17 Feb 2024 06:18:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 15237840BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708150716;
	bh=HDGjIiHl6JexBertXG8SmqhqLZJIWv57C2E5U+Ef8c8=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aq/1jKLmWxvrThQxyCgX0m4Z/lAdpJ8uaILM9mGuRT0/AadQqlnn3ev/iGo/ixEvK
	 3I8mcJB9e53LOX5+lfyymTVmXAk9S6+xAWuN7messTmMiKdZ51NfCU1VkQ5WWDl0Z2
	 Tn2/fs489T3tGD9FbmfRRWX61zAeG1kg9Byu505N++ZxupJNS3bSjv1R1yFnUcBa21
	 eMI7QBiEtgWtoPEKhvVenGxDoVLQQrhVh2cMjaikD4ncim2AwKRXEvDXYX7zKjMgEz
	 ewEWiOIcRxV2toMMzj7N5yr52tnjznBQJJM1v4m3xCp9CawOrgiXRJoOXgCnv27dcx
	 MIIjfn+cdn8kA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 15237840BD;
	Sat, 17 Feb 2024 06:18:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8B6DB1BF23B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 06:18:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7666440253
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 06:18:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CJI1DcmKGko3 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Feb 2024 06:18:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b2e; helo=mail-yb1-xb2e.google.com;
 envelope-from=hayatake396@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 693BA40192
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 693BA40192
Received: from mail-yb1-xb2e.google.com (mail-yb1-xb2e.google.com
 [IPv6:2607:f8b0:4864:20::b2e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 693BA40192
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 06:18:33 +0000 (UTC)
Received: by mail-yb1-xb2e.google.com with SMTP id
 3f1490d57ef6-dcbd1d4904dso2972843276.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 22:18:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708150712; x=1708755512;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=HDGjIiHl6JexBertXG8SmqhqLZJIWv57C2E5U+Ef8c8=;
 b=SdKv2Bl5P2/BN13Eh3gfTuTrJQadrQrXbzknDtBJi5zmEjEXJgW5BjAZtVIibZo/o+
 SFnXBY+lvSkllzKiPLoE/ccdFyoucw73Rcf9VEj8Tl72tM0aHJWOoBHmBx1+B7puuNO3
 NlgKmFVMhWW8RraCNMpedXwzVvMYvbBqDDuZzsGHwuIdi888DAB1/hfjbOHIk12eIvIE
 oGHWayHx4vbhaZnVHcRkzRCfzj2hp+U5vZzN4Bx6AQp++gbQNSmIsRDbprYYtnmiHzzs
 E4fp0watr2dxhLpP+Q6WTDGMZTP6cO/XJhjuShYmEFtN01qcVQn2W/Jh69US1qM1KYuv
 kvOQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCX9CTctVn8mqg8G/oFlAkkhSFH0I3n1QPhMs++zp0qW8KuX+k7HZqM8ZS84IvyfebM1UoD165eIXYvfpTAPtMNlmTU6Sm7lL5PHljK54CD5pw==
X-Gm-Message-State: AOJu0YyWSz4Pqu3eLvVyuxKTSUkqto6zuyd38clRd7T4AObIpFf83heA
 9PPXGAUb/3nHrVi5kEqI6/9wSVYQilhbEbeoJ52DDIgJTT6kWFlu9UksbYg1oYofpEhW8TDxVIe
 Nv+GnyQlWM5vKxKtYf8h2/EyqcNw=
X-Google-Smtp-Source: AGHT+IHCh7huCKCOiKjghM4S6CgmsfthTmyxRgJc2uBOcAsh9Yi+EnV9V7BrFKj6FNlpMEtJpumjLDc02x1w5ZVLeXU=
X-Received: by 2002:a05:6902:2487:b0:dc6:e5ef:3013 with SMTP id
 ds7-20020a056902248700b00dc6e5ef3013mr8370316ybb.0.1708150712074; Fri, 16 Feb
 2024 22:18:32 -0800 (PST)
MIME-Version: 1.0
References: <20240212020403.1639030-1-hayatake396@gmail.com>
 <CADFiAcL+2vVUHWcWS_o3Oxk67tuZeNk8+8ygjGGKK3smop595A@mail.gmail.com>
 <8eb6384a82fc4c4b9c99463a6ff956f04c9d5e33.camel@redhat.com>
 <bad0da2c-546b-2e05-feea-d395439a0bb0@intel.com>
 <CADFiAc+RP91PfEBAnwbABjrHJkdLc0=nm3_TE=+ZaN1AiVQEEQ@mail.gmail.com>
 <b227037c-16e0-37b5-a5ac-cf8eb0d3556f@intel.com>
In-Reply-To: <b227037c-16e0-37b5-a5ac-cf8eb0d3556f@intel.com>
From: Takeru Hayasaka <hayatake396@gmail.com>
Date: Sat, 17 Feb 2024 15:18:21 +0900
Message-ID: <CADFiAcLo+3L1DVHaKpkPg8MXq=rDt6ykO==Q5hrW_-yV_mKbsQ@mail.gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1708150712; x=1708755512; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=HDGjIiHl6JexBertXG8SmqhqLZJIWv57C2E5U+Ef8c8=;
 b=lgOfxFk1YKk+XvAEyvVsqXPg3CCj2fuRMlZ6I8Yi+bI6S8GjbsBSjgrdZ3OMzkWzkb
 OUWwJEvY2h81Ok8DmHyBWMmmpInHorOy/XCvIa7ehevCVJvnfTQzeeFSwvBGTEPxgt4O
 oLQiDFVkL0pTeR28+YrEe+hdPrnolEpHEeuMTbqF4qUZHxBM8rut6U09omLn5V81P3Yw
 7vs8cNkhLid0iFt5CGfQkp7rvtkJamdGuFjkbdr2l3KIqhDpvrRDiKVpbVPiO1rbyT0H
 xhOYC/XruWG1dywvhHm2vqc8N8TAUQxeXwEM9sviPJv1eFCThaoOyAj1+N4wOGHWGXeA
 cv6Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=lgOfxFk1
Subject: Re: [Intel-wired-lan] [PATCH net-next v8 1/2] ethtool: Add GTP RSS
 hash options to ethtool.h
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
Cc: Jonathan Corbet <corbet@lwn.net>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 laforge@gnumonks.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, vladimir.oltean@nxp.com,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, mailhol.vincent@wanadoo.fr
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Tony-san

Thanks for your reply!
> Everything is good for now. If we have issues or questions we will reach
> out to you.

Okay. Let me know if there's anything I can help with:)

Thanks
Takeru
