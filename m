Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2NbJHUPazWmliQYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Apr 2026 04:53:55 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ABA9382DCA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Apr 2026 04:53:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A106240D8C;
	Thu,  2 Apr 2026 02:53:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ac0pQTmo8oXE; Thu,  2 Apr 2026 02:53:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D69A840D97
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775098431;
	bh=XFomWPLR4XXzI7Zj27H5KA+iS+Ba7CQLfQ7lYNFWxMY=;
	h=To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=Gwa4tObto1XNeeC3uxZamYRN22AmfsQz8AGvUpbgQL1HU1OYnXCcSKuOU0O2CI2iN
	 2gln0UHbFppuGboZM46GHvfWeAP93WmLST+1EROAhEXmj/lppzVXn2KvGJaNuMeXLY
	 iv1X+iaWmQGdxsNZ16y+xYrpEAGOgfm7hmzlQ1afuAuGcIX3MVfX74/XFPkH4Ba88l
	 bJrg+R1jYPPGBzkUXuuZ88BVAUWrcqqjkj4/akRqnji4aPCy9Ych46jJK9jhvBK9eR
	 L4/gohJtkZsjc3aoyVk4JpFNbitOfTeSeoaw/IWT/IBTQFxFP0ul1k7jp1QrgtGafv
	 h9/1ZxeTU2zIA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D69A840D97;
	Thu,  2 Apr 2026 02:53:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6E63B196
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2026 02:53:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5CE75608DC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2026 02:53:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IvhAlaTii-9s for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Apr 2026 02:53:49 +0000 (UTC)
X-Greylist: delayed 600 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 02 Apr 2026 02:53:48 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 06664608D6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 06664608D6
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.122;
 helo=smtp-relay-internal-0.canonical.com; envelope-from=aaron.ma@canonical.com;
 receiver=<UNKNOWN> 
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 06664608D6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2026 02:53:48 +0000 (UTC)
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com
 [209.85.210.198])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 2C3313F645
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2026 02:43:45 +0000 (UTC)
Received: by mail-pf1-f198.google.com with SMTP id
 d2e1a72fcca58-82a77f807e4so570907b3a.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 01 Apr 2026 19:43:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775097824; x=1775702624;
 h=content-transfer-encoding:mime-version:message-id:date:subject:to
 :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=XFomWPLR4XXzI7Zj27H5KA+iS+Ba7CQLfQ7lYNFWxMY=;
 b=g9F0An3dIBxOgc038MHChlZCoAsdndAybw6th0ZOK8vKrSHHNd9zpGa4tgOvVTK9v8
 R5Hffw/GX7FQ6vHqSh+K4MQpJqJUUNIPKr3VLQHvgd6caNEhcuVYr0NxSP82Ht7dUBL0
 xA6AKEZj/SvelK/jUxNeKYLNlqufpRD5Euf+aIn6tk+uuCdDhpvDW064DTEx8WC/hd6N
 4QqZtgEI1I4y2xtIbOvvQi63Svv2LC7nwrOVg7GlUqXB7DnFQBgHQkE3U5tkAolSmUKh
 Zbu33VOz9Ba8HPN54AOTLzwcgca8WFjfnn3vyYBlZHo3SG7us7TgpvTTU6qh9PNqk6pz
 H2uA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWtbs9exf7RE2W+ri7bAjWSRtpX6IAWImjJqQuWuGryDmpGLNJ3ud4vx/VufwQqxOaiHFtJ+l+e3VEhErSKp/I=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzR+g7oAopwLNb7X/8muX+YfulX39AhJVeW52jqflI1xQVS22bC
 z66mcHDR1uXvdBA7nqw2dxSC79MJRuGOUWuwss5NWnF4iRdtNRSmOOXRaq4sRDfrzZH9ks03RMr
 8NUwPnh/RcOHQ+GyLp9rwM8qc8B8ZiZ/AjShR8FGXaA4UbCx7Pgw4XOfaemsaUYQn93lFGt65uc
 YQNs7OvUV6fWE=
X-Gm-Gg: ATEYQzyX2n0Rhh8TZaCBMSLjtdMbmnmxTNu/FSvJkEr2HpV3ZB57GgcIDOlTuS57IYQ
 pUP4RkxaV3OYwx+k+JZWAsxWQ1D2wSX6ybUHxU2UNgu910ETytGcn/3VyRC9mLHKUcPHR9cyKHO
 VwT5sTbdLlFV3eNVMKXL+w3GBH9AoNT5y9v5IxOBTdxpeL1lmaUStMI32NhrKqj4SKcO+LzzDmd
 JJU2Z+mkIuL9/O41AzxbewZVNLXCoYshujECj9T+k7Oru6oVNhRNtJk14jTAksLagl1MzX6Zjfp
 x9nz/xgD2BdAnls5lpoMqYHTavA5qB6Gh6ksTDH5DCAiX6thsbxrhFFaj653+IdcVD4yU2bCr6Z
 hmvZkclfpz+myFaU27/99oG2WHNJm0T5+rJRbiQ==
