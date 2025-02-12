Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C53A329EB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Feb 2025 16:27:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 05B6C4030B;
	Wed, 12 Feb 2025 15:27:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GQnV56MD__Wg; Wed, 12 Feb 2025 15:27:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 46FA840234
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739374038;
	bh=+v2zlsZVCTCaFO8Ecu0yqe/8KFXTvc0pR9tUkdrVCUw=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=9G/MkR3V7uRQRDoZM1oVU/cY8RmtfUrERzgkCfUtomq5xVLWe7ZaURO/rlJkjmMA7
	 pvx5cgk9DseMEsNR/nOEVT+bgPEGrGSosk2/AjxP22Ud81BSDjizWa7dPyh9O5qzwU
	 Fkj6yvbZL5x9aXVcVTnpHBPYRCasqdZMaKsznBs0riXBhKstHSH/9PhuwcSjUpcrZV
	 yXQdXJ9A0pt/ukRVGO91nLhflox/FU/QQ6etvAb8b6iPmRdqzTw1ceEY11R8tWHomb
	 guv9xdJ/WKN8D/O8RhWvzcnig4I4QdwGAMele+xjmYNHnD/NBmR1Pe13TnrycpzIoX
	 w7nwWEWHKtWUA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 46FA840234;
	Wed, 12 Feb 2025 15:27:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id EF07B1C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 15:27:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DDA5E6100B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 15:27:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5zEjAV5R02bc for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Feb 2025 15:27:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::530; helo=mail-ed1-x530.google.com;
 envelope-from=dan.carpenter@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DB1B060A92
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DB1B060A92
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DB1B060A92
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 15:27:14 +0000 (UTC)
Received: by mail-ed1-x530.google.com with SMTP id
 4fb4d7f45d1cf-5de6e26db8eso7509767a12.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 07:27:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739374033; x=1739978833;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=+v2zlsZVCTCaFO8Ecu0yqe/8KFXTvc0pR9tUkdrVCUw=;
 b=JgFYlK3oLt0Zo+Fisp93fvjf1SwcJnFBekcmAcNRyR6yjkPDRpV3sSxO3MSPRHP40X
 8w9VejjGOEx0RKdOldCevj/KmDlC3v7TXkUQM0QkzbJ9wK1CEbfyzLgqrH+irmben371
 y1JQNJ/hg+k4HeQoPAegQBrnZkuDPAB8xoHBEqrZfWhlERC1403x8F+KoAB0v20Mcc5a
 2a5CQJTiv9jSlV9tX5TsYZloF+vrybx40KXsRrey9/t+YpxPtu9AyQgaMl0kui8hqNtC
 D3JTcC5pYcEX2DoFNtaqADZkqUWy62gESPmjUfbQuP2C9FbucSMPTDOzY3lRZ8yMWxY+
 Jv8w==
X-Forwarded-Encrypted: i=1;
 AJvYcCWy3r2m5z3dglMYjtcKKrL4r4CmwIJntSY+fww3nQzTD2cwOY0jTKb4tHEFSRhdq6PG2nwh+1Qrw531s1v4Lys=@lists.osuosl.org
X-Gm-Message-State: AOJu0Ywp8uen+eQsUOT3orA1KLKkhSkQggM6shD6nw0AHiwlaEzxQCBF
 pmrBagnIsxeNzCxQwOBT+yUG209yMIg0P3CAiuyd9g6o8NW4DLFRSsrcujE0qm4=
X-Gm-Gg: ASbGncvGX2NZJXRh3zLqhiDMKrpwJmqvtL5syi2YrFkdYRasvR7Kilo82OvXBIyRIa/
 QMjAItArqQWjNNgHQP6a+F2Xin6E1HTs/xaMDAFBVjnqG10qdk/pqufE6OolHoIt1In2gblCZt5
 7tcEpc1n43knoRjYfe9tZVlWQvmIPBx1BmfoQ0LS7lbdEa3eihcRL/HjYLJvbsXXeOi+3AvwSAm
 hdtvlYWpUb31VHXEZv2wjjJE1jfJM/vxd2TyJ6zHHPsGZ+uWZHCyQJxJMumHpqaEMFNiSHiNCSD
 TV3MchlWdhYJ4cO9z0rk
X-Google-Smtp-Source: AGHT+IGudd/dN1L+NiUERa8stm+ICSFlfU46rMuNR2Hncaq6Xkixith7aRyVs5EP4RRtpT5jd1UaqA==
X-Received: by 2002:a17:907:7e97:b0:ab7:b826:d84e with SMTP id
 a640c23a62f3a-ab7f338113dmr293815266b.17.1739374032574; 
 Wed, 12 Feb 2025 07:27:12 -0800 (PST)
Received: from localhost ([196.207.164.177])
 by smtp.gmail.com with UTF8SMTPSA id
 a640c23a62f3a-ab78e3e212dsm1122175766b.147.2025.02.12.07.27.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Feb 2025 07:27:12 -0800 (PST)
Date: Wed, 12 Feb 2025 18:27:09 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org
Message-ID: <14ebc311-6fd6-4b0b-b314-8347c4efd9fc@stanley.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1739374033; x=1739978833; darn=lists.osuosl.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=+v2zlsZVCTCaFO8Ecu0yqe/8KFXTvc0pR9tUkdrVCUw=;
 b=nQ5rERa9Pkv6cZdgeWprrfIrien7SOf6EGdR9vAO/y364k1TawcqYs6umMSDo0S0FM
 XIkKb+OOJ5zQvwQ0s2a6CbzhDtl/HpvpHemBvUXx/3Bss4CNaxqui0lTovDIJgc3VoVW
 VYmL+29hBTSm29Dh4pAObtTohrfEPBtH3FQOizmxnT4r0UOlpwxz/d6ZE7TFHF3+vlJa
 o1QUOwYhpjZMCQ0nsobEB+tKWgL3/uM1WVw3JVXXKIxN6AB7emdOs2LCPDJbfHVTD8Qf
 hBdmynduHfRYdZ8bU+brvyP+yX22zK+uo8Q/Nw6xmNh45dodmr1TDPjGa7LBPOOh/wL6
 Krig==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=nQ5rERa9
Subject: [Intel-wired-lan] [PATCH next] ice: Fix signedness bug in
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
treated as success.  So here the "return -ENOMEM;" is unreachable code.
Check for negatives instead.

Fixes: 79d97b8cf9a8 ("ice: remove splitting MSI-X between features")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 drivers/net/ethernet/intel/ice/ice_irq.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_irq.c b/drivers/net/ethernet/intel/ice/ice_irq.c
index cbae3d81f0f1..b1fdad154203 100644
--- a/drivers/net/ethernet/intel/ice/ice_irq.c
+++ b/drivers/net/ethernet/intel/ice/ice_irq.c
@@ -149,7 +149,7 @@ int ice_init_interrupt_scheme(struct ice_pf *pf)
 
 	vectors = pci_alloc_irq_vectors(pf->pdev, pf->msix.min, vectors,
 					PCI_IRQ_MSIX);
-	if (vectors < pf->msix.min)
+	if (vectors < 0)
 		return -ENOMEM;
 
 	ice_init_irq_tracker(pf, pf->msix.max, vectors);
-- 
2.47.2

