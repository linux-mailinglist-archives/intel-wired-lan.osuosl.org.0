Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gDmXIsPD+2kREgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 07 May 2026 00:42:11 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2FE4E14C5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 07 May 2026 00:42:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AAB2A40A4D;
	Wed,  6 May 2026 22:42:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ydq0TcXQ1foN; Wed,  6 May 2026 22:42:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D0E7240B70
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778107327;
	bh=/rBu0tYuQwihUJHe0i1kYkc69adHjv66QFbm/3O1Vxo=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=TLpnOePNRNiFWGw817EZhpWoN3rvN4IPAKVSTB4xRTTI5FwkjjeqshEsnVH9MYpkO
	 DZt9aU6abd2TuTkgvvf5BxxHSdjcvO1Cmtx+M8nvAeOdEXDp9OznVyutyxx8YhHSdO
	 RuLWH0olHmheQbBAOoV77b5ROaYmAfSc2maIC/G4TmJ3NzE4X1bA6dtrhUf34ALfC9
	 Zhf0jQY04uw5EUYHp7XGsAJilJvkJYUv0Xo4e4XbIOkhX0W5H3A3B5A8yjGhP7BxqG
	 TwViLHhfthS0UmyeWctN/JNmOcw6YypQAYGkuwHGGubNkSalByWnsvZRldnwlenaXE
	 xPard1rmNw1Vg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D0E7240B70;
	Wed,  6 May 2026 22:42:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id ABEBC317
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 22:42:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8EDA34024A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 22:42:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ugDMEmuf3O0k for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 May 2026 22:42:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::132c; helo=mail-dy1-x132c.google.com;
 envelope-from=mkhalfella@purestorage.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A62D3400EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A62D3400EC
