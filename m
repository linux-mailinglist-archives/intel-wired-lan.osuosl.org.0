Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B2D9C2778
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Nov 2024 23:25:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2683142C1F;
	Fri,  8 Nov 2024 22:25:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LwQ8JrH4JmAE; Fri,  8 Nov 2024 22:25:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2D9AF42C20
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731104734;
	bh=ziC/Yq61LN2QkFiWm1kDqgTQsLk/e+GZCQ9Xzo2PVrg=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=elTjP9WQiHmGqa1/HFtonRK7h06m7ilnQnop89NuUt/spS3QqGIqBT23UbQ6ud7Mk
	 b4DtlcoisSLkGmgsgZibv2lwcrnXdFQLjFhx4zVcOyykU7XL6xc6LFuxdkg4u+3qhe
	 27as1VlbMqW0Zb73/7vcWwLQ3j9ENmmgtKp+aqgkV4GbfUYOrAQW3QRp9prm2PcfVE
	 8hJC+c0nZUG2+WftY+l/8/BgfTXus9rq1bnxfHlWZGgWhuONOZ9WHClXHVD+jgdkDk
	 dkRcWBQvrMFwjz9hcoCW3g4p9KqveoFTGcmSi0BfkkMKvXmdrd3L3pOFCklCj84Keg
	 itbNz5tvDuk/Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2D9AF42C20;
	Fri,  8 Nov 2024 22:25:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 77458D8F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2024 20:25:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5711B431EF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2024 20:25:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vn1QdwgVBt_9 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Nov 2024 20:25:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::431; helo=mail-pf1-x431.google.com;
 envelope-from=xandfury@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7FD03431ED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7FD03431ED
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com
 [IPv6:2607:f8b0:4864:20::431])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7FD03431ED
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2024 20:25:55 +0000 (UTC)
Received: by mail-pf1-x431.google.com with SMTP id
 d2e1a72fcca58-71e8235f0b6so2220141b3a.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 08 Nov 2024 12:25:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1731097555; x=1731702355;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ziC/Yq61LN2QkFiWm1kDqgTQsLk/e+GZCQ9Xzo2PVrg=;
 b=PoBKNc97sx+DITwVvQGKHbFDc77Ec9oR4cbJUrrkhtLjtwGCNccaCMn/uMhsfXe35e
 bjZExQDcy7IVrUp2PPwXgZtxXAhr1MKfWsPq77imX19QE+b/FyUUko8W1XGKsmFyA/hH
 arcK8KEl4H3fRVajAiDbLSGICsfyOW7PFbkZk5iJ3cHGJw/Qgi+rsvXKxvBogm1t2FJq
 E0yQfRACz3zQ/0S3lUoR+bm5W0WbwV6ajuZZICuDSL4xEuEnPV5dLlBc4JzyZj0zcI92
 hwhnyNhS413eN2kg5nW1xk/zijvn1/V52XwI2roYKA510mdqPSNOfiToKYLGjH8qwyHj
 G3aw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUYkKkdYdSRXkdTEP7Tbj0M0JnVBjQbjGg1gTjs4vmqvCDCiYTzhWwp+YqM/DorgDWGy5XiiCQV2iiwuvr2cKA=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyKko/C5we/0XFLJk8ckY+WQr1IXThSdNMWTZECN4ctb09Eb4bw
 sosN0402PIXMyMo5wWPE+ZNLpVAPrSIU/Q8tHqIxG4TeheXaASTM
X-Google-Smtp-Source: AGHT+IFzz8Lbq/N+oEHpfPZUIZbcUUGi+YneJibJoBrUZTYSicjrrJP7xbTOlSK+DN7/o1E/TruelQ==
X-Received: by 2002:a05:6a00:3399:b0:71e:7d52:fa8c with SMTP id
 d2e1a72fcca58-7241338b59fmr5742858b3a.22.1731097554716; 
 Fri, 08 Nov 2024 12:25:54 -0800 (PST)
Received: from 1337.tail8aa098.ts.net (ms-studentunix-nat0.cs.ucalgary.ca.
 [136.159.16.20]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-724078a7ef5sm4342095b3a.63.2024.11.08.12.25.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2024 12:25:54 -0800 (PST)
From: Abhinav Saxena <xandfury@gmail.com>
To: linux-kernel-mentees@lists.linuxfoundation.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rdma@vger.kernel.org, rds-devel@oss.oracle.com
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Saeed Mahameed <saeedm@nvidia.com>,
 Leon Romanovsky <leon@kernel.org>, Tariq Toukan <tariqt@nvidia.com>,
 Allison Henderson <allison.henderson@oracle.com>,
 Russell King <linux@armlinux.org.uk>, Dragos Tatulea <dtatulea@nvidia.com>,
 Rahul Rameshbabu <rrameshbabu@nvidia.com>,
 Abhinav Saxena <xandfury@gmail.com>
Date: Fri,  8 Nov 2024 13:25:48 -0700
Message-Id: <20241108202548.140511-2-xandfury@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241108202548.140511-1-xandfury@gmail.com>
References: <20241108202548.140511-1-xandfury@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 08 Nov 2024 22:25:31 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1731097555; x=1731702355; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ziC/Yq61LN2QkFiWm1kDqgTQsLk/e+GZCQ9Xzo2PVrg=;
 b=exnHl+i7jOqX09Jx6XCGOsLFAHnyg56Mdb+1m4hlrIBTgWEgo4zeDmmlX3fw0U7MH4
 HcZyKMinlAUygiMk7Ku7j0TLn/vkaECjzLoxVGH63POQgh7TO/PJNblGTsk+3VgykXHz
 EXZI7HULVHUjJ9l1l4/I3nxYoPRN/W2QVwTq6r7ZtMA9/qtU+mKUVMiXEygF7Y7OkDpF
 zlS3F+UU4L04YBOfEeHFRWXF/Q0PIc+aE86mUdf4/U04Id8i9fbBMUFonsoauY0DMN00
 agLx4puFS6znpAxR27Y9aBjTq4eKKWE3Y4tB/Z6Q9V0t2vwk5zDLBZfgPLsL+8S468cZ
 mWpg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=exnHl+i7
Subject: [Intel-wired-lan] [PATCH 2/2] docs: net: Fix sfp-phylink whitespace
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

Remove trailing whitespace from sfp-phylink.rst documentation. Trailing
whitespace can cause diff formatting issues and violate kernel coding style
guidelines. This is a trivial cleanup with no content changes.

Signed-off-by: Abhinav Saxena <xandfury@gmail.com>
---
 Documentation/networking/sfp-phylink.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/networking/sfp-phylink.rst b/Documentation/networking/sfp-phylink.rst
index 5bf285d73e8a..4ce46aef6568 100644
--- a/Documentation/networking/sfp-phylink.rst
+++ b/Documentation/networking/sfp-phylink.rst
@@ -142,7 +142,7 @@ this documentation.
 						  const struct ethtool_link_ksettings *cmd)
 	{
 		struct foo_priv *priv = netdev_priv(dev);
-	
+
 		return phylink_ethtool_ksettings_set(priv->phylink, cmd);
 	}
 
@@ -150,7 +150,7 @@ this documentation.
 						  struct ethtool_link_ksettings *cmd)
 	{
 		struct foo_priv *priv = netdev_priv(dev);
-	
+
 		return phylink_ethtool_ksettings_get(priv->phylink, cmd);
 	}
 
-- 
2.34.1

