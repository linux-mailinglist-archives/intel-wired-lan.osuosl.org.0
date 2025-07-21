Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F324BB0BEF6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Jul 2025 10:33:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9E05D4279D;
	Mon, 21 Jul 2025 08:33:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eOrQsUJKIfeW; Mon, 21 Jul 2025 08:33:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 22EB542794
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753086834;
	bh=9fsE2sNuXpdXdhRH0OAvRrhIA0vlIXlgXbN8nwt6iNk=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=82kC/GB1xfCdTZe6ar+//Yj1p0InqX7J60KRV8XB4lORvCwluDAIlzbvvWUksv3TU
	 LQTMyRKuazxi4mYA91lSJ2AeJuOyEwHTKKcLxS95mDbci0kFzkI0BZfeWeQpTcj7pH
	 uIC/sROSlOnbrAUcrpPL7SfyDN5WncCHMTd9Ly364asfiZHWbnIgTV0rpzrR1ABkkw
	 tUf/DX2JBVxDIzad6BfOP0OwHeKDN4KEroiMvmvUeUZqiY9r4Nx0zUuUgVdW++upOO
	 tqVJaLMx48SBn6MUDwfvZ/4alfFwXfOswzLD2svIYIQ97AkQF1/K1cFhXxlBAE+5am
	 yt+QSlLwYWyIw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 22EB542794;
	Mon, 21 Jul 2025 08:33:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id A6DDB1F7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 08:33:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8C67E40070
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 08:33:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kMg463vjUa1Y for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jul 2025 08:33:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1032; helo=mail-pj1-x1032.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EDEA140010
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EDEA140010
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com
 [IPv6:2607:f8b0:4864:20::1032])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EDEA140010
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 08:33:51 +0000 (UTC)
Received: by mail-pj1-x1032.google.com with SMTP id
 98e67ed59e1d1-311d5fdf1f0so3243815a91.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jul 2025 01:33:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753086831; x=1753691631;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=9fsE2sNuXpdXdhRH0OAvRrhIA0vlIXlgXbN8nwt6iNk=;
 b=rfb2r0CmK2334QjNcbGAmerafXGhuC9w3bplDkpZEvXDxW1nNv6IEN/9zsFBaI9L0a
 J9tnpPCWqSc6kJKY7kx+JvZuAr6zuQ+NLeVsoOP/5UT/CPJ7sHj7bp5XrL6PHsW/oZrw
 32GdgcAqKm9J9vgpq2HIXFN1Av5N4Q7KAFP8muvK21uCt1fi8qtxq7HwqsKrNBD7+iSu
 /8s7q07OmDH0pGy2cg2sZ81OfYItHec4liQnGhEd022MHhx+PuZuITefnkVOjMDy29UH
 bz3BTTAI4AkDKH1EfMzrUkdtamuDK5CGPKX/25yZNjNKgfNjTClmqmmOB3VjEWWlhiVx
 dxfQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCU66HwFZp4PdjCn3JSxfZeIoiptRXTWO9IdkFYbMXiO3LhDWnapE2ZXkNyy3rZCeo7T0pwl+ukp2wySMipCJzQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw86kxhXZWc0DePCSNXKOIMDBsfgaWy4ZpELpAecAmUVvQqA5MG
 7Uxrwb3LcU3mIQHHT0XJIzc/hdQI3neTXM4rL+lLQPVf14F5JtRgzSM/
X-Gm-Gg: ASbGncujnqgtK0VTn6oT4Fwcjzll2WCXWeKvA/j1bsEi4GbAmYhuaESHtpeATlMWsoP
 jRFfAPICsOWYS0lpEGb6+kJoNFr1hHuwU9MSlFlurZclIENdfRi0LU3j4Tt8F+GxnIGyip+ri/J
 9es7iNyutEgmZUXn5/unbJy3CLbj/LeEHg9NNmQr5nKst7nReLbzQWAnU6HHAq3t1xAIQQuTiiG
 qrOmtKniViwdH6t8azxqID/+x9ExCxBdKYMUd2X/txTtMcyQ25moJ8pFT6EbeMpKY97/x5acM0/
 GDGT20W1MFXIDsBISCr0cp5Io2QFdZCzYaKM+yLX8oPrRSuzX4e//BHo6G79O1G84l6K3n7pWzr
 OpU9nPNjz9RhtMiMGYqwcINeuTiOI5z58hIIWgcg1/kR1nmtY4s78Qb9qR58=
X-Google-Smtp-Source: AGHT+IE8NhryGKMJDsH4u3alU+wk4yQjNrEdlHvCXHsLOGmQ4xHKQNG4+AcSzLJ7hhq8981ot0Wbag==
X-Received: by 2002:a17:90b:50ce:b0:312:f2ee:a895 with SMTP id
 98e67ed59e1d1-31c9f45b0abmr26601296a91.31.1753086831079; 
 Mon, 21 Jul 2025 01:33:51 -0700 (PDT)
Received: from KERNELXING-MC1.tencent.com ([111.201.24.59])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-31cb7742596sm7082116a91.27.2025.07.21.01.33.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Jul 2025 01:33:50 -0700 (PDT)
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
Date: Mon, 21 Jul 2025 16:33:41 +0800
Message-Id: <20250721083343.16482-1-kerneljasonxing@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1753086831; x=1753691631; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=9fsE2sNuXpdXdhRH0OAvRrhIA0vlIXlgXbN8nwt6iNk=;
 b=cwxKHVC46WlijCMf3wAv9D7fV/5JCUWs8OV6NhhvBUVSCCQI+rVkVmqwOew/yGiIF6
 hONZ0FPpp4v+YR8MaKPuUjUVFHS+KjQ1ptUzVXLcNal2AZar27zfdNUcI43CAlXyZfbV
 NPwFO9wu57H7eXJ0lc36RjK0So0W5wNzDQ50qlxmIY9oaK0qzrODFe7OLL5dQUkHtLd0
 YiONuNq3sqND4TKlXFPfNKI8lj3RCW94KkAsMHlIvqdIpwBlcDfOJtHuOB0krzq6HskF
 s9d+oZogTpRukOMRoeuRkdX0mbNS6zRx7ZYFfH8oVBKRbWyG747+h/U6Y28PwMw5PeFV
 KIwA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=cwxKHVC4
Subject: [Intel-wired-lan] [PATCH net-next 0/2] xsk: fix underflow issues in
 zerocopy xmit
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

Fix two underflow issues around {stmmac_xdp|igb}_xmit_zc().

Jason Xing (2):
  stmmac: xsk: fix underflow of budget in zerocopy mode
  igb: xsk: solve underflow of nb_pkts in zerocopy mode

 drivers/net/ethernet/intel/igb/igb_xsk.c          | 2 +-
 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 4 +++-
 2 files changed, 4 insertions(+), 2 deletions(-)

-- 
2.41.3

