Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sCx+DtNt8GmgTQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 10:20:35 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B7247FE26
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 10:20:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 85FBE83638;
	Tue, 28 Apr 2026 08:20:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 21RDEtEowMb2; Tue, 28 Apr 2026 08:20:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C20C683613
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777364431;
	bh=FjJThp4I5WkrMZHH23Stv5s45vttZoJtLgvhqAh471A=;
	h=To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=vEsZk0qSVXdX7llKemXYpPebHFAfmLGToX4DYoU4QS86QN6JcdsMgBhmN5xw3NPPz
	 GDQDE/NxdbIe3kPVc6nkQX8DiBGphZ9axEcotMql0UZCIUloegWO4X3df7b0QY1hKa
	 3nGxEWlWCsUwQzVVnY2G51Fr03lHc5enXm+rXb7EG6J1q0ODC3yIDjseMQwNWXaf5v
	 PpblO7wFb7lDK1cZOYCiQlFJv/GX6oPeXtT9Zo8+FgP38EMKoZBgsGwVxXMwgqKiVV
	 jz3n/AUJoPMke2W8RseBGGBSmlgQLKAoFgE4bsUeDOh9XH+q0453e2qmKsN4lHoOu3
	 zgZMGWsP2t4GA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C20C683613;
	Tue, 28 Apr 2026 08:20:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id B3FAE1B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 08:20:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A5B8B41025
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 08:20:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bbDmwQRHHXaM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 08:20:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.123;
 helo=smtp-relay-internal-1.canonical.com; envelope-from=aaron.ma@canonical.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1CCCD4101F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1CCCD4101F
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1CCCD4101F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 08:20:27 +0000 (UTC)
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com
 [209.85.214.197])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id ECC733F601
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 08:20:24 +0000 (UTC)
Received: by mail-pl1-f197.google.com with SMTP id
 d9443c01a7336-2b24611696eso76260065ad.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 01:20:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777364423; x=1777969223;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=FjJThp4I5WkrMZHH23Stv5s45vttZoJtLgvhqAh471A=;
 b=QWvec0JOlntDCEs9uNKUqMzlLTv/AAOvOHXsj73X7HV8GeUyFuvvtceSPuljZSF+7N
 NmPt2SgtKPhNpE0D44P89wCjI71bAKo912sxjkydIUL4mqzIS0GbdsJw9Cny4ttWfDBP
 64C1ullN5Myry9+HnYZjORYXQHqaFQVi/3q6nMjmqErYrYy3sCOcQSRUCea80yoU3aEf
 5KGgGOACX4Mlix/mJSMPk7ZGVzz/rIxOS4v15Duf/pl7zB00NIwN2vVtR70pIhfHLy6r
 kZZDJFhumSlC0yJPbbwwnv81CK+5JUH9nM3DnJh2v68TJbmSwnQc2RH/lhD4McY8N6BR
 os1w==
X-Forwarded-Encrypted: i=1;
 AFNElJ9gs8Vi9yhRarOdR+r1SMMaXJZ4W5dq7x16RtuqugKKBER3LS4gF8FVsuHzPmTUUczu5vlm5aD8BCB1zDdjMs4=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxSZ6ELmUZmLy1rCQt389/qPiQSQ/oJNjsadaeRcDH0f9PjP1Iz
 lG/QkrjsOASXb4wPIu1KShCXxHaKT2AQDo1wc+qzwT1IGedlORLUZpY1fD9vq8MnK57VAzzgHgW
 0qITq7khhUV8NtZse6e6kZ2NORJfkJF67fGHerAECcgwWbgpk+RL2AH7w/X/jwUdN59U/86GhgT
 33Njf6yS02Gw8=
X-Gm-Gg: AeBDievuQOnxqlNL5ObbIa1hvwQaKcULrySJevEKdDu5KQ3/lVasKq70Ufm4HMyUYm3
 LvcXG+3plRujcHDojd95s+apJiN1GZlJaHLDFoeokO2MOrABkK77bLuanQbDk3MkeL3/ugOIXvP
 3GgeV6gHaQJrFM6+WhJ7gLF3kxgsv2Oa7Ma/KhNjHG7XUl2IEuAm0s4BnBLo8fqbG8BCcZqSNjK
 E48vvZpeBjh51D1PEmBUBJYwb6UmFAt65A6HZEXtFfEuy1HPod8UBSOU5tTLUb+53rounQ/Fw/2
 xy7fYD2LYWvspPZXqUHAP3GyvPs3q+W9MJNDzvfQuG+tWfPEYgiYv+/qptYPTRfJmIWfKjatNSm
 lMMCaXR/zzblJOEU4JODZZ9epDTT8eZk0QPkZFibc4wO/7OxIygWjXEF/CrQHkAHrL3n0MOCHjq
 cKEjEBZXHkZW53Cz3159KyxwshyBUJ
X-Received: by 2002:a17:902:b689:b0:2ae:450c:951e with SMTP id
 d9443c01a7336-2b97c435bc1mr13505375ad.17.1777364423377; 
 Tue, 28 Apr 2026 01:20:23 -0700 (PDT)
X-Received: by 2002:a17:902:b689:b0:2ae:450c:951e with SMTP id
 d9443c01a7336-2b97c435bc1mr13504915ad.17.1777364422830; 
 Tue, 28 Apr 2026 01:20:22 -0700 (PDT)
