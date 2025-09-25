Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C5ABA0256
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Sep 2025 17:11:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 87E3C84213;
	Thu, 25 Sep 2025 15:11:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b82BB3mmbARw; Thu, 25 Sep 2025 15:11:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 835F08421A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758813078;
	bh=GrzEpmFKJ08dCvz23e91yU1k/k8cQAq/gU1NwyJoAlE=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Cy874mPLbH115cQBCMDDdHF85sz80Ofz3oAWOAi2c7pqBJgSCqI6sUPms+1TwJ7/k
	 mVWswaa7Ux07l99ucRoNtFXvo3ejRZUC17YDQv6/Scbddqtyjhis6Azr6AekqUApbX
	 9O5jOmBmb1fhL1UQtpvKOnJpJomokiKknCnJbaRTQSpv+GYORLzQSlYUh6UCoZNZ4m
	 bWRtGOkA6K/JZpB0cdnoiiDUakJg13/sCwnzr+KZI75EWTIZXLmVd+S4oXW7EzD3qj
	 Z5PFLfntHdNDqEMS8FHTbZLzcA43akSmbLHpG2kQ0BGNWNqkSAHlXGo1L8eYuzfgX2
	 dWwqQON5uUF1w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 835F08421A;
	Thu, 25 Sep 2025 15:11:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 986B612D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 09:56:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 95A6582057
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 09:56:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4-4Pr4LkDzTq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Sep 2025 09:56:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::62b; helo=mail-ej1-x62b.google.com;
 envelope-from=jakub@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A258F81E9B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A258F81E9B
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A258F81E9B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 09:56:35 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id
 a640c23a62f3a-b35f6f43351so68408166b.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Sep 2025 02:56:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758794193; x=1759398993;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=GrzEpmFKJ08dCvz23e91yU1k/k8cQAq/gU1NwyJoAlE=;
 b=EUvcaunnXwiZDuM5fIVrFIAVqH4RdNCX8CAFeA0nilppX6QwpVRuQLd6uNv7/WfT2l
 inr3z5Qtr+dfuUMysHBdi4CMzhPnf4Fe4N8ImneK0vhmWVoYmIIX29nNT3emDepc7Gfu
 wK65VNnr80HCGjVwE9XNS0Lt5o4sDXVsZBM1Re59wME2QjsjJ+6JSfcwWRJPKfsbel9z
 Zj12EbC9CPdgd4ldr9LDV00nwdX7JchTT2pthKxvCefi2rNgXpu5K+bZaUOXf393lnR6
 QzlnRGCyu5eZnYpSl/o7c0SeFwTk+PCtrvJdiT7QcPzEZtqmcx5wGbGmF6iRu5F4POw0
 VTOw==
X-Gm-Message-State: AOJu0Yzeq+HSA8XAvakKL1bVpSoODaOJhXKO3SscokqytfSuqY+4g4Hs
 2N5CnN09BPvOecn1XQCz26AGBQbZzW49rl67nx+f8bvJyxKzSawuwsBfW/K9bmZAMRQ=
X-Gm-Gg: ASbGncum7VN5R3KgA2einnL9sxlcUN8itsUzDHDEdHaED9je13njv0Rz5zYwYWB16p/
 ST+ca3p9GXn9nDR0AwQhOcXaa71xbcFxrAbtVkmb5PDtE0IircbDZ7dA3Ubrnbt0HsLYmrh39Xs
 hdFs9EeDKRGTZpc6zxs7ImDXpnH23iT+p1/AERL0yTMU7FTtwNTDE8CIjn3XMqzhInJb97lv2LF
 eqY2cBnFEvyaGF2mmT8PUtWIhpKoa7/aGJ93yzVm8HhfNT7zD3TacG4Odhp0SlFzfYMjC/KmRio
 ks8vDO5QRwurkTeaOLWlxchdBZhS8JUkB/Ho0f3z08Jviz/Ug7Xhecr2eEuqtkbLMbNzA/E1t3u
 3wVi9J0BZlriIqTM=
X-Google-Smtp-Source: AGHT+IGKjMEcIpRr3EEKuOD0rD2TCapZ8lHREep6jZzrzi+iYypOPWa4NYN3C7vTMs0QmrtjLXw5IA==
X-Received: by 2002:a17:907:9719:b0:b04:6973:1ee9 with SMTP id
 a640c23a62f3a-b34b7105a20mr277447566b.16.1758794193333; 
 Thu, 25 Sep 2025 02:56:33 -0700 (PDT)
