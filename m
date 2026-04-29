Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8KYAHYqq8WkAjgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 08:51:54 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 121EF48FFB1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 08:51:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 34F36840A5;
	Wed, 29 Apr 2026 06:51:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5ydP79VsQy87; Wed, 29 Apr 2026 06:51:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B387B83FC7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777445510;
	bh=t1oIA84XW+a8Bh4ovzb4hgVcCSUxwgN9bGakuQa7qX0=;
	h=To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=DoX5SDalhyFn7MGrqvUvhKqhTvv04CM5Z2BCp2UeEPffTVn6aa9tyaxbBovZUv3MC
	 p3jPSEu2+SSRYws1vTF8ksC5hwo3xP05zveiA4CwSjtJfGFbHfpRcFD5Qce4ZGUIXO
	 Va/hx7P1Jmua57ebG50HEBtR4+WS7TOFHPZ8hZ88NpfZ0cIuAPeUBmozRCtiBNjYqy
	 iH+n5p2r/AFYrEQMzAKBO0SvfXQlSQqawHAwyFr2/f7KykYxtLh664203xrIH/IJ/U
	 X9gwI/5n0yuVAiKRwepNaPJku7QIUhIgeS+MGb2w1o8dmdV5bMny5w7RtHHd91/Aw1
	 murXAlcYrHWMA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B387B83FC7;
	Wed, 29 Apr 2026 06:51:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 49BCE1B8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 06:51:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2F3AB83EFA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 06:51:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WBHyioC0PRsg for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Apr 2026 06:51:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::633; helo=mail-pl1-x633.google.com;
 envelope-from=vincent.chen@sifive.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 91FF983EE6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 91FF983EE6
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com
 [IPv6:2607:f8b0:4864:20::633])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 91FF983EE6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 06:51:48 +0000 (UTC)
Received: by mail-pl1-x633.google.com with SMTP id
 d9443c01a7336-2ad617d5b80so74671745ad.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 23:51:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777445508; x=1778050308;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=t1oIA84XW+a8Bh4ovzb4hgVcCSUxwgN9bGakuQa7qX0=;
 b=hyPlC7CTZWGHEA+XP53PTCib2xZCiPkAUAdpvD2r09rn8ejjkBP4jTo5rTTvfuYpuY
 KHOJ7vYswWBcdDfZWA26xA374BMiXEhfuTKgdH5/LxPwGGTxotNZ/3chAU6LQOZ8OEWO
 z48qWJXRLHhBBL7g3PYaYSWGBDCD2K44F4c5lmHsBxEYL1RFHD+fKCnWB8C+2PF6KAkx
 EG5m3uEyQ4mGbwkGusgdOdIjYKCRTTZTsG0V6iA2ERenxugQJBdtDdS5nF5cIDNVyiUa
 clW3rV+jbDLk8rkGEIXm/sAkrLJaWVPB91rZI3j2c3E9D2Gt7pX7y145n9Aw1pN4j4sg
 jnsw==
X-Forwarded-Encrypted: i=1;
 AFNElJ+4neqbJ8NmzAvmE+6U0cAknkdbvl+4I0JhXQ3v08UUrFh42zcUEh3t6j+b54fjHPo+PgfXzBtAmnBEsj7+jpU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyG1t9fhoYZe7E5FBefbFGTKtcrZbvfgsD72ZZibC7cyZiByKrn
 eD9OhID7PH0ujQJ8fQ8tHxitzwCeGHiBZ8ogPlHI8n9bR1OD87BLVoSAUc4ZIpeBzaw=
