Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KAo1Jbh/8Wk2hQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 05:49:12 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DC048EC7E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 05:49:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 57AAE41F9B;
	Wed, 29 Apr 2026 03:49:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y6JFyj9JlKDz; Wed, 29 Apr 2026 03:49:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A476641F94
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777434549;
	bh=9Poun78EQtztiC583t+elgVeEgGqZI6iTcp9LxQ5+sk=;
	h=To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=pNr12g4tj0AAusZ79w3IPOTsAbpyTvWZIuTrJrT357euynW8ZRFYN6QgR4cFZXxJ3
	 TZPp2nQkzMaRPlSBW2zasCoM4bMduxrCLN5iXWeNplnTdd5YAdp8lmgwT/AIALocvH
	 xUwE85bBk1khoc6H9KWCjXgtbqKEau0maItANKgYOENURjb22Cn0kcGUF7LEOP90+q
	 am69B4TRAF0WriNoQLz1M4CSMfzUi3erNaeUN3Oxw8teVm5iKtasLCsK55MNTJw5/a
	 i8csU9Py2Mx0TkGqByp46YeQ2XJpxIuO2CDFgsw0EEfU7rM0Nuf4HdUtGwaB+Z5Y7d
	 WnMfCT5vRRWsw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A476641F94;
	Wed, 29 Apr 2026 03:49:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 21B3C231
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 03:49:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 06CFA83F55
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 03:49:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RublNjLav-y0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Apr 2026 03:49:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.122;
 helo=smtp-relay-internal-0.canonical.com; envelope-from=aaron.ma@canonical.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7296E83F52
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7296E83F52
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7296E83F52
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 03:49:05 +0000 (UTC)
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com
 [209.85.214.200])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id ED5213F7F8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 03:49:02 +0000 (UTC)
Received: by mail-pl1-f200.google.com with SMTP id
 d9443c01a7336-2b242062308so227357085ad.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 20:49:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777434541; x=1778039341;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=9Poun78EQtztiC583t+elgVeEgGqZI6iTcp9LxQ5+sk=;
 b=M8N2jrutftbXTsBJpkqbHS2QmFB+owDLRQXA6MED1mC++ZNDK7GpJixXIr4yzIOTrG
 eg9rQmA/ZpLjt4rdjeMVC4xVxjkeJXy80wm0yT6gCLbpaFyTg1hSgV0emEVtmGiickzl
 EXLJ8w8oQW7Ig5tbqlj2yZ+xm5o9XFFB90weGG5njMgtOIiFHhPj50sQrAZscAf0qc/J
 mE1iiYoETbNilHjgD1bxCcGnsisYR+qXFcWM/+S82Ry16tM8D16Aty7QUnecOnjTgTui
 1ExOJBc+wuZedwhiIwB1ozLXQAaxvMvz3iy7WJwKCifQKVOb0vEO4H0HB/Y+ymynFY5k
 wLNQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ+cRzNw5kbVnrr4COEQcsrCJQmNFR0m4xl+UIBV6Ep/tQc+Z2Y0hYJOIpmzQVkWvMoc3Vbx27EDWQLLJ4/7adw=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzIVT5IzBRnBeGRZUpnLfle8c+F+y725Tq5nWQm2KnA4P9ePBIa
 O2LJf+mP9YIp0gYoEsFRnnVQCzm/A1l7XvWhopeDxjhc8qQPf0djIWg2YqrRl6ilNXXgoF7KtGI
 7iUJRsQSq/RyqWm7p2oTtxB0YWvin83L/c3BPLtMRj+PBYvrVCIxkCrFj/8msv2JeKpenwjP8Xk
 cKysg4CvkpvtOgoR+BBRgJAw==
X-Gm-Gg: AeBDievpmPLSZ9t1pW2Ch/7kB6YAqwUy6dwNWP5bYIXQYYIhWKdyjvO7GxctWj+JC3B
 3nefy8LwnanC+BxQ2aiC0uJU0mhIVA7jUvfX+pPxvIisEvCK31hVRu1uKtfi4gFY2HHnoVb3Gov
 bTEEZgOxVbK5v5wxYkUxOFbVsIQJmZ4kckmPB/v8+93gdpb8v0kojqAbCWxE25GxcoL/d0IFZws
 Zw5/Ct7RQfnTnteE6a1gFph9UI7WN7BBMe5mup/oO1YmtgcTr1xh/2XLRrvPxxuh4awxdvRkHtU
 fANRx0L9/Td6t/JWKukPUEI1yWOcA6wQGSQW8qsO4PoqctGEYWFzztfFvuFczBMt4rrvfFe4Sak
 GE8pBQJOsS+bDM2Hf7gSrbvdYC8pIn9sP106A3IweNwMRTTeeuemHAZayPNrR5gSbx4KqtinR3m
 aZpOo7KjvxnYk3zWldX0sq7VAddxiL
