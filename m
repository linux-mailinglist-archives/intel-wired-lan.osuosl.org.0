Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E897BB822
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Oct 2023 14:53:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 44EB160E0B;
	Fri,  6 Oct 2023 12:53:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 44EB160E0B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696596801;
	bh=xKTe877j3nbNe+bJeKXTpzqKwx7UjAJHIc/Myugvo+Y=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=pZ1zJMG9eZT+HBNP/vVXg6X4/tR/vynJQae3JX2PY8PZs5PKyEvfj9xJPBNZlw9iB
	 eZNFKvglOaDCYqwvU/D6pWF3ib9udf+F54I7OutoFUEiE16i0gI/F+ulQvY/3iPT9y
	 pDwe6cGcY9p/WDZ9YlWLzi3sq7xGQn1lni4QIVQVxHUQsDl+q5kEycUu3vDqq+sxL7
	 pmkSUSdv/elyoobNkm87CMgpQAePpKDyUFQ8VcaV0FNMjkx3gcsB4iHaPhsCZEnKAJ
	 i13abcTaXpQkXvDnpdOnTUwTJLS1wAZKx4W4lqU74Sd1U7/c5Fmfzt+nwGrzIzHUYs
	 lnSZUM9iU4iLQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y3rd0cIRLrRp; Fri,  6 Oct 2023 12:53:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 30DD760BEF;
	Fri,  6 Oct 2023 12:53:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 30DD760BEF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 48BDA1BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 12:53:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 20F2F60BEF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 12:53:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 20F2F60BEF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3gf2fmCUdEbp for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Oct 2023 12:53:14 +0000 (UTC)
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3CF3A60BC6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 12:53:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3CF3A60BC6
Received: by mail-wm1-x32c.google.com with SMTP id
 5b1f17b1804b1-40651a72807so19997475e9.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 06 Oct 2023 05:53:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696596792; x=1697201592;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Q/pNLEjZCjhbSTGsvbxxkYZuso1BbyFnQkUqlrstOic=;
 b=LddSjd4O9a8Voyupi6J141nrurENFaa+4tDxbDAHj9Azu9MGLfscAgpvtZJNliFQKi
 v6zyxZTdU+AgxeBDHMHxZinp3cl4J7fhbif+deAb00QFB357/mH8C1QxY5arrkH7SI6Z
 4l0Gfw1uMtEaFMNxdxV7r4Y8iVbc0T5K8Y5eITpPX8NGSiYOIwFtdFZbFYa0vOQCRXvs
 Oduu9m0sr42aGuGX4+ulZ4AwEEo0E9BFvC2sn3cFfEbsJKop4rlDGN6U4B8r5vfYm2vO
 2RxnvcxpnUGV/lKWEqwYFOnCE63CVdRx5Kv7L7VE82aFwEejaAXHu3CF/vnX/i4p+dlo
 TpHw==
X-Gm-Message-State: AOJu0YybrrlNypB70eToaips/FF3140g1vqV4bLyGuFzvY+sJx4uv9we
 rCpCdyONFAmGPCEHovTXbRSqO+IHCBU2aBpmkDk=
X-Google-Smtp-Source: AGHT+IFV5ma+vFvWKPuinROG/8U8XkA/Z+MG4UB0zyFovn/dAHerT6RzI8EcZV01tcRCF6pJsXNwtg==
X-Received: by 2002:a05:600c:2a4e:b0:404:732b:674f with SMTP id
 x14-20020a05600c2a4e00b00404732b674fmr7828883wme.34.1696596792244; 
 Fri, 06 Oct 2023 05:53:12 -0700 (PDT)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 t14-20020a1c770e000000b004054dcbf92asm3690460wmi.20.2023.10.06.05.53.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Oct 2023 05:53:12 -0700 (PDT)
Date: Fri, 6 Oct 2023 15:53:09 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Simon Horman <horms@kernel.org>
Message-ID: <ZSADNdIw8zFx1xw2@kadam>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1696596792; x=1697201592; darn=lists.osuosl.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Q/pNLEjZCjhbSTGsvbxxkYZuso1BbyFnQkUqlrstOic=;
 b=CEZN7wIv5LO2Hv8ppmrNBlA9M+ubcVUxGkGaEF90yBZvaxik8lhPCOjiI4/grk7wuW
 k6Gc8Giuf+IE+1DTHedUoNuCrInuA+uqNmohgT0vbyvBicyNE2PMm9VEx5/SlRet8bAO
 FROsctSFNcu7qV76pqj4lMTqZlPFamcqSCLEQcMa0Bb10bhQsZRvogEk2LhwnE4OZe14
 WPsiDoFucTrXMSH52cgQgElcsxujn4mzUkC9jZpR0ELZHdbMhQ5UgcJlLByAnSrNGyNB
 6lwrem+gSVWu6QhyCZPomu9Aoae14KeT9MM4E37BIxAyirvO9XxMTteQgRQIrr5AZB40
 LjZA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org
 header.a=rsa-sha256 header.s=google header.b=CEZN7wIv
Subject: [Intel-wired-lan] [PATCH net v2] ixgbe: fix crash with empty VF
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

Fixes: a1cbb15c1397 ("ixgbe: Add macvlan support for VF")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
v2: Use the correct fixes tag.  Thanks, Simon.

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