Received: from cloudflare.com ([2a09:bac6:d677:295f::41f:5e])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b3544fd0a54sm135005666b.86.2025.09.25.02.56.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Sep 2025 02:56:32 -0700 (PDT)
From: Jakub Sitnicki <jakub@cloudflare.com>
To: Michal Kubiak <michal.kubiak@intel.com>
Cc: intel-wired-lan@lists.osuosl.org,  maciej.fijalkowski@intel.com,
 aleksander.lobakin@intel.com,  jacob.e.keller@intel.com,
 larysa.zaremba@intel.com,  netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com,  pmenzel@molgen.mpg.de,
 anthony.l.nguyen@intel.com
In-Reply-To: <20250925092253.1306476-1-michal.kubiak@intel.com> (Michal
 Kubiak's message of "Thu, 25 Sep 2025 11:22:50 +0200")
References: <20250925092253.1306476-1-michal.kubiak@intel.com>
Date: Thu, 25 Sep 2025 11:56:31 +0200
Message-ID: <877bxm4zzk.fsf@cloudflare.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Approved-At: Thu, 25 Sep 2025 15:11:15 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1758794193; x=1759398993;
 darn=lists.osuosl.org; 
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:from:to:cc:subject:date:message-id:reply-to;
 bh=GrzEpmFKJ08dCvz23e91yU1k/k8cQAq/gU1NwyJoAlE=;
 b=e1rAzhCN96O3+Ti+z6HVSi2kjKMtBSJH44SkNhbHcdd5kXk5bKahPyhpQB7wrPFT9w
 BT2wM3Q+nNDe+obEmvfZhv0F/3riNMkVgxeMokTuP6TOAKF19rIYZBI3+Rp51iahuiW1
 ZtDB5rZBNXZ4vcjBkq2uJrGprX4z0EB1x0RLJAttupOF3E5uUsILMWjBSagpCFS0y1nD
 VujDxVeFEZcrEl1Sya7nl1jI6mDKAA3wXn5wcgCvA96FzcARE/AdTBBf7fZimBiiIRxF
 9Pv6foTevOdsxRYWRNi/jdDhPBQFkVlZL68JxQj7dbf/MEb6dgwv/44V979j3DbCl+N/
 djOw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=e1rAzhCN
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 0/3] ice: convert Rx path
 to Page Pool
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

On Thu, Sep 25, 2025 at 11:22 AM +02, Michal Kubiak wrote:
> This series modernizes the Rx path in the ice driver by removing legacy
> code and switching to the Page Pool API. The changes follow the same
> direction as previously done for the iavf driver, and aim to simplify
> buffer management, improve maintainability, and prepare for future
> infrastructure reuse.
>
> An important motivation for this work was addressing reports of poor
> performance in XDP_TX mode when IOMMU is enabled. The legacy Rx model
> incurred significant overhead due to per-frame DMA mapping, which
> limited throughput in virtualized environments. This series eliminates
> those bottlenecks by adopting Page Pool and bi-directional DMA mapping.
>
> The first patch removes the legacy Rx path, which relied on manual skb
> allocation and header copying. This path has become obsolete due to the
> availability of build_skb() and the increasing complexity of supporting
> features like XDP and multi-buffer.
>
> The second patch drops the page splitting and recycling logic. While
> once used to optimize memory usage, this logic introduced significant
> complexity and hotpath overhead. Removing it simplifies the Rx flow and
> sets the stage for Page Pool adoption.
>
> The final patch switches the driver to use the Page Pool and libeth
> APIs. It also updates the XDP implementation to use libeth_xdp helpers
> and optimizes XDP_TX by avoiding per-frame DMA mapping. This results in
> a significant performance improvement in virtualized environments with
> IOMMU enabled (over 5x gain in XDP_TX throughput). In other scenarios,
> performance remains on par with the previous implementation.
>
> This conversion also aligns with the broader effort to modularize and
> unify XDP support across Intel Ethernet drivers.
>
> Tested on various workloads including netperf and XDP modes (PASS, DROP,
> TX) with and without IOMMU. No regressions observed.

Will we be able to have 256 B of XDP headroom after this conversion?

Thanks,
-jkbs
