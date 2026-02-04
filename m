Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aBBUJEpyg2mFmwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 17:22:34 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 98793EA22D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Feb 2026 17:22:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AC99F40CDB;
	Wed,  4 Feb 2026 16:22:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Sn1TRMxnkTMf; Wed,  4 Feb 2026 16:22:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E6B5040CED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770222150;
	bh=U2SZUJ4vwKEV8AGXg/Pcz7quXw/+sB9ZkQglPIRsmo8=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=HLhQtuPls0EnANxJ0k7QW7Bqa9WbcZmAA5c1zk/wuFVms+FOFkiIVfkTL6NX62wtJ
	 YAuq7hSl63TgcANPxVIBdiGk4kCrUQilQMQRINPCVQ5SGtZf3bHUFS0z6+HdzYbV/J
	 4Uhg0b/lE97JBVteftyf0cro6Ng59DBaLeYnVF9NCawK9Yrybyd/F2A6CEufCzx+iB
	 Li7VNi9Z97ZjpBiTg1u82UJ1lWUMEqdTO+uzmy0xvNb7nLJP1bb0WYxJ4F724a2Rzd
	 sL4CV6O+7gp9IWZynK6MQpiad9puodj1HFmuE99dDlTm0CluAotj+YshvXyrQS+kV8
	 x0JHVSmLsn+LA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E6B5040CED;
	Wed,  4 Feb 2026 16:22:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id A4F89F4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 10:15:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 867CE405E8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 10:15:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Fox0-e7GqD3t for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Feb 2026 10:15:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::f44; helo=mail-qv1-xf44.google.com;
 envelope-from=enelsonmoore@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B9BA54016B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B9BA54016B
Received: from mail-qv1-xf44.google.com (mail-qv1-xf44.google.com
 [IPv6:2607:f8b0:4864:20::f44])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B9BA54016B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Feb 2026 10:15:56 +0000 (UTC)
Received: by mail-qv1-xf44.google.com with SMTP id
 6a1803df08f44-89505dd3e24so47354126d6.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 04 Feb 2026 02:15:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770200155; cv=none;
 d=google.com; s=arc-20240605;
 b=IRgSS1njE/4udUNlGeL47rtcTmDZF0geqr1ErmTHou1ufFudjFIjnab0N/7JHKwh1K
 8zE64bp64je2pP9bflBudpiuF0iEr/xGpe16p5//3yjHom5Nr+sqd4ty2DlUlnoSDpNZ
 iJPPvbtYU1RNW2hy5RgYfwQ/Ainy2bggJM1iJO6fk+HZirf0LRgdo7fo4supc0q4ahkS
 w4+/nWXq1K48Js5mxIRvXoNTAxToKrgWX3xyswNWxEUep1mF+jedkACk6IIfL4PBwkCG
 iVLd2Xj3cLMIYR18AZsjM9O7Xuz6eEyPcZ6nMgAsKlKRP2kSwE5u8kd0IfH/7a6Bnq40
 q54A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
 bh=U2SZUJ4vwKEV8AGXg/Pcz7quXw/+sB9ZkQglPIRsmo8=;
 fh=DgrC5eV8xnKVDLsEXlnbbvfzwVTsMVL4bQXYB2+TjVg=;
 b=eUoOT8vhxMhrn3BXFsmPsPy0+3aXyaLIMU53SnGmr1gFE5+o4gy/8v20OxJXN7Fejp
 qwi4A94UZzdGJBkvNrJUvnyDSEZ+cN1BJTIkwkL5eoyO5QhzHSKe+Bdy2aDvjNODwKx2
 wj7pkXH9WvTCTNhU9hSgsUN8w677ORdYi9/EY0qkIPS56kE293rJGLK3PLC/iITgGpJC
 KnnBvcaIpcizliJBArfuWK8psUpvMcLYvn3KTdydS+g1xYtlIycGLGLljYMzLNu6cLW0
 yXCJ0/ePrNOyVQYVDhyWEBc1PN18msP65HU4oTEe22bvzckS2uH6Gpnj32ph0TIVJsw+
 hPrw==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1770200155; x=1770804955;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=U2SZUJ4vwKEV8AGXg/Pcz7quXw/+sB9ZkQglPIRsmo8=;
 b=pn4J2SUt8lm6KAvwSgqIw8cEMOGyw2JyTiNiHwdaLfq095kF84u/mEXoPt66+LYV4t
 aJTu+K/m+wAolb6XHMBakCckHQVKsAfE7zmM5vSiexutwpiiM0tCiKSG4fT8QFtbabFf
 F2h/Eh+KmZvKn1edCSQus13q/+T95W1Qe4ERCF+jv/oDObtlCbHiTeeuvHfHcqgPnkUe
 kmqULv9mz+hdUoIC/AZEytURgW64oC8euC9rHbeAo3f1qm2YuZbgLaJfb+Q2zoLVQbwh
 R6v+6zDhGA3KokXH/8mAu5MevnTYeyBBZszVCexCvdQkrsKF1qzIbg5BDUTwJ9wUM8MB
 I/xg==
