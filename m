Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UOK1HLZb5mkwvQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Apr 2026 19:00:38 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D1B4305D9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Apr 2026 19:00:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8E2F7410B2;
	Mon, 20 Apr 2026 17:00:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YuN370c4ru1t; Mon, 20 Apr 2026 17:00:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8DEE740EF9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776704434;
	bh=qosU7LeAZMC6W0gUzswSZnD358K/njm0Rbna8pPFtPY=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=HrIKJwAHXnkQ8TulAJov9CvE4Hd8oivBYydE8T85dGXQHA/87ALlzmmc/GudSO5SQ
	 wwnI/5k9FDankxYzouVmzZzUCkdAKhc7TXxp2RWIYH2s1JfedeKINDa4F/Un+NraBW
	 KJxIkTezP5iPe+L8Itl/ZOmF4RrvP0MEsuA9VKF8UIzC1uY5P1k5RcgWE76CFAs75a
	 ZeQ5wq6I2UvON1NIb2ypzOHUgfPTutt767I1dLlr3QVtZcSEFJY31sE50pUTtVGn7e
	 bZGWfEzy9j5fjMTJD0wzn8HYL4tz4uF1wNfI1QFlMCj6ytSgxp3mdGRlO0J+KxdC7U
	 CM+jpstIIVgzg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8DEE740EF9;
	Mon, 20 Apr 2026 17:00:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1C90A24D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 17:00:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0252E4084A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 17:00:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zu0anvwATAci for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Apr 2026 17:00:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1133; helo=mail-yw1-x1133.google.com;
 envelope-from=boolli@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A6D4B40070
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A6D4B40070
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com
 [IPv6:2607:f8b0:4864:20::1133])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A6D4B40070
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 17:00:31 +0000 (UTC)
Received: by mail-yw1-x1133.google.com with SMTP id
 00721157ae682-79a2ee65171so43423997b3.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 10:00:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776704430; cv=none;
 d=google.com; s=arc-20240605;
 b=SFOhPGhMRRSDu2Ri/qdX6HsBaNqP+h3hZ9raD9MxABvy4+H1Dkg6RFCfDStbjLSvEY
 rCTmM7KBsC4cjfQtuyp9Z7l8NDlA8ugN8xqTIzA5H3z31PxJHMUNTU7DK0qafHGixGvu
 2NO6jX6jAJiAtwZgTZ+2WzIjmGS2EVUIuBRl//l3E8G39BncJFNf2eASwW3UZDY/X5oH
 mZZCyldBitLnWU8HIZhImt4It2Hjd71uaadrGltEG/YktFBqGbUb5forYXcLaE7NKQ9/
 CCovDVpXEyKFI2hCEzXjh4HUnwcIIPZ5cMPfKcInTm+guSJundk6InE6HKcmVEbAjyRN
 mTvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=qosU7LeAZMC6W0gUzswSZnD358K/njm0Rbna8pPFtPY=;
 fh=21OKOHmPjqOUmo0H6z1Tx0W8IYs8k7lOHKat3uSHIVA=;
 b=Ky2wxXyDH4fZP1F7CdLFcZEthWkqpqzsc96EDk85KzNPuY8Ch/ljQVkNa+CU7z+Tei
 B949mqfGxGkUfpJWab9f1M2fhTNwItUZ8HAfFRqIzrcDJfwgpMbkGY+s/PkFJeWxMUKv
 yiYxHsK/IN1CUH9La+5lZptbJhGWZlnOFlXPHqvRwZXCmrbOuMAosKdwXtfY0m/ySo7o
 VOop7ipmk6z5rNt8YtOm5uJk2QMBLH5NvczSOhXzeRX7T+/ecRYDXyuSis3Wu6BOrlwh
 VS+AsP9sJcd6paiNNkjXb9gY7TOawTOApkrL9rI3P4mna2m6tzBMMPZBBlrsRoGfF/3r
 xx0g==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776704430; x=1777309230;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=qosU7LeAZMC6W0gUzswSZnD358K/njm0Rbna8pPFtPY=;
 b=bLUzus7L3qvDXZSAEKEt1mhrxq1idjKKJGpgZMgEUs7ZrbCKEhWXHdyTaAWrrwqX2S
 IaTO4yZhTeKIJ9PSIrnIV31ZkXgaFugOl/99I1NgaLbTCZg0TmrU39dwMwHCwp2knUz5
 UmF3WO1EEvqih090eI50R/0KM78HC3f5Bik993is3ODqB97lCFgHnkwKSXabMexoqVwe
 SCwEKyKtWiqF5KtxaFWxVLcgndJQRRuyjPZ15H3BRLjahhP7QWEjlCvdMapbEYRhg78w
 wq9nS44zC3yO/VhG4ASZWnM8rFtGorM93xyo5M+tQt22XK8TjiKd8H9v/2hRT04QAbTC
 ebTQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ+M7KVlI0leF0IME10AkVzlwqZf8Q8QRLjZBVe+ivmbCo/oUHHuffu9fPpuxDtWr5/jpINAYUAxmMY7uIRQgHc=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yx51kt21r4cNUxMt0r/lx+iZoZP1KlBjQR9O5RiNrMjbcEk28LD
 n/rpwYGXYwiIUr3d3VyXsotfK6I8eynUjFsuUVE+BDGonp4Ie02/FkYP20eDdgdbTjuWVMbE8DZ
 XG6l4bgGri+KxIzCZZayXOnty7EVYdGr2CbznRthW
