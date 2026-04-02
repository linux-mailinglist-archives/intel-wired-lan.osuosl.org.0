Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AOpVFeRozmmpngYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Apr 2026 15:02:28 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B915C38959A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Apr 2026 15:02:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F7A7819CC;
	Thu,  2 Apr 2026 13:02:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q7RXvZWV_CEn; Thu,  2 Apr 2026 13:02:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9EAF581990
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775134943;
	bh=Qzc7zthmCYDmHkDV8148S1eMSVXY7cYeD7JUEBigKIw=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rF8+3lJuJW716FlGqFeku/nRgkH93cefZUhLH8xiN/YOLbscGbBUFapYPQiwEHb/F
	 q0bsTiNSNHUANzqGQGEwsGziuZDFk0knaQmRYJoxhGk0mk2sIYoqhRDL8rzVE1LpHe
	 RZgD4IvdCjR2zFHZFVmQdekHUmP3PTGAzjZn/X9s/Izd/9DwSWPP8NNA8ghIbVHfqe
	 tsaSREYAJEVnRoxjCVUbZAyJH+ZcnijVP4aZJqbjWO4j0eymjZx1G05MgNxfA3CuVA
	 6lZEVz9P1uLeFscxLsNvXSbNTjxpv6Cj7PFINQ47f8Y3HEXOIgF9x/EUonGCM92Xtb
	 /+yAVDhX3f0mg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9EAF581990;
	Thu,  2 Apr 2026 13:02:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3EBC62E9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2026 13:02:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1D2388197D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2026 13:02:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OwXYp8lv4bvR for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Apr 2026 13:02:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::131; helo=mail-lf1-x131.google.com;
 envelope-from=marco.crivellari@suse.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1DBB181980
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1DBB181980
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com
 [IPv6:2a00:1450:4864:20::131])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1DBB181980
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Apr 2026 13:02:20 +0000 (UTC)
Received: by mail-lf1-x131.google.com with SMTP id
 2adb3069b0e04-5a1307438ddso1009834e87.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 02 Apr 2026 06:02:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1775134939; cv=none;
 d=google.com; s=arc-20240605;
 b=i+52EPMLCZe+qlLqck9oLHfVUKIlG79/GbyOrXJXGP32PXauAvhB/27y9D+kU3Y0XM
 QsrJL22PYOck3hiZeks+6CVp4CsOWq1VcU6VXj8QFtEQA4QTmz3uS/wxhFOswVx+VNWa
 Ea3fK+r6PDd19vgxIX2SFiJ5IaK/Ox9o8Liv3OpNX4n16i6inSz1urZ/RJFmupw+VwBd
 GavQdYE7moY63usdHK+2MLSkP+4q7kt+aYfowbWKRzXlUPf2jCi32IzwIMa83GhqtGWs
 UZTrZYakQW+A9kD9yGKjo4Q+ECgPIM4OKFfcSAwhVBfmI1m5TEuKhk5lmi8wf3twWLEO
 cTLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=Qzc7zthmCYDmHkDV8148S1eMSVXY7cYeD7JUEBigKIw=;
 fh=Oazly4H1C8O9/NeICUi1VQvbo2MCsSciMFYRPrlJggM=;
 b=P7pFp/Loy4SXerCkAx4J0W8YS1Nl0bNPOmchJYTIofjYBVPB79c2JOJyW9TLDKsnE7
 g7WEi9nNxqRphFAg4V5HZuDV212twZJDBFIdC+pMi5AmOkNyOOdA0ZHINvWdEOMy/7OB
 j71Oug97XR63uGHbnVkB7yzv0fsPqdFldHDUSCUhjIkq+tazRDfd1fUhe5r1jBsDrV+Z
 OOmI2sRiLtTQVQWMiBW27aIbK42/ObD800kp7sKsiYQqXw7cRCAYdqItW9cYw3XzriS1
 NI/p/Eqbo7yK9lw80qkqeQYApyTHe9DVlmSZDdSDZtgiOaU0rwMSgC8Yql4DmeMpZRdd
 bNkQ==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775134939; x=1775739739;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=Qzc7zthmCYDmHkDV8148S1eMSVXY7cYeD7JUEBigKIw=;
 b=sZnAkbiXZTXfUJVh8zlEW8rVXv0HIFFjmdgEdlV83oqTZ2YsB+EpB+vN/PegGxNeub
 6Y85u1+Q+n/LW9DuhvyMvyYyzUwDBuHpjdaw88GyzodL8TJFizU2/WLAOcUcAJu/toBt
 gdkzackKbSGHqJ91f4KJO3WXk3xpV4QBurlZhtmCXnonEJaFlWkLLicjcQGBVVHm3PpU
 h2rqt4lT/2klW0yr9X2sy333SRsdTO1Gkig41TNJ/MzOZ/sn5M4V0qeztQ7pi0nmhDwc
 iKqiDdHcfaXmhnbaI5VTPHFLQDieJKuOKV3R+8xv9ngtYwsx0qq4ylD1UP2JPmp26AAs
 8qBg==