X-Gm-Message-State: AOJu0YxLf6iYxm4j3pVMCoHWXOg8Pd3zbuwPFGBbyxdnigDUoao2N+h5
 D4AztWs8wU5hEDAQjoNl/jEzq23KX/uFomRt+D63cqi5Hl3lnujEk9cFV02GlWQjFQ7CvpsixB/
 c4bVqp+nHjeZ5haZVYxeHiXhIeRRovJ6bJBQyx4k=
X-Gm-Gg: AZuq6aJBFRxOueslV/Qn+Oc7peZfIOqOKawZZruDGfLEAVe4p6ck7aqxgEbRJe9XyAE
 84SHUFEy/l40Vr3310DCBcDMnUoUDhSePkr4ms49ZWIfvTV66f2lugWZ6iMRP5NTp95PUQfh+sb
 7xZ0OaENaBEoMHyUiWF8SHHohah+8yuFORSpTimvgesxD9Z8ZGaLIgz9iR/qzV/ltaUH4BsTAIT
 2HYbHm13eALkmnxbAjhvTpKcGBlofZFqwtdwMhnSgLoOilk9vfigpI1ZBYlJ9rcTljXmR7dWOTJ
 LPaGs+4oLmDRNokjkCQHtxg7s4aNh1k7RLZuxrQIKG8F4r+GY4HzKGRb
X-Received: by 2002:a05:6214:410d:b0:894:5f6e:fde3 with SMTP id
 6a1803df08f44-89522101930mr33818186d6.19.1770200155305; Wed, 04 Feb 2026
 02:15:55 -0800 (PST)
MIME-Version: 1.0
From: Ethan Nelson-Moore <enelsonmoore@gmail.com>
Date: Wed, 4 Feb 2026 02:15:44 -0800
X-Gm-Features: AZwV_Qhu3PjSdqm3E8rcFb457xyh_rZqtpf1XguM6GwwOWxTIMYwBBEqTi_NSxY
Message-ID: <CADkSEUhXO-01yaNUawo58MQ=xOC5bCDHWCFrCwe6TX2D+WVR=w@mail.gmail.com>
To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-wireless@vger.kernel.org
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Stanislav Yakovlev <stas.yakovlev@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Wed, 04 Feb 2026 16:22:28 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1770200155; x=1770804955; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=U2SZUJ4vwKEV8AGXg/Pcz7quXw/+sB9ZkQglPIRsmo8=;
 b=fysj+2ZHyMzT1akMiSg4opTvNf+dMZsX0kwG9aaKpqib+uTENxcdKJcrDEESdRlPeN
 KKIST/iwbDWmW1xoiIF6J6WhO6/VzIO8IudsL+MggrOC+8PDAGOaAOR7b7Z7EOY7QJW2
 uuY5BlI/CzOsxcMg37wxOS9LEpzUiPAKgyPaAGxZS0GMYhcV55UgDfZhuBV0Q4lW/B6W
 byk/OURzjia8TqQHi/4EwR+fVOWoY/LKp/8ZqosCq2y5tu3d4TKgHUKbXEwm8Qtm2DFn
 q7UEz9YDTtw6DT32Tq2aSvP4hxFP2Yah/xANk7NLeg1DpGH495S8H0Eti8H0D7GG6ucO
 3L5A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=fysj+2ZH
Subject: [Intel-wired-lan] PCI ID conflict between ipw2x00 and i40e
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,mail.gmail.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[enelsonmoore@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 98793EA22D
X-Rspamd-Action: no action

I have written a script to find device IDs that are claimed by
multiple drivers in the kernel. It has found that the PCI ID 8086:104f
is supported by both drivers/net/wireless/intel/ipw2x00 and
drivers/net/ethernet/intel/i40e. I assume the i40e one is correct,
since that's what the ID is assigned to in the pci.ids database. Can
anyone at Intel confirm this?

Ethan