X-Received: by 2002:a17:902:b7c9:b0:2ae:c529:a13f with SMTP id
 d9443c01a7336-2b97c4373camr40318305ad.14.1777434541567; 
 Tue, 28 Apr 2026 20:49:01 -0700 (PDT)
X-Received: by 2002:a17:902:b7c9:b0:2ae:c529:a13f with SMTP id
 d9443c01a7336-2b97c4373camr40318195ad.14.1777434541160; 
 Tue, 28 Apr 2026 20:49:01 -0700 (PDT)
Received: from localhost.localdomain ([103.155.100.7])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2b98893f1d1sm6615585ad.48.2026.04.28.20.48.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2026 20:49:00 -0700 (PDT)
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
Date: Wed, 29 Apr 2026 11:48:49 +0800
Message-ID: <20260429034849.1686650-1-aaron.ma@canonical.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20251003; t=1777434542;
 bh=9Poun78EQtztiC583t+elgVeEgGqZI6iTcp9LxQ5+sk=;
 h=From:To:Cc:Subject:Date:Message-ID:MIME-Version;
 b=dxokGYNWBfVHMu4VcaLtOE5TgrIb8LulDvUkmSMqLPereGehZOjvuPB40Bn3R5m2+
 JopZXuzvqJJ/jvp4diXLdF5bPvZSfWOiAID3U24FlxG2mJXjSnYNMYtUXHqI5yhllq
 GIWtsdCZDsQad1K1Owm2weyofo77tHfiGjU+YhY8FAf6w7hZoAyrGfXVLo3EmLwslm
 gJMJbMBmJ6ivkV2kmkf8j/HJ9tz6vpShp0r/+VPMlqV88/3gcYzJqHJExjigtWU1r3
 a/HNCwkSp9vga0xce/uZ4+NQBQeDBByVWya913VU6LVNBcWnzFjpCO9/gJYoMlQ+mZ
 WGSz728QKCvwDGg3bNGiT+ybTaHFz2j27zy+A7NtGiNeQtHn92pO/eJmMNjLcSv5Tp
 BOlsEOqVg77IG9Oh3zQaOcUdl7N+P5hykn4PmxMSVDMtHQwpJBrTJk9sQtg0XisSyu
 DepeIEbRjYq7A6gQlIoFyGrqKjbk3m0Fw8eaMThVLNEhJzBh51BoBNAlqpKlotVzdN
 nELuhNo5X0mxv4Mrz9ILKXVzC8oLxB5/nOhyF7byA5F9H+Db1Qe7fBwXgpdPM5q/C1
 EUexKjPcWTSfqllQJxv5HDGCfz3TaifK4oknlJ8copvJ5wzVIoAKupCjqsEZ+hshiW
 klVsXpoZeQdExNNiPZ5gZ880=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (4096-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20251003 header.b=dxokGYNW
Subject: [Intel-wired-lan] [PATCH v4] ice: wait for reset completion in
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
X-Rspamd-Queue-Id: B5DC048EC7E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:akeem.g.abodunrin@intel.com,m:jesse.brandeburg@intel.com,m:aleksandr.loktionov@intel.com,m:kohei@enjuk.jp,m:pmenzel@molgen.mpg.de,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[aaron.ma@canonical.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,enjuk.jp:email];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.134];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
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

Add a best-effort wait (10s timeout, matching ice_devlink_info_get())
for the reset to complete before returning from ice_resume(). In
practice the reset completes in ~300ms.

Fixes: 769c500dcc1e ("ice: Add advanced power mgmt for WoL")
Cc: stable@vger.kernel.org
Reviewed-by: Kohei Enju <kohei@enjuk.jp>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
---
v4: use secs_to_jiffies() instead of 10 * HZ (Przemek Kitszel)
v3: add error message to commit message for searchability, mention
    timeout in dev_err (Paul Menzel)
v2: reword comment to clarify best-effort semantics (Kohei Enju)
v1: https://lore.kernel.org/intel-wired-lan/20260402024220.210466-1-aaron.ma@canonical.com/

 drivers/net/ethernet/intel/ice/ice_main.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 5f92377d4dfc2..5fce644dc658e 100644
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
+	ret = ice_wait_for_reset(pf, secs_to_jiffies(10));
+	if (ret)
+		dev_err(dev, "Wait for reset timed out (10s) during resume: %d\n",
+			ret);
+
 	return 0;
 }
 
-- 
2.43.0

