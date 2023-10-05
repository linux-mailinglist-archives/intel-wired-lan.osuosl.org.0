Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F3A7B9DE3
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Oct 2023 15:57:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6E45183AA4;
	Thu,  5 Oct 2023 13:57:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E45183AA4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696514236;
	bh=+vv4bVoov6u4qV575i47iCpOJ9WqQve/pQ5suH0FNAY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=X9cFfhvsvuegQ6iqrBEOBha2Q2WkuYUb4tR7kwRXb2XXixrypuYDyU4Vf/+pOMwl9
	 zhqHGF8SdGCR3bOpDQgW4hsdWICuTlErmg0+lI5Tp8j/P8yrG1ulypnipd0kc7zTSF
	 DdxXFYN+BPEJ8o6NQJL5Y4rUUFOpnD0HGsDgULNPBFQJkIPm/xamBNGo66TaKWC5Zl
	 D0B5wAMGEY+m8El3HzpkiIuDcu1xdj+m+GbSvhpaxYm/F3Z3zrd+eFwZPzS9j1wDJZ
	 WQtnazSDj4sle/ogexAPL9Z7OUv8QlxvNpBX6W/3nL6uBmUo6h0YxgBWF9lrfDoKTM
	 HP5GvHhrJoRsQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id scdXn7TNzZlK; Thu,  5 Oct 2023 13:57:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0FA9883AA6;
	Thu,  5 Oct 2023 13:57:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0FA9883AA6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8C47B1BF4E4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 13:57:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 647F283834
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 13:57:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 647F283834
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hp1BDeKekEOa for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Oct 2023 13:57:09 +0000 (UTC)
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EB4908381F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 13:57:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EB4908381F
Received: by mail-wm1-x334.google.com with SMTP id
 5b1f17b1804b1-4065dea9a33so9413485e9.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 05 Oct 2023 06:57:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696514226; x=1697119026;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=kIDUUDyPCMDnmf6dgpyyTfj6uNBxPsdSSFa0JLZBazw=;
 b=ACHHTS/K/91z9gV3zGcpy4Q+BtIZtbYyjdH54UzjMSXF2EvfGiEz9es8pVD5Oq7Gy+
 oUyIurhahwmPrLWVwlhPOz6NiMMh679M3uiHWAPIZmlz/a3QUXGOTiR6IrEjqSG2FZgI
 5pFkJ9vpNCw3X99aNczAJzE6AHPD1vT84NgggNsbriuvpRh4uJrJSgQ2FJ29XPpj1YpD
 H0KrNi75FLFTSP59ZJuRY2vRrwIQexMEVOUl8Mk/OpJwR7Iz7BWkirIkNwTjIuozW0bU
 mQfC4VwQxgKy6iHB+m4QrctZkWaDONTMPckEt7B2JhtENWBHWxto3WXoeNzxuLbXJsTN
 XC/g==
X-Gm-Message-State: AOJu0YwsUXaFg79C280cbkjx0xuWtVRvTWTyIpC2v+qgMyMCrBdGUvlL
 t1QxkUnP+lNaeOcpv+U/0Y3ASA==
X-Google-Smtp-Source: AGHT+IH+50km3L9x7FNGDdpi8jFVFT/mSqPZ1f1vTJoCUCMCRuejoPXyRAO7AbAoq0zfWgzr9nEAVw==
X-Received: by 2002:a05:600c:211:b0:401:bf56:8ba6 with SMTP id
 17-20020a05600c021100b00401bf568ba6mr5087166wmi.28.1696514226615; 
 Thu, 05 Oct 2023 06:57:06 -0700 (PDT)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 n16-20020a05600c3b9000b0040684abb623sm3774428wms.24.2023.10.05.06.57.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Oct 2023 06:57:06 -0700 (PDT)
Date: Thu, 5 Oct 2023 16:57:02 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Greg Rose <gregory.v.rose@intel.com>
Message-ID: <3cee09b8-4c49-4a39-b889-75c0798dfe1c@moroto.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1696514226; x=1697119026; darn=lists.osuosl.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=kIDUUDyPCMDnmf6dgpyyTfj6uNBxPsdSSFa0JLZBazw=;
 b=P7VemuOlNjPjmpMc9H8K8A77+vagcvmv3oJGFKQXXC6RH5Q0v9pB+I95GR8fk/N7xn
 67IuxTRxmRJrEVisKlv3iR/7VwtyvhXTGjLkBkb7EWmLEYBCCSzLq6s43iVNDmNiiByx
 0OBV7/H9eK/b8Y/JV8IFVW1aET1WRw5zb4zt1yAp0hR7Mj/BTv8QGWcw5NCqkorCCEh1
 aadJC71T0RMcDT2MtLIslXZFoAUxb6IM/yeN1drtERFTCqBylJeJBtrc/LXLA6N5+hb6
 T6uULhsgbNP0QVM5k/U4dLTj3hgXDbwcFp6aqlu5TB/33Bv7hCnIxuJ8slwkAwDUsxBZ
 5toA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org
 header.a=rsa-sha256 header.s=google header.b=P7VemuOl
Subject: [Intel-wired-lan] [PATCH net] ixgbe: fix crash with empty VF
 macvlan list
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
Cc: intel-wired-lan@lists.osuosl.org, kernel-janitors@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The adapter->vf_mvs.l list needs to be initialized even if the list is
empty.  Otherwise it will lead to crashes.

Fixes: c6bda30a06d9 ("ixgbe: Reconfigure SR-IOV Init")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
index a703ba975205..9cfdfa8a4355 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
@@ -28,6 +28,9 @@ static inline void ixgbe_alloc_vf_macvlans(struct ixgbe_adapter *adapter,
 	struct vf_macvlans *mv_list;
 	int num_vf_macvlans, i;
 
+	/* Initialize list of VF macvlans */
+	INIT_LIST_HEAD(&adapter->vf_mvs.l);
+
 	num_vf_macvlans = hw->mac.num_rar_entries -
 			  (IXGBE_MAX_PF_MACVLANS + 1 + num_vfs);
 	if (!num_vf_macvlans)
@@ -36,8 +39,6 @@ static inline void ixgbe_alloc_vf_macvlans(struct ixgbe_adapter *adapter,
 	mv_list = kcalloc(num_vf_macvlans, sizeof(struct vf_macvlans),
 			  GFP_KERNEL);
 	if (mv_list) {
-		/* Initialize list of VF macvlans */
-		INIT_LIST_HEAD(&adapter->vf_mvs.l);
 		for (i = 0; i < num_vf_macvlans; i++) {
 			mv_list[i].vf = -1;
 			mv_list[i].free = true;
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