X-Received: by 2002:a05:6a00:b86:b0:82c:ef0e:a547 with SMTP id
 d2e1a72fcca58-82cfb95ec55mr1766662b3a.48.1775097823741; 
 Wed, 01 Apr 2026 19:43:43 -0700 (PDT)
X-Received: by 2002:a05:6a00:b86:b0:82c:ef0e:a547 with SMTP id
 d2e1a72fcca58-82cfb95ec55mr1766640b3a.48.1775097823370; 
 Wed, 01 Apr 2026 19:43:43 -0700 (PDT)
Received: from localhost.localdomain ([103.155.100.1])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-82cf9c3d439sm1293798b3a.35.2026.04.01.19.43.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Apr 2026 19:43:43 -0700 (PDT)
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Thu,  2 Apr 2026 10:42:20 +0800
Message-ID: <20260402024220.210466-1-aaron.ma@canonical.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20251003; t=1775097825;
 bh=XFomWPLR4XXzI7Zj27H5KA+iS+Ba7CQLfQ7lYNFWxMY=;
 h=From:To:Subject:Date:Message-ID:MIME-Version;
 b=qdN9SLrmNsk3b5YmJhT6gpKm78K+c6JmqGN2pEDe4JhNa+uKHARRNcQkDL+mPzj15
 jUZ6S1Qquzsm+1eq7r4RsKxHIysGm6DfhCGE8ZMwhnEuDVuA22hZw4imxdXCzkoXpF
 4SqiybD3z+cKX7aZXbznfR2+V9HMC0xdsQnJhn40cEpWKKkDbqtuZiqCUnsbPkefFd
 yNEOdt+IHJ7vBa2YZ87a85XKq24OXNWCyBnmcr1f7K3TzEGMqBCE+XKV45y8RB7d/t
 QpY3r3ss01NZmoJB2i1UdUFQVBaeURpLgtqqcuLFL+r8k1qCGWUG5P1UK+y8257F5x
 xX4fWMAj6P4ePwy3F3eAMVnz2QH6ouTnlIkdwzmm2eXSfLqAk8JgrghNd/JosNEFMh
 vAmiSYmOf0nOCWjE56NlzKJvt1IRBLkBrmdkb0pozweOnU6WUpWzp4UTOkOchJjTZq
 R+LPdVln/tAtKXCPBTXu7MsfM11/CsWHSXHBMb1u1eLchCs17naHt+WigrEVTSnhyk
 FolK2nAGJP//8Tv9ANvw2ej8EaIXDUQQwoWp+B4HGs+LugDrGM6ZQRP/j84fkruJuY
 uA5mThpCwyt7KozwB+Fj6mz05mOPj3euTvVg6Ks317q3fV8Z0iEMhPwPq8a6sPOJCg
 FVvVUOd693ESGuF2ZA5Yeg/o=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (4096-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20251003 header.b=qdN9SLrm
Subject: [Intel-wired-lan] [PATCH] ice: wait for reset completion in
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
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	HAS_REPLYTO(0.00)[aaron.ma@canonical.com];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[canonical.com:email,canonical.com:replyto,canonical.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 2ABA9382DCA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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

Wait for the reset to complete before returning from ice_resume().

Fixes: 769c500dcc1e ("ice: Add advanced power mgmt for WoL")
Cc: stable@vger.kernel.org
Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 3c36e3641b9e9..a029c247510fd 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5702,6 +5702,16 @@ static int ice_resume(struct device *dev)
 	/* Restart the service task */
 	mod_timer(&pf->serv_tmr, round_jiffies(jiffies + pf->serv_tmr_period));
 
+	/* Wait for the scheduled reset to finish so that the device is fully
+	 * operational before returning. Without this, userspace (e.g.
+	 * NetworkManager) may try to open the net device while the
+	 * asynchronous reset and rebuild is still in progress, resulting in
+	 * "can't open net device while reset is in progress" errors.
+	 */
+	ret = ice_wait_for_reset(pf, 10 * HZ);
+	if (ret)
+		dev_err(dev, "Wait for reset failed during resume: %d\n", ret);
+
 	return 0;
 }
 
-- 
2.43.0

