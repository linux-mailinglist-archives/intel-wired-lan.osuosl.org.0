Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 51955C617D8
	for <lists+intel-wired-lan@lfdr.de>; Sun, 16 Nov 2025 16:57:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 43E6360B4B;
	Sun, 16 Nov 2025 15:57:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Db1IooVWUt_h; Sun, 16 Nov 2025 15:57:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 52ADA60B5B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763308623;
	bh=aPvprIY4qMT2bCIRdhfvkg3XFFOgGut8Hky7O8BHyG4=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=14HGXkMLmVA8hkNTIySem7Px9p/DGOYie3PLCNxz2U/uinveoxbVn58kcOORPUr9W
	 VwRxiu83qnjzT4nxD9UOcnBe3Wt0RTXRgGfpqIESoq2cpEj2dZK4p+LYmib+bAVhdc
	 1rNzbNkhpo9osa9hxAaJdYWfumu7ysRaFcfwtiCNaVABJu2a7ifJ/bC5sjUVvnWAyj
	 Rm4yxjfu/s+OosnDaaqgzC/UCxvRvkxTu8bnYQxJEftj6mjxkGPnKcTbaOmHUdeRf2
	 XBPJBQZ8ZITd/GPSFS6n02HZJVDue4Gb/+HkfW8xlT6kJOdYQTe8qt8VYTIO+FPrDi
	 46hJ1uqicHBKw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 52ADA60B5B;
	Sun, 16 Nov 2025 15:57:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8C8FB1A9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Nov 2025 15:57:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 75BB681E39
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Nov 2025 15:57:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NIQFui63BqrH for <intel-wired-lan@lists.osuosl.org>;
 Sun, 16 Nov 2025 15:57:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::429; helo=mail-pf1-x429.google.com;
 envelope-from=allyheev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0EA3080C77
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0EA3080C77
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com
 [IPv6:2607:f8b0:4864:20::429])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0EA3080C77
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Nov 2025 15:56:59 +0000 (UTC)
Received: by mail-pf1-x429.google.com with SMTP id
 d2e1a72fcca58-7bc248dc16aso1343097b3a.0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Nov 2025 07:56:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1763308619; x=1763913419;
 h=cc:to:content-transfer-encoding:mime-version:message-id:date
 :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=aPvprIY4qMT2bCIRdhfvkg3XFFOgGut8Hky7O8BHyG4=;
 b=AzhMXGBGcsc4337/wkFO+/7T3tH5VIK9FaNStc3d8N00zFp/myepYR1NhgnylngLZQ
 HqfeAkmyHejtWOXJin6JCO42K8A1y8HipNVo9ZduHDlSM8LiLJ0R3EnMOKAwqXw+XvWm
 sTAf4g/qBWw4LugVRFMq9Nv4cbX+rRe91m8fXlY6cvpqpSvWwVsT6Q4Ceard9J5xOZ0r
 HT6n0hA4dTkufFW0D3H90Rt+Fbh5rHCMlA/6e+Xl7ryV7MnPxt3bkH44IEsw68IKNwoq
 2b4X84iwe/1qtv+z6lYOipUgZoolK4ZDW57W09HE5lLkionx/JGAN3V1FSBTHt34jb0s
 0Y8w==
X-Gm-Message-State: AOJu0YzRR+gGoNMQJpQdU9zgBvNsFLZsJoJJbx4G1nQYsoU4F6s+/Bj0
 yB1hKUDPMPu1rijetl8iCVqHMUHqbSOPIJPRtjKQofoFIah/eCeS5YyO
X-Gm-Gg: ASbGncsxOjpiyJpxGEpq7h2aHGv++6FcA4v7tbkafsy7O+kCdY5ORzGdKX8+RgbzvKo
 kS/4OwdsK3x+QzoEJtO9+MxiUUtiWaohuwaXMpsIDrEFkrOKwCpQKvekhIH+6/lkgjzJhcsDZTj
 xUiBjRt1awA3uZjDEkCY0HbK1J7pw4TepcdoL+w/+B8ixRUrowyqUZrwNmYDjpnxh02Xxl1xhge
 Je5UCiCBakecO7hqoeaongl+1Jt8Ct8bp4U8CB9LLURdPyiICgBZ38t6W2HtaJCENN9DLirE6Zv
 NBAlf4NNXzLsU6+3CviSEm622iCb5GcSz7WyMI9Uo7csT4Pr03gkZ7HAXGUcS2BxQIWLogn9hhO
 NJWRiEtmEfpGldmgDqhYr6BEXrw1OLqEWaEAYOzyxvvykToCyAZi0daSoTnZcMOz81Qo5NlLKIg
 ==
