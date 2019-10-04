Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB8DCBEB1
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Oct 2019 17:11:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 691F4204F8;
	Fri,  4 Oct 2019 15:11:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kqVoxN7g9R7k; Fri,  4 Oct 2019 15:11:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1332523509;
	Fri,  4 Oct 2019 15:11:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D8AE81BF32C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2019 06:54:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D4A6886B5E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2019 06:54:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 70rtRH0sZPOe for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Oct 2019 06:54:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 62E7686AE1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Oct 2019 06:54:56 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id s1so3199792pgv.8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 03 Oct 2019 23:54:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WnrMI7Ok1MNg8xlXWuS34jn9100qvN5R6GtazYrUVB0=;
 b=dus/D1AQrCINQwT2rDgSzxJArLHMMlq+CkJrkX7aVpHddXyK1V2u4Z0XGzDLTpHIV8
 gZmlmLpNFCSbuR/owqVyk4ySYvkumwHu6nIVITOvalusuKMIuQMwYyB+Tcyr6/k+pdAu
 /phkmS5f81VB+sVM3H0gF2Yg/sgrMeLCELi1CIfH5w00SHlDrZ0VM0c0a03Cl5od+mip
 pEc1Uka8pc7pc34P6+//cSNUlWkfJss+yIoZmTElwOE3UZafTtpuBfMloKOvXbIjKOHG
 Nll9LK3ZMYEpa3tNpZPxJhUbNOTB1QixKpi2MI+nMiCBYSHzZkRwIrQnlqd0lQHKT2BO
 aUFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WnrMI7Ok1MNg8xlXWuS34jn9100qvN5R6GtazYrUVB0=;
 b=lygtWJEShqnfQ4zjyv0NotyaoujVZXy1I96KG6Ivu1epHR74mX37D0HdfT0h63MycM
 C5mhMbPVMc1KP5Hnwr3y/UXqMkNzqpkBArfeAe+Z4JZ86OGFLPYGu+qxc0w0vCuw9VTA
 HA0mu7D3LHSnfMG9cVgvhFE5zWTQmj5ylCLzszG4FoyBDuTgzxDWBd3r4mlcS2g0BYlW
 6tbkxt2Myd9K/cZfW5Pvgse/XkWRvzZ2AaUlWI5h7wJJhnh8yj2+9JDmAvCW5tNMuqyX
 d2slOBe/2TbDJQPEoa2x+ydk3HUTKBz7MrkN+21+svMARlk7PkRQ7+rczc/6zrZUqZgn
 Tjvw==
X-Gm-Message-State: APjAAAUCv/qgWSWb8i0b5pn3Vq8iQaZ+E3rXRoqS84ZHL/yO8h/72QCZ
 Qc8+QRM61E8NsW7XZW6GHKI=
X-Google-Smtp-Source: APXvYqxjsddIfU+pGkqhQk4WoiJob9/rK1J5FRh0YtXbbJeZ+AOEVcOiSN6DWv7nl36XOj4RC185/Q==
X-Received: by 2002:a62:d445:: with SMTP id u5mr15640803pfl.92.1570172095888; 
 Thu, 03 Oct 2019 23:54:55 -0700 (PDT)
Received: from ip.hsd1.ca.comcast.net
 ([2601:646:8100:a2f0:246f:b102:f969:6b0c])
 by smtp.googlemail.com with ESMTPSA id b9sm4273056pfo.105.2019.10.03.23.54.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Oct 2019 23:54:55 -0700 (PDT)
From: Igor Pylypiv <igor.pylypiv@gmail.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 "David S . Miller" <davem@davemloft.net>
Date: Thu,  3 Oct 2019 23:53:57 -0700
Message-Id: <20191004065357.19138-1-igor.pylypiv@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 04 Oct 2019 15:11:52 +0000
Subject: [Intel-wired-lan] [PATCH] ixgbe: Remove duplicate clear_bit() call
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Igor Pylypiv <igor.pylypiv@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

__IXGBE_RX_BUILD_SKB_ENABLED bit is already cleared.

Signed-off-by: Igor Pylypiv <igor.pylypiv@gmail.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 1ce2397306b9..91b3780ddb04 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -4310,7 +4310,6 @@ static void ixgbe_set_rx_buffer_len(struct ixgbe_adapter *adapter)
 		if (test_bit(__IXGBE_RX_FCOE, &rx_ring->state))
 			set_bit(__IXGBE_RX_3K_BUFFER, &rx_ring->state);
 
-		clear_bit(__IXGBE_RX_BUILD_SKB_ENABLED, &rx_ring->state);
 		if (adapter->flags2 & IXGBE_FLAG2_RX_LEGACY)
 			continue;
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
