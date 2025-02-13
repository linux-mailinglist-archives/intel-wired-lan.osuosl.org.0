Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C86A337F7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2025 07:31:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DC89740834;
	Thu, 13 Feb 2025 06:31:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GvG4D2PclrKu; Thu, 13 Feb 2025 06:31:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E626C40836
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739428311;
	bh=lN2Y2nwgj5zUTnrECdXbocmCWoXI6GrsrPx3j3TC4Yk=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=YTNb0YEieMwC218PFzviK9F7GiVuIO9N0lgnjhVpb5lko15zMm/cd7pv6TaH/5etE
	 b2gu+k6ByUIYxmYydd8QR9nx2LyGZc4kkpAVJyl8DTCRfd6tNFm2pIpCRpqvSpm1i3
	 atdvBr1iGsoVnf6gA6siGbSBNI9xqz/jFl9VlWH46RPFPbBpjiMdvTtyqNl/3vWByZ
	 G4yETpaHusdMEPprKNmu53IuGURRytNiGToPVtz8GuHaC7Ew2LkREUKvBUq3Tf2bMY
	 VEWzAzgQko65Si6L1n7q5vRgmQhHw103kY2Olmjh+LxQoJ1nLt0fCxVQoikzGONP1R
	 H5ROVDuJPSCtg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E626C40836;
	Thu, 13 Feb 2025 06:31:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id DE0FC199
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 06:31:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C6A9282F14
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 06:31:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kBHTtpGyIR-a for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2025 06:31:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::536; helo=mail-ed1-x536.google.com;
 envelope-from=dan.carpenter@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3081A82F2D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3081A82F2D
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3081A82F2D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 06:31:47 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id
 4fb4d7f45d1cf-5de849a0b6cso859509a12.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 22:31:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739428305; x=1740033105;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=lN2Y2nwgj5zUTnrECdXbocmCWoXI6GrsrPx3j3TC4Yk=;
 b=SWKccP3eo3t6hjrED1FsXddk7FPKgMN8M6FTwqi2RL9PvTD+DfKNcZpjWV8ncrrAQd
 AxDwSKWMv1e1hnaw146/j9OZfyV5e0/fCifzH/88RmLNoEsgJ6XnbyNWsL9b8YgJLyet
 Ldrfg2Q4b95HipdZG8Q4eXYeEaLe8k5bOU4keNSCh05mhdKpwUeKKVyfm8Xy/7bmc4y9
 Y8obvX5D7HBTnm4U+rQYakV4NXKjf2PcjG5aQxB8dn5w41xiqqQTpRI8iNWmKZ/4PFzP
 fkyS1KEsz7rIVBcubcb0Hl0lNZm6x0rfBwkrJ6FiTlr2gzMW2lkWle8UggYtGTUDpLgR
 qekQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCX8Dy/+WhJCsVSMOaYb8ur3AkXlz2CmRoekCravaEBv8xlrE4r2sLXR3berUxFQZ7i2PldS4SSJ87fJC6QMiH4=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxtVoGPgVSczOPsEiFiZDndo0oNQfpQAA6wBazV4jeIltX1cAUu
 BTtGKgvohfVZt9oagYYpo8p3Kig1A5qWe7/0RGfCUaCIrs68RshuQW03b+g7VOU=
X-Gm-Gg: ASbGnctQF4fFRBfbHrGl/y8DLofVLJWdiG+tAM7CZZ0Cx1iblrjHBoBIpU+eLmlR3VR
 hZ9QR/sXjnOsyHbNj7YTwLnEJJcB5+h4qZ3vCvOCts1VcwymfEU3Numk4CNwfg/0OqnH8wrTAGJ
 Gs2QqueGVmEo9X1BA8QoBF1fd0zBmVVvsbH9lTGzoh387TJIR4vl+VOcmJd19MVH41mrxJDV5yV
 KIUhlDGcANgzsmAOazG2bxjWDHuNx53+A9iAKNO5Gtldw4FgVqwG8+gPkG3kMnxtII5sXbc9S9S
 2l3vG7aNU4Fkyaom9czo
X-Google-Smtp-Source: AGHT+IF4GmQVmoYV3tMifs3xYxMEmFp8h++H06hQyM0sB214aBjWO3g4Ojs0FH/d8ojvyeWMu3n5Fg==
X-Received: by 2002:a05:6402:5d1:b0:5d9:a62:32b with SMTP id
 4fb4d7f45d1cf-5dec9d326b0mr1910867a12.7.1739428305096; 
 Wed, 12 Feb 2025 22:31:45 -0800 (PST)
Received: from localhost ([196.207.164.177])
 by smtp.gmail.com with UTF8SMTPSA id
 4fb4d7f45d1cf-5dece2880e1sm596423a12.76.2025.02.12.22.31.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Feb 2025 22:31:44 -0800 (PST)
Date: Thu, 13 Feb 2025 09:31:41 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org
Message-ID: <b16e4f01-4c85-46e2-b602-fce529293559@stanley.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1739428305; x=1740033105; darn=lists.osuosl.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=lN2Y2nwgj5zUTnrECdXbocmCWoXI6GrsrPx3j3TC4Yk=;
 b=wRdT6qlFWNz9yRpDbUkmLe44+rzCrtEz0rtQ9cVEnsNdlNXXCHCEeafaeeC3oVDDbW
 y16czWQzW0JmZwpYVr1GaVpI+jmkg/BDz7JAlsvmBWoCqYTvqeFv/QBAgssL6t2R/RL6
 gLzFAot+GNgsNn/RGLO4cwChqrA9J0kPho2nQ2g0aVM79sEn3i4+qORnItNCRGpO/Oqm
 K1MKzuU3EvcXVYlfhf1A4VFpaD032J0oU1yHNiptVFJNOAQ4Kb0yfHqvzrD5yR/IsAtA
 x4QQe2bRBz0CsQQYiqSjhjUMeHDp1HUQ5CyioyePbZ9kD5qB0TD/OqfBkqA8J30SVFGH
 2RqQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=wRdT6qlF
Subject: [Intel-wired-lan] [PATCH v2 net-next] ice: Fix signedness bug in
 ice_init_interrupt_scheme()
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

If pci_alloc_irq_vectors() can't allocate the minimum number of vectors
then it returns -ENOSPC so there is no need to check for that in the
caller.  In fact, because pf->msix.min is an unsigned int, it means that
any negative error codes are type promoted to high positive values and
treated as success.  So here, the "return -ENOMEM;" is unreachable code.
Check for negatives instead.

Now that we're only dealing with error codes, it's easier to propagate
the error code from pci_alloc_irq_vectors() instead of hardcoding
-ENOMEM.

Fixes: 79d97b8cf9a8 ("ice: remove splitting MSI-X between features")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
v2: Fix my scripts to say [PATCH net-next]
    Propagate the error code.

 drivers/net/ethernet/intel/ice/ice_irq.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_irq.c b/drivers/net/ethernet/intel/ice/ice_irq.c
index cbae3d81f0f1..30801fd375f0 100644
--- a/drivers/net/ethernet/intel/ice/ice_irq.c
+++ b/drivers/net/ethernet/intel/ice/ice_irq.c
@@ -149,8 +149,8 @@ int ice_init_interrupt_scheme(struct ice_pf *pf)
 
 	vectors = pci_alloc_irq_vectors(pf->pdev, pf->msix.min, vectors,
 					PCI_IRQ_MSIX);
-	if (vectors < pf->msix.min)
-		return -ENOMEM;
+	if (vectors < 0)
+		return vectors;
 
 	ice_init_irq_tracker(pf, pf->msix.max, vectors);
 
-- 
2.47.2