X-Google-Smtp-Source: AGHT+IGdQeL3pObeJ60Bq2doKAMjEPTO+Zen4o0GvF1bhsmgfhLOaHmqVNZ07yEu4UnbGsnsNDPKAA==
X-Received: by 2002:a05:6a00:148a:b0:7b9:4e34:621b with SMTP id
 d2e1a72fcca58-7ba3a0ca29amr12169535b3a.12.1763308619119; 
 Sun, 16 Nov 2025 07:56:59 -0800 (PST)
Received: from aheev.home ([106.215.173.137]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7b924ae6943sm10677038b3a.6.2025.11.16.07.56.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 Nov 2025 07:56:58 -0800 (PST)
From: Ally Heev <allyheev@gmail.com>
Date: Sun, 16 Nov 2025 21:26:47 +0530
Message-Id: <20251116-aheev-fix-free-uninitialized-ptrs-ethernet-intel-v1-0-0ddc81be6a4c@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAD/0GWkC/x2NQQrCMBBFr1Jm7UATEasH8ADSnbiIya8ZKGNJY
 imW3t3o8sF//62UkQSZzs1KCbNkeWkFs2vIR6dPsITKZFt7MMbs2UVg5kEWHhLAbxWVIm6UDwJ
 PJWVGiUiKwqIFI7uHb70/2WMXOqq3U0K1/8kbXS9985sqlkL3bfsCYK0ExpAAAAA=
X-Change-ID: 20251113-aheev-fix-free-uninitialized-ptrs-ethernet-intel-abc0cc9278d8
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Ally Heev <allyheev@gmail.com>, 
 Simon Horman <horms@kernel.org>, Dan Carpenter <dan.carpenter@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1015; i=allyheev@gmail.com;
 h=from:subject:message-id; bh=6UiFijM/zOyeh0Ls0U6ZbiIJFi1p1hV3m3U4DmZPA98=;
 b=owGbwMvMwCU2zXbRFfvr1TKMp9WSGDIlv7i8v1k/2dblhLLWC3+HhkOrpisfezD72DGrSP+7T
 o5vhMokO0pZGMS4GGTFFFkYRaX89DZJTYg7nPQNZg4rE8gQBi5OAZjIuikM/9R+fXbwEJ36+4PD
 Zqu1YlL5S9k2ucg2GT7Lj1nH8/HCi18MfyX0Vb/IhnHc63y2wV6QU9eycn+41mz/OJ/1E5nUdLL
 X8gAA
X-Developer-Key: i=allyheev@gmail.com; a=openpgp;
 fpr=01151A4E2EB21A905EC362F6963DA2D43FD77B1C
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1763308619; x=1763913419; darn=lists.osuosl.org;
 h=cc:to:content-transfer-encoding:mime-version:message-id:date
 :subject:from:from:to:cc:subject:date:message-id:reply-to;
 bh=aPvprIY4qMT2bCIRdhfvkg3XFFOgGut8Hky7O8BHyG4=;
 b=XozKNzgw9onUG0p7uXfb7hJG+mt/+yryaRBx1jITbXG7nBHH6g4BlDWuUXjZttfEVM
 2xFftOWxo7y2Tx8gMgf9Lg+wJ0VLlDVZM6FPRZUrZlpFX7UzGJQuP//rfrO782UAKgpg
 /higGEXs1RMvZj0nj7KUejuAgn+u+r9ElTYj77Ww6Rrq9KVKx3bptQlTXhGta9FLbstk
 RI2jne9Q6Pv1brUDR5TSRegTUd31Hpm1lJYJVBmLCPu3wndOLLdCPPODbqgZD/Zx48cL
 3nqMzctiOYXSIae6CagzyF1RXShV97ct5DxZtGGaIbIfOAbY1pUQtnd4jFqsX48AqT2X
 qasQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=XozKNzgw
Subject: [Intel-wired-lan] [PATCH RFT net-next 0/2] ethernet: intel: fix
 freeing uninitialized pointers with __free
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

Uninitialized pointers with `__free` attribute can cause undefined
behavior as the memory assigned randomly to the pointer is freed
automatically when the pointer goes out of scope.

We could just fix it by initializing the pointer to NULL, but, as usage of
cleanup attributes is discouraged in net [1], trying to achieve cleanup
using goto

[1] https://docs.kernel.org/process/maintainer-netdev.html#using-device-managed-and-cleanup-h-constructs

Signed-off-by: Ally Heev <allyheev@gmail.com>
---
Ally Heev (2):
      ice: remove __free usage in ice_flow
      idpf: remove __free usage in idpf_virtchnl

 drivers/net/ethernet/intel/ice/ice_flow.c       |  6 ++++--
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 28 +++++++++++++++++--------
 2 files changed, 23 insertions(+), 11 deletions(-)
---
base-commit: 24598358a1b4ca1d596b8e7b34a7bc76f54e630f
change-id: 20251113-aheev-fix-free-uninitialized-ptrs-ethernet-intel-abc0cc9278d8

Best regards,
-- 
Ally Heev <allyheev@gmail.com>

