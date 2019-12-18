Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E21BB1258AA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Dec 2019 01:40:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D7E5B884A0;
	Thu, 19 Dec 2019 00:40:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j6b7nu+irGXV; Thu, 19 Dec 2019 00:40:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5F853883D2;
	Thu, 19 Dec 2019 00:40:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C912B1BF397
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2019 18:38:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C1D41228AE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2019 18:38:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JOxN8JTvHDDx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2019 18:38:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 5F0CD20527
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2019 18:38:51 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id c16so2419569qko.6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2019 10:38:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=5ikSA7rFPIJeDtutbKifiGd6Srvvi6Dl1l6d0/w6wx8=;
 b=u2XzHlH0bmH5KqoA0lVktdjkYPC+AS77pvvHCgrIwzLlT2/nD2z5eAMAUN+96OC5JU
 imY4GG6icK/jbi05O7ZzblUoEf61mTxGUAjWCcTmqTuYAHVGDRrRRtdTK6gUbuP7ZAs+
 T9w0cjHBMi9EYiatII2vUrTCv1ZkOZA1NOxXjDgwcUHZX50LwgaZN/kt01x4Wm3YgLay
 GcFIasNiyyh1IqA2vNeDu92NEeS5P/CCDOCa8nHQ8K4IP5rSs/ql8q+tmvzp8++2NzNs
 3RHmBkn3CASSGmBOlKvgkOjTu8c8N0L/GQpWEfcO5piIioVQbKhb+fn/UnZG++DwQZwr
 lmlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=5ikSA7rFPIJeDtutbKifiGd6Srvvi6Dl1l6d0/w6wx8=;
 b=LSis75VSSWoLF47cKy3YbveREhJARYk57MT8tBH0KVUB8NahRBAYagFtBu2cLCB1bW
 dXBICoNvXkYd6An5WqhQcTtZs3fqXiS3lpWepUqZlTALocvauG6gTpC1u0pu2j/1aIG0
 Mt4LXQN1moZ4xQ7HXyq53U1DfInyNMORQ5VqM/TlmvPIx2SLvrdZh286utYKE0FBDX8W
 CwcKcyZpYwrV87MQPN+E1JLJ3+X3vfPz/eHf4U68TXDerk24KVSyWtkw8vitun53/lMY
 +3dqrNZ7coyunPBNAtB9as1rkYpjO+QltFGKCgxL7EoqtYDGC7T00VNfKrhP1+AzK9+/
 8TcA==
X-Gm-Message-State: APjAAAX9hV5KHVNxb2Ip4BSOlgZ9dUMPCc2aSviRwGkaTY7/GYCE1xaA
 XyUfkXru1g2nzPgMhVhDaUc=
X-Google-Smtp-Source: APXvYqyXcsrrxtrLSbK3RK5SVzClhtnDNPE95KXA5fqSH/Yqy5wA3pNY3xmUgvDULJKYykUs8/t40Q==
X-Received: by 2002:a37:b601:: with SMTP id g1mr1221805qkf.114.1576694330272; 
 Wed, 18 Dec 2019 10:38:50 -0800 (PST)
Received: from ubuntu.default (201-42-108-210.dsl.telesp.net.br.
 [201.42.108.210])
 by smtp.gmail.com with ESMTPSA id s11sm890049qkg.99.2019.12.18.10.38.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 10:38:49 -0800 (PST)
From: Julio Faracco <jcfaracco@gmail.com>
To: netdev@vger.kernel.org
Date: Wed, 18 Dec 2019 15:38:43 -0300
Message-Id: <20191218183845.20038-1-jcfaracco@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Thu, 19 Dec 2019 00:40:00 +0000
Subject: [Intel-wired-lan] [PATCH net-next 0/2] drivers: net: intel: update
 i40e and ice to use txqueue parameter from tx_timeout.
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: intel-wired-lan@lists.osuosl.org, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The scope of function .ndo_tx_timeout is passing the hung queue now
using a parameter called `txqueue`. Some drivers are still using a loop
structure to identify what is the stopped queue inside that function
above. This is a redundant code. So, this series removes some unnecessary
code to make advantage of that new parameter. We don't need rework now.
For further details see: commit 0290bd291cc0 ("netdev: pass the stuck
queue to the timeout handler").

Julio Faracco (2):
  drivers: net: i40e: Removing hung_queue variable to use txqueue
    function parameter
  drivers: net: ice: Removing hung_queue variable to use txqueue
    function parameter

 drivers/net/ethernet/intel/i40e/i40e_main.c | 41 ++++++---------------
 drivers/net/ethernet/intel/ice/ice_main.c   | 41 ++++++---------------
 2 files changed, 22 insertions(+), 60 deletions(-)

-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
