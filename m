Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 425D3A5D266
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Mar 2025 23:16:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D3C2F60B91;
	Tue, 11 Mar 2025 22:16:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i8BX8t4ygRRy; Tue, 11 Mar 2025 22:16:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2046C60BA1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741731400;
	bh=69L8F7yqpk7rwlvw7mPhMhu1JuFrmNtGEQUJDN37j4Q=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sere+is5+uOdb6ck9w1Zkowku5ExHC3Y3LSb8UK16WoJCwfLavFgR8Gh2jl5XEpbj
	 dkswZjFwl75ywxPU3+BIjwiVfxjT3zoNshzdWTfsjvN35opbSRNOJ1ptH/xN/BUyFK
	 SQQZkH5rfJZD2wqpdQDI0Q2c8IpHllfsjTlA18aJ0Bu5UsovuQAQSTkEzDjAvCD1mI
	 GmDcW+h244UEJLvZnlyZA3qZ9XWlN+ywgwoSW5RW3cbpkXvzGWf/aqQPA/g1lOKXKN
	 eNL4AFyztHPwlcwCRcxvT/JpEUJ3YTzU5JVjHpWiCAEcftGvYE+UlrPI98PTP+6nE+
	 V78CMiHA0DFIg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2046C60BA1;
	Tue, 11 Mar 2025 22:16:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0FFA11C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 22:16:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0015881344
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 22:16:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lLAAZz8y_A5H for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Mar 2025 22:16:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::634; helo=mail-pl1-x634.google.com;
 envelope-from=joaoboni017@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 737B38134C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 737B38134C
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com
 [IPv6:2607:f8b0:4864:20::634])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 737B38134C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 22:16:37 +0000 (UTC)
Received: by mail-pl1-x634.google.com with SMTP id
 d9443c01a7336-223fb0f619dso113202105ad.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Mar 2025 15:16:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741731397; x=1742336197;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=69L8F7yqpk7rwlvw7mPhMhu1JuFrmNtGEQUJDN37j4Q=;
 b=idZ/nmMUhg367uLjwF2lro5Lph287v63JteuT2DxaTvda0AFX2bOOlhoEPTsg2jFdn
 UP9dswOXE87fOAQmKWldRkE2EE+1igQpX/sHiP3x5cxPjmgVwZX4OU9pJd6QYtEjyXF4
 idIwXXf0lXhwpPf/bCiTuqU61PzjerBDWQVbNSP8L83+RGghIjwr7pouY0OAb/xF38hO
 ESW8LdQyE28n440JhR+eGMVSLYtF5073OG/FmEqsLhCB+eb84UDhH8aTojRCB5Vv965q
 1ZcSsJKiwkHZS3AMF7luLmKDa0cb7LhHhYe+6EQVemKXiofZVJj5xf7zf5bbPDiiaB1c
 KNDA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWH8WhnRGuTBrtuGXQDBGa5MRy62WbybILxWiCN0+h8H57NLZ16wOzCItPoWZpfRE5Pp/osCkXSSUOt5beNacs=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyielNQ8hK4CO+rVOCkq0GhrNamisFfgKixdsoOOfPTYpjA6kya
 gm0ndttBW0Fp+BQhHsWI+AuhNBnBiC/KPfp2VBhGU2PhBiv0tdzs
X-Gm-Gg: ASbGncvEkttm0cWl4ZGaC3R5YI4eQtkc5UfWw1nSBTS1sXLal7wWhXHo/GIw5X6PU+Y
 hGw2ATSkjDS+ZfEpZwaNC4SZLZ1aOcH6/UxJKop22Wn3QG0aLAXG09+jdkCH94WDiTcf5uHxlT9
 w/cPSC5s0/Un7nA6/tH3c8pHytJ5mWlICIxaLyVHdtMiqCQO9rG8yyd6SEv43YlqPekoV8QFX3A
 QkSbGfMQozKliIBz7GZq4yWrrUiwYYNcvQ3hK0dzBAhzn/52qMKcf/JLckVv9ogIujQH7PgxR2m
 t/sLP9YsKneUJvL0txGLI1f2ZEz/d7Lp1BVQaLrmxlyegcTiSvzs
X-Google-Smtp-Source: AGHT+IEj4IL2OsFawJQPS6B8xyYS3KS5TDV3xWalj+aTqDAZPL4UYNjLA+s5rGKHCqxO/XDY4RZtCQ==
X-Received: by 2002:a17:902:db06:b0:224:2201:84da with SMTP id
 d9443c01a7336-22592e20a42mr50505125ad.6.1741731396731; 
 Tue, 11 Mar 2025 15:16:36 -0700 (PDT)
Received: from fedora.. ([186.220.38.89]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-301190b98b7sm113364a91.32.2025.03.11.15.16.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Mar 2025 15:16:36 -0700 (PDT)
From: Joao Bonifacio <joaoboni017@gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Joao Bonifacio <joaoboni017@gmail.com>
Date: Tue, 11 Mar 2025 19:15:14 -0300
Message-ID: <20250311221604.92767-2-joaoboni017@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250311221604.92767-1-joaoboni017@gmail.com>
References: <20250311221604.92767-1-joaoboni017@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1741731397; x=1742336197; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=69L8F7yqpk7rwlvw7mPhMhu1JuFrmNtGEQUJDN37j4Q=;
 b=B9UTnmCSTOLKcdDZ+zqjMPorer1IKbkf+KNLb6qTOllDksJmI+WwzzUTUELJeYWYpY
 a1YeCeRAdRjv1vLzZPTmZSJpvHB8M89XARGpYJ5D+/BkFt6nTP4WKp8yv33i4KhXcAX/
 gfBIR1pT1pa1ZkUVUjJr2b1kWQPSVvEMP/d9GpsbiFtW9wLyGYK9s01wORq4EPvj9Iqh
 74t+01GdoHaiCSZbLbBi2ysL792iSQx7oIw+ooGyYRhK1RcFywThpFIzdNx12MQW69wl
 pkHTaKnqVspLQkjHFHJjs4fi7lSKHrcmdBCDoNImEShPe5Mne4xGUyIqHFYRzo091wPd
 6JfQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=B9UTnmCS
Subject: [Intel-wired-lan] [PATCH 1/2] net: intel: Remove unnecessary static
 variable initialization
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

Static variables in C are implicitly initialized to zero,
so there is no need to explicitly set
and  to 0. This change removes the redundant initialization

Signed-off-by: Joao Bonifacio <joaoboni017@gmail.com>
---
 drivers/net/ethernet/intel/e100.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/e100.c b/drivers/net/ethernet/intel/e100.c
index 3a5bbda235cb..f5d32663a89a 100644
--- a/drivers/net/ethernet/intel/e100.c
+++ b/drivers/net/ethernet/intel/e100.c
@@ -167,8 +167,8 @@ MODULE_FIRMWARE(FIRMWARE_D101S);
 MODULE_FIRMWARE(FIRMWARE_D102E);
 
 static int debug = 3;
-static int eeprom_bad_csum_allow = 0;
-static int use_io = 0;
+static int eeprom_bad_csum_allow;
+static int use_io;
 module_param(debug, int, 0);
 module_param(eeprom_bad_csum_allow, int, 0444);
 module_param(use_io, int, 0444);
-- 
2.48.1

