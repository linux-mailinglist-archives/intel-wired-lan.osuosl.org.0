Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 30739C7F390
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Nov 2025 08:40:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4450F60BF7;
	Mon, 24 Nov 2025 07:40:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OEgKGK3iOqbS; Mon, 24 Nov 2025 07:40:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 920E46084C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763970052;
	bh=v3ae9Tov7fRV3Uo1/Dek/6qZPUMAqPH7nxpirY9041o=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=hYA6/bmVyjuvlzunMGnaeXFsuHMMYIylSrdm7mUtB60f3Y92W8LNJAo0M46Iq8Nv+
	 GBNT0bpIIHrYejP+nzqHq/ZZ1TTDVkeNiG7jEiQKRdLfwODfFfGylvNsF+ex0sxGvV
	 BuNHy86DHCzoV69HisUezi6VjEzSxhJGtWXe/y0inYCMVjf6dvnbXCUMWNrpMo16fc
	 MCY/ZD+SDMrJ0oRkq/CT2hkNFu7Gm7cO1FZjxdkE8VzuXoFhX8Lif1C5uUpngMSAUI
	 hx1+xilFmPJ38Yh83za7jej4u0yRR2OX00xIE5OEE14Q3ztd4L6T8MiqUy/Inws8V+
	 mKQ5yqDHq6NdA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 920E46084C;
	Mon, 24 Nov 2025 07:40:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6AEFA158
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 07:40:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 51F9D60835
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 07:40:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EAwH49L1C1kQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Nov 2025 07:40:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::435; helo=mail-pf1-x435.google.com;
 envelope-from=allyheev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 864A56078B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 864A56078B
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com
 [IPv6:2607:f8b0:4864:20::435])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 864A56078B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 07:40:50 +0000 (UTC)
Received: by mail-pf1-x435.google.com with SMTP id
 d2e1a72fcca58-7bb3092e4d7so4293982b3a.0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 23 Nov 2025 23:40:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1763970050; x=1764574850;
 h=cc:to:content-transfer-encoding:mime-version:message-id:date
 :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=v3ae9Tov7fRV3Uo1/Dek/6qZPUMAqPH7nxpirY9041o=;
 b=xO2K37J05QUU6zFw/m1YbhfUrt5cD4VD66vnTsR3ryZF7OHQ2dKIlqEOCGiRX4NKjw
 fVrE4YBfsNBFso77RGw3bYNFixakN6vYzv/kwBvacKcprMR+V2lY2yon2qE9uqhBIkoK
 4vbObFWFtFPgkluTpCNSTQAvgxVNpvUWYq3erGX9KzLmoWgpj/vqdlVTHI0FzR3LXlHf
 5J+LnAcJi+s5PPNkIYG/Hm7zcFlbnToQMeQ6HJAO/qGiHkl1eYY6IHJch5ndKV3XRyiu
 r9e8IB98Zavs9I6KrVsYeRdSsCKiRj5xI05DquHlbgIoZq2J60PEcsXnSotzRYEQgD2H
 O4ig==
X-Gm-Message-State: AOJu0YyFwOIrU+7Btbvcz0wn1uX+JGkrFqUMu9ZPScqixQzUunsFqegV
 JwU2cXylAROqF9el0kx6nJ0YwYCiCOkkoQufxU9lwriMmwiib7SX0IqP
X-Gm-Gg: ASbGncs8vGjoedHBOfd9nnATV/sebrHYgLdxZm/e1+u0uMT1IX+wx+MDIdQXpEMvUvW
 Gy58oJAC2gn1mIwVcTpFjDEpq9bOVw22bGPGYmoTEfymc2Wndw4nwQLpai6ghgrZcOeFZytQFDE
 3/jQYq7hFZWn+j0unl9Xld0Wcb5umyIfwX8IPx5bhOiexRzwchIfw8fKDIkHeeXhy3NmuNTjs8D
 vA7pB6KwgLQGQxGuGp0mb9/Xsf7ix17g3o+xa+soKGDp7y66P9uQhK6Lprzjl+LPdonR4vz54Q/
 IPNJmRsM4ofQs7I89vy3IhhvVnbfaT/AIqV5m3L+HSvaGt2e5mTWXCZ6s4GMf5Y8FV62SGHrfr4
 wNYH3EdB5+jqH8n5Gfz0gmtOTPYj7AolLETx6yv7niM62PorDJJkyyj1RmFPDjGISw/gwzsIx4g
 QBEAEQ33le
