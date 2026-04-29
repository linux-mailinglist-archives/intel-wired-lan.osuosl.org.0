Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4F0YE4yq8WkAjgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 08:51:56 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AC91648FFC6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 08:51:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DA1254209D;
	Wed, 29 Apr 2026 06:51:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uC7ZNBYAUh8f; Wed, 29 Apr 2026 06:51:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 60127420A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777445513;
	bh=HJR0wUneST2OobSctcgeuLs6bttBTQJPSlbTZVLMlC8=;
	h=To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=gtcTl28fIcs5HAkHkokc7PGxJBhSJbxeqPHZmrKNP+ZgD8TOOFVNErf055CmHHZgz
	 keAjb1vZeTXL3hN6zxALD/EVgvCUj2OMF3HextKvVD2WToxDhE3ixYdMBvuJI0yBpL
	 aQXEi2TqF8Ec9/MFUDIsy4xRwLAswXIqwHG5NmWf2bIkPKjRdGx5v39aSt39rK8sMM
	 QsFWDKK9QK+POH+eUOMgzZu60e6vm3kFGp46qwRYan+S9/b1PVhMy4njTZ+1A9Bhub
	 iYmWgROpgRdaYp4S/ucscRpGtvgmJWvasa1AXMCyKtIIFChz5A5YDWNgVbnm5SKHAK
	 vOqTSHKKzaiWQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 60127420A3;
	Wed, 29 Apr 2026 06:51:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3A44123D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 06:51:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2BF79840AB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 06:51:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TCOdusFvEJv6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Apr 2026 06:51:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::529; helo=mail-pg1-x529.google.com;
 envelope-from=vincent.chen@sifive.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8ED6183FC7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8ED6183FC7
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com
 [IPv6:2607:f8b0:4864:20::529])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8ED6183FC7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 06:51:51 +0000 (UTC)
Received: by mail-pg1-x529.google.com with SMTP id
 41be03b00d2f7-c76c60c7502so229317a12.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 23:51:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777445511; x=1778050311;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=HJR0wUneST2OobSctcgeuLs6bttBTQJPSlbTZVLMlC8=;
 b=BJoaicHfqkCHQmLjF1iI0MN1E9s8m9PY3xmZl/ZwwjaqWr4zLuwtDFu5sUMOsTG1fd
 UAyJ2pe+bY1eZn7NgIZOlN04ABthiua2l/ABew7ibpZQvp4YJb1LxbdDb1rISDgBthZ8
 JbPfEPH8vRsv14UrKiuMxnwg1vAbTxLqYu0scQ+MulY8btPjhcdDIzouLs5uySfCl2Le
 ADwyHNCL1gWUenfAyNniKxqpVEPva5R6LlmAELQJ2WTf7/5Oeo1R85EeaawPB7XAhOVM
 1V7lNP8qbUf7uz2WPOLf6t7TfETwyT1LEUWPJ2NtnDwv+kOyXlyRE/nBB2zqkSc/NU7d
 aYpA==
X-Forwarded-Encrypted: i=1;
 AFNElJ9Zb++VL+9lgU1J/iEJZVizccW8Uyqma9JsqMpvEH3mpJDbFwjGMIjZCZK7Dc7g/IKlDUB8IcPsWLBNFSufjAo=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyREju2+RkjrMsTfk7c3EgsTdtNqJhN/wPIkyLY1hb5X2m/Pctj
 XA9QyzRR7civXSuVES0EevqI2Fbgbg0UQptP2s7/WDyVpDHjFN5a7qftVQx9WyPs7hQ=
X-Gm-Gg: AeBDies3lftEHzLsyRIt33EbKol6RGpvsGFAaMhTKlkmjgX7rwhvqXRcPCNB2jdfEfC
 Ig+GS0eKYl6Scb6KE9w4IF0BGclhPlRnkYkQr4r9ti2IdgshdOm/Cm6AJ2aBY3oZZpPJryaMZHW
 sJEHiGAao0xmz3IXqsfdHe0Ig4vkHKdcxn8PsWUGOBOoASJe7Aseie6sNS28Fgxn0taTeSokxgh
 rcwKEmqjsjQBVPHgvq1EYamw+gcekqNnvQwLQTl/busZDdPyjmONHhGjHOW787lK9MNFUt7Chjb
 xCTt2kMwGlUmSM2u3bPDekWKJ51JZK/SO4InRUJL201PlsbOWeYinj4hqrYx6Vx/wTAKk3LaBB5
 8U60nG7abafatzsm8RY+qwGXk6CM4mhYfaYuASvP7ltB4ZBZrx/yH2CxVT7aZFQEOZG7B8pXPRH
 7FZwNykDFdUW9sRpvo4pJST9pUOL9fnT3snCatnm8Ub3rO/fycE+X8z0ko/5YyFdk/19hDszebf
 zlVKw==
