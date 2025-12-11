Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A65A3CB57F0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Dec 2025 11:19:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 56D93407BA;
	Thu, 11 Dec 2025 10:19:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gZvecjywSiKH; Thu, 11 Dec 2025 10:19:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4CC1140F1C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765448379;
	bh=c+jHhxdvBq8eCZT3ysFIAELCk1258bcdcN+/mojgVUE=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=cudguaBjOFTW4w9XNMNrPJ/XwYxhcslGgTGoKWYZc74ycDJee/68UM8F1u5cvP6GH
	 0Pk0BQPBuvtNNy7CpvO7uP8HEU+W7j+BPA1gsJzmXhr7MB4i3tCGeReG39bE30EYm0
	 LC9kWVzzvpx24ek9ndOOYUNuoyfY13mvWdNCDn8jni3AiMCyeiamQj9lQCywWe4VHh
	 YNiIRDHkUkpmQ8Yr9k0bDL40MSksVEgYlQM9UwIrvLDX4k8MNyIhjQYh0g0SJy71rx
	 rUXA2Mk/it7V3bQxapnuyOU8s2S2XmrU0ne7LcqBgppmxcwlDwSB6uKv8dmw2M8mal
	 ZTTCXZogMsKrQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4CC1140F1C;
	Thu, 11 Dec 2025 10:19:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id DAE5CE7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 10:19:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C13D880E12
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 10:19:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zn6AH5nuhAZM for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Dec 2025 10:19:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::54a; helo=mail-pg1-x54a.google.com;
 envelope-from=3ujo6aqskackfqrfxwdrnsflttlqj.htr@flex--almasrymina.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E808180DCD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E808180DCD
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com
 [IPv6:2607:f8b0:4864:20::54a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E808180DCD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 10:19:36 +0000 (UTC)
Received: by mail-pg1-x54a.google.com with SMTP id
 41be03b00d2f7-bddf9ce4931so1519626a12.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 02:19:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765448376; x=1766053176;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=c+jHhxdvBq8eCZT3ysFIAELCk1258bcdcN+/mojgVUE=;
 b=pN9rfV/VZ23nwofxHD2idGI1Zd6GpV6Iu3ORbkh2cT2ZuhPxUgLUaXuP0bZqGik8xG
 fGiLDOf8IoGjS1xhK7gCCZME8IYQ0VN2N3jNFSmO3m4oOTeaUJcFVp8jbQEuEBfnKSda
 rQws5dzmS6VjK0kx/mblbJqdtIyc/mW4iBzR29ujVaXngIWIP3Cb1a4vlXKe2QFdOCpk
 LAa2uinMlOma2bHAzeykSXyaC72nOSprbnjyy+s2Jn+igKe2e1X2qoy3CQexvkws3dUf
 TsJ8RWoj+FwiRFvUp2DGpc29Grgo/DjFKb/ar7wey+xwPzdNBPI/n3/5BJrZVF/dDLn2
 OlTA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVP3ZrYoPUFqZgpXdoPILEpcLPQld/MpeCSr7MqeMCo0XqHfAFcx7jPvBKCrIy96fR44W9IiYWgQHBCPjJayFw=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyXSNOdXEeBAs779Fkn/zpPOoxKv09YvXU0DJ+dLrlnanFe+oeD
 79wXyO16IMGi3NH2Z+D1DJSd946oxoUu2Xl0QQmvrDBStteKriSwKxC3tLJ3QRaN8taO/DCfhFU
 g7FP6Z0Zt65d9fA+d5TFSwcxvAA==
X-Google-Smtp-Source: AGHT+IFiswqXvWXe8hZfJsXbQvgoiKk1nQLxrSGrBb4XVpZ93PMZSPnSs98Cf6Nfhq+HUwPEj/jEXs15x1wpEidaPA==
X-Received: from dysb44.prod.google.com ([2002:a05:7300:8b2c:b0:2a4:536d:bffb])
 (user=almasrymina job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:693c:608a:b0:2ab:f56e:bea6 with SMTP id
 5a478bee46e88-2ac055a0933mr4821559eec.39.1765448376075; 
 Thu, 11 Dec 2025 02:19:36 -0800 (PST)
Date: Thu, 11 Dec 2025 10:19:29 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.52.0.223.gf5cc29aaa4-goog
Message-ID: <20251211101931.2788437-1-almasrymina@google.com>
From: Mina Almasry <almasrymina@google.com>
To: netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Mina Almasry <almasrymina@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Richard Cochran <richardcochran@gmail.com>, lrizzo@google.com,
 namangulati@google.com, 
 willemb@google.com, intel-wired-lan@lists.osuosl.org, milena.olech@intel.com, 
 jacob.e.keller@intel.com, Shachar Raindel <shacharr@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1765448376; x=1766053176; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=c+jHhxdvBq8eCZT3ysFIAELCk1258bcdcN+/mojgVUE=;
 b=DQ0dlwHfJwj/60/3DKM1xJP/NIGUl5oV+S8VH5KiZ5xYhSPH+vC3Xk/tRK4G+lYnbH
 oLkNtyUSIJhyMWAAduUvlWwSQb4AxSEl5N6XEDbvtYV0U9yPbrPqO54oWbPZrtQUmudR
 9NVaUKw9FfNovdldNPH8mU5jlBy1Ao+DCQoezZKIJ8QO2nvU/W2ewmZILWiGyskCKEDm
 qAdRpYDedfDJONGr9R5hJ2IAa4cCErTX2ToX4PxDcwUr28OBVXc/jBJ/jMxclsHpcpWv
 N/4LK5ANcHes/VCcBTzSOZ0ghbU7SBYA6rAd83NDzmZY7p7FF0xPaf1R3Ukg74G4a9wQ
 /kWA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=DQ0dlwHf
Subject: [Intel-wired-lan] [PATCH net v1] idpf: read lower clock bits inside
 the time sandwich
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

PCIe reads need to be done inside the time sandwich because PCIe
writes may get buffered in the PCIe fabric and posted to the device
after the _postts completes. Doing the PCIe read inside the time
sandwich guarantees that the write gets flushed before the _postts
timestamp is taken.

Cc: lrizzo@google.com
Cc: namangulati@google.com
Cc: willemb@google.com
Cc: intel-wired-lan@lists.osuosl.org
Cc: milena.olech@intel.com
Cc: jacob.e.keller@intel.com

Fixes: 5cb8805d2366 ("idpf: negotiate PTP capabilities and get PTP clock")
Suggested-by: Shachar Raindel <shacharr@google.com>
Signed-off-by: Mina Almasry <almasrymina@google.com>
---
 drivers/net/ethernet/intel/idpf/idpf_ptp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
index 3e1052d070cf..0a8b50350b86 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
@@ -108,11 +108,11 @@ static u64 idpf_ptp_read_src_clk_reg_direct(struct idpf_adapter *adapter,
 	ptp_read_system_prets(sts);
 
 	idpf_ptp_enable_shtime(adapter);
+	lo = readl(ptp->dev_clk_regs.dev_clk_ns_l);
 
 	/* Read the system timestamp post PHC read */
 	ptp_read_system_postts(sts);
 
-	lo = readl(ptp->dev_clk_regs.dev_clk_ns_l);
 	hi = readl(ptp->dev_clk_regs.dev_clk_ns_h);
 
 	spin_unlock(&ptp->read_dev_clk_lock);

base-commit: 885bebac9909994050bbbeed0829c727e42bd1b7
-- 
2.52.0.223.gf5cc29aaa4-goog

