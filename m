Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5C49C92A0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2024 20:51:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6F5B3607CD;
	Thu, 14 Nov 2024 19:51:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nxTKTmkJ3cp0; Thu, 14 Nov 2024 19:51:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C9DD5606F4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731613877;
	bh=X+WUtALkjSye65cOuODIzVIJuEmqRgNvoIJj5DWFwQU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=v+rdZ4iO8IXUGg3aHRAYHC09O04rVK+ggCoTBxO9nOcLa/RP3PrJzLGdLDd6HSxc0
	 IgxrvPzzSZmvvjvlL/BWcsdMLpjsz9jGt8e78F1ycy+t/BngUjkDsBQPUAzLzLBczx
	 ORNxQ1lka9f04qkF7rDWzFKT1mtVRHQDHRaVvlJJIrvfaKSzcCNMeBH0LYCj/Ibz7H
	 0DMtOLEhAOCCSO9643pv19HCZF4vVxUd5DJoVgw/eFKS/5lYmhs8PCUOlL8NYuHyni
	 3wH8N11SOQEeD4MkRU1q34Jzpjf7IeZU15NoTG3SoFgbT+Lw9n3i9q3pbFQX4pWgoq
	 fHgQWBTk/xJvA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C9DD5606F4;
	Thu, 14 Nov 2024 19:51:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C5E56968
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 19:51:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A678A6064C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 19:51:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ecwl33r_zKqG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2024 19:51:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::131; helo=mail-lf1-x131.google.com;
 envelope-from=tore@amundsen.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A2BF7606CA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A2BF7606CA
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com
 [IPv6:2a00:1450:4864:20::131])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A2BF7606CA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 19:51:14 +0000 (UTC)
Received: by mail-lf1-x131.google.com with SMTP id
 2adb3069b0e04-53da24e9673so1066886e87.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2024 11:51:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1731613872; x=1732218672;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=X+WUtALkjSye65cOuODIzVIJuEmqRgNvoIJj5DWFwQU=;
 b=xR5j//HZAaMVagmUnF7TNyvXBZ/tHdGH1WcERDlfqV5o5i2nQk4VgWX7z/TW+ghneN
 VLeHfSFeZdgBd7VI5Zt71DrTYWNo3q30H14i4g1BytLDRHS7eMRSxG9EvzsP1xYygdYy
 pvTr9DFKJYKjcZl20hMo6nHMY5PrDoW0vz2CpudRxFBNyW2lFQ5FHXhjqclEItaisT99
 k9RNQUymrm8q75I6ypnt100K9nfd0MlTqzQ5PL4lLJ4hwfnRT/3VnElWWuxq3NRmsjXV
 sAEe5c572CqIHkST2bkxZeXx86fFF/6pCPKNgF4h/0MOBheXKAbyGbPu4+SkXFn231rw
 69MQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXgQ2hy2Ov52/exX45oUPPS9lhfIPvXQBc2NPC2Tzm2nbYLvhz2Z327o3pbcfmt8/f+Tf4PB0gdzlh5NWcZnuY=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy9sEO1W386Ofa/47mQLbpDJfetVB9KvSj9nJ2vEXS2ezwm/Wqv
 7TuLGJ63HDgrLyrPXLRm9Q+HpClx4Zt3NOAPrENWFXq8lCbepIIj8nKmH9onmvY=
X-Google-Smtp-Source: AGHT+IFJYFAKSN4vXxLSb2DTOieOWfQk536o625a5AAAchNjruC3YUkGAlycamJngjPvHpRkjvBljA==
X-Received: by 2002:a19:914b:0:b0:53d:a4ff:317c with SMTP id
 2adb3069b0e04-53da4ff3214mr1588261e87.43.1731613872230; 
 Thu, 14 Nov 2024 11:51:12 -0800 (PST)
Received: from localhost.localdomain (77-95-74-246.bb.cust.hknett.no.
 [77.95.74.246]) by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-53da6530d81sm288780e87.160.2024.11.14.11.51.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2024 11:51:11 -0800 (PST)
From: Tore Amundsen <tore@amundsen.org>
To: pmenzel@molgen.mpg.de
Cc: andrew+netdev@lunn.ch, anthony.l.nguyen@intel.com, davem@davemloft.net,
 edumazet@google.com, ernesto@castellotti.net,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, pabeni@redhat.com,
 przemyslaw.kitszel@intel.com, tore@amundsen.org
Date: Thu, 14 Nov 2024 19:50:46 +0000
Message-ID: <20241114195047.533083-1-tore@amundsen.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <ec66b579-90b7-42cc-b4d4-f4c2e906aeb9@molgen.mpg.de>
References: <ec66b579-90b7-42cc-b4d4-f4c2e906aeb9@molgen.mpg.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amundsen.org; s=google; t=1731613872; x=1732218672; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=X+WUtALkjSye65cOuODIzVIJuEmqRgNvoIJj5DWFwQU=;
 b=P4zrX7D/vnlG9tE+ugE509I9SgYRMgNZYto5ihOnWfZm1uqoWoaF+/zKemR/LhfYSE
 eoTKiwJrRlXDEBGekL/tVznKWwnqVU/ZIlAES6VgFTpcRWudWQ6ZJ/32ukZhmDQM0BVl
 iZmA5vuLKB8H+C9ERSGmiOcpNbCQ9aiIap9xg=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=amundsen.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amundsen.org header.i=@amundsen.org header.a=rsa-sha256
 header.s=google header.b=P4zrX7D/
Subject: [Intel-wired-lan] [PATCH v2 0/1] ixgbe: Correct BASE-BX10
 compliance code
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

Changelog for v2:
- Added Fixes tag as requested by Paul Menzel.

Tore Amundsen (1):
  ixgbe: Correct BASE-BX10 compliance code

 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.43.0

