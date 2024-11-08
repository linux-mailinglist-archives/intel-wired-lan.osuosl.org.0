Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 65DCF9C2777
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Nov 2024 23:25:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2194F6147A;
	Fri,  8 Nov 2024 22:25:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NcIPJsSZm2qs; Fri,  8 Nov 2024 22:25:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 45F4461477
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731104733;
	bh=HjsnjJkvFk70FIP+kt5SypebIuFSVyDViD7ncvBNOtM=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=2/9xo/d74iuv2HufB0OeorsLnBYzYmLgFlDtta/TezbulmP3VSwc/kQS+2NFs23if
	 4EsIOHIqFE9C4dSYnbpbarxObCe0YEhgOua4mH2UyajufdS+l/rB9FVZaba1GO9wLC
	 GPlL0NMrRS3qiNvQjEhvTQ+pw8bo4zzQcV0rWsjnEC0NR+p+B0oJ7Zu1NFXxBfjKPy
	 EYy6qIMnqXD6abVYbh0UcLLlx4kI31Ac/2pipd743eXeM8iWqvrktvBFRVTTtTBSxY
	 GOZTgEy2kDvP78NWiRE2/7wOeZwBmBnB3bjSpf0/TeWEEZzM6DLY3pdnj4bC1e2NCH
	 x8P/Q/39DYuTA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 45F4461477;
	Fri,  8 Nov 2024 22:25:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id C6210978
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2024 20:25:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A78FB613A7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2024 20:25:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IFGmrhxtyngH for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Nov 2024 20:25:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::429; helo=mail-pf1-x429.google.com;
 envelope-from=xandfury@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CF571613A6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CF571613A6
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com
 [IPv6:2607:f8b0:4864:20::429])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CF571613A6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2024 20:25:53 +0000 (UTC)
Received: by mail-pf1-x429.google.com with SMTP id
 d2e1a72fcca58-71e70c32cd7so2136773b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 08 Nov 2024 12:25:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1731097553; x=1731702353;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=HjsnjJkvFk70FIP+kt5SypebIuFSVyDViD7ncvBNOtM=;
 b=lSQImgKnUTa6zfMOhz8ON1vlw9c6sBVzSfulX0+h+D6kkpcX8lnof+GaUhj+sUKmGo
 zOl4MWvw+VQr2bjwNQRCCzWA0w4mNKhPVd6p9JVkAFLdzifTVOqXmWrYqXCpFG44Mmts
 kEQH5vFEcATg6I53hkOKsa9Gk6kOq6IlnWBrhGvUhkGkSy35tsBuVZE0Rb1v1vvthPRC
 jxU7Gz8FDA3jxqp3FpGQqzUmVMnscdgdKT43PjyaLKaSiS1x9uk0ZgGN3HO+Orl+ikkw
 GQBI0YkfJtkjGma9NcoKCtA4TG9yesKbaf/SH2JUAuUIrfoRXVUz81MLXQiTNIClKiXP
 40GA==
X-Forwarded-Encrypted: i=1;
 AJvYcCULJ0+o337sqQaqtGKF6mJYRBj5e3BVsqjfZjirxCCXpBS03eldu59u+wy/sPPCsudoQOH/zNkcrfyPF3EncBg=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyUWFleEtlrNkyhJDgBDlkGZ1Ut89TajQLm2EydlndVpK+PmtKF
 iYP7TGyAevzTNoqnflvt3Bpjs3Hf1pRtHd7xt9kWJQlIXGOriLef
X-Google-Smtp-Source: AGHT+IEqu6hYITG3CTRQf4ojcYGFShTgO4TAJ9wD/3E0BVbXGMBR2cq9fgn6Jmxx9FvlAPL57EqxTg==
X-Received: by 2002:a05:6a00:2388:b0:714:2069:d90e with SMTP id
 d2e1a72fcca58-724133966b8mr4742841b3a.26.1731097553013; 
 Fri, 08 Nov 2024 12:25:53 -0800 (PST)