Received: from localhost.localdomain ([103.155.100.1])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2b97aca8328sm17881525ad.77.2026.04.28.01.20.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2026 01:20:22 -0700 (PDT)
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, aleksandr.loktionov@intel.com,
 kohei@enjuk.jp, Paul Menzel <pmenzel@molgen.mpg.de>
Date: Tue, 28 Apr 2026 16:17:33 +0800
Message-ID: <20260428081733.1615755-1-aaron.ma@canonical.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20251003; t=1777364424;
 bh=FjJThp4I5WkrMZHH23Stv5s45vttZoJtLgvhqAh471A=;
 h=From:To:Cc:Subject:Date:Message-ID:MIME-Version;
 b=jJMD9yumR5zEv0jkcLgxZSvMXOnHBOX+drLp44ak0Q6UVrOklQkqU8TMKxdZ5VaLK
 UkfzpS0wQXy0vNuQCGaZBDFlOOBojBHP9ddBv8hXjj+0v7odwPoSjn1Qa2T4L5vE0G
 RDu1ObhTqUfWx5erDkpgtBxsK7fnnmG9HMdpk9VD53yFLhPQPeHlJ8yHjgCPqUrQ2q
 1ZX6GzVSTn60vZyN3lXLrih6XmHy/yT16fJueNWYHp0TamqWHAG4y4C24hVvzn9dKP
 A/RcfT/19lQDUrtM6NjU0CMkgWh79CIrxjtN0L5FYMQA0A/9xClOr9WJtip3xLGkAY
 q6u/EKSWzjpxGj/+CsLdPsE/cg6oXxPANhNlvb7aO+wRgiL88wN6vJEqjAJPhO5t5U
 bBTrwaUgpl+VQOa13YYjWKpRqyjoSZSUtCQapVzE5/gAISKLrzLWbzklcCBS4FREcE
 LTEZx1TQY7QEciBjG5sRk6Y8sP+DG7dvGTBBTXBvQVqmTjhgDAVCL/0XVXWosOLyza
 gn8JNV8yvUH83CGosu4iwfVn4rxpl4GmoO1tYgvLvvO0n7d1JneHjX1/y/M0/vkL5G
 LLAw06ynofY8NA8y3sOw5R6XYHz3J3fBZ2mp5qB8HxrbHBupbwV9NvYFQAaS+Va6YQ
 w9S/sM6veChkpZEqw4ZBM/4o=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (4096-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20251003 header.b=jJMD9yum
Subject: [Intel-wired-lan] [PATCH v3] ice: wait for reset completion in
 ice_resume()
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
From: Aaron Ma via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Aaron Ma <aaron.ma@canonical.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 78B7247FE26
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:akeem.g.abodunrin@intel.com,m:jesse.brandeburg@intel.com,m:aleksandr.loktionov@intel.com,m:kohei@enjuk.jp,m:pmenzel@molgen.mpg.de,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[aaron.ma@canonical.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,canonical.com:email,canonical.com:replyto,canonical.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]

ice_resume() schedules an asynchronous PF reset and returns
immediately. The reset runs later in ice_service_task(). If
userspace tries to bring up the net device before the reset
finishes, ice_open() fails with -EBUSY:

  ice_resume()
    ice_schedule_reset()          # sets ICE_PFR_REQ, returns
  ...
  ice_open()
    ice_is_reset_in_progress()    # ICE_PFR_REQ still set, -EBUSY
  ...
  ice_service_task()
    ice_do_reset()
      ice_rebuild()               # clears ICE_PFR_REQ, too late

Reproduced on E800 series NICs during suspend/resume with irdma
enabled, where the aux device probe widens the race window.

  ice 0000:81:00.0: can't open net device while reset is in progress

Add a best-effort wait (10s timeout) for the reset to complete
before returning from ice_resume().

Fixes: 769c500dcc1e ("ice: Add advanced power mgmt for WoL")
Cc: stable@vger.kernel.org
Reviewed-by: Kohei Enju <kohei@enjuk.jp>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
---
v3: add error message to commit message for searchability, mention
    timeout in dev_err (Paul Menzel)
v2: reword comment to clarify best-effort semantics (Kohei Enju)
v1: https://lore.kernel.org/intel-wired-lan/20260402024220.210466-1-aaron.ma@canonical.com/

 drivers/net/ethernet/intel/ice/ice_main.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 5f92377d4dfc2..260cbd0d9ad90 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5635,6 +5635,16 @@ static int ice_resume(struct device *dev)
 	/* Restart the service task */
 	mod_timer(&pf->serv_tmr, round_jiffies(jiffies + pf->serv_tmr_period));
 
+	/* Best-effort wait for the scheduled reset to finish so that the
+	 * device is operational before returning. Without this, userspace
+	 * (e.g. NetworkManager) may try to open the net device while the
+	 * asynchronous reset is still in progress, hitting -EBUSY.
+	 */
+	ret = ice_wait_for_reset(pf, 10 * HZ);
+	if (ret)
+		dev_err(dev, "Wait for reset timed out (10s) during resume: %d\n",
+			ret);
+
 	return 0;
 }
 
-- 
2.43.0

