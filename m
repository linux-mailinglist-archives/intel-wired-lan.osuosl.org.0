Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4501F978FB4
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Sep 2024 11:57:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8C61740475;
	Sat, 14 Sep 2024 09:57:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QhcNIAWBusF6; Sat, 14 Sep 2024 09:57:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 995AC403C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726307858;
	bh=KE+o4GW15mD0lO9Q1MSUje0WFegNuMWBNx0d+tJV9y8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=tP94ATz7c0K4TMPbteS7VJ4zh41AzS9Tg17D7+IpR+ds1MPDhE3A2dOKZMLcjJ2UN
	 TJpQJvEoOgTdtIfC82dwZI9e81DptXMopG6dhk7/cdm21nNTsxrQqFDZ0w9gWMDRcq
	 Asl0CEOKoYJTcWcmgxZ6WWafd8rvcaMtDGqW3P1Tcnwo2OD7RhO3wgYnqTJ45wtyAh
	 AhZtWsWxOmWZZDsgbVPhQ3oFDt917LLp7wxKND/unNWpC9x7DIxjwk/zkJZSpyW/cA
	 Ju0TIvEDOvT0m6SQry5r34vG2OSwWhzzZRFY9fF5Cxq0SQy9umVRMVRKwQ+LOEav65
	 e6wqVs/GdbZow==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 995AC403C9;
	Sat, 14 Sep 2024 09:57:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9ACF31BF280
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Sep 2024 09:57:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 87E81401D4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Sep 2024 09:57:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O-pYPhBdlEW2 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Sep 2024 09:57:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::62c; helo=mail-ej1-x62c.google.com;
 envelope-from=dan.carpenter@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 422D0401BF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 422D0401BF
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 422D0401BF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Sep 2024 09:57:34 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id
 a640c23a62f3a-a7a843bef98so209349766b.2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Sep 2024 02:57:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726307852; x=1726912652;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=KE+o4GW15mD0lO9Q1MSUje0WFegNuMWBNx0d+tJV9y8=;
 b=Gv41TL/424z056ClpIyGv/qYI2gSa73/39+8UFvH5p4m94Yp6Z9lFandsH/8Sqhbpc
 TKBoZGhRXvT5I0beuY6D0WiLg8MF53io1tYdYG6Pj5a3mp6OfZjIoWunEdxBfQRXRP3v
 CT95gbZ1m4QVeWWPJWCtFEzjGytgPvA1BaRodHosuw50/FJm5mjcmlH0pYxBwmJ+9R+6
 ht95It70suTlzCPFCLK5eDY2JokloS+EFmuZykxvJlOsJVNg+9ruLfZXnHN4ZRbmZi5n
 J+InhEguYgsPu02ZW1x0zQw+LnaPmEBcQM026vSphEbyvywcGZRaBAr37yVAWXcoyjT3
 cPYg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUi5ac6OgMbuVb9tgsQ1ohrrZguSsrILSraL9gh5DSjcERyQo05OYW5+aYo/YHvgyRJbapz3tQl0WAXFk3vuZg=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw7mf8n2XCAshdeEAIC2+FzNx5gxWJ+l3/K4oEigeIwQhnVAp4p
 82b7q39c6PxSe4sEanUV8xNi6om/2V6O8WadJuhlCMXwdsktWJKzoaZO9BKZCzA=
X-Google-Smtp-Source: AGHT+IEQayo62aQvlqZj9eNFA3UtGiSNdY1Nd2T98Zj0wlkmKEFR6sdcxKopa5NxgGNy9WPY2H8KdQ==
X-Received: by 2002:a17:907:608d:b0:a86:79a2:ab15 with SMTP id
 a640c23a62f3a-a9048102110mr498501066b.40.1726307852548; 
 Sat, 14 Sep 2024 02:57:32 -0700 (PDT)
Received: from localhost ([196.207.164.177]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a9061096779sm61360966b.25.2024.09.14.02.57.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Sep 2024 02:57:32 -0700 (PDT)
Date: Sat, 14 Sep 2024 12:57:28 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <7f7aeb91-8771-47b8-9275-9d9f64f947dd@stanley.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1726307852; x=1726912652; darn=lists.osuosl.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=KE+o4GW15mD0lO9Q1MSUje0WFegNuMWBNx0d+tJV9y8=;
 b=w2bj2egli4YF54+PZDVPYKWuCcA5RRzxXEwg7F+Vyp9ZtAKPp9ZuMPYgrijm2DOWS2
 NgY47PdE6nUXVN5TrIQtZszK776m1gwgALrDaciWS0re64EzId/7iYzEbc+OBXKvyEwI
 MiX7tia2os8u9rbcw2vddmDB3NJ/cBGMDrvb/V9G7z9h4ts1WIF06FBdLAH2VXuoPGzV
 HnGb/V2lcHAkJ8mcyvgkftOdIG5IaFLs7aFRFDBPV1qnn5XSADxxaeYnhybVsFFlgND2
 lkMjIiXzv0MAifobt7gvHW6m4WkskJSu70sUgEoKy2Anwwbgn1Y2AzsM28l1uDcFu3mm
 0LVQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=w2bj2egl
Subject: [Intel-wired-lan] [PATCH net-next] ice: Fix a couple NULL vs
 IS_ERR() bugs
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice_repr_create() function returns error pointers.  It never returns
NULL.  Fix the callers to check for IS_ERR().

Fixes: 977514fb0fa8 ("ice: create port representor for SF")
Fixes: 415db8399d06 ("ice: make representor code generic")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 drivers/net/ethernet/intel/ice/ice_repr.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index 00d4a9125dfa..970a99a52bf1 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -452,8 +452,8 @@ struct ice_repr *ice_repr_create_vf(struct ice_vf *vf)
 		return ERR_PTR(-EINVAL);
 
 	repr = ice_repr_create(vsi);
-	if (!repr)
-		return ERR_PTR(-ENOMEM);
+	if (IS_ERR(repr))
+		return repr;
 
 	repr->type = ICE_REPR_TYPE_VF;
 	repr->vf = vf;
@@ -501,8 +501,8 @@ struct ice_repr *ice_repr_create_sf(struct ice_dynamic_port *sf)
 {
 	struct ice_repr *repr = ice_repr_create(sf->vsi);
 
-	if (!repr)
-		return ERR_PTR(-ENOMEM);
+	if (IS_ERR(repr))
+		return repr;
 
 	repr->type = ICE_REPR_TYPE_SF;
 	repr->sf = sf;
-- 
2.45.2