X-Google-Smtp-Source: AGHT+IEeIql7pb0dkGALdREf6Wnlrxqh98FLLAtvq3DFqrdy2TFXbtLBHe88eniPMafYpkrG+cQ8oQ==
X-Received: by 2002:a05:6a20:3ca3:b0:35e:11ff:45c0 with SMTP id
 adf61e73a8af0-3614ee21050mr12748684637.55.1763970049661; 
 Sun, 23 Nov 2025 23:40:49 -0800 (PST)
Received: from aheev.home ([2401:4900:8fce:eb65:99e9:53c:32e6:4996])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7c3f024b4aesm13410818b3a.33.2025.11.23.23.40.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 23 Nov 2025 23:40:49 -0800 (PST)
From: Ally Heev <allyheev@gmail.com>
Date: Mon, 24 Nov 2025 13:10:40 +0530
Message-Id: <20251124-aheev-fix-free-uninitialized-ptrs-ethernet-intel-v1-0-a03fcd1937c0@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Ally Heev <allyheev@gmail.com>, 
 Simon Horman <horms@kernel.org>, Dan Carpenter <dan.carpenter@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1250; i=allyheev@gmail.com;
 h=from:subject:message-id; bh=hKAm1QP5iQ7ylT35WgFBWAPfi25FIgtwnqpMskXuvBc=;
 b=owGbwMvMwCU2zXbRFfvr1TKMp9WSGDJVuH8JZcQ4PdmQktghYcHQyPNXLvWN98Ps9aU7KlLOT
 fn18rNLRykLgxgXg6yYIgujqJSf3iapCXGHk77BzGFlAhnCwMUpABMxmcvwi7niw2P7f86bJDr6
 He3MnC8JqebN+Hf/ZqxH6H/+Ct1ddgz/C1KMz2QfTVkk724QIxtTaCpiteHpnNV715+apK2VJfK
 fFQA=
X-Developer-Key: i=allyheev@gmail.com; a=openpgp;
 fpr=01151A4E2EB21A905EC362F6963DA2D43FD77B1C
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1763970050; x=1764574850; darn=lists.osuosl.org;
 h=cc:to:content-transfer-encoding:mime-version:message-id:date
 :subject:from:from:to:cc:subject:date:message-id:reply-to;
 bh=v3ae9Tov7fRV3Uo1/Dek/6qZPUMAqPH7nxpirY9041o=;
 b=G1bnrL3nolVSbdmOYFlqhcyNOfZgL7aXdK89D2pbqw13KgVfJ0UDWy+K9NCF4XrhUP
 t0gtUmEGl8KxXkE6ODQRYf9yA8yUaMeG5GaD9J6sB83oqpQW1A23ZcZyeoHquGtrrzUM
 3kFzKtAQpKBWuhYzahi4UymNMHCZ123mkQ44RpcnGZOAWQ5q3wzMtzTT78gXST+xVu6G
 CTZFAElmy0VHHwjxLtlFNA9iU9EIggWd+1mzEMeqiavGfwVapC8j4ct9sdCvKuPjVlt3
 KY9oaUTHiR29DP5+9KGECmmiyzbjTPe07lxwznVO0r33rWY0x3nXeDAe3jnYQ413ibZa
 5c5A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=G1bnrL3n
Subject: [Intel-wired-lan] [RFT net-next PATCH RESEND 0/2] ethernet: intel:
 fix freeing uninitialized pointers with __free
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
-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQBFRpOLrIakF7DYvaWPaLUP9d7HAUCaRn0WAAKCRCWPaLUP9d7
HPCSAP4tu8ld+4Og65tjSYNChRqIR4Gn8C546JFeozyQW6uj3wD/SQEPIidSAYbb
klXrZrKIBOc/avt55S2+krl241aNJA8=
=guHM
-----END PGP SIGNATURE-----
-- 
Ally Heev <allyheev@gmail.com>

