Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aM4QMXbxz2mt1wYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 18:57:26 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CBDC1396B10
	for <lists+intel-wired-lan@lfdr.de>; Fri, 03 Apr 2026 18:57:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C82A982FDE;
	Fri,  3 Apr 2026 16:57:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GAwSp_F9Uagx; Fri,  3 Apr 2026 16:57:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4F5D082FBE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775235443;
	bh=2Zdj+x5c75FhlG1gdNDIWMuNMzhHYG3GmAfv3XQFkW0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=v6kvXcDZinETRT5NYHzcYy9XKwVccA42jSCCvFgvpKYU0G4ftWaOFyPF/QhG+JkZi
	 zkyf4PbrA9c5sAmesqNPr8KXYlrM7Kd52sGrWAlTCaTSog4CiPEjQIWaM6ZB0m9dIb
	 KeBoWYNZW1AOM2bPO4V3Rhvei5AiAMLQzTkt9hyBPE0Jjwr3WX3cfGC8S4BpG7UbrU
	 NRwgHVyHEb+SWzRh1pbw0HPo6qNjYHyV8Nk5HCUEhdwCpAr0beg8qkSz5FiP8udkMn
	 nW9llPWaOS7WMXNf3B1c3lXf/07S0I2R0ckJGJlJPNfxYsnqAoFnF5RKGp0Ul+gvrb
	 6i2stTtVGFtRA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4F5D082FBE;
	Fri,  3 Apr 2026 16:57:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3404E1F3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 16:57:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 199E4610FC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 16:57:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zMLhhLs6Kr7D for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Apr 2026 16:57:21 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62d; helo=mail-pl1-x62d.google.com;
 envelope-from=joe@dama.to; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C5977610FB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C5977610FB
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com
 [IPv6:2607:f8b0:4864:20::62d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C5977610FB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2026 16:57:20 +0000 (UTC)
Received: by mail-pl1-x62d.google.com with SMTP id
 d9443c01a7336-2b0ba3bfe16so24768375ad.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 03 Apr 2026 09:57:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775235440; x=1775840240;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=2Zdj+x5c75FhlG1gdNDIWMuNMzhHYG3GmAfv3XQFkW0=;
 b=Wp2dnPwEjWl4VjYDD8tGAZP6RD7YH9GRntAh8QM3aH9CDZXgHhHt29EVdmh3V2Re19
 hPXrN1Kd4H8hJltYS/T5I30x1vATfkFZw7RSSNjBb8rIxq5M27AoZ4ktlNVoBdw5g6j6
 HLr6yj9p/t7tEOjUF8UN0QPzRozSM47NcMULYIuelj/vrqoRZQI5KiiaHL6zLtOo13ah
 ZzqXMoas3Y/pdJcXwCzb41o/MHU5m9WaDP4OLGZfI00UTs0uFtzu/sh2cWrBqK5bD1RC
 DWn5D/rOrGqO+o4pUuFu3z5Cv1k0h3Ct6p209u7siLSITWicoA7ZPuKX7vTShEfxQKiM
 E+CQ==
X-Gm-Message-State: AOJu0Yzuhd7JTmPzmquTJ0955oceucoJTWVAX+JbYwyHR5dxT7cDXJCx
 knbU9JdUP8n4N3ppYLqN8l/p5Gx4HeIibYVcHddccno4+LZfwsLAXQpbVNqMpJwH7ltPd5bYjbw
 Ll8CqSDM=
X-Gm-Gg: AeBDievIyvdSDQEir/xQ6SU/WVfsVvtE37sGmoXo26xQxSUoXGsj6tujakScxlW/5Yk
 oQF++ju3i7svmxd8WwCHctn5sPATEmnLZ5y7NGrWSl8Ik6UXg0adx4nfp1ASTTG7Jvj1X+JNTzy
 OSw5hlKfRMWS/a0MSpJGLCb0CTVg9gK0ldPpL3MX0hIuVdgKne2O4TApYPISc8Z2soMJ6JZvvfv
 jlIpjwsr6t7baeoP+nAPBeO4iWzMLExCrxXTTyTyR2LozutdSkgiCCrv6oil1OODyqlh8VzUKhN
 PLAeIeWcdw6s1/zJGEdn7ydNNpb6j0f0oi6EOnwQ5AyRLRQTaf7+6GNKMv0KDQhFNm9aLLPg2NE
 j1ABBEd2QHaIvh6ttP4EfRPTeaFo6OtQ9vKbwKf9xKxxTnRbUSWarllUClhLaNlGQSzfGcPzhko
 Oqp0Gh
X-Received: by 2002:a17:902:e84d:b0:2b0:5a4c:726f with SMTP id
 d9443c01a7336-2b277e3745cmr65000805ad.15.1775235439715; 
 Fri, 03 Apr 2026 09:57:19 -0700 (PDT)
Received: from localhost ([2a03:2880:2ff:5f::])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2b2749a2e42sm58314565ad.56.2026.04.03.09.57.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2026 09:57:19 -0700 (PDT)
Date: Fri, 3 Apr 2026 09:57:18 -0700
From: Joe Damato <joe@dama.to>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Leszek Pepiak <leszek.pepiak@intel.com>
Message-ID: <ac/xbvofVpwXHTQK@devvm20253.cco0.facebook.com>
Mail-Followup-To: Joe Damato <joe@dama.to>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Leszek Pepiak <leszek.pepiak@intel.com>
References: <20260403054321.3791392-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260403054321.3791392-1-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dama-to.20251104.gappssmtp.com; s=20251104; t=1775235440; x=1775840240;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=2Zdj+x5c75FhlG1gdNDIWMuNMzhHYG3GmAfv3XQFkW0=;
 b=wcjw2lZGRCONXtvZp+uwvzRlD8xyd7m8oPzT2EyCbG5zArf1lGdfWxsYgSvFUU5jER
 p9pwilJ0sunzbNOtWZiB89l61bGAxFuEpQW4IfluH5DGaRRwFpvwcYJYXacG38aWBjWN
 pQAYJ2vRDsrSZak4/s+o5VhKXslNYaJIGII40l5kIHT6R4mSrVzkfJTGQvQuyIxCVeQw
 PdyQnEn+f6pcxZ19nap5KOD3nWaKdU5T+45Abo6cbrWymOVvSg9pgh+nXydMJX/PcY/g
 dYIuSPKfOiPVJ+XKQXA3o1qHraPMbnY7s/b2t3TfavMwYe3zHh50Lw8c4jDse0TtZnf9
 rSNw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=dama.to
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=dama-to.20251104.gappssmtp.com
 header.i=@dama-to.20251104.gappssmtp.com header.a=rsa-sha256
 header.s=20251104 header.b=wcjw2lZG
Subject: Re: [Intel-wired-lan] [PATCH net-next] iavf: fix kernel-doc comment
 style in ethtool ops
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[dama.to];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:leszek.pepiak@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[joe@dama.to,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joe@dama.to,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: CBDC1396B10
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Apr 03, 2026 at 07:43:21AM +0200, Aleksandr Loktionov wrote:
> From: Leszek Pepiak <leszek.pepiak@intel.com>
> 
> iavf_get_channels() and iavf_set_channels() use the legacy `**/`
> comment terminator and embed the return description in the body text.
> Convert to proper kernel-doc style: single `*/` terminator and an
> explicit `Return:` section.
> 
> Signed-off-by: Leszek Pepiak <leszek.pepiak@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> 
> ---
>  drivers/net/ethernet/intel/iavf/iavf_ethtool.c | 13 +++++++------
>  1 file changed, 7 insertions(+), 6 deletions(-)

FWIW looks like there are a few other functions in this file that use the
"**/" terminator. Not sure it's worth respinning to get them all, though, so:

Reviewed-by: Joe Damato <joe@dama.to>
