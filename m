Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B814B5507
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Feb 2022 16:40:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 56A6D60F1D;
	Mon, 14 Feb 2022 15:40:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u_eNY1ySOJeb; Mon, 14 Feb 2022 15:40:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5C75C60D4E;
	Mon, 14 Feb 2022 15:40:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2237E1BF385
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Feb 2022 15:40:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1B403827FA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Feb 2022 15:40:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZsBltnLcNY-0 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Feb 2022 15:40:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5C5A3827E0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Feb 2022 15:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1644853250;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=NsyCA1by/ak8R1lwSMjCXJyyH1qXb4V0zf8axMvxNR8=;
 b=D76JO1VuFa5VT6Kb/Piz9d3MFdyjVn2tUldPx9JyB441Z6MpWvbKKwTP7z8SznwmPpHW8C
 Xm4QeRakfIhI/NwBJ0ZiCGciU4SmqRdrgNwpfbNa1zoPlOOwwD4hzJVoib/EmzSNf3bkbR
 PjXoWLKhP4tRKFukRQAuGkW6BxT+47Q=
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com
 [209.85.167.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-550-pmLnkf9eMu2i__jC2p2exA-1; Mon, 14 Feb 2022 10:40:48 -0500
X-MC-Unique: pmLnkf9eMu2i__jC2p2exA-1
Received: by mail-oi1-f199.google.com with SMTP id
 bb20-20020a056808169400b002cd940d6247so3693272oib.7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Feb 2022 07:40:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NsyCA1by/ak8R1lwSMjCXJyyH1qXb4V0zf8axMvxNR8=;
 b=V2tQdFFUK2kzKM3Yw1LpMoM3+AvBm1F8AnYdE0FjkZPbbQQPphQUBLfAhhr1zsrOT6
 2zvjKy1WPssjcVi91AHnYvDUZXkwg+qpNfZAw2bRxURB8cKZwj2+ex+Iu+/0eqqcC5GA
 f/fqqGl5naeBWnq+QZc02YWuYbYCH6UXlR4LOqfK4SBr4u2CatVLi0oZLwRl3kBJ3CnS
 ODYZnOR83EqjMwSUUwjO7Aw2j7TZ8Q6eY6Qqpu8g39e65K9NwhmgSnUcnrqBApqWi6NH
 CZ8RNuTyLjXD1mcuTtMaMmvmGf4GTDCYL63W5AzZ3iYqbpQUahhBjZI3lnpjd3RvoWrh
 pf8A==
X-Gm-Message-State: AOAM532UxdRQO6pu6mOD9rNI6NOZLtzBueNxAgShA+vV9rOFm3Ao9oP0
 /s+WrYJCO8xWK80ovhzZPM3bA2Vws6oTIPd7TlscnsWbuVnNSy57f51QobskOq8AVFfUvY0QrSA
 zVQSAivh4QIIZD8eQCTNrJX9gevRUHg==
X-Received: by 2002:a05:6808:30a0:: with SMTP id
 bl32mr34578oib.262.1644853248099; 
 Mon, 14 Feb 2022 07:40:48 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyuAZBJGNoWdrA+012X1djizbpdOBot5gLyfgpONhsQ6+8gC+0JtSILPzlYULjoQUEuunFbBw==
X-Received: by 2002:a05:6808:30a0:: with SMTP id
 bl32mr34562oib.262.1644853247928; 
 Mon, 14 Feb 2022 07:40:47 -0800 (PST)
Received: from localhost.localdomain.com (024-205-208-113.res.spectrum.com.
 [24.205.208.113])
 by smtp.gmail.com with ESMTPSA id n11sm4432445oal.1.2022.02.14.07.40.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Feb 2022 07:40:47 -0800 (PST)
From: trix@redhat.com
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, kuba@kernel.org, nathan@kernel.org,
 ndesaulniers@google.com, paul.greenwalt@intel.com, evan.swanson@intel.com
Date: Mon, 14 Feb 2022 07:40:43 -0800
Message-Id: <20220214154043.2891024-1-trix@redhat.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=trix@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Intel-wired-lan] [PATCH] ice: initialize local variable 'tlv'
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
Cc: netdev@vger.kernel.org, llvm@lists.linux.dev,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Tom Rix <trix@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Tom Rix <trix@redhat.com>

Clang static analysis reports this issues
ice_common.c:5008:21: warning: The left expression of the compound
  assignment is an uninitialized value. The computed value will
  also be garbage
  ldo->phy_type_low |= ((u64)buf << (i * 16));
  ~~~~~~~~~~~~~~~~~ ^

When called from ice_cfg_phy_fec() ldo is the unintialized local
variable tlv.  So initialize.

Fixes: ea78ce4dab05 ("ice: add link lenient and default override support")
Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index c57e5fc41cf8..0e4434e3c290 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -3379,7 +3379,7 @@ ice_cfg_phy_fec(struct ice_port_info *pi, struct ice_aqc_set_phy_cfg_data *cfg,
 
 	if (fec == ICE_FEC_AUTO && ice_fw_supports_link_override(hw) &&
 	    !ice_fw_supports_report_dflt_cfg(hw)) {
-		struct ice_link_default_override_tlv tlv;
+		struct ice_link_default_override_tlv tlv = { 0 };
 
 		status = ice_get_link_default_override(&tlv, pi);
 		if (status)
-- 
2.26.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
