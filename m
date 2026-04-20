Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iA0qDmNc5mmtvAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Apr 2026 19:03:31 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5A0430775
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Apr 2026 19:03:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 809A2610EB;
	Mon, 20 Apr 2026 17:03:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gFxtbUCeH8M3; Mon, 20 Apr 2026 17:03:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA19C610EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776704607;
	bh=QuwHzur0DyTT6fAN7548X05vvqlUKr6sImf2XcXe9sE=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=OZQ2BIgRkIk5yrs2trCiT2RS/EzUpQiE39owfIiEV16j+FUHutR8a8ehMR/9kmcgR
	 tR2+R4kYCd/DWS2p2Azs9Dr2Tz3jlrNwHvmf7J/T4Y+IpNvB6RXzp51UonGw8v5O8I
	 SGIaCE72tWG3o601WuCLeABzAEZKIuUmD4s2MyiTLuJBu9Ga8BiAn5qR4LcyCzef48
	 NLYi7O8G0EvCoGjW8IQQRaR7kjgBQSpQYR0s5GAW3qfIqWcjJKWCz7mDlZaw0avYEn
	 fkb78DK8HEVAF78Yk6TrrN5WE9L7P/S4b5IZfAtRmSCX750st3KAzueUkuSM8bfww6
	 4mXCCEdXv7cZQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA19C610EF;
	Mon, 20 Apr 2026 17:03:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 85C8C24D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 17:03:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6B207410B2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 17:03:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oq1NiMD0wlB9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Apr 2026 17:03:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b136; helo=mail-yx1-xb136.google.com;
 envelope-from=boolli@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7A42141104
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7A42141104
Received: from mail-yx1-xb136.google.com (mail-yx1-xb136.google.com
 [IPv6:2607:f8b0:4864:20::b136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7A42141104
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 17:03:24 +0000 (UTC)
Received: by mail-yx1-xb136.google.com with SMTP id
 956f58d0204a3-64eaf8aa893so2617384d50.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2026 10:03:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776704603; cv=none;
 d=google.com; s=arc-20240605;
 b=MmdFvgqa+5ua4hvIgjag4Y2t1SxY+IMBGqcMQUDSD/5IfdX57iBGxLYUaBre9WjG3T
 pSQjzhj3QIea0aIj/qiF0Cg+8C5FYWbE7dv5fQ4m54rymXqNzxLcbFZYlunrUN16uxMj
 ixoUcPPIx68sUGqHi3a8cNL1nBHnRy0/XPUyYO7UwAv4laZfBE875WTesIOU4MSwZ9RQ
 +A4zcML4MpqDrRBLqUWja764+wEKOlWiNq4xmBGBSUgeU664+Rtmds0JS4Y204/uFx2d
 eZGryQWd6WG9R9Ro8G2Lby4aL69IsgRW8SaPQmlZnvbgD0JNzTHf3Cku8SgF9pO9O2r+
 ADEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=QuwHzur0DyTT6fAN7548X05vvqlUKr6sImf2XcXe9sE=;
 fh=GXHfAlJ/6X2AwUx1/0SLYvxEMtIA+GT8GRmsxIfO/fo=;
 b=AGV+MgMBwXJpMkr6YwgNOrr2sSRdyhwZ+lZwqlCLDu2Ez4ASUUO+6VvI3+tuiPaaOj
 sfQfyO66buyywgSahQlyb7YlcbAdIVy1FRjQ5nyASSbMc5fpEuW48fhnw6Ygg7jY/K+q
 CWm6u38ihUkiSaiqOzs/a+wGNglVAOzC1lmVnAWpladUGyNR50NV5aWcbRQmVe0xNtm+
 BZ7KnQkz1hII4QP319JTY3WKiLwKLzyhNtHy2kazFR9HU19SIKy/UXnaB9oj4S0CDk9P
 z42dNOqxcxMC+KdcHwMnuOGwUyUdOoIrwlifEqL+UY/2MmIUPXu+XRbSJbGp5ZIEgFDx
 gLIQ==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776704603; x=1777309403;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=QuwHzur0DyTT6fAN7548X05vvqlUKr6sImf2XcXe9sE=;
 b=Wd72PWZJjw1lwBh239nDvHJ1uqSv0urLKpeZLlHeqnE5RCZ79MkMjJX1RWV6ZZ0yzk
 rd7NY0N+YZo8bVnL8OEaFDBc/fORgQrUUbcvFI0Og1PfnihMQ40cyoT5J+Jm3IL4sIs1
 1sBAksi8QXiu0A20c1nWaIfTjpCqmmb+GacLd5ApxqFx8mxiUYkXEWH40rD8BAhWbw8+
 govHCPBggROpvnm4uXR/vZDqMjmhclqszQ0SrG6mA1u0Vbprpsga4T6tPcJyW4gt3tU0
 R3LohaUvsIsDzHnAuxxoMluWkYbR12xa95EVi2yT7mpRO8UWiUKq6IiGhtjDQooEy6Qy
 ZppQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ/w2jFEy82gsMV8sO+8wDKX2F5BNga6GfNtfn0YVhSsiLj7czAMaWaNvedJqMDpS2sTv9BhN3JPDHz1c74NOZk=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwRY0D0RWHOWQEOaMfmYijdHSEM7d+S4ZWZ4P8baCozXQMy9jKS
 Ltk5C80pss+ytZt+42tV1QHP1kIpq77Dk0mdmOe3dymwi25tFpEfyA6ni1s4khufEB0Q3hSN+19
 4EWSCcJaL3NhlOLhVAzL1s4fNGaZj/rSdBedhFqEa
X-Gm-Gg: AeBDiesY0GkNQB3iU705mZX5ewTVDG5XlOYlX6aPQhMUsPD+WNAotyJwFzK9kA+K67K
 Bo23JkcgmBAs9aErNwdK8jZo2MwFSkaaoLWQ3ac7wybDI279EFw+scPOUIMp24CmRK+6mU48/bK
 NSKvdjTuI8ZUEKnTylkIbELLAnEBHcIyqIt6eUTyeV3LAY2OHSh8iCJvjvUp6caeAJAQakQN9P4
 oaoBDJYhk/jAhVy0s7VePdATp5Ybag1j6gzDSPDueUEBMZerG/5Ve4UhMM1XUgdpoiUuqXKuN1u
 GzjiT1QXw40tfXgGaWJ6spuWk5x9WxUq3PN+pn3snoS4cli7YNv8wQI7/6c=
X-Received: by 2002:a05:690e:124a:b0:650:1bc2:7e18 with SMTP id
 956f58d0204a3-65310803466mr14402341d50.1.1776704601042; Mon, 20 Apr 2026
 10:03:21 -0700 (PDT)
MIME-Version: 1.0
References: <20260419192555.3631327-1-boolli@google.com>
 <PH7PR11MB59834C3C7785D1E69B7E954EF32F2@PH7PR11MB5983.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB59834C3C7785D1E69B7E954EF32F2@PH7PR11MB5983.namprd11.prod.outlook.com>
Date: Mon, 20 Apr 2026 10:03:08 -0700
X-Gm-Features: AQROBzCRU8m1PocV3KnbRH0zjFz61ZPVhxSInF_uNWzvauXiSpZzp7JJjroMqgY
Message-ID: <CAODvEq41VxdJ+nmM49eNo4d4VYBoDF69hzQUe8dUP9RoAuxxGA@mail.gmail.com>
To: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
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
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1776704603; x=1777309403; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=QuwHzur0DyTT6fAN7548X05vvqlUKr6sImf2XcXe9sE=;
 b=syGqNIjsocYV4gbry0udrgOsNlCLb7Mp4N4plqLCSWHW6FOfGFUiSKgTIKBLqi+MgX
 ONejYViIizabMBvpUiwBtAM3O+QHdGVSa+NwYdBKQtINmA7cXxIAqZ0Trp+BZ1OpNyhL
 jI/qKPE6g0n1wh57Nk4Xu1Ij5CycnT49ih7dweNRtaPm0SwgszjYjRMmcTNUEWUQYZCV
 32R5Fg0OA8yls8Jnlh0IhlZ53DcAWTHssez68ReT/9ZbQgGmiXF/h/jSKESolRDPQ9WT
 bb4gto/vWHoPtlmRNcYHVBCe5Pd5I3LCmn4L2cygnD4itaMR8s3mEknxRRsiO7HUYgK9
 uH1w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20251104 header.b=syGqNIjs
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:piotr.kwapulinski@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:emil.s.tantilov@intel.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,mail.gmail.com:mid,intel.com:email,davemloft.net:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[boolli@google.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 7D5A0430775
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Apr 20, 2026 at 1:23=E2=80=AFAM Kwapulinski, Piotr
<piotr.kwapulinski@intel.com> wrote:
>
> >-----Original Message-----
> >From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of =
Li Li via Intel-wired-lan
> >Sent: Sunday, April 19, 2026 9:26 PM
> >To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw =
<przemyslaw.kitszel@intel.com>; David S. Miller <davem@davemloft.net>; Jaku=
b Kicinski <kuba@kernel.org>; Eric Dumazet <edumazet@google.com>; intel-wir=
ed-lan@lists.osuosl.org
> >Cc: netdev@vger.kernel.org; linux-kernel@vger.kernel.org; David Decotign=
y <decot@google.com>; Singhai, Anjali <anjali.singhai@intel.com>; Samudrala=
, Sridhar <sridhar.samudrala@intel.com>; Brian Vazquez <brianvv@google.com>=
; Li Li <boolli@google.com>; Tantilov, Emil S <emil.s.tantilov@intel.com>
> >Subject: [Intel-wired-lan] [PATCH] idpf: do not perform flow ops when ne=
tdev is detached
> >
> >Even though commit 2e281e1155fc ("idpf: detach and close netdevs while h=
andling a reset") prevents ethtool -N/-n operations to operate on detached =
netdevs, we found that out-of-tree workflows like OpenOnload can bypass eth=
tool core locks and call idpf_set_rxnfc directly during an idpf HW reset. W=
hen this happens, we could get kernel crashes like the following:
> >
> >[ 4045.787439] BUG: kernel NULL pointer dereference, address: 0000000000=
000070 [ 4045.794420] #PF: supervisor read access in kernel mode [ 4045.799=
580] #PF: error_code(0x0000) - not-present page [ 4045.804739] PGD 0 [ 4045=
.806772] Oops: Oops: 0000 [#1] SMP NOPTI ...
> >[ 4045.836425] Workqueue: onload-wqueue oof_do_deferred_work_fn [onload]=
 [ 4045.842926] RIP: 0010:idpf_del_flow_steer+0x24/0x170 [idpf] ...
> >[ 4045.946323] Call Trace:
> >[ 4045.948796]  <TASK>
> >[ 4045.950915]  ? show_trace_log_lvl+0x1b0/0x2f0 [ 4045.955293]  ? show_=
trace_log_lvl+0x1b0/0x2f0 [ 4045.959672]  ? idpf_set_rxnfc+0x6f/0x80 [idpf]=
 [ 4045.964142]  ? __die_body.cold+0x8/0x12 [ 4045.968000]  ? page_fault_oo=
ps+0x148/0x160 [ 4045.972117]  ? exc_page_fault+0x6f/0x160 [ 4045.976060]  =
? asm_exc_page_fault+0x22/0x30 [ 4045.980262]  ? idpf_del_flow_steer+0x24/0=
x170 [idpf] [ 4045.985245]  idpf_set_rxnfc+0x6f/0x80 [idpf] [ 4045.989535] =
 af_xdp_filter_remove+0x7c/0xb0 [sfc_resource] [ 4045.995069]  oo_hw_filter=
_clear_hwports+0x6f/0xa0 [onload] [ 4046.000589]  oo_hw_filter_update+0x65/=
0x210 [onload] [ 4046.005587]  oof_hw_filter_update.constprop.0+0xe7/0x140 =
[onload] [ 4046.011716]  oof_manager_update_all_filters+0xad/0x270 [onload]=
 [ 4046.017671]  __oof_do_deferred_work+0x15e/0x190 [onload] [ 4046.023014]=
  oof_do_deferred_work+0x2c/0x40 [onload] [ 4046.028018]  oof_do_deferred_w=
ork_fn+0x12/0x30 [onload] [ 4046.033277]  process_one_work+0x174/0x330 [ 40=
46.037304]  worker_thread+0x246/0x390 [ 4046.041074]  ? __pfx_worker_thread=
+0x10/0x10 [ 4046.045364]  kthread+0xf6/0x240 [ 4046.048530]  ? __pfx_kthre=
ad+0x10/0x10 [ 4046.052297]  ret_from_fork+0x2d/0x50 [ 4046.055896]  ? __pf=
x_kthread+0x10/0x10 [ 4046.059664]  ret_from_fork_asm+0x1a/0x30 [ 4046.0636=
13]  </TASK>
> >
> >To prevent this, we need to add checks in idpf_set_rxnfc and idpf_get_rx=
nfc to error out if the netdev is already detached.
> >
> >Tested: implemented the following patch to synthetically force idpf into=
 a HW reset:
> >
> >diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/e=
thernet/intel/idpf/idpf_txrx.c
> >index 4fc0bb14c5b1..27476d57bcf0 100644
> >--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> >+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> >@@ -10,6 +10,9 @@
> > #define idpf_tx_buf_next(buf)         (*(u32 *)&(buf)->priv)
> > LIBETH_SQE_CHECK_PRIV(u32);
> >
> >+static bool SIMULATE_TX_TIMEOUT;
> >+module_param(SIMULATE_TX_TIMEOUT, bool, 0644);
> >+
> > /**
> >  * idpf_chk_linearize - Check if skb exceeds max descriptors per packet
> >  * @skb: send buffer
> >@@ -46,6 +49,8 @@ void idpf_tx_timeout(struct net_device *netdev, unsign=
ed int txqueue)
> >
> >       adapter->tx_timeout_count++;
> >
> >+      SIMULATE_TX_TIMEOUT =3D false;
> >+
> >       netdev_err(netdev, "Detected Tx timeout: Count %d, Queue %d\n",
> >                  adapter->tx_timeout_count, txqueue);
> >       if (!idpf_is_reset_in_prog(adapter)) { @@ -2225,6 +2230,8 @@ stat=
ic bool idpf_tx_clean_complq(struct idpf_compl_queue *complq, int budget,
> >                       goto fetch_next_desc;
> >               }
> >               tx_q =3D complq->txq_grp->txqs[rel_tx_qid];
> >+              if (unlikely(SIMULATE_TX_TIMEOUT && (tx_q->idx % 2 =3D=3D=
 1)))
> >+                      goto fetch_next_desc;
> >
> >               /* Determine completion type */
> >               ctype =3D le16_get_bits(tx_desc->common.qid_comptype_gen,
> >diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/n=
et/ethernet/intel/idpf/idpf_virtchnl.c
> >index be66f9b2e101..ba5da2a86c15 100644
> >--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> >+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> >@@ -8,6 +8,9 @@
> > #include "idpf_virtchnl.h"
> > #include "idpf_ptp.h"
> >
> >+static bool VIRTCHNL_FAILED;
> >+module_param(VIRTCHNL_FAILED, bool, 0644);
> >+
> > /**
> >  * struct idpf_vc_xn_manager - Manager for tracking transactions
> >  * @ring: backing and lookup for transactions @@ -3496,6 +3499,11 @@ in=
t idpf_vc_core_init(struct idpf_adapter *adapter)
> >               switch (adapter->state) {
> >               case __IDPF_VER_CHECK:
> >                       err =3D idpf_send_ver_msg(adapter);
> >+
> >+                      if (unlikely(VIRTCHNL_FAILED)) {
> >+                              err =3D -EIO;
> >+                      }
> Please remove redundant parenthesis
> Piotr

Hi Piotr,

The block you are commenting on is not part of the patch; it's just a
block of test code in the commit message I used to reproduce the
failures.

Thanks!

>
> >+
> >                       switch (err) {
> >                       case 0:
> >                               /* success, move state machine forward */
> >
> >And tested by writing 1 to /sys/module/idpf/parameters/VIRTCHNL_FAILED
> >and /sys/module/idpf/parameters/SIMULATE_TX_TIMEOUT, and running
> >idpf_get_rxnfc() right after the HW reset.
> >
> >Without the patch: encountered NULL pointer and kernel crash.
> >
> >With the patch: no crashes.
> >
> >Fixes: 2e281e1155fc ("idpf: detach and close netdevs while handling a re=
set")
> >Signed-off-by: Li Li <boolli@google.com>
> >---
> > drivers/net/ethernet/intel/idpf/idpf_ethtool.c | 6 ++++++
> > 1 file changed, 6 insertions(+)
> >
> >diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/ne=
t/ethernet/intel/idpf/idpf_ethtool.c
> >index bb99d9e7c65d..8368a7e6a754 100644
> >--- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
> >+++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
> >@@ -43,6 +43,9 @@ static int idpf_get_rxnfc(struct net_device *netdev, s=
truct ethtool_rxnfc *cmd,
> >       unsigned int cnt =3D 0;
> >       int err =3D 0;
> >
> >+      if (!netdev || !netif_device_present(netdev))
> >+              return -ENODEV;
> >+
> >       idpf_vport_ctrl_lock(netdev);
> >       vport =3D idpf_netdev_to_vport(netdev);
> >       vport_config =3D np->adapter->vport_config[np->vport_idx];
> >@@ -349,6 +352,9 @@ static int idpf_set_rxnfc(struct net_device *netdev,=
 struct ethtool_rxnfc *cmd)  {
> >       int ret =3D -EOPNOTSUPP;
> >
> >+      if (!netdev || !netif_device_present(netdev))
> >+              return -ENODEV;
> >+
> >       idpf_vport_ctrl_lock(netdev);
> >       switch (cmd->cmd) {
> >       case ETHTOOL_SRXCLSRLINS:
> >--
> >2.54.0.rc1.513.gad8abe7a5a-goog