X-Gm-Gg: AeBDieuyFj3m0HmlSvorqREncsfOFOYUnD+j6goWhHUM7SBlX85YRk8gOnzo42l/5Am
 NFGqWgVYYy8PNrzon25Ngg8AMTbxE/1QipbwyzywrIT9YTHMErVgkA+ABp+NcOz6G9dUek/hOlG
 dCz83iq+pteZ5YQr5O31kOZbmT4RgMgpwnCM2aFQikrINNL1D07GaxtFCc4nNVhcwQkBa5ailb6
 IOJeC9Tqv14VYSX8xAc+GWaj36AXxGEAskDt+3tH++EyWoruDnX3uyPip+gYPOa7Hgxgb4UzTFW
 NE2zBHrS9+z3ToI7IqIovbhP7gyMLkJr3PxAFB70OJ0Ex4NjfnhkqcMAmio=
X-Received: by 2002:a05:690e:4812:b0:651:cddf:8c2d with SMTP id
 956f58d0204a3-65310a558dcmr8992591d50.43.1776704428060; Mon, 20 Apr 2026
 10:00:28 -0700 (PDT)
MIME-Version: 1.0
References: <20260419192555.3631327-1-boolli@google.com>
 <IA3PR11MB89864E6BED3A633061BB0A1FE52F2@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB89864E6BED3A633061BB0A1FE52F2@IA3PR11MB8986.namprd11.prod.outlook.com>
Date: Mon, 20 Apr 2026 10:00:15 -0700
X-Gm-Features: AQROBzCn3AE-kh1GV0WJU8R62dpAEmnFPoGv1Hun0exE-BYDaFUI24hYpB3s4cY
Message-ID: <CAODvEq54NzzW8Wonu5-CwwqU1+7CcV=wAWxRA-Hp8QiE_eGk_g@mail.gmail.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, 
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 David Decotigny <decot@google.com>, 
 "Singhai, Anjali" <anjali.singhai@intel.com>, 
 "Samudrala, Sridhar" <sridhar.samudrala@intel.com>,
 Brian Vazquez <brianvv@google.com>, 
 "Tantilov, Emil S" <emil.s.tantilov@intel.com>, stable@vger.kernel.org
Content-Type: multipart/alternative; boundary="0000000000004f4430064fe73cdb"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1776704430; x=1777309230; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=qosU7LeAZMC6W0gUzswSZnD358K/njm0Rbna8pPFtPY=;
 b=KXvQNLWSo3js3WTOQYGu5IVr7RvjQPVYAtuT30l6iJgZLO9CTza81+AgnqsrTZj3pL
 X8zLFmwhKwHYS8LqsrsBR57L9S7BYyZ2KInEtz6XnMyfZl+H0G+IgKpi/mVCFx63CNOq
 dKv+BRM9z0g6QM8TsQXiAd6xH6BQADLnvAZjsIVHDuNp1gvJ6Vg842xGDOGE28C7ks1R
 jMzGhuzDNsteHvQ+1CAZlmE+h4BaUJWKtTt4XJtXUYDSo0khIH2tQBplyDkvSaNvESBg
 qPMG1zN5/2mM3sjMX16mqBJwzCZHg/22MCI7LdMzOz+9+qpbWYj4fFiUAzqfdf7jZsbw
 sdbQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20251104 header.b=KXvQNLWS
