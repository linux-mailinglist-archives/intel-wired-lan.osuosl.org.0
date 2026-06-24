Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id z/XiOiL5O2pPhAgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2026 17:34:58 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 704FC6BFB19
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2026 17:34:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=53za9fWz;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 20778606C6;
	Wed, 24 Jun 2026 15:34:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k1jg6Q4myLAT; Wed, 24 Jun 2026 15:34:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4F81F60901
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782315295;
	bh=FeGXhUrr7KAwWqca7WaPTlQuO3/AIw6AM+jlNzcvHIY=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=53za9fWzhkPg6M5OErhbFGzwkMm05wEIMzaG3PFkGJYjrEBiTI1neeAjqppmSLLto
	 zt1GABipZsyf7CRI6xX/DNB88SzMSJ2W6SAM/Fn0Dp4mFmdyzbWv+0R1QoDVlE0aNf
	 pMz0biTQcrJeIZbfHYlx1+efqmcaA/jAiAteg7iZOPWuorTs13u0df221zOiLqmxQo
	 sIdxuskHMlhPhbRc6dfHOCTAZVz0sELdef5Eka6Jv1bKw5q8CMbKDb67EgXJZq/Wz9
	 s0/UI0upSPNPmL2nUWeUaNcOcMYmuU3swviZ1Nx/l87MT958vspZ2MIvvLalBEXB/s
	 Qcj+hirPOmk8w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F81F60901;
	Wed, 24 Jun 2026 15:34:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 07F5A256
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2026 15:34:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E168380E0D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2026 15:34:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UbTrlsdM4X9b for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jun 2026 15:34:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4F50A80E06
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4F50A80E06
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4F50A80E06
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2026 15:34:53 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id EFDB043448;
 Wed, 24 Jun 2026 15:34:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9CA981F000E9;
 Wed, 24 Jun 2026 15:34:52 +0000 (UTC)
Date: Wed, 24 Jun 2026 08:34:51 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Adrian Pielech <adrian.pielech@intel.com>, Przemyslaw Kitszel
 <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <20260624083451.2c15b16b@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1782315292;
 bh=FeGXhUrr7KAwWqca7WaPTlQuO3/AIw6AM+jlNzcvHIY=;
 h=Date:From:To:Cc:Subject;
 b=mh0mn97N5LyuDTd+Oh8kqgDg+iqoUorVLwSd9/m6AdkfeAQqQI6aPjTw4KN3IIuKh
 5EFHWxwPtTAvKTQWrrJydD8Gbcm1stf2DxF2YIr9XVW+kXtd32PAXPUji9tA+LLJLR
 HUcCg/6Dh7zMuoan9VsxP6rEYiD7ixohKMLX0TvyeEBYw5roqcNYGFJaaOl5B5aFee
 h+N+BTHdQTuZ2RgEctlLprL8nZP3eSrtBbnks8KAPR/eeUwlPh5sLa1y2UNdaDjFOH
 cfUdLs1UdqqZRNrZUF7jpU4EO+GQKMhBpE4ZLA/YR+dUMGBUKkHNI2FJIKDBv51HRX
 GD/juSdXZwDnw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20260515 header.b=mh0mn97N
Subject: [Intel-wired-lan] [TEST] GRO on i40e looks off
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.69 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:adrian.pielech@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 704FC6BFB19

Hi!

Looking thru the stability reports GRO tests on i40e stand out.
It's bad across multiple test cases but IPv4 IP ID cases are
a very good example. These tests are solid across all platforms
but on i40e they fail half of the time both in Intel CI and
in netdev CI.