X-Gm-Message-State: AOJu0YzQEYCxAtOZodQKTNCoMGcFfEsL2eRulde4sOsQfy/17RIqHVvA
 FM7oJ5++WpZaSnXf8zcfb+S8M7jQ2s86EitDn0aPUdGk1fZQZBVjshIfLbVfMWRux9caHoQx8Br
 d+6NgoWXhIyibdnUimm72VDqzxxR9rFN9ZZrNIveGRw==
X-Gm-Gg: ATEYQzwGRzCYsXtClZB7tNsmeg2qrGkoOcRhNy0Begn6GebLkWTIdeGwAJtHRVzQ0RC
 SWJXCdAA86+1kQoaS+PQLi5b0waI0013Fn1g003OxmKV76pp6fdzocZ/Db4SnXddJO1Hpu8T/lG
 zNhf7i9f0f2/Afg5DC9ABfnd8hig+1wSMc0+5szMa219ocuceL6i4a8AahLU95qElEk32USAw8e
 tk/5Z+JuNgihgtBrlPEL8dyvvUGpRuFVdsvx/HWh5z5dNpoYBUbMdREYSP8A/ruDhd2cdbdR7D+
 FHI9SkBWF5KH71pSOylZiyGRhCS0PjqdcVtSVWbR
X-Received: by 2002:a05:6512:3b1f:b0:5a1:2c41:d28d with SMTP id
 2adb3069b0e04-5a2c1ef9148mr3285986e87.19.1775134937855; Thu, 02 Apr 2026
 06:02:17 -0700 (PDT)
MIME-Version: 1.0
References: <20260313150917.271086-1-marco.crivellari@suse.com>
 <0ca7f92b-ec4e-469c-ad2b-648d278bcfe9@intel.com>
In-Reply-To: <0ca7f92b-ec4e-469c-ad2b-648d278bcfe9@intel.com>
From: Marco Crivellari <marco.crivellari@suse.com>
Date: Thu, 2 Apr 2026 15:02:05 +0200
X-Gm-Features: AQROBzBiZA4wu4pRSlW9X59e1j0v4Yj6CRcsXbFsWbV4URy_HSPh_8aVJS8DgF8
Message-ID: <CAAofZF4X8sOHawQD_DO2CQFDHUdNrtNE9bT_aMEHgaUmwDC-6w@mail.gmail.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, Tejun Heo <tj@kernel.org>, 
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
 Lai Jiangshan <jiangshanlai@gmail.com>,
 Frederic Weisbecker <frederic@kernel.org>, 
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Michal Hocko <mhocko@suse.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.com; s=google; t=1775134939; x=1775739739; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Qzc7zthmCYDmHkDV8148S1eMSVXY7cYeD7JUEBigKIw=;
 b=a86wan+oKqlOZaww3E/j75rruxwxP0t09qxl3V7VaShL+ZyFL4ZJR6qIPlRgyw60xe
 ocHc3PnWKy+3v4NkY7BhP2xciaHldz2YwlvC+VLX5qw6PYrerJbFMd2JA2D73oRfbUep
 ZkroiblBsMX8dYzEA/gN9A7DftDuX+7ZAFuOnk5FYCzrR1Aa0nho2McASx4evybXAzV/
 llRrutsZ2I3BjxMqfOwCPooVvsBRhj8vpSu7t4qtz9/UCXgkSegUW/g4KExJFmOvKS4z
 mPyLklpizm/s217Yx54EelPJVlr+2ROO6lw2vJgAZqT1O6dKe3aqTMAm6HhdEVqWGM4T
 2R5A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=suse.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=suse.com header.i=@suse.com header.a=rsa-sha256
 header.s=google header.b=a86wan+o
Subject: Re: [Intel-wired-lan] [PATCH] idpf: Replace use of
 system_unbound_wq with system_dfl_wq
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
X-Spamd-Result: default: False [3.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[suse.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[marco.crivellari@suse.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:tj@kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:jiangshanlai@gmail.com,m:frederic@kernel.org,m:bigeasy@linutronix.de,m:mhocko@suse.com,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_COUNT_SEVEN(0.00)[8];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[marco.crivellari@suse.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.osuosl.org,kernel.org,vger.kernel.org,gmail.com,linutronix.de,suse.com,intel.com,lunn.ch,davemloft.net,google.com,redhat.com];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,mail.gmail.com:mid,osuosl.org:dkim]
X-Rspamd-Queue-Id: B915C38959A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 5:09=E2=80=AFPM Przemek Kitszel
<przemyslaw.kitszel@intel.com> wrote:
> [...]
> this wording kinda scared me, but after reading linked commits, there is
> nothing to worry about, as there are no functional changes in this patch
>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Hi,

Sorry for the late reply. Yes, correct: there are no functional changes.

Thanks!
--=20

Marco Crivellari

SUSE Labs