X-Gm-Gg: AeBDiesKacAUouRTSO0XjgTim65ThafbUhl2ITrv0EuIg9m7p/48f7v/asB5N18BYqp
 oCN6F6wDu4+TjAzFzJkFy7EAY5hDpcDjynAyASWrqN5I/79iOj1AvBSeB5bnb6uS90Hd04iWC87
 WmeX1/Y0Il8wSsx838cZyta4NT+vter6ga9XOgbx8ewIEop3z2uBF+/EtDwsQ/pLQmpMe5FL9kN
 RUbsWxNwWwo8GpKtnjey1OfOpFc7f81VjWgAxGLQ1kQlmFKpWhP3f8vjx6VWBbsAFbLNFMl3JYs
 X/9eQ8uEoC0lOUu4yb0bPj8EkCB89W4kkQuWEL2yUEVtLVP+Y1hiWIaXx05JlFLnMNBILZ6Z27z
 2tOlCcIpmgW2I88oLVv/B8OYI8Gu8p05srQQP1a8imK6QvqctfYhmKdjcnK+7ks24cESAxCks7o
 1arZlaMMd+uXJyHv8AO3EJ1EqiOQclQxRdaUpTe4Hd548YLmVUvdCRf7D8LfZc6FUfCYVWAKsnd
 A0FMw==
X-Received: by 2002:a17:903:11d0:b0:2b4:6367:7b86 with SMTP id
 d9443c01a7336-2b97c4a9217mr63297495ad.37.1777445507739; 
 Tue, 28 Apr 2026 23:51:47 -0700 (PDT)
Received: from Vincent-X1Extreme-TW.internal.sifive.com ([136.226.240.187])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2b98895afaesm15038105ad.57.2026.04.28.23.51.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2026 23:51:47 -0700 (PDT)
To: anthony.l.nguyen@intel.com,
	przemyslaw.kitszel@intel.com
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, vincent.chen@sifive.com
Date: Wed, 29 Apr 2026 14:51:25 +0800
Message-Id: <20260429065127.423949-1-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sifive.com; s=google; t=1777445508; x=1778050308; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=t1oIA84XW+a8Bh4ovzb4hgVcCSUxwgN9bGakuQa7qX0=;
 b=PyA7Jfc8zSFmoabj1Yr33Wg10tPzJHYQM8Te0GSNd29kkVBSfipdCAN5MtCL1s4T1v
 jIhmP80UoVXzi0WqOqtr0HuxokKcsVX8p0gAy36eDUwwrAHlc1E/U64o+PwagcrXV722
 x6IdqGcHlMRAJdAjTx2iqmy5CA5D7GCaZ7wFI+ltcd/uifvzlL1trQE0EHEonGIsnJqt
 IoXchurIAXMlQBNT71exHoygKFSO/zqD28CUFcEeJab9lqm8KxQq5/bjrOAkHWlnySbC
 6Zb6fH5FkGnLozHY9iV/WTap97kx01s3wfkQplbjnq4jK5D/ChFa/gtOJpKT17r+hh08
 6QMQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=sifive.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=sifive.com header.i=@sifive.com header.a=rsa-sha256
 header.s=google header.b=PyA7Jfc8
Subject: [Intel-wired-lan] [PATCH 0/2] ice: fix VF creation when
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
X-Rspamd-Queue-Id: 121EF48FFB1
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
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:vincent.chen@sifive.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sifive.com:replyto,sifive.com:mid];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-0.659];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]

This patch series fixes an issue where VF creation fails when
CONFIG_ICE_SWITCHDEV is disabled.

When CONFIG_ICE_SWITCHDEV is disabled, the stub function
ice_eswitch_attach_vf() returns -EOPNOTSUPP, causing VF initialization to
fail even though basic VF functionality should work without switchdev
support.

The fix is split into two patches:
1. Add switchdev mode checks at caller sites to fix the immediate
   issue while maintaining backward compatibility. This ensures
   ice_eswitch_attach_vf() is only called when switchdev mode is
   enabled, consistent with how ice_eswitch_attach_sf() is handled.
2. Remove the now-redundant internal switchdev check from
   ice_eswitch_attach_vf().

Vincent Chen (2):
  ice: allow creating VFs when !CONFIG_ICE_SWITCHDEV
  ice: remove redundant switchdev check in ice_eswitch_attach_vf()

 drivers/net/ethernet/intel/ice/ice_eswitch.c |  3 ---
 drivers/net/ethernet/intel/ice/ice_sriov.c   | 14 ++++++++------
 drivers/net/ethernet/intel/ice/ice_vf_lib.c  |  3 ++-
 3 files changed, 10 insertions(+), 10 deletions(-)

-- 
2.34.1