Received: from 1337.tail8aa098.ts.net (ms-studentunix-nat0.cs.ucalgary.ca.
 [136.159.16.20]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-724078a7ef5sm4342095b3a.63.2024.11.08.12.25.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2024 12:25:52 -0800 (PST)
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
Date: Fri,  8 Nov 2024 13:25:47 -0700
Message-Id: <20241108202548.140511-1-xandfury@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 08 Nov 2024 22:25:31 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1731097553; x=1731702353; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=HjsnjJkvFk70FIP+kt5SypebIuFSVyDViD7ncvBNOtM=;
 b=ke5Ps6Kdms93eewELcCtS3K5BL84tEdyO48vhTgLlZANUUmxkDprIVV8Akso3693Ze
 p5MijmAkCd7gXiuYRXUAzNrIRynaQgIm0ow3R0qtgDqYAGNufsXhKEgicBIEEIYYZCmP
 1gLAnSri1XnQnAvd1RyyV4xshDW0Pad6kT4BhTSSErf6JpdJiyWVG2ss1s0NPvAZketv
 2VvSv9ez51NCr9TICeslFKYpydz0JWR2tgL25Ifb92cNPJU75ri0yJSTXDYgJfiPu7+O
 PQBVx2/bHg34q38EX3sjQGOcXXUvWdVAuyCeK59JgqTH8MI7ehPumIQWlONVxP/MNSWR
 N/KA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=ke5Ps6Kd
Subject: [Intel-wired-lan] [PATCH 1/2] docs: net: Fix text in eth/intel,
 mlx5 and switchdev docs
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

Fix various issues across networking documentation: remove duplicate word
in drivers/ethernet/intel/iavf, fix quote formatting in mlx5/counters,
correct typo in rds.rst and improve wording in switchdev topology doc.
These changes are purely documentation cleanup.

Signed-off-by: Abhinav Saxena <xandfury@gmail.com>
---
 Documentation/networking/device_drivers/ethernet/intel/iavf.rst | 2 +-
 .../device_drivers/ethernet/mellanox/mlx5/counters.rst          | 2 +-
 Documentation/networking/rds.rst                                | 2 +-
 Documentation/networking/switchdev.rst                          | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/networking/device_drivers/ethernet/intel/iavf.rst b/Documentation/networking/device_drivers/ethernet/intel/iavf.rst
index eb926c3bd4cd..73ce04c05071 100644
--- a/Documentation/networking/device_drivers/ethernet/intel/iavf.rst
+++ b/Documentation/networking/device_drivers/ethernet/intel/iavf.rst
@@ -171,7 +171,7 @@ queues: for each tc, <num queues>@<offset> (e.g. queues 16@0 16@16 assigns
 16 queues to tc0 at offset 0 and 16 queues to tc1 at offset 16. Max total
 number of queues for all tcs is 64 or number of cores, whichever is lower.)
 
-hw 1 mode channel: ‘channel’ with ‘hw’ set to 1 is a new new hardware
+hw 1 mode channel: 'channel' with 'hw' set to 1 is a new hardware
 offload mode in mqprio that makes full use of the mqprio options, the
 TCs, the queue configurations, and the QoS parameters.
 
diff --git a/Documentation/networking/device_drivers/ethernet/mellanox/mlx5/counters.rst b/Documentation/networking/device_drivers/ethernet/mellanox/mlx5/counters.rst
index 99d95be4d159..b23f36a2d28c 100644
--- a/Documentation/networking/device_drivers/ethernet/mellanox/mlx5/counters.rst
+++ b/Documentation/networking/device_drivers/ethernet/mellanox/mlx5/counters.rst
@@ -1135,7 +1135,7 @@ like flow control, FEC and more.
      - Informative
 
    * - `rx_pcs_symbol_err_phy`
-     - This counter counts the number of symbol errors that wasn’t corrected by
+     - This counter counts the number of symbol errors that wasn't corrected by
        FEC correction algorithm or that FEC algorithm was not active on this
        interface. If this counter is increasing, it implies that the link
        between the NIC and the network is suffering from high BER, and that
diff --git a/Documentation/networking/rds.rst b/Documentation/networking/rds.rst
index 498395f5fbcb..955afe0567aa 100644
--- a/Documentation/networking/rds.rst
+++ b/Documentation/networking/rds.rst
@@ -339,7 +339,7 @@ The send path
   rds_sendmsg()
     - struct rds_message built from incoming data
     - CMSGs parsed (e.g. RDMA ops)
-    - transport connection alloced and connected if not already
+    - transport connection allocated and connected if not already
     - rds_message placed on send queue
     - send worker awoken
 
diff --git a/Documentation/networking/switchdev.rst b/Documentation/networking/switchdev.rst
index f355f0166f1b..df4b4c4a15d5 100644
--- a/Documentation/networking/switchdev.rst
+++ b/Documentation/networking/switchdev.rst
@@ -162,7 +162,7 @@ The switchdev driver can know a particular port's position in the topology by
 monitoring NETDEV_CHANGEUPPER notifications.  For example, a port moved into a
 bond will see its upper master change.  If that bond is moved into a bridge,
 the bond's upper master will change.  And so on.  The driver will track such
-movements to know what position a port is in in the overall topology by
+movements to know what position a port is in the overall topology by
 registering for netdevice events and acting on NETDEV_CHANGEUPPER.
 
 L2 Forwarding Offload
-- 
2.34.1

