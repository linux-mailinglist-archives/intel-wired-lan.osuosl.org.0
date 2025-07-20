Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CFB5B0B47B
	for <lists+intel-wired-lan@lfdr.de>; Sun, 20 Jul 2025 11:11:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 97B6261070;
	Sun, 20 Jul 2025 09:11:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Hj5pV9HxHlJj; Sun, 20 Jul 2025 09:11:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 20A596108C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753002695;
	bh=iWrXKbM+G34xoKVnK1eplahDGaVhKpTnihCDqzU7Q9c=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=k+2wHgHNlCjgOum+BKFZ5vUXGjEMvm8hxPrXp5e0c+0t4EMPZPAg+Lbb4NdT+qaiy
	 ww2ER7/1qkV+6j+dltDKRgERN/qPJUxW1/VYUB7EIybcSHN4J5M8zojF2a11DXu4x9
	 Hzzce1c2qc/SsK6UEMXcXZqoGjvL8uRQSMjFmcTu4P19a4O7lDYguW0wbNXyBqelS2
	 po1mjCQbQgR+Go/i0v9dGl49EijGZEBapmvL4B+XSkSg3trdN1iqUszvG9CmoBTNXx
	 9w33A6bP6RTfh6is+xBvX2sKz+B21Ob6/D5UYPuKd3czA85P6Lg/aYVhlwOQBZTHUt
	 hWOQraV8PkC4g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 20A596108C;
	Sun, 20 Jul 2025 09:11:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C78C7117
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Jul 2025 09:11:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B88E484572
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Jul 2025 09:11:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sYa1NuirvdHv for <intel-wired-lan@lists.osuosl.org>;
 Sun, 20 Jul 2025 09:11:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::429; helo=mail-pf1-x429.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 32B7281ED9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 32B7281ED9
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com
 [IPv6:2607:f8b0:4864:20::429])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 32B7281ED9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Jul 2025 09:11:32 +0000 (UTC)
Received: by mail-pf1-x429.google.com with SMTP id
 d2e1a72fcca58-74ce477af25so2178181b3a.3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Jul 2025 02:11:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753002691; x=1753607491;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=iWrXKbM+G34xoKVnK1eplahDGaVhKpTnihCDqzU7Q9c=;
 b=v2qzW0soyv9+iNeTSrMCCnPD1DBgwuyS8No5Kvk2LeP+CGXQwc0qM/uQKoZhjjfXme
 YbfGeoCcOnY1tRfbc0MX769hqlACnIFO/4ThPiyLiqQxL7tlD4JUjPYQGDwjXajxdPGb
 IYdLk5EKfE/psmAzz6hLaOY45vdDQn1I5hnu95TbEejePz6PPGTtsqIubtEG6lwdoBX4
 zxhIT0EyCVKUn1enHq08jyEPYBTJ6mINN/2TJxkEkQbVCi8w9m4z2NrrdONSidpzXc9h
 JrqjrmjOCGSyhXoXo2Mu+vKSj9zMFL+wlCTaA5yCKrWAzBBlpqYXhSvYCA7BgKouDBiT
 3Shw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVIZYujrA27TY1S6uw/3DUHfeSPl4fkC2N8VRh7K/DfbeRl2oIPm5ORXXi9EszTK64OCowiY1f1Uroq5PY37W8=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw+6b7FZ9B8BNg4Qg0YhQkV/2f9fUS4U8NbpPCF72PZNBckPIfr
 zFUq4BZHi/L1EQcFhvLjgnZ8M/OYmQ/EyVJ3MHYZquu992+It3wqZxXl
