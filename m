Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 20AA17FA029
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Nov 2023 13:59:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7E33F4087A;
	Mon, 27 Nov 2023 12:59:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E33F4087A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701089970;
	bh=uPGVC/FN3YF8gXMyp+HySRfRBml2xCrhPgwLR7smxqk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=NRwr9FNSrjrrAz+ozW7T+FOBOjH63WsQIvhytraOh0TQsPR9sgeUV/9QRKba3hTKU
	 sw+TWgu4nKAJXMUaDWjmG2Yh16EzrGBGIpU79Q6cqHtbvKdHyV8myLpRI6L7ZoMc/Q
	 QUr8kFVOeuKUA4RaidtbYfYei0Xt0JAUVAn0fSIvQZ2q7cHVsr0+ilHXyiamavLUNq
	 2DEAVjJD1P9sPPddpVsMZLpVA+BupGM1VqCXXZ5AleNJGAoKQTP5XVP2p/MgLw8E7z
	 +nzb79w/tn4euNEOZjKQ5swSvbbefbEhbOKrL+e5j1So+hUpd2bsaFCYoEfPIyZX96
	 BOJSkyctwKkLQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n-MbOvYCZ_H9; Mon, 27 Nov 2023 12:59:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4E4D040861;
	Mon, 27 Nov 2023 12:59:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4E4D040861
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 346061BF20B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 12:59:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 15FBF40862
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 12:59:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 15FBF40862
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2Q9qK6LRBfDW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Nov 2023 12:59:23 +0000 (UTC)
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 55B524077D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 12:59:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 55B524077D
Received: by mail-wm1-x336.google.com with SMTP id
 5b1f17b1804b1-40838915cecso29103415e9.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Nov 2023 04:59:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1701089961; x=1701694761;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=DRj3ngvYtPvtc5FEEk7h4ztZGX7+EQPAdDUCG9vRzv4=;
 b=KMMGEsf+92W1iXZfBKyxzeGGksjsIrkAIZi5up+CUML/NAWrVVQCr99z14w1bRvfX4
 MnYf2oBMsjfIN+Dl6jKop2PoE5Rx7RO6EnmQ/mHTODXXOwLfzMAMkrQZXRL8c0iIdtHe
 cIiXKhKx0HKHBw/+PXtd0TfWKyqx60RZQXSSFDwdmNPQ2l0rvTSuLcl8FrOhwJDgaXt4
 dUKAl7SCKh8QrlQjGF8pT7DR9LsZ/FV2WxPL1EYi4aY0mm1HqOZSi/PCySpNVUDWE7UF
 oWMWm1pMy+smc94zm198Z8fBXmXrdETA+0CVqshwBhPMFcKirTseXV31JZ/bMD05kzMw
 DOkA==
X-Gm-Message-State: AOJu0YwiZXAg7512maScrza/wn6m21ULN3N60+1rOWlOblBPdps90tE3
 DDgLCLJCo0pzvLr2lQQKzS7pSQ==
X-Google-Smtp-Source: AGHT+IHJtodRZ08aYWurZAtbiXoTBbYnCPB2mvDlNqTf9TMmij8nAPXOfQYZ2vPvAtAt7uU8pnTz1Q==
X-Received: by 2002:a5d:5234:0:b0:332:f61a:631c with SMTP id
 i20-20020a5d5234000000b00332f61a631cmr3952666wra.24.1701089961198; 
 Mon, 27 Nov 2023 04:59:21 -0800 (PST)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 w3-20020a5d5443000000b003140f47224csm11960469wrv.15.2023.11.27.04.59.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Nov 2023 04:59:20 -0800 (PST)
Date: Mon, 27 Nov 2023 15:59:17 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <e0349ee5-76e6-4ff4-812f-4aa0d3f76ae7@moroto.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1701089961; x=1701694761; darn=lists.osuosl.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=DRj3ngvYtPvtc5FEEk7h4ztZGX7+EQPAdDUCG9vRzv4=;
 b=Sn+CfwqYXG6x0Rgb6yjA6n++Niel66RT6AS9jF/CSW5kihy7SV2bFpi/qv2hfWaz//
 KstKzTAz98+9D5ln1b/6M6sgAQfqf10/BrzcQwtk5bG12Ij43bhB7fYBslsY//naEaa/
 zYxZ4gVbDTCLt3gCc0YhqKRTS/MQwYfF1trOjUH1fjiOs5osreWFQdzW37j+pP7vpCj+
 kzEZ58grfJwh46HRpiJ4/u5ckCa+5FjQMtP0lTZaWOKKUlY/3DpU8fyQC7xBjlzbiIp/
 gx4K14XyZomIetRRlvU5PhK2AVuDOsomm0pNWK5OK8TsWytLJpqQlcZEOff7Vj0PJ07a
 iuSQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org
 header.a=rsa-sha256 header.s=google header.b=Sn+CfwqY
Subject: [Intel-wired-lan] [PATCH net-next] ice: fix error code in
 ice_eswitch_attach()
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
 intel-wired-lan@lists.osuosl.org, kernel-janitors@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Piotr Raczynski <piotr.raczynski@intel.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Set the "err" variable on this error path.

Fixes: fff292b47ac1 ("ice: add VF representors one by one")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 drivers/net/ethernet/intel/ice/ice_eswitch.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index 3f80e2081e5d..ca118bc37e44 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -669,8 +669,10 @@ ice_eswitch_attach(struct ice_pf *pf, struct ice_vf *vf)
 	ice_eswitch_stop_reprs(pf);
 
 	repr = ice_repr_add_vf(vf);
-	if (IS_ERR(repr))
+	if (IS_ERR(repr)) {
+		err = PTR_ERR(repr);
 		goto err_create_repr;
+	}
 
 	err = ice_eswitch_setup_repr(pf, repr);
 	if (err)
-- 
2.42.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
