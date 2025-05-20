Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 834A2ABD1FE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 May 2025 10:32:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 49C2B40863;
	Tue, 20 May 2025 08:32:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id myieyhsVuKxE; Tue, 20 May 2025 08:32:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A4C514088F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747729920;
	bh=aTx0P1G6SI1qG9PxfE9CEm6JpNMuUW8fc1VASYghmwA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=oQf+LYNxQav7CiZwBqEkpEfFclD5N49iTbgSUxRcyFnQYrvF7I1hMwbcbl0iyVOeO
	 Fy9mxeyphxKAueFbu0kchM0tY7TZD4ADs2f3ILTjZfJP8waiwwMl7+xTN9rPPN2s20
	 okg8iFWHOVQo0bFtPdq0TcMguEkJ7Ny1hIQ8bToY4zjcfpfx+ToILvWYfNvB4Rje5n
	 S+s33HHVVzOuupGWcvq6935JJY4B9Wqjhb/qjUJ9rARM+Cc8hSyo/opWRybxiooXjN
	 bFNcMdZybpwulIji8tKn3O6GNFUOfjDsRHiO36I6rRmbmWifWKd763MII30Q3LTEoB
	 ZDbA6k4+xUoKA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A4C514088F;
	Tue, 20 May 2025 08:32:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1070F193
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 08:31:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EA26F40845
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 08:31:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8GOBClau80Jd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 May 2025 08:31:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.123;
 helo=smtp-relay-internal-1.canonical.com;
 envelope-from=robert.malz@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0499E40804
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0499E40804
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0499E40804
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 08:31:57 +0000 (UTC)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id A31C4405F0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 08:31:55 +0000 (UTC)
Received: by mail-ed1-f70.google.com with SMTP id
 4fb4d7f45d1cf-601f3f35b88so1722095a12.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 01:31:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747729914; x=1748334714;
 h=content-transfer-encoding:mime-version:message-id:date:subject:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=aTx0P1G6SI1qG9PxfE9CEm6JpNMuUW8fc1VASYghmwA=;
 b=Ebt4rqOC6lk1zmtKQVf3ir9Y6f9Lvqohjxzh6hlR8z3dhKTDLRX2lA3Goyl3PShUA0
 sgGtiRSAWPsqWWjqnOqMOKJrvHWyfWjCT0DaqdS6SkkBIBYBn0XQ8fFGKf0+38aIJxkW
 v18NAYif+71tgl3EdSwIYAhWnQvCR99JzwGuDP4L78KQ4AVVRXihZ63G/9XcXOKhz1T8
 3M8FtlYnfXYw+Hr+t5AR+Ixu6N5W330MGmL+yif8e147EcQa/WUE7pOzEljlIvVXpc6e
 XQYpXxrAlAIhxrKX3hkncglHHNFlbKYjSc0DADQlE5cyOdK41akqv4AaUnHd7Alfdj62
 NJJA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUUMkg1muDv5zA0IzcnKKOr1W8RMDn6u14kyXCa+a+U+McQeTAhTShG0Cjo6YYPskHirIfyLk+rE4SlFvfuf4Q=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzaHvI7lC9LoBXLm1W7H0IN1kmhBeOOnIFtUEvNhW+9rDKoIlEV
 G+BY9uEqO1/NQsRqg9ZrI531Ly9oYlkcFIDfP4bNSwdfp67SkheWRvGeifm4vlSJu7djR9CZwV8
 ZyKKiFUn4zqgy/c+CggDHPDwuTMS2GY0QdRNNmCxA6Tr9O/xhZ5A4WzZgXLPTkMddIuUvVkEnjh
 G+OBPFWi7traE=
X-Gm-Gg: ASbGnctrKZuxWnlrqondZS1khJEPrd6Egr6P8L8ibUgERwW2Xz7CZt3WfVN3uj6ueNU
 RoE+VLlZ5NgL9tupOXceZmhmPO4ozNTTD6etoUd3RdkHC422rJcQW+mCgFyhba97CrvMPUN2esX
 0+kBRZGiIhIo/LgZBQ0DQTw0ym82xkaDYYMOmpE5YMHMszfC3RD9khoAPecjSliSvkqbMegFnK2
 +k2bZtdhj2WSjCYfHDqgXxpo8LMDPKCRm6PNRkN+zdH6R74rCBEvgkvjErYcxNE12I/b8aUNMgN
 hz4taybhch8=