X-Gm-Gg: ASbGncueSg9NflFg70MIHU7QedZmeI+a50trKpXv5DBa3FCPt6E4cUVKuOc/cwJsJDG
 w528cpdxZZPh3l0M8lXfwm55CR2B+uz8YEUoIZtKDNCNXoQANAxBS8X51BHClnW7poJ5ru7B/ce
 p851KNWWwnPHwJqgX80hK9de6d71EAa3+4baXSbZJ0WdNaqWXCd9O5GpnmH4MUZ+TXB/Dmvj8ep
 dlXkpDTD3S6P2Ha3vKgAqPJIghWgHA9eZBqvmK3ytNq2Bmx3tuwL8uR3m5KZ0Mnq2c3+x/0Asdt
 QIraINq4EUP6QU4u+c/koERTnBobWeuZGmnvjxB1rTBSr+kolbSbk2K13d/eLlaJxeFIgxw0U9L
 7KXV0dBSQaNLrZQ+7VtNt7utyFk0Wcyhqw6fXqToH88WvaercMdoOtl0lTtA=
X-Google-Smtp-Source: AGHT+IFxnWK1x+9KvMP+PbmzAvTkrGWlhYtcdtm8EXw47+H9FngwkBEW6Wbvc53qUZM+VZOp33M0dw==
X-Received: by 2002:a05:6a20:9389:b0:234:3932:2958 with SMTP id
 adf61e73a8af0-2381245729dmr24494413637.20.1753002691445; 
 Sun, 20 Jul 2025 02:11:31 -0700 (PDT)
Received: from KERNELXING-MC1.tencent.com ([111.201.24.59])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-759cb76d53fsm3902585b3a.105.2025.07.20.02.11.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 20 Jul 2025 02:11:31 -0700 (PDT)
From: Jason Xing <kerneljasonxing@gmail.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, bjorn@kernel.org,
 magnus.karlsson@intel.com, maciej.fijalkowski@intel.com,
 jonathan.lemon@gmail.com, sdf@fomichev.me, ast@kernel.org,
 daniel@iogearbox.net, hawk@kernel.org, john.fastabend@gmail.com
Cc: bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, Jason Xing <kernelxing@tencent.com>
Date: Sun, 20 Jul 2025 17:11:18 +0800
Message-Id: <20250720091123.474-1-kerneljasonxing@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1753002691; x=1753607491; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=iWrXKbM+G34xoKVnK1eplahDGaVhKpTnihCDqzU7Q9c=;
 b=NAVIfwOQFqHnLGVcCavVuyIus98UjUDJoVL41j2kW9z/l+qq4emsNhRZQnbPyGpGOV
 9uWflsS5udc+TH8kj39seWz2x+TM9Z6ci65tNb1ce5ke0ijt4hsjnDVsUbvyTKpPKsEE
 EZcSUmq42Yhc7x8yIWJZZSRJ2hQL18yQeDcvLJz2zabFytTH/V4t2RzDHjUUNhqwtVIU
 OmO54KrAw+RgUE0yB9qSENykRPo9M0NffHL52MSZvLC8kwAy4Wj+tzxMUBRMdVU2h+5D
 jwbeYCgU/GO1u4MRd1QUXqZbmaC+C50md9xpWpy/WVq3yCYEWy/7iOccRUxpr8OTQNzJ
 4oQA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=NAVIfwOQ
Subject: [Intel-wired-lan] [PATCH net-next 0/5] ixgbe: xsk: a couple of
 changes for zerocopy
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

The series mostly follows the development of i40e/ice to improve the
performance for zerocopy mode in the tx path.

Jason Xing (5):
  ixgbe: xsk: remove budget from ixgbe_clean_xdp_tx_irq
  ixgbe: xsk: resolve the underflow of budget in ixgbe_xmit_zc
  ixgbe: xsk: use ixgbe_desc_unused as the budget in ixgbe_xmit_zc
  ixgbe: xsk: support batched xsk Tx interfaces to increase performance
  ixgbe: xsk: add TX multi-buffer support

 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |   6 +-
 .../ethernet/intel/ixgbe/ixgbe_txrx_common.h  |   2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c  | 121 ++++++++++++------
 3 files changed, 86 insertions(+), 43 deletions(-)

-- 
2.41.3