Received: from mail-dy1-x132c.google.com (mail-dy1-x132c.google.com
 [IPv6:2607:f8b0:4864:20::132c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A62D3400EC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 22:42:05 +0000 (UTC)
Received: by mail-dy1-x132c.google.com with SMTP id
 5a478bee46e88-2f30a4601bbso243322eec.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 06 May 2026 15:42:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1778107324; x=1778712124;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/rBu0tYuQwihUJHe0i1kYkc69adHjv66QFbm/3O1Vxo=;
 b=flPTlyAQj3pklB6etq3C0Z1kszCzhoB12oi2PO9urgq8Ga9u5iO2GRnpw+8Df1IKYL
 ZJcLYwdvgSp6x7ZEFKF3BFDzfeVBeJ2E+zbDX+6EyTGMzjkcLxoEmRCsg9AOOWwKmCHj
 yDLOcfCbOZWohpwGGS16ltX9sNlbMVpeOFv9DKeNmMD72MpmM4dWiHSe5tDLSPxHE7oM
 3GfDmGatt7o+ukYoiEXbvGRjpYEoP9++z/KGNEIRse9rlH4lTVLTz5ZM93ULdxSLc1Lr
 +wIBSSB3C+WUapYjKZ+qLuBA5Fb+4RubpKwPIXLG/g80rRUmmjT6owOQ5v3zhNqtPm0U
 0YLg==
X-Forwarded-Encrypted: i=1;
 AFNElJ+I5HkUVHb9JzolK2Xxvceyv1y3aywPL0DjgZCW2gU1yzvRXsDaCI4HVGN2tIXGity8EakmjlHbah+3tw7hzuw=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyJWidJ6NaFWx2QrPkGBS0kXr31JPfawAdHw84cylUp5CcLM9fB
 KCaWGZlHyVxiRQ2l54sXGYKjRwX6SdBT7nnAakMNF+fg40vUjc8boNXC/j2uz9nA7Zw=
X-Gm-Gg: AeBDietVTTFO4rrtFNM5dQt3qFv3apT8g8nkQv8RwfIW0SZtm6zn0soXEgaEfitl2ei
 2cZ5vg3Pf6rcO8kaUNHXUeIoi4b9BeQRwJInL0Yt+GL1BlC6pYoz1iHkk3HRKhJSKvbLhHwb+00
 qhLERMwGLg+vh5fjAu3cyGrtMSxIbQjJPA0Qqo/wZdGK1barrFjUHULrbB/EVC7xv7SQMpzVagN
 eg5nD+iqgEb9/6W0ZJc3SC5HWpOEUJsMkkvQHaFAnHZURD7mQEfcluQ9NvwzckQ3GmgDdZmN+Kj
 0j9kU8rD4YnBo7CldrpE874kBN2Gc5sgRpeJ2wuIw3hg/casBjbJThIugxB4yhEQ6uuhBpyefOc
 V4boYwZWC+FPmMCauOe+cZbG9qnq/4hQhN40kAXej4dqV9pLAxAZsk347FsOLixae9SD0dot6YZ
 5D95x5Ki2dq756MSgLSnCmPoh6eFWhS/hkmh5JRtkbk9bJD40nKw+R14QOJlqSwKdMWIyO
X-Received: by 2002:a05:7300:a987:b0:2df:c5bb:3720 with SMTP id
 5a478bee46e88-2f54c587faemr2885736eec.15.1778107323983; 
 Wed, 06 May 2026 15:42:03 -0700 (PDT)
Received: from apollo.purestorage.com ([208.88.152.253])
 by smtp.googlemail.com with ESMTPSA id
 5a478bee46e88-2f57038c644sm6008472eec.29.2026.05.06.15.42.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2026 15:42:03 -0700 (PDT)
From: Mohamed Khalfella <mkhalfella@purestorage.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Cc: Mohamed Khalfella <mkhalfella@purestorage.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>,
 Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Wed,  6 May 2026 15:41:23 -0700
Message-ID: <20260506224123.691160-1-mkhalfella@purestorage.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=purestorage.com; s=google2022; t=1778107324; x=1778712124;
 darn=lists.osuosl.org; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=/rBu0tYuQwihUJHe0i1kYkc69adHjv66QFbm/3O1Vxo=;
 b=N2W7kOMDmzE/Mp2fHtGZXUFkiWgoNZ5PNRWd3pzTNXUHJbapbbSrj8r8kxa/N20dYu
 FF4BZ7tLJEZ+8Dt4af2aI3C2ZLcXkviK0GLN7q8bYNtVSeD2yE+xcXzkUMN0J7bsK5C5
 mylcXz+D4PbK5vWsGhpoCpNtb9Zx41tGFofDgS7RK8nlDZ4g6lymecWt1wPRhCN1jnw6
 cNRAuE7N5/ojoqqfN9h/zJNSSCblh0Ue3WH8MGQpyJ82wOyqrEe7cveNJ4VLNuSdnbeV
 C23aD2zhfcNvN44wbzUwx0fnvZQ836PX5ro/0fh1CiWY52lNATZSTIx7DMkRMJHvu13A
 YyQQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=purestorage.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=purestorage.com header.i=@purestorage.com
 header.a=rsa-sha256 header.s=google2022 header.b=N2W7kOMD
Subject: [Intel-wired-lan] [PATCH v2] i40e: Fix i40e_debug() to use struct
 i40e_hw argument
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
X-Rspamd-Queue-Id: 7B2FE4E14C5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [10.29 / 15.00];
	URIBL_BLACK(7.50)[osuosl.org:dkim];
	DMARC_POLICY_QUARANTINE(1.50)[purestorage.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:mkhalfella@purestorage.com,m:aleksandr.loktionov@intel.com,m:pmenzel@molgen.mpg.de,m:jacob.e.keller@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	R_DKIM_ALLOW(0.00)[osuosl.org:s=default];
	FROM_HAS_DN(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER(0.00)[mkhalfella@purestorage.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-0.862];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[mkhalfella@purestorage.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_ALLOW(0.00)[+mx];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: add header
X-Spam: Yes

i40e_debug() macro takes struct i40e_hw *h as first argument. But the
macro body uses hw instead of h. This has been working so far because hw
happens to be the name of the variable in the context where the macro is
expanded. Fix the macro to use the passed argument.

Fixes: 5dfd37c37a44 ("i40e: Split i40e_osdep.h")
Signed-off-by: Mohamed Khalfella <mkhalfella@purestorage.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
---
 drivers/net/ethernet/intel/i40e/i40e_debug.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_debug.h b/drivers/net/ethernet/intel/i40e/i40e_debug.h
index e9871dfb32bd4..01fd70db90866 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_debug.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_debug.h
@@ -42,7 +42,7 @@ struct device *i40e_hw_to_dev(struct i40e_hw *hw);
 #define i40e_debug(h, m, s, ...)				\
 do {								\
 	if (((m) & (h)->debug_mask))				\
-		dev_info(i40e_hw_to_dev(hw), s, ##__VA_ARGS__);	\
+		dev_info(i40e_hw_to_dev(h), s, ##__VA_ARGS__);	\
 } while (0)
 
 #endif /* _I40E_DEBUG_H_ */
-- 
2.53.0

