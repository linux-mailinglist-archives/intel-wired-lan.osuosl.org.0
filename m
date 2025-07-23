Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6B0B0F526
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jul 2025 16:23:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C7D380EB7;
	Wed, 23 Jul 2025 14:23:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kLzeNX_bQ2yx; Wed, 23 Jul 2025 14:23:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 79C0E81063
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753280618;
	bh=UxwHaK6YDUmdrsdUjFROIjJz+2g48h51kQ60Ua/P8/U=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=tp1S3YkEmY7rDQZXVoDGBloJFx93XB3YlmG9WqdA/4NiBEowEVWHMjX11iZ+ZZ10n
	 6Lt0928gtxCONxtQxf8wjmzPSjfcAYo5LihXMKHlmYWDk0tiXflY6w701VWRN/Smoz
	 oRkPkV0wM2nGMKrmo83BsLZxhm8TviL4xjhxeL1TIihbL1zWgNuLt/UVGM2Q2FRvbQ
	 HLfIsGz8pgFmyhpavB6CnrwhlKxMte5F/mH10uKE3Wf7edSjTFkJGoBDcGcVYD4vzY
	 lplqEr4RIy99CXvNFA/wPC+UxmFNsVX+ndoBakfppv/O/2iX/+DRte/XHLxj9/p4no
	 BgjKLGfrNqDBg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 79C0E81063;
	Wed, 23 Jul 2025 14:23:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id ADA1ACD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 14:23:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9F3D540F5E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 14:23:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Id4XHLB51zUU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jul 2025 14:23:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62e; helo=mail-pl1-x62e.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0F58140F3F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F58140F3F
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0F58140F3F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 14:23:36 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id
 d9443c01a7336-23602481460so65991715ad.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jul 2025 07:23:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753280616; x=1753885416;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=UxwHaK6YDUmdrsdUjFROIjJz+2g48h51kQ60Ua/P8/U=;
 b=lNFmyijEyPa5Yq9IHYfkkGoPsV98mBZ+2oWT7WjYeL40cAxPTRq5ONb7qVi5VwKsFy
 K5DJqFsTQNtsZMguXeZU0S/SYIT4lm7e36sN5kFiHJvJ8Xxp0k8+gwO9erbT0bM509UG
 xMmYI0dufYX8fA6ejsbnhIAlqOrCjw+mJOjFSJaJsKNp+xuecAA71J11tC0iM0/Wz2ZE
 Nzp+9nAi27GIljy9qpITh4Z6jXnCFqPkRMhhnRRcccwlEP7O731nGyj15mx9A29QvDu0
 aYHI63Nddk2N5P2H9vgghEdWnL37YIyL3UPRysDWLovXDnQaxBJpipYfLL31RmieSY7V
 0ftA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXIUUpkZf1eYfru7TxSCHoRYPA2JwPXwPtxMtnoFwWdVvkUXmYXgvp2efCFoJ/DlL18SoM5YTde0VHzk1Npkj0=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw6bhnDkJCV9mFFCYpO/VAvLlBvjrgJqr/xLDlvs2NMOjshrux/
 HbxBPDPqhtH18r5qm23zPgsgVlEBJEzyVWiHYcHGphoeqdZw0R0skvmQ
X-Gm-Gg: ASbGnct1ZD2kwf2350ln5XTTLH082m+pzb2U4hTCxl6sGcbosaj6nvvp2lBgNciyDGB
 YOiLXqeoF3RfZsEmjBSCGqwtB6cacnUJ8PZOcjupHZfM4ujViDDyWRwiFBEwEclydOC9hQeOGAK
 Uw1n8KDVkFAm8zTa8KOpR5rWFbeU3murtJ5ibs2thJBQIr0qYmv6C4TTmzN691tpBdOaiZQE7XG
 NsIicsGGpdgoYOYYvC6MxpeGlVEp+fsWO+8BxNSIYaCj8FKWjpKcwI2ClO0zqBIaISJn0XdZDS+
 DVeKSVV+h/vfLIlET06UyiMw1Jq+YgVvoER/eunzs9TTI6f+jTtZkO1oqcGgK6GYXJ6WgRrq7WJ
 MtZKkJlGznkxRQIaMwDXHgqgZbtP14LV6soXqOh/znKxIAcqGXnU4y0RNep7FVP75WyMsYQ==
X-Google-Smtp-Source: AGHT+IEd0wy3eDFLecrSHW0WlQqhyyQ7MxV95sUDV+ufUcT8vx5C+vZm/dLJytY/egk/pAWS9HDwiA==
X-Received: by 2002:a17:903:230c:b0:234:a66d:ccf5 with SMTP id
 d9443c01a7336-23f98235191mr55549135ad.49.1753280616283; 
 Wed, 23 Jul 2025 07:23:36 -0700 (PDT)
Received: from KERNELXING-MC1.tencent.com ([111.201.28.60])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-23e3b6b4a9esm97929595ad.93.2025.07.23.07.23.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Jul 2025 07:23:35 -0700 (PDT)
From: Jason Xing <kerneljasonxing@gmail.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, bjorn@kernel.org,
 magnus.karlsson@intel.com, maciej.fijalkowski@intel.com,
 jonathan.lemon@gmail.com, sdf@fomichev.me, ast@kernel.org,
 daniel@iogearbox.net, hawk@kernel.org, john.fastabend@gmail.com,
 mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com
Cc: linux-stm32@st-md-mailman.stormreply.com, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Jason Xing <kernelxing@tencent.com>
Date: Wed, 23 Jul 2025 22:23:25 +0800
Message-Id: <20250723142327.85187-1-kerneljasonxing@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1753280616; x=1753885416; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=UxwHaK6YDUmdrsdUjFROIjJz+2g48h51kQ60Ua/P8/U=;
 b=a+sk7L7/Kqhj4Xesau6FtoQeUXkuq+IOKJIgpC3TcubmoHe8aGddjrLdZ8ZeTvBCFd
 WixyyWC22i1msPC8Bo0PQ0SHZQr2e40tzzjkCf6uGYlEbQDnBo/t4x4WisGFqv28p6WU
 o9qHlL9laTUgdUo7UudNj7S22dGZJMpZrMtJg3PUi84x+lvMA3rsRs6HvQ4Njmzp4pCx
 tul34CvxkFEs7syXcvAnaoCqTcWODQbM/ZUZaohgTyAPPmngyi3fK9NxO7fX4mANcHVC
 Vw5Y4R2xmB5QVMPBnP7RdtT49Ow7NnQXuVyxt+g3eMR60a+UTnscitMfgfHO+7gF6ADC
 An0A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=a+sk7L7/
Subject: [Intel-wired-lan] [PATCH net v3 0/2] xsk: fix negative overflow
 issues in zerocopy xmit
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

From: Jason Xing <kernelxing@tencent.com>

Fix two negative overflow issues around {stmmac_xdp|igb}_xmit_zc().

Jason Xing (2):
  stmmac: xsk: fix negative overflow of budget in zerocopy mode
  igb: xsk: solve negative overflow of nb_pkts in zerocopy mode

 drivers/net/ethernet/intel/igb/igb_xsk.c          | 3 +--
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 2 +-
 2 files changed, 2 insertions(+), 3 deletions(-)

-- 
2.41.3

