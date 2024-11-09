Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE8A9C789A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Nov 2024 17:21:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 14FE940691;
	Wed, 13 Nov 2024 16:21:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z_s68nZ3p-1l; Wed, 13 Nov 2024 16:21:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4D9744068F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731514878;
	bh=yKYtXxX3PpnBma4nIdw63BnV/Ds5TXBbvJ0ct3MPA5Y=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=8P/anOXkfUZW/HqHvF1McSgcbtBEiAtRzxsUSuQPeAxr2sSB6MeYdjJ4RfNRVvlDT
	 JSVxeZ+bzRfe1hEhT8Se0Q7aRj9xLQzSAjiOR0s66gLoUez26mTYLoeYvY7AZZdX43
	 AVCkspKRbdcsw17BbOoSZ3lc0UGKXegKKG7tY6kDbRzWkMdCRI74RDlZ23x624WcE7
	 b07IJvXx/ihIUjQfekD9nYOjxO4vMHUrUK8sR3+eK4QL/Ed7Tl6k04CjMv+wic7EW9
	 RYJ630cHd5FUVCLtjZMyXC5+ynnL52k0UaLcH4AEGY4zs4+qDkr0oA+lbdd2e3hJ3U
	 BcdK6EOUOiRig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4D9744068F;
	Wed, 13 Nov 2024 16:21:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1E97ED92
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Nov 2024 23:26:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E766D60797
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Nov 2024 23:26:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WYi45RhecY2t for <intel-wired-lan@lists.osuosl.org>;
 Sat,  9 Nov 2024 23:26:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::12e; helo=mail-lf1-x12e.google.com;
 envelope-from=tore@amundsen.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8F99E607F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8F99E607F6
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com
 [IPv6:2a00:1450:4864:20::12e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8F99E607F6
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Nov 2024 23:26:54 +0000 (UTC)
Received: by mail-lf1-x12e.google.com with SMTP id
 2adb3069b0e04-539e4b7409fso3940208e87.0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 09 Nov 2024 15:26:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1731194811; x=1731799611;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=yKYtXxX3PpnBma4nIdw63BnV/Ds5TXBbvJ0ct3MPA5Y=;
 b=PhukLzxxJj47UYMEBIJO1iL2LKMsds8HOvXaoKj8vSKxn0rnbzHe+YGDASRRCodBzk
 QeA/CTyOYFuEdgOJR/Uz9EHhqKRX/QC6jsqnQ+Vl1viyMP3ayAFkf+xT2eHoheaPJMgi
 wJgSxlz1ioX9Q4eNFwR6B3wAknXPiryjnRRUwAx+UyGvs5hukPBg6L1uAxve05olQ319
 mZKIkqWJMFpRlQVXXde7bSQO8bP9Y28mNANvH3kVHXZs24PWXpWj1xKfR5mlTprgPoLr
 kIXzZKGweBs4Lx557SNHxxyGXzhQSObGchLgZaEpPsCIvyZX5vEArjkmReY9DLVtwQd7
 ac/w==
X-Forwarded-Encrypted: i=1;
 AJvYcCW6zKMIOl79s73C+PDjvqvsD/rs5sgC/Li/ChUvGpi+7Ek9Efy0RexWHJiLwwC94cRd6dGXAq/vIOl6KOAgwKw=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxkfvGK8y/VFvjbXsRLmDKwUKhG9BfJO2I6V0aPSJyfj+2rABQJ
 4Z5RAWh+EOJurWDkft4Hs7S2L/D5IyYEyhgHFnotCIfonH67AbXjwep37LamKZI=
X-Google-Smtp-Source: AGHT+IE+4osdFH9b1wj1O8ionrC7MCM9mzuduMTfaES7SFRNmeiLoeGcSrqhKnSBDH+izun5KD+urA==
X-Received: by 2002:a05:6512:485a:b0:539:fe02:c1fe with SMTP id
 2adb3069b0e04-53d85ef6c4amr1982226e87.16.1731194811244; 
 Sat, 09 Nov 2024 15:26:51 -0800 (PST)
Received: from localhost.localdomain (77-95-74-246.bb.cust.hknett.no.
 [77.95.74.246]) by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-53d826aeb8fsm1057142e87.239.2024.11.09.15.26.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 Nov 2024 15:26:50 -0800 (PST)
From: Tore Amundsen <tore@amundsen.org>
To: netdev@vger.kernel.org
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, Tore Amundsen <tore@amundsen.org>
Date: Sat,  9 Nov 2024 23:25:56 +0000
Message-ID: <20241109232557.189035-1-tore@amundsen.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 13 Nov 2024 16:21:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amundsen.org; s=google; t=1731194811; x=1731799611; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=yKYtXxX3PpnBma4nIdw63BnV/Ds5TXBbvJ0ct3MPA5Y=;
 b=ObomwKOPLTBuKXn/dQQRbuXLXSY7/GQXeQhFFuAFe6AFBwcfo3OW72+1pCti+qRXyl
 TO/a8GPkUUH0vh+52jLYEp7XxwV4gi6AOwrJ+JnC17rvRnKMaPpbX1hsJNR28l/Znpjx
 sq6qBoG7q0oT3Eim6DdplBUNfxe5IMZaA40Rc=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=amundsen.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amundsen.org header.i=@amundsen.org header.a=rsa-sha256
 header.s=google header.b=ObomwKOP
Subject: [Intel-wired-lan] [PATCH 0/1] ixgbe: Correct BASE-BX10 compliance
 code
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

The current code in ixgbe_82599 checks the SFP Ethernet compliance code
against IXGBE_SFF_BASEBX10_CAPABLE to determine if an SFP module supports
1GB BASE-BX. According to SFF-8472 (section 5.4 Transceiver Compliance
Codes), the BASE-BX10 bit is defined as bit 6, which corresponds to a
value of 0x40 (binary 01000000).

However, the current value of IXGBE_SFF_BASEBX10_CAPABLE is 0x64 (binary
01100100), which incorrectly sets bits for 1000BASE-CX (bit 2) and
100BASE-FX (bit 5) in addition to BASE-BX10 (bit 6). This mix-up causes
the driver to incorrectly configure for BASE-BX when encountering
1000BASE-CX modules. Although 100BASE-FX does not pass the nominal
signaling rate check, this error could lead to future bugs if other
codes start to depend on the incorrect value of
IXGBE_SFF_BASEBX10_CAPABLE.

This patch corrects the value of IXGBE_SFF_BASEBX10_CAPABLE to 0x40.

Tore Amundsen (1):
  ixgbe: Correct BASE-BX10 compliance code

 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.43.0