X-Received: by 2002:a05:6402:13cf:b0:601:fcc7:44fa with SMTP id
 4fb4d7f45d1cf-601fcc74949mr4041930a12.30.1747729914326; 
 Tue, 20 May 2025 01:31:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH0psxPx8N/qxisE9waXYgdmCXtHEe62Eh/zCNJLeEGY46QaLFyXluUGxFZ1x9EKkZ7ITtDkA==
X-Received: by 2002:a05:6402:13cf:b0:601:fcc7:44fa with SMTP id
 4fb4d7f45d1cf-601fcc74949mr4041908a12.30.1747729913964; 
 Tue, 20 May 2025 01:31:53 -0700 (PDT)
Received: from rmalz.. ([89.64.24.203]) by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-6005ae3b824sm6857875a12.79.2025.05.20.01.31.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 May 2025 01:31:53 -0700 (PDT)
From: Robert Malz <robert.malz@canonical.com>
To: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, sylwesterx.dziedziuch@intel.com,
 mateusz.palczewski@intel.com, jacob.e.keller@intel.com
Date: Tue, 20 May 2025 10:31:50 +0200
Message-Id: <20250520083152.278979-1-robert.malz@canonical.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1747729915;
 bh=aTx0P1G6SI1qG9PxfE9CEm6JpNMuUW8fc1VASYghmwA=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=RO4Y7hrcflwEzfzeUDPacqOswSkt1tYk/HS5u9MBYjja1eS+0REWToubt0JcVh53Z
 iOzT6iL+5iLqP0MxGctTYc8db742hF4LEr8comIPclgeBtlh91/r3TNwRQoEV8F0MM
 qz+AMGKdMUWJayebCcBrBs0qXUm7iyFy/1XZQn4kwuq1X6B44vxKSy90x8y3e4A6Yc
 bch3ryWYH2gfe7PKUpB4+adt2hBPDM2u9sbLaTvNsJJyhJo9zc6UklBJ39aOVMPLYY
 E2dYjd+VuzU59ibMtbsDgyF3tsB9H426hFuGBGxtoZzWPikeyvRcsVOj5NGkb26A7Q
 ndBPdTMofF6Jw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=RO4Y7hrc
Subject: [Intel-wired-lan] [PATCH v3 0/2] improve i40e parallel VF reset
 handling
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

When the i40e driver receives VF reset requests from multiple sources,
some requests may not be handled. For example, a VFLR interrupt might
be ignored if it occurs while a VF is already resetting as part of an
`ndo` request. In such scenarios, the VFLR is lost and, depending on
timing, the VF may be left uninitialized. This can cause the VF driver
to become stuck in an initialization loop until another VF reset is
triggered.

Currently, in i40e_vc_reset_vf, the driver attempts to reset the VF up
to 20 times, logging an error if all attempts fail. This logic assumes
that i40e_reset_vf returns false when another reset is already in
progress. However, i40e_reset_vf currently always returns true, which
causes overlapping resets to be silently ignored.

The first patch updates i40e_reset_vf to return false if a reset is
already in progress. This aligns with the retry logic used in
i40e_vc_reset_vf.

While the first patch addresses resets triggered via ndo operations,
VFLR interrupts can also initiate VF resets. In that case, the driver
directly calls i40e_reset_vf, and if the reset is skipped due to
another one being in progress, the VF reest is not retried. The
second patch addresses this by re-setting the I40E_VFLR_EVENT_PENDING
bit, ensuring the VFLR is handled during the next service task execution.

---
Changes in v2:
- Patch 1: modified doc string for i40e_reset_vf function
- Patch 2: removed unnecessary doc string changes from the patch
Changes in v3:
- Patch 1: aligned comment block with kdoc requirements

Robert Malz (2):
  i40e: return false from i40e_reset_vf if reset is in progress
  i40e: retry VFLR handling if there is ongoing VF reset

 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

-- 
2.34.1