Subject: Re: [Intel-wired-lan] [PATCH] idpf: do not perform flow ops when
 netdev is detached
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
From: Li Li via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Li Li <boolli@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:emil.s.tantilov@intel.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,intel.com:email,davemloft.net:email];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	HAS_REPLYTO(0.00)[boolli@google.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 07D1B4305D9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--0000000000004f4430064fe73cdb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Apr 19, 2026 at 11:20=E2=80=AFPM Loktionov, Aleksandr <
aleksandr.loktionov@intel.com> wrote:

>
>
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Li Li via Intel-wired-lan
> > Sent: Sunday, April 19, 2026 9:26 PM
> > To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> > Przemyslaw <przemyslaw.kitszel@intel.com>; David S. Miller
> > <davem@davemloft.net>; Jakub Kicinski <kuba@kernel.org>; Eric Dumazet
> > <edumazet@google.com>; intel-wired-lan@lists.osuosl.org
> > Cc: netdev@vger.kernel.org; linux-kernel@vger.kernel.org; David
> > Decotigny <decot@google.com>; Singhai, Anjali
> > <anjali.singhai@intel.com>; Samudrala, Sridhar
> > <sridhar.samudrala@intel.com>; Brian Vazquez <brianvv@google.com>; Li
> > Li <boolli@google.com>; Tantilov, Emil S <emil.s.tantilov@intel.com>
> > Subject: [Intel-wired-lan] [PATCH] idpf: do not perform flow ops when
> > netdev is detached
> >
> > Even though commit 2e281e1155fc ("idpf: detach and close netdevs while
> > handling a reset") prevents ethtool -N/-n operations to operate on
> > detached netdevs, we found that out-of-tree workflows like OpenOnload
> > can bypass ethtool core locks and call idpf_set_rxnfc directly during
> > an idpf HW reset. When this happens, we could get kernel crashes like
> > the following:
> >
> > [ 4045.787439] BUG: kernel NULL pointer dereference, address:
> > 0000000000000070 [ 4045.794420] #PF: supervisor read access in kernel
> > mode [ 4045.799580] #PF: error_code(0x0000) - not-present page [
> > 4045.804739] PGD 0 [ 4045.806772] Oops: Oops: 0000 [#1] SMP NOPTI ...
> > [ 4045.836425] Workqueue: onload-wqueue oof_do_deferred_work_fn
> > [onload] [ 4045.842926] RIP: 0010:idpf_del_flow_steer+0x24/0x170
> > [idpf] ...
> > [ 4045.946323] Call Trace:
> > [ 4045.948796]  <TASK>
> > [ 4045.950915]  ? show_trace_log_lvl+0x1b0/0x2f0 [ 4045.955293]  ?
> > show_trace_log_lvl+0x1b0/0x2f0 [ 4045.959672]  ?
> > idpf_set_rxnfc+0x6f/0x80 [idpf] [ 4045.964142]  ?
> > __die_body.cold+0x8/0x12 [ 4045.968000]  ? page_fault_oops+0x148/0x160
> > [ 4045.972117]  ? exc_page_fault+0x6f/0x160 [ 4045.976060]  ?
> > asm_exc_page_fault+0x22/0x30 [ 4045.980262]  ?
> > idpf_del_flow_steer+0x24/0x170 [idpf] [ 4045.985245]
> > idpf_set_rxnfc+0x6f/0x80 [idpf] [ 4045.989535]
> > af_xdp_filter_remove+0x7c/0xb0 [sfc_resource] [ 4045.995069]
> > oo_hw_filter_clear_hwports+0x6f/0xa0 [onload] [ 4046.000589]
> > oo_hw_filter_update+0x65/0x210 [onload] [ 4046.005587]
> > oof_hw_filter_update.constprop.0+0xe7/0x140 [onload] [ 4046.011716]
> > oof_manager_update_all_filters+0xad/0x270 [onload] [ 4046.017671]
> > __oof_do_deferred_work+0x15e/0x190 [onload] [ 4046.023014]
> > oof_do_deferred_work+0x2c/0x40 [onload] [ 4046.028018]
> > oof_do_deferred_work_fn+0x12/0x30 [onload] [ 4046.033277]
> > process_one_work+0x174/0x330 [ 4046.037304]  worker_thread+0x246/0x390
> > [ 4046.041074]  ? __pfx_worker_thread+0x10/0x10 [ 4046.045364]
> > kthread+0xf6/0x240 [ 4046.048530]  ? __pfx_kthread+0x10/0x10 [
> > 4046.052297]  ret_from_fork+0x2d/0x50 [ 4046.055896]  ?
> > __pfx_kthread+0x10/0x10 [ 4046.059664]  ret_from_fork_asm+0x1a/0x30 [
> > 4046.063613]  </TASK>
> >
> > To prevent this, we need to add checks in idpf_set_rxnfc and
> > idpf_get_rxnfc to error out if the netdev is already detached.
> >
> > Tested: implemented the following patch to synthetically force idpf
> > into a HW reset:
> >
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> > b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> > index 4fc0bb14c5b1..27476d57bcf0 100644
> > --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> > @@ -10,6 +10,9 @@
> >  #define idpf_tx_buf_next(buf)                (*(u32 *)&(buf)->priv)
> >  LIBETH_SQE_CHECK_PRIV(u32);
> >
> > +static bool SIMULATE_TX_TIMEOUT;
> > +module_param(SIMULATE_TX_TIMEOUT, bool, 0644);
> > +
> >  /**
> >   * idpf_chk_linearize - Check if skb exceeds max descriptors per
> > packet
> >   * @skb: send buffer
> > @@ -46,6 +49,8 @@ void idpf_tx_timeout(struct net_device *netdev,
> > unsigned int txqueue)
> >
> >       adapter->tx_timeout_count++;
> >
> > +     SIMULATE_TX_TIMEOUT =3D false;
> > +
> >       netdev_err(netdev, "Detected Tx timeout: Count %d, Queue %d\n",
> >                  adapter->tx_timeout_count, txqueue);
> >       if (!idpf_is_reset_in_prog(adapter)) { @@ -2225,6 +2230,8 @@
> > static bool idpf_tx_clean_complq(struct idpf_compl_queue *complq, int
> > budget,
> >                       goto fetch_next_desc;
> >               }
> >               tx_q =3D complq->txq_grp->txqs[rel_tx_qid];
> > +             if (unlikely(SIMULATE_TX_TIMEOUT && (tx_q->idx % 2 =3D=3D
> > 1)))
> > +                     goto fetch_next_desc;
> >
> >               /* Determine completion type */
> >               ctype =3D le16_get_bits(tx_desc->common.qid_comptype_gen,
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> > b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> > index be66f9b2e101..ba5da2a86c15 100644
> > --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> > @@ -8,6 +8,9 @@
> >  #include "idpf_virtchnl.h"
> >  #include "idpf_ptp.h"
> >
> > +static bool VIRTCHNL_FAILED;
> > +module_param(VIRTCHNL_FAILED, bool, 0644);
> > +
> >  /**
> >   * struct idpf_vc_xn_manager - Manager for tracking transactions
> >   * @ring: backing and lookup for transactions @@ -3496,6 +3499,11 @@
> > int idpf_vc_core_init(struct idpf_adapter *adapter)
> >               switch (adapter->state) {
> >               case __IDPF_VER_CHECK:
> >                       err =3D idpf_send_ver_msg(adapter);
> > +
> > +                     if (unlikely(VIRTCHNL_FAILED)) {
> > +                             err =3D -EIO;
> > +                     }
> > +
> >                       switch (err) {
> >                       case 0:
> >                               /* success, move state machine forward */
> >
> > And tested by writing 1 to /sys/module/idpf/parameters/VIRTCHNL_FAILED
> > and /sys/module/idpf/parameters/SIMULATE_TX_TIMEOUT, and running
> > idpf_get_rxnfc() right after the HW reset.
> >
> > Without the patch: encountered NULL pointer and kernel crash.
> >
> > With the patch: no crashes.
> >
> > Fixes: 2e281e1155fc ("idpf: detach and close netdevs while handling a
> > reset")
> > Signed-off-by: Li Li <boolli@google.com>
> > ---
> >  drivers/net/ethernet/intel/idpf/idpf_ethtool.c | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
> > b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
> > index bb99d9e7c65d..8368a7e6a754 100644
> > --- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
> > @@ -43,6 +43,9 @@ static int idpf_get_rxnfc(struct net_device *netdev,
> > struct ethtool_rxnfc *cmd,
> >       unsigned int cnt =3D 0;
> >       int err =3D 0;
> >
> > +     if (!netdev || !netif_device_present(netdev))
> > +             return -ENODEV;
> > +
> >       idpf_vport_ctrl_lock(netdev);
> >       vport =3D idpf_netdev_to_vport(netdev);
> >       vport_config =3D np->adapter->vport_config[np->vport_idx];
> > @@ -349,6 +352,9 @@ static int idpf_set_rxnfc(struct net_device
> > *netdev, struct ethtool_rxnfc *cmd)  {
> >       int ret =3D -EOPNOTSUPP;
> >
> > +     if (!netdev || !netif_device_present(netdev))
> > +             return -ENODEV;
> > +
> >       idpf_vport_ctrl_lock(netdev);
> >       switch (cmd->cmd) {
> >       case ETHTOOL_SRXCLSRLINS:
> > --
> > 2.54.0.rc1.513.gad8abe7a5a-goog
>

Sounds good, I CC'ed stable@vger.kernel.org and will append it to all
ongoing comments.

Thanks!


>
> Please add Cc: stable@vger.kernel.org
>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>

--0000000000004f4430064fe73cdb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Apr 19,=
 2026 at 11:20=E2=80=AFPM Loktionov, Aleksandr &lt;<a href=3D"mailto:aleksa=
ndr.loktionov@intel.com">aleksandr.loktionov@intel.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
&gt; -----Original Message-----<br>
&gt; From: Intel-wired-lan &lt;<a href=3D"mailto:intel-wired-lan-bounces@os=
uosl.org" target=3D"_blank">intel-wired-lan-bounces@osuosl.org</a>&gt; On B=
ehalf<br>
&gt; Of Li Li via Intel-wired-lan<br>
&gt; Sent: Sunday, April 19, 2026 9:26 PM<br>
&gt; To: Nguyen, Anthony L &lt;<a href=3D"mailto:anthony.l.nguyen@intel.com=
" target=3D"_blank">anthony.l.nguyen@intel.com</a>&gt;; Kitszel,<br>
&gt; Przemyslaw &lt;<a href=3D"mailto:przemyslaw.kitszel@intel.com" target=
=3D"_blank">przemyslaw.kitszel@intel.com</a>&gt;; David S. Miller<br>
&gt; &lt;<a href=3D"mailto:davem@davemloft.net" target=3D"_blank">davem@dav=
emloft.net</a>&gt;; Jakub Kicinski &lt;<a href=3D"mailto:kuba@kernel.org" t=
arget=3D"_blank">kuba@kernel.org</a>&gt;; Eric Dumazet<br>
&gt; &lt;<a href=3D"mailto:edumazet@google.com" target=3D"_blank">edumazet@=
google.com</a>&gt;; <a href=3D"mailto:intel-wired-lan@lists.osuosl.org" tar=
get=3D"_blank">intel-wired-lan@lists.osuosl.org</a><br>
&gt; Cc: <a href=3D"mailto:netdev@vger.kernel.org" target=3D"_blank">netdev=
@vger.kernel.org</a>; <a href=3D"mailto:linux-kernel@vger.kernel.org" targe=
t=3D"_blank">linux-kernel@vger.kernel.org</a>; David<br>
&gt; Decotigny &lt;<a href=3D"mailto:decot@google.com" target=3D"_blank">de=
cot@google.com</a>&gt;; Singhai, Anjali<br>
&gt; &lt;<a href=3D"mailto:anjali.singhai@intel.com" target=3D"_blank">anja=
li.singhai@intel.com</a>&gt;; Samudrala, Sridhar<br>
&gt; &lt;<a href=3D"mailto:sridhar.samudrala@intel.com" target=3D"_blank">s=
ridhar.samudrala@intel.com</a>&gt;; Brian Vazquez &lt;<a href=3D"mailto:bri=
anvv@google.com" target=3D"_blank">brianvv@google.com</a>&gt;; Li<br>
&gt; Li &lt;<a href=3D"mailto:boolli@google.com" target=3D"_blank">boolli@g=
oogle.com</a>&gt;; Tantilov, Emil S &lt;<a href=3D"mailto:emil.s.tantilov@i=
ntel.com" target=3D"_blank">emil.s.tantilov@intel.com</a>&gt;<br>
&gt; Subject: [Intel-wired-lan] [PATCH] idpf: do not perform flow ops when<=
br>
&gt; netdev is detached<br>
&gt; <br>
&gt; Even though commit 2e281e1155fc (&quot;idpf: detach and close netdevs =
while<br>
&gt; handling a reset&quot;) prevents ethtool -N/-n operations to operate o=
n<br>
&gt; detached netdevs, we found that out-of-tree workflows like OpenOnload<=
br>
&gt; can bypass ethtool core locks and call idpf_set_rxnfc directly during<=
br>
&gt; an idpf HW reset. When this happens, we could get kernel crashes like<=
br>
&gt; the following:<br>
&gt; <br>
&gt; [ 4045.787439] BUG: kernel NULL pointer dereference, address:<br>
&gt; 0000000000000070 [ 4045.794420] #PF: supervisor read access in kernel<=
br>
&gt; mode [ 4045.799580] #PF: error_code(0x0000) - not-present page [<br>
&gt; 4045.804739] PGD 0 [ 4045.806772] Oops: Oops: 0000 [#1] SMP NOPTI ...<=
br>
&gt; [ 4045.836425] Workqueue: onload-wqueue oof_do_deferred_work_fn<br>
&gt; [onload] [ 4045.842926] RIP: 0010:idpf_del_flow_steer+0x24/0x170<br>
&gt; [idpf] ...<br>
&gt; [ 4045.946323] Call Trace:<br>
&gt; [ 4045.948796]=C2=A0 &lt;TASK&gt;<br>
&gt; [ 4045.950915]=C2=A0 ? show_trace_log_lvl+0x1b0/0x2f0 [ 4045.955293]=
=C2=A0 ?<br>
&gt; show_trace_log_lvl+0x1b0/0x2f0 [ 4045.959672]=C2=A0 ?<br>
&gt; idpf_set_rxnfc+0x6f/0x80 [idpf] [ 4045.964142]=C2=A0 ?<br>
&gt; __die_body.cold+0x8/0x12 [ 4045.968000]=C2=A0 ? page_fault_oops+0x148/=
0x160<br>
&gt; [ 4045.972117]=C2=A0 ? exc_page_fault+0x6f/0x160 [ 4045.976060]=C2=A0 =
?<br>
&gt; asm_exc_page_fault+0x22/0x30 [ 4045.980262]=C2=A0 ?<br>
&gt; idpf_del_flow_steer+0x24/0x170 [idpf] [ 4045.985245]<br>
&gt; idpf_set_rxnfc+0x6f/0x80 [idpf] [ 4045.989535]<br>
&gt; af_xdp_filter_remove+0x7c/0xb0 [sfc_resource] [ 4045.995069]<br>
&gt; oo_hw_filter_clear_hwports+0x6f/0xa0 [onload] [ 4046.000589]<br>
&gt; oo_hw_filter_update+0x65/0x210 [onload] [ 4046.005587]<br>
&gt; oof_hw_filter_update.constprop.0+0xe7/0x140 [onload] [ 4046.011716]<br=
>
&gt; oof_manager_update_all_filters+0xad/0x270 [onload] [ 4046.017671]<br>
&gt; __oof_do_deferred_work+0x15e/0x190 [onload] [ 4046.023014]<br>
&gt; oof_do_deferred_work+0x2c/0x40 [onload] [ 4046.028018]<br>
&gt; oof_do_deferred_work_fn+0x12/0x30 [onload] [ 4046.033277]<br>
&gt; process_one_work+0x174/0x330 [ 4046.037304]=C2=A0 worker_thread+0x246/=
0x390<br>
&gt; [ 4046.041074]=C2=A0 ? __pfx_worker_thread+0x10/0x10 [ 4046.045364]<br=
>
&gt; kthread+0xf6/0x240 [ 4046.048530]=C2=A0 ? __pfx_kthread+0x10/0x10 [<br=
>
&gt; 4046.052297]=C2=A0 ret_from_fork+0x2d/0x50 [ 4046.055896]=C2=A0 ?<br>
&gt; __pfx_kthread+0x10/0x10 [ 4046.059664]=C2=A0 ret_from_fork_asm+0x1a/0x=
30 [<br>
&gt; 4046.063613]=C2=A0 &lt;/TASK&gt;<br>
&gt; <br>
&gt; To prevent this, we need to add checks in idpf_set_rxnfc and<br>
&gt; idpf_get_rxnfc to error out if the netdev is already detached.<br>
&gt; <br>
&gt; Tested: implemented the following patch to synthetically force idpf<br=
>
&gt; into a HW reset:<br>
&gt; <br>
&gt; diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c<br>
&gt; b/drivers/net/ethernet/intel/idpf/idpf_txrx.c<br>
&gt; index 4fc0bb14c5b1..27476d57bcf0 100644<br>
&gt; --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c<br>
&gt; +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c<br>
&gt; @@ -10,6 +10,9 @@<br>
&gt;=C2=A0 #define idpf_tx_buf_next(buf)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 (*(u32 *)&amp;(buf)-&gt;priv)<br>
&gt;=C2=A0 LIBETH_SQE_CHECK_PRIV(u32);<br>
&gt; <br>
&gt; +static bool SIMULATE_TX_TIMEOUT;<br>
&gt; +module_param(SIMULATE_TX_TIMEOUT, bool, 0644);<br>
&gt; +<br>
&gt;=C2=A0 /**<br>
&gt;=C2=A0 =C2=A0* idpf_chk_linearize - Check if skb exceeds max descriptor=
s per<br>
&gt; packet<br>
&gt;=C2=A0 =C2=A0* @skb: send buffer<br>
&gt; @@ -46,6 +49,8 @@ void idpf_tx_timeout(struct net_device *netdev,<br>
&gt; unsigned int txqueue)<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0adapter-&gt;tx_timeout_count++;<br>
&gt; <br>
&gt; +=C2=A0 =C2=A0 =C2=A0SIMULATE_TX_TIMEOUT =3D false;<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0netdev_err(netdev, &quot;Detected Tx timeout=
: Count %d, Queue %d\n&quot;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 adapter-=
&gt;tx_timeout_count, txqueue);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!idpf_is_reset_in_prog(adapter)) { @@ -2=
225,6 +2230,8 @@<br>
&gt; static bool idpf_tx_clean_complq(struct idpf_compl_queue *complq, int<=
br>
&gt; budget,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0goto fetch_next_desc;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tx_q =3D complq-=
&gt;txq_grp-&gt;txqs[rel_tx_qid];<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (unlikely(SIMULATE=
_TX_TIMEOUT &amp;&amp; (tx_q-&gt;idx % 2 =3D=3D<br>
&gt; 1)))<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0goto fetch_next_desc;<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* Determine com=
pletion type */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ctype =3D le16_g=
et_bits(tx_desc-&gt;common.qid_comptype_gen,<br>
&gt; diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c<br>
&gt; b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c<br>
&gt; index be66f9b2e101..ba5da2a86c15 100644<br>
&gt; --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c<br>
&gt; +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c<br>
&gt; @@ -8,6 +8,9 @@<br>
&gt;=C2=A0 #include &quot;idpf_virtchnl.h&quot;<br>
&gt;=C2=A0 #include &quot;idpf_ptp.h&quot;<br>
&gt; <br>
&gt; +static bool VIRTCHNL_FAILED;<br>
&gt; +module_param(VIRTCHNL_FAILED, bool, 0644);<br>
&gt; +<br>
&gt;=C2=A0 /**<br>
&gt;=C2=A0 =C2=A0* struct idpf_vc_xn_manager - Manager for tracking transac=
tions<br>
&gt;=C2=A0 =C2=A0* @ring: backing and lookup for transactions @@ -3496,6 +3=
499,11 @@<br>
&gt; int idpf_vc_core_init(struct idpf_adapter *adapter)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0switch (adapter-=
&gt;state) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0case __IDPF_VER_=
CHECK:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0err =3D idpf_send_ver_msg(adapter);<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0if (unlikely(VIRTCHNL_FAILED)) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0err =3D -EIO;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0}<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0switch (err) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0case 0:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* success, move state machine for=
ward */<br>
&gt; <br>
&gt; And tested by writing 1 to /sys/module/idpf/parameters/VIRTCHNL_FAILED=
<br>
&gt; and /sys/module/idpf/parameters/SIMULATE_TX_TIMEOUT, and running<br>
&gt; idpf_get_rxnfc() right after the HW reset.<br>
&gt; <br>
&gt; Without the patch: encountered NULL pointer and kernel crash.<br>
&gt; <br>
&gt; With the patch: no crashes.<br>
&gt; <br>
&gt; Fixes: 2e281e1155fc (&quot;idpf: detach and close netdevs while handli=
ng a<br>
&gt; reset&quot;)<br>
&gt; Signed-off-by: Li Li &lt;<a href=3D"mailto:boolli@google.com" target=
=3D"_blank">boolli@google.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/net/ethernet/intel/idpf/idpf_ethtool.c | 6 ++++++<br>
&gt;=C2=A0 1 file changed, 6 insertions(+)<br>
&gt; <br>
&gt; diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c<br>
&gt; b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c<br>
&gt; index bb99d9e7c65d..8368a7e6a754 100644<br>
&gt; --- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c<br>
&gt; +++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c<br>
&gt; @@ -43,6 +43,9 @@ static int idpf_get_rxnfc(struct net_device *netdev,=
<br>
&gt; struct ethtool_rxnfc *cmd,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int cnt =3D 0;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0int err =3D 0;<br>
&gt; <br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!netdev || !netif_device_present(netdev))<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -ENODEV;<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0idpf_vport_ctrl_lock(netdev);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0vport =3D idpf_netdev_to_vport(netdev);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0vport_config =3D np-&gt;adapter-&gt;vport_co=
nfig[np-&gt;vport_idx];<br>
&gt; @@ -349,6 +352,9 @@ static int idpf_set_rxnfc(struct net_device<br>
&gt; *netdev, struct ethtool_rxnfc *cmd)=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0int ret =3D -EOPNOTSUPP;<br>
&gt; <br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (!netdev || !netif_device_present(netdev))<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -ENODEV;<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0idpf_vport_ctrl_lock(netdev);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0switch (cmd-&gt;cmd) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case ETHTOOL_SRXCLSRLINS:<br>
&gt; --<br>
&gt; 2.54.0.rc1.513.gad8abe7a5a-goog<br></blockquote><div><br></div><div>So=
unds good, I CC&#39;ed=C2=A0<a href=3D"mailto:stable@vger.kernel.org" targe=
t=3D"_blank">stable@vger.kernel.org</a>=C2=A0and will append it to all ongo=
ing comments.=C2=A0</div><div><br></div><div>Thanks!</div><div>=C2=A0</div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Please add Cc: <a href=3D"mailto:stable@vger.kernel.org" target=3D"_blank">=
stable@vger.kernel.org</a><br>
<br>
Reviewed-by: Aleksandr Loktionov &lt;<a href=3D"mailto:aleksandr.loktionov@=
intel.com" target=3D"_blank">aleksandr.loktionov@intel.com</a>&gt;<br>
</blockquote></div></div>

--0000000000004f4430064fe73cdb--
