Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF56AB6EBD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 May 2025 17:03:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0FE0860FB2;
	Wed, 14 May 2025 15:03:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b2HOPNgYMo41; Wed, 14 May 2025 15:03:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 827E660BBD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747234991;
	bh=U7Vp8QljWnGGv48HmwPUUHanbPqKrIRkEiUDXnzutDY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=H8ouMQfSM8sx0JKA3DhkzpXoeiB6B7OuPDFYpCZRf5LTvhmiMlD+Yz7NYEQf0csHr
	 4xlMvGRLfSBdFqnafdWWq1mUb+IR6et4FvJOsVXF/r4hjvJwg/audpCXDFL8qypaum
	 +fXGJbSrOjXLNXaDh7K3bz7/zWHzLtuNzGEL0BySnh6ikk0zM/4pooq/YnnrcZ2LEI
	 QPAnwE3C9wUCa/tPy+EJ37i3PiVctzdKinQ3HESFUedyFglQ3CUeOEeaB3lwRe/TlI
	 w9d9wVxo5wx3DOuJIGtFaSFzAx4ulNWr75gCZ6zk9JTYHuMA12br2yAGotejUY3Kpb
	 PAc9lS0aDeZ+Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 827E660BBD;
	Wed, 14 May 2025 15:03:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 712C412A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 15:03:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6264782199
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 15:03:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZsMYsabsTlLR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 May 2025 15:03:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.122;
 helo=smtp-relay-internal-0.canonical.com;
 envelope-from=robert.malz@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8388D8218B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8388D8218B
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8388D8218B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 15:03:08 +0000 (UTC)
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 926FA3F12E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 14:57:22 +0000 (UTC)
Received: by mail-wm1-f71.google.com with SMTP id
 5b1f17b1804b1-440a4e2bad7so5610505e9.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 May 2025 07:57:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747234642; x=1747839442;
 h=content-transfer-encoding:mime-version:message-id:date:subject:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=U7Vp8QljWnGGv48HmwPUUHanbPqKrIRkEiUDXnzutDY=;
 b=G+hWnTYYs99opECXxX2hCHTulfY5t+i7NVKwu6J5z1Fwg+tFkJg65Dv2Pfew40BIrl
 cM2lSkISMTJYJ/go2sJoaqRYM/unC7IgXFnKmBR8qbAbtalP4wuGrP0KuFUIgx4TAohu
 SMl1exV2IzQT3HreD4fBIifL/mkPiijoIhBWJ3mRwFChc+JlKWcYL2qR7x/W7oIf41fG
 iMTwYueax/GdfcfbqrNxtMj/woTSKauPYqXqYU9BsVQeuSs+Qr6DoYKQlRVo1p1mKCJO
 P1Zn7C7Ck22xjGqRaFHDYLaAvyL/VRL0Zt/Yu5IZgLS1v8ttbxMBaO5fMm81y0uVXq8U
 cXfQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXKn3fZNQGs8Nn4giXrvBCty12so9V2v7qIzTyNHCwiA7TgMDuXwzKevqR+LQhPPJmDU1TtjjnDTzdWTrDELbc=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyCkBX1Oz74mPqhqgqe5F5rni8v5P+W13PJsgnNVEOwhgoFPA9m
 H5xRYYa7I/zd3M/O//V8qktbppjQKyCVf4eDF1ICkYXLqqQohIVCkgrVQQWkeVQvUwhQBEcXZeD
 42xkSPl+6BAEn00gwZk1KERk0ZJp9YEDhtHVfTmLixWjzbqhcq2H9e9ICvr+Q3LCU1hxo5g01PJ
 tsVp2CVII=
X-Gm-Gg: ASbGncvcNyeikxncUkTVMlVCaNyPQRhbrVzqwOaHvN9Y7nYB7vo2in3vh2HNjYSO1DD
 +T9//N4pZNVv51aRD7wwONTYGB4wuSHJurgUXb1kAycMbBMvg59O2teO84Q6pEyn2M1gCLgXF/H
 AuePUDLdKNoXZMYCF/PL/Wndqu28b+QdAPQDGJaz+52+NL/tQ6T0r+r7lWKACh3yBN2GDN2jUan
 Cqdxy8IV0++TvVDY2OTExI617+B+kqb1jMsRto7ChRxaGk8IAUUEl6woOcU6oceFBB4sEmhQgbO
 soqzPlCwO+FmvQ==
X-Received: by 2002:a05:600c:190a:b0:43b:ca8c:fca3 with SMTP id
 5b1f17b1804b1-442f1a819bfmr33365975e9.11.1747234642123; 
 Wed, 14 May 2025 07:57:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE6CxowXUpdtASikfZ1ZZEQkSR1V6z1Cqw2+EJWQcHNLnMfwhuKxK8nw6AQE01cWIWj5PS4iA==
X-Received: by 2002:a05:600c:190a:b0:43b:ca8c:fca3 with SMTP id
 5b1f17b1804b1-442f1a819bfmr33365755e9.11.1747234641755; 
 Wed, 14 May 2025 07:57:21 -0700 (PDT)
Received: from rmalz.. ([213.157.19.150]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-442f3369293sm34512765e9.6.2025.05.14.07.57.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 May 2025 07:57:21 -0700 (PDT)
From: Robert Malz <robert.malz@canonical.com>
To: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, sylwesterx.dziedziuch@intel.com,
 mateusz.palczewski@intel.com, jacob.e.keller@intel.com
Date: Wed, 14 May 2025 16:57:18 +0200
Message-Id: <20250514145720.91675-1-robert.malz@canonical.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1747234642;
 bh=U7Vp8QljWnGGv48HmwPUUHanbPqKrIRkEiUDXnzutDY=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=I/hfARu8dyljsAYTsmItsLb+RgGi/1zLBvf+O+7abpHDSP8inDeeFzJMRiQU6asPc
 nb8C6GvjlicMft967RP2QtQ2UoJ41xozZ9wLFeqis90dexfFWIA1ySvmQ6MjYKKpCy
 9HdbiLoUrwendewYLSOndX9x9YZbjlbxo//0YRLDtUdqAxJ7DR93/zMVfVpTT9XdPL
 lDiHLuME8AaWcV7ebvAh2lamcxTpmOQz4Hf1Oq7RMj1ytQzty9QWJZ/9l6k2D0w3XG
 IgZP1bwuG8zjGNi7CU45aieJaQG+C/4OSLiGCJ+BfrET9y9BItFmjcTXF7JlZxbO7y
 jdj7SaQtMaEag==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=I/hfARu8
Subject: [Intel-wired-lan] [PATCH 0/2] improve i40e parallel VF reset
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

Robert Malz (2):
  i40e: return false from i40e_reset_vf if reset is in progress
  i40e: retry VFLR handling if there is ongoing VF reset

 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

-- 
2.34.1