X-Received: by 2002:a17:902:f652:b0:2b2:53f5:461f with SMTP id
 d9443c01a7336-2b98825bdb5mr18430485ad.25.1777445510644; 
 Tue, 28 Apr 2026 23:51:50 -0700 (PDT)
Received: from Vincent-X1Extreme-TW.internal.sifive.com ([136.226.240.187])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2b98895afaesm15038105ad.57.2026.04.28.23.51.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2026 23:51:50 -0700 (PDT)
To: anthony.l.nguyen@intel.com,
	przemyslaw.kitszel@intel.com
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, vincent.chen@sifive.com
Date: Wed, 29 Apr 2026 14:51:26 +0800
Message-Id: <20260429065127.423949-2-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260429065127.423949-1-vincent.chen@sifive.com>
References: <20260429065127.423949-1-vincent.chen@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sifive.com; s=google; t=1777445511; x=1778050311; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=HJR0wUneST2OobSctcgeuLs6bttBTQJPSlbTZVLMlC8=;
 b=INlLIkhD5AMQZvHMwfvmgYDLMZX11OB8DitbAs5lJGxbXhvtn+bk0Uv1wFbZsLtOXY
 DeTql2zLjOrfsaPVEUGuYczEsQu90apstZAFdAdjP8Hn747c26aaAbcoFo/uasRnE6jN
 ip5mLrYSVdfnfi5jck1KybOjFhVkwK0r9ZGK8gu1VGTtGqNMPBnFj4wEJsUMyaTjwF48
 hUCXkJdrMlS6BX+ZITVCKETdUN8wAw1bplG82r8S4NsaA+t1pj9ejcoy1yQonYRlCjQ7
 O5Az23KwAOuUD3bjKFviAlQ5gRKuAkTtoKfWGuaUonc8VtahdOTHUghj2dRA/usSBoHa
 WdBg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=sifive.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com
 header.a=rsa-sha256 header.s=google header.b=INlLIkhD
Subject: [Intel-wired-lan] [PATCH 1/2] ice: allow creating VFs when
 !CONFIG_ICE_SWITCHDEV
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
From: Vincent Chen via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Vincent Chen <vincent.chen@sifive.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: AC91648FFC6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:vincent.chen@sifive.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[vincent.chen@sifive.com];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sifive.com:email,sifive.com:replyto,sifive.com:mid];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-0.656];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]

Currently ice_eswitch_attach_vf() is called unconditionally in
ice_start_vfs(), which causes VF creation to fail when CONFIG_ICE_SWITCHDEV
is not defined.

Fix this by adding switchdev mode checks at the call sites before
calling ice_eswitch_attach_vf(), consistent with how
ice_eswitch_attach_sf() is already handled in ice_devlink_port_new().
This is similar to commit aacca7a83b97 ("ice: allow creating VFs for
!CONFIG_NET_SWITCHDEV") which fixed the same issue for the previous
ice_eswitch_configure() API.

Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.c  | 14 ++++++++------
 drivers/net/ethernet/intel/ice/ice_vf_lib.c |  3 ++-
 2 files changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 843e82fd3bf9..6a0b724e46f9 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -484,12 +484,14 @@ static int ice_start_vfs(struct ice_pf *pf)
 			goto teardown;
 		}
 
-		retval = ice_eswitch_attach_vf(pf, vf);
-		if (retval) {
-			dev_err(ice_pf_to_dev(pf), "Failed to attach VF %d to eswitch, error %d",
-				vf->vf_id, retval);
-			ice_vf_vsi_release(vf);
-			goto teardown;
+		if (ice_is_eswitch_mode_switchdev(pf)) {
+			retval = ice_eswitch_attach_vf(pf, vf);
+			if (retval) {
+				dev_err(ice_pf_to_dev(pf), "Failed to attach VF %d to eswitch, error %d",
+					vf->vf_id, retval);
+				ice_vf_vsi_release(vf);
+				goto teardown;
+			}
 		}
 
 		set_bit(ICE_VF_STATE_INIT, vf->vf_states);
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index de9e81ccee66..71595410174c 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -807,7 +807,8 @@ void ice_reset_all_vfs(struct ice_pf *pf)
 		ice_vf_rebuild_vsi(vf);
 		ice_vf_post_vsi_rebuild(vf);
 
-		ice_eswitch_attach_vf(pf, vf);
+		if (ice_is_eswitch_mode_switchdev(pf))
+			ice_eswitch_attach_vf(pf, vf);
 
 		mutex_unlock(&vf->cfg_lock);
 	}
-- 
2.34.1

