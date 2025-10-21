Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B120BF7EAE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Oct 2025 19:34:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0309E80F3C;
	Tue, 21 Oct 2025 17:34:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wclFNgM_PdWL; Tue, 21 Oct 2025 17:34:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4CB9780EF7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761068061;
	bh=aQ+zArbjDCMGCO6Bvb9dufDVd7PF4/gLdFb+sRMsH6U=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=8gypz9zSOxH8WHRJq7bFE7dJbJPqmas6krVxGzQzFPBTCHJWtYibvMI3jkUtXE1bk
	 jA5134T3EnhqSTE5FySMSINtewBZ5X3tfwgt7jeIEXJ29TEjjei5+wXZyl3wWjODE7
	 r4kRk/duRPicOM0mpgOAwE2BvX20P3+IDZaoTcNNq3LXtWsW7rSDYrVszBpIa79j63
	 lcadbRO4W95JJQ5jKJo2uj4L4t9sW4ADz2ZJTSgnfVU5QmToOD/nQRqvr7owqtH7Pg
	 00I22f/CtgHHwb9XMIfCxNEiOg5tdR7rjtbd3yUaOJ54vTWMSOgQEOfiZGkrC/+u8u
	 mKQhAhusmwZyA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4CB9780EF7;
	Tue, 21 Oct 2025 17:34:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id E789443F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 17:32:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E5006406E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 17:32:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t1yMS40AqipC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Oct 2025 17:32:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::433; helo=mail-pf1-x433.google.com;
 envelope-from=alessandro.d@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C29B1406CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C29B1406CE
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com
 [IPv6:2607:f8b0:4864:20::433])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C29B1406CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 17:32:11 +0000 (UTC)
Received: by mail-pf1-x433.google.com with SMTP id
 d2e1a72fcca58-78f3bfe3f69so5173153b3a.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 10:32:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761067931; x=1761672731;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=aQ+zArbjDCMGCO6Bvb9dufDVd7PF4/gLdFb+sRMsH6U=;
 b=WCt8KHhJeadoqU2T9NM6I2G8Zyd8sihUmYMrCoDQ8EkgiQXrU/cY2qFVq1WqPfHiVd
 csxSzgQuSne1UFlDp6b5B5nf682GAtu4KQOiK5ZIAV6Yw2APVxe87LTAnEKkOJ+l1UK1
 GJokDO8FwbZzOaVoqQ5HbhpYJc6ySAr4GWicgkt8kppzUXWNixc9MZyQZZ5KsnOxeBPT
 y9yJ5WFc5XvAobx2RHdHyKgxGp5IV6uVTG2IWx68te70fouJ7ohwztZdlZLHVahP/rTT
 Kzo7cP7BeHPSQpMKGXw3VNHzbZRMfdWYmRrOJHVmQjXvOgQr2MtBP14agnveIp8zNKyc
 j+2A==
X-Forwarded-Encrypted: i=1;
 AJvYcCUkjKMJCaaAJOmw7vVLGizQa9zj1+QWfJZfPAJZu4pApT4UbVdN65TaZhVDE6AKP0ZqScXKRf3shvab0c5/YpQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxIz1CCjmAZnIGD9v3s1te/5GYDYNuYjNG+IFyfzeosOUmPuSQN
 o051GpEhUxEnpbQZhcSgREtP+hs94vTuqrQZHMPD/5z/dcVpvaqZqe9l
X-Gm-Gg: ASbGncsmsvUpLo5DjsffGgJk2YSEfMTVIdBxRFkq6ebLHgtQTQFgmfNSzsQ0Zo2ZHQ3
 z+4i9124W7J1IRwnBwDnuJjjUvRYTotySbD5quQCJvH6H2e6GTLle4Xu16lT/etEgRbK+CI5lRJ
 cV4xQpqOMy0g3Avu4ofip7yJUxwaujvmnkSXy5HYTt06Yg9Ounp06DkDrs4n7c4LR7p1RnIT99J
 UZ5+xs6YPuf6TVVIb+N5j77D3/hxv+smDRqPi9HkWiQ07yl/8y/ESOX+zF89PabprPrW1euCMBm
 R7ddmFjP4fyrvCVNnFUkkumrs/fzDkrEDdOSpWeir7Jp8JBw1kqUY2oomazFeH/XdaxbgeavdlW
 k4A+h+tObazIqynV7D+m5CTmw+MyXXStt+kDU9A7gaZfQy+MftyU8rqZr4oCKULGWzTqF0Xub8Q
 1TaFCsIRJ2HourgQ==
X-Google-Smtp-Source: AGHT+IHBTh8hb/ic48yiyeOWMvVLJaZLWfjl5/Ft3cSUM4e+h+FFQOTWZmBhfmoXN8HdMJnPfxcabQ==
X-Received: by 2002:a17:902:c950:b0:292:fc65:3584 with SMTP id
 d9443c01a7336-292fc6538acmr13530505ad.50.1761067930650; 
 Tue, 21 Oct 2025 10:32:10 -0700 (PDT)
Received: from 192.168.1.4 ([104.28.246.147]) by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-b6a76b346aasm10941006a12.20.2025.10.21.10.32.04
 (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
 Tue, 21 Oct 2025 10:32:10 -0700 (PDT)
From: Alessandro Decina <alessandro.d@gmail.com>
To: netdev@vger.kernel.org
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Alexei Starovoitov <ast@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Daniel Borkmann <daniel@iogearbox.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Stanislav Fomichev <sdf@fomichev.me>,
 Tirthendu Sarkar <tirthendu.sarkar@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Alessandro Decina <alessandro.d@gmail.com>
Date: Wed, 22 Oct 2025 00:31:59 +0700
Message-Id: <20251021173200.7908-1-alessandro.d@gmail.com>
X-Mailer: git-send-email 2.39.3 (Apple Git-146)
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 21 Oct 2025 17:34:20 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1761067931; x=1761672731; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=aQ+zArbjDCMGCO6Bvb9dufDVd7PF4/gLdFb+sRMsH6U=;
 b=nodqNJw1V0z0osoSc3avXOUkYQQBn6YmiIyghlAGaJ0p8jlffrtxSmcxFhxorgHV+W
 NzgokucWVNWxRQQPlGDxlAPqX2sbmm/uzS+zXopNsrJy+L+7Wac8km0+LNIwWeqHUpoU
 dloLJFlrXO+qKLGyiyE3QVqTDOS7LhrxzLdEFuSBekMkWaqpHfdHJCZalc0sezlqXq4D
 NpCI92IdqQQi/8dktksoVCq2qnT05HX9khjHXjIhHlpLBKyrBOrBaY7AWbFyiXVsodk/
 W0Qk8Z0lss7f7GUVF+fMXE3l7TfOLgOhFekMVFI2D9IPRN7Ajfl30+HqPzOnfDGDMABY
 0Ylw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=nodqNJw1
Subject: [Intel-wired-lan] [PATCH net v2 0/1] i40e: xsk: advance
 next_to_clean on status descriptors
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

Submitting v2 since while linting v1 I moved the ntp definition in the
wrong place. Apologies for the noise.

Link to v1: https://lore.kernel.org/netdev/20251021135913.5253-1-alessandro.d@gmail.com/T/#u

Changes since v1:
 * advance next_to_process after accessing the current descriptor

Alessandro Decina (1):
  i40e: xsk: advance next_to_clean on status descriptors

 drivers/net/ethernet/intel/i40e/i40e_xsk.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)


base-commit: 49d34f3dd8519581030547eb7543a62f9ab5fa08
-- 
2.43.0

