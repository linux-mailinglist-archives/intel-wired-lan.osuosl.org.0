Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KNi/K9GZcGlyYgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jan 2026 10:18:09 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DE9675438B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jan 2026 10:18:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D1171415C8;
	Wed, 21 Jan 2026 09:18:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3avfgc8P3jPb; Wed, 21 Jan 2026 09:18:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 15C90415C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768987086;
	bh=PydhRFPA87ZN8oI4CEGXyPaEIWMyP81bX5pZ66LYOIw=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=GbxedW0WSK9XTcF5b6oPNMkKKEupr1FMJ7hmdVsh2xKBUvjp3Xs8QeWPH2NqfnEeg
	 PyZUeknlY0thMfKtkouZTeoaKfmLj2ErRnmUyNhIuXyutm6adr67MvIhhKNX2Zzwu6
	 3jMayVbjpM69uz+AFMuOPVVm0U0lKeHS+ZqdqqXVz4tORMWxkwy4QQ+Ax4agyDBLsP
	 VUGFhfqsB23s9m35UOyBk7FNlF2pmZV/KNQiMcWwukWqTHPkU0GBONXa4c+YEWrP6D
	 iLJ4sJu0V5dG2HPGil/bBR7Kv6uSWDynBsyuPO1utXoX8MIznciesfA+FF6yAXCfKA
	 X7MJiJAygzCqA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 15C90415C9;
	Wed, 21 Jan 2026 09:18:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 48DE7122
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 09:18:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 39E1160F30
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 09:18:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WT_K2EHUKby0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jan 2026 09:18:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.122;
 helo=smtp-relay-internal-0.canonical.com; envelope-from=aaron.ma@canonical.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E196460E69
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E196460E69
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E196460E69
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 09:18:02 +0000 (UTC)
Received: from mail-dl1-f72.google.com (mail-dl1-f72.google.com [74.125.82.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 5E6E23FC15
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 09:18:00 +0000 (UTC)
Received: by mail-dl1-f72.google.com with SMTP id
 a92af1059eb24-123840bf029so3215463c88.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 01:18:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768987079; cv=none;
 d=google.com; s=arc-20240605;
 b=j0Rbvzhupy0OrsO5JWqCDLKXC2YKfV8qasP0O+Oxc6LvYSSqnm9XxW/WL/JmOroEAW
 20C8o0G6gTUqpGsqJOYKIeoVxtVvSKPkUqMXW4JI2xjwHcJFUkeXDJI+3wODaGkmVno5
 PyAZz32BHe+ZuX4GSfdfVl+JOR/B8bpnG7asgVIn/PequzxNP9faX3QrRgTJ4LYoDUXh
 xv0R7qbKIdGiwS0AHPsaBAzbmz6IDGlB07lRPrveMzbXAwUzVAONJQWRUTGCelH5W/ai
 ItQ5F1l9eLItdhBv+e+laybKtpgeyIDDfQXOCQYOXEJcjm1p6Pnqs+6VmqU+AvFPKTTw
 gUMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version;
 bh=PydhRFPA87ZN8oI4CEGXyPaEIWMyP81bX5pZ66LYOIw=;
 fh=EWyFuFBlij6nounFT9L9rN6q2RUgsiJyjx51W2vCGgg=;
 b=CCYcoRVBgRrTrKjqy0WeAO+Jwnw+3rCbOpqQJZZFWKdFOzxbCjPF70teAHYKRKaDBC
 rGO97XVnIrBxP9PL+/nY32UesYac31d4ADSOErG++wdMieErJt0zUpkYH/hbEMBroO2u
 a1HvruV7p0YO01Kl7Am/Vejd0bJcY38z/duPcLmEcqIG2/APt3BPgQpuxCdIMwso9Qpn
 top7Y+XTNpmPqwTpjME/ECZncqpD8SVB/nCTf/0kBcEh1ANX2F0NsdxqESGU1jbeCtno
 t/axcf1oLWHxS3T/hL/3leOd9ZhRErozJAeYooVlkJUOKCHdxAfQ/ccuy9wJbQVnoMPN
 CTyA==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768987079; x=1769591879;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=PydhRFPA87ZN8oI4CEGXyPaEIWMyP81bX5pZ66LYOIw=;
 b=JbgNagRXO2PiXKuMlFJ70CyW0JfGAH1b2RSH94ROHsr6g5jb2TSjD00k/UH8v7bMG6
 67zigFPmI5Rxe9pIO80onp+SYLZKph6ZNEDKmVfQ3kvzt3OR0ivC5h4yaDiyvXI4/5R8
 bKu0wez2XvE/+RlzlhLTGLC3QsHICPHuAywI7YYImqnqJxDuFrrUiBz1mUmuWx+R8oDU
 mOME16tPvEa2x8J4U/ndL0cu/54XYRxxQxTQBKc4Bi4GZTl8zcKyVBd2gbE9HdU6j7Ge
 B9CL5kVyw95DFGaNIiEdFvwHDlkWqzGZERibsBGoWywvYdILDyDuQpOfayj3nQdDfcKH
 dFTg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUEuAF4muQnd9ipgt4bohKdKDvVzDSr8nlo/hnostB8NsBtB9iNA3zIU9r49UQ8x4zN5xdWNIkcpk4bpqWD2uw=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwCYpWu/AbloyQG81ughu5aH6a6IJ1j0PRFVO8eLJY58K0wteSM
 a64e9gE82NN1fVFw6yjK+baOxRYpg1XrgkcKPX4PujVhpwjTfbh7ArXrAj+G9PxhDd5zRq9yQOX
 pN12lUWHWcdxHetKuCBwYqShBmbUhOoc7oc72uOEp3KxqY6zTmcIKZbOIm9zF7WYha2OnOGZPmW
 tbi6UWRtl86nf0TJY7L5FJDb4KrodRSwWJUAvKBKmQyxmxWszwmVrmo5oFI4hIug==
X-Gm-Gg: AZuq6aJcxgJqfWvbj52fdz9Wjew3e89oQxGOhs0NyQBA16MtYvXhtuh6ZwnFb3i4SY5
 /N/shEnofSmDq0HxgKktLa5fuk+p2lb39BJoiPAjrS+e2gHWkslF6sHriQS9mbCv2Xx24YH3GRs
 ca48KBRhLI69HhhE0Kc/NRBpLGIhs5D7kZCyRuQWLx5jiSuu+/eFohd65cQdku1g+EFQ==
X-Received: by 2002:a05:7022:e03:b0:119:e569:fb91 with SMTP id
 a92af1059eb24-1244a6592d5mr15161374c88.0.1768987078733; 
 Wed, 21 Jan 2026 01:17:58 -0800 (PST)
X-Received: by 2002:a05:7022:e03:b0:119:e569:fb91 with SMTP id
 a92af1059eb24-1244a6592d5mr15161362c88.0.1768987077983; Wed, 21 Jan 2026
 01:17:57 -0800 (PST)
MIME-Version: 1.0
References: <20260121075106.401770-1-aaron.ma@canonical.com>
 <IA3PR11MB898667FBC0C4394FF41B003DE596A@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB898667FBC0C4394FF41B003DE596A@IA3PR11MB8986.namprd11.prod.outlook.com>
Date: Wed, 21 Jan 2026 17:17:45 +0800
X-Gm-Features: AZwV_QjtgO59u7CXRMqjpSdGIrULmhwWmJsg7sllbumDMtrUmhuuew1AYPZyBN4
Message-ID: <CAJ6xRxVxLbHFZu3CqT37MF4br9Sj3HJ5nwb=qo3kNspymp38WA@mail.gmail.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, 
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "davem@davemloft.net" <davem@davemloft.net>, 
 "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, 
 "pabeni@redhat.com" <pabeni@redhat.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, 
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20251003; t=1768987080;
 bh=PydhRFPA87ZN8oI4CEGXyPaEIWMyP81bX5pZ66LYOIw=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=HLNojPJqqKaKEwE1AZ31IIpUadPM5nygcJFZgfIE2e0s1X4Hevzgp8CbBfEtOlkHc
 VbOVLPvMWE5z285mn8zTNPSPiL0IsKDCjQu2ZVpSPO/k9dU++QjXVIeCGel5CXrbk1
 Hl5Osmok13ymxszZIGKfiD/hLSxsxi7PiEbsQNC4FmigirhDvwrqapdmCV8vCFicVH
 ZJkbP53oxJvMxaHDX3C9qwV867LowewxpO2z9T2bR4R/L3EbnaIS4Zs12R0dxETveA
 FRX3aH+Js/3oYveWb2ilI3Te9y5t4THe6gdY9+2yl3N+X5LqNj4/gnwLeEjCeOfkBO
 G/xQlhFvU/Z59y8BGUJ5z6kFsQrzT7MoK4zyJak6y3eGRJ9RX4XUNfJJuQ22ZaK7Ic
 z5Jit2b9Rf6lZWkphr8Jy4FQEjEoAEtY83Oc/quehLbiciFaqAIiK0krwPoEA3pHjF
 2pI6BAB793FEgQTEusKSmhgg5mbTHt0rz0X/isX/uymKn0dsmdq+B96mb6unApNQfM
 j0F6cCmrDfk93spyjDxu32+gIz3m09kQjloUGMgCekxLezWhnZ/WF8cwFheLj9zKal
 3QVG8nFoOsbNtWQwrTFPoRJJuxX8Un93Py8oc63v4nSKIPWvL9e1xjkTRTAsoRLM03
 Iq4PegBoPehLprBDsC9J3p/g=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (4096-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20251003 header.b=HLNojPJq
Subject: Re: [Intel-wired-lan] [PATCH] ice: Fix PTP NULL pointer dereference
 during VSI rebuild
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
X-Spamd-Result: default: False [1.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	HAS_REPLYTO(0.00)[aaron.ma@canonical.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: DE9675438B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Jan 21, 2026 at 4:21=E2=80=AFPM Loktionov, Aleksandr
<aleksandr.loktionov@intel.com> wrote:
>
>
>
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Aaron Ma via Intel-wired-lan
> > Sent: Wednesday, January 21, 2026 8:51 AM
> > To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> > Przemyslaw <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> > davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> > pabeni@redhat.com; intel-wired-lan@lists.osuosl.org;
> > netdev@vger.kernel.org; linux-kernel@vger.kernel.org
> > Subject: [Intel-wired-lan] [PATCH] ice: Fix PTP NULL pointer
> > dereference during VSI rebuild
> >
> > Fix race condition where PTP periodic work runs while VSI is being
> > rebuilt, accessing NULL vsi->rx_rings.
> >
> > The sequence was:
> > 1. ice_ptp_prepare_for_reset() cancels PTP work 2. ice_ptp_rebuild()
> > immediately queues PTP work 3. VSI rebuild happens AFTER
> > ice_ptp_rebuild() 4. PTP work runs and accesses NULL vsi->rx_rings
> >
> > Fix: Keep PTP work cancelled during rebuild, only queue it after VSI
> > rebuild completes in ice_rebuild().
> >
> > Added ice_ptp_queue_work() helper function to encapsulate the logic
> > for queuing PTP work, ensuring it's only queued when PTP is supported
> > and the state is ICE_PTP_READY.
> >
> > Error log:
> > [  121.392544] ice 0000:60:00.1: PTP reset successful [  121.392692]
> > BUG: kernel NULL pointer dereference, address: 0000000000000000 [
> > 121.392712] #PF: supervisor read access in kernel mode [  121.392720]
> > #PF: error_code(0x0000) - not-present page [  121.392727] PGD 0 [
> > 121.392734] Oops: Oops: 0000 [#1] SMP NOPTI
> > [  121.392746] CPU: 8 UID: 0 PID: 1005 Comm: ice-ptp-0000:60 Tainted:
> > G S                  6.19.0-rc6+ #4 PREEMPT(voluntary)
> > [  121.392761] Tainted: [S]=3DCPU_OUT_OF_SPEC [  121.392773] RIP:
> > 0010:ice_ptp_update_cached_phctime+0xbf/0x150 [ice] [  121.393042]
> > Call Trace:
> > [  121.393047]  <TASK>
> > [  121.393055]  ice_ptp_periodic_work+0x69/0x180 [ice] [  121.393202]
> > kthread_worker_fn+0xa2/0x260 [  121.393216]  ?
> > __pfx_ice_ptp_periodic_work+0x10/0x10 [ice] [  121.393359]  ?
> > __pfx_kthread_worker_fn+0x10/0x10 [  121.393371]  kthread+0x10d/0x230
> > [  121.393382]  ? __pfx_kthread+0x10/0x10 [  121.393393]
> > ret_from_fork+0x273/0x2b0 [  121.393407]  ? __pfx_kthread+0x10/0x10 [
> > 121.393417]  ret_from_fork_asm+0x1a/0x30 [  121.393432]  </TASK>
> >
> > Fixes: 803bef817807d ("ice: factor out ice_ptp_rebuild_owner()")
> > Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_main.c |  3 +++
> > drivers/net/ethernet/intel/ice/ice_ptp.c  | 26 ++++++++++++++++++-----
> > drivers/net/ethernet/intel/ice/ice_ptp.h  |  5 +++++
> >  3 files changed, 29 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> > b/drivers/net/ethernet/intel/ice/ice_main.c
> > index 1851e9932cefe..2f5961573842d 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_main.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> > @@ -7814,6 +7814,9 @@ static void ice_rebuild(struct ice_pf *pf, enum
> > ice_reset_req reset_type)
> >
> >       /* Restore timestamp mode settings after VSI rebuild */
> >       ice_ptp_restore_timestamp_mode(pf);
> > +
> > +     /* Start PTP periodic work after VSI is fully rebuilt */
> > +     ice_ptp_queue_work(pf);
> >       return;
> >
> >  err_vsi_rebuild:
> > diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c
> > b/drivers/net/ethernet/intel/ice/ice_ptp.c
> > index 4c8d20f2d2c0a..8e5d93acaf108 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> > @@ -2817,6 +2817,20 @@ static void ice_ptp_periodic_work(struct
> > kthread_work *work)
> >                                  msecs_to_jiffies(err ? 10 : 500));  }
> >
> > +/**
> > + * ice_ptp_queue_work - Queue PTP periodic work for a PF
> > + * @pf: Board private structure
> > + *
> > + * Helper function to queue PTP periodic work after VSI rebuild
> > completes.
> > + * This ensures that PTP work only runs when VSI structures are
> > ready.
> > + */
> > +void ice_ptp_queue_work(struct ice_pf *pf) {
> > +     if (test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags) &&
> > +         pf->ptp.state =3D=3D ICE_PTP_READY)
> > +             kthread_queue_delayed_work(pf->ptp.kworker, &pf-
> > >ptp.work, 0); }
> > +
> >  /**
> >   * ice_ptp_prepare_rebuild_sec - Prepare second NAC for PTP reset or
> > rebuild
> >   * @pf: Board private structure
> > @@ -2835,10 +2849,15 @@ static void ice_ptp_prepare_rebuild_sec(struct
> > ice_pf *pf, bool rebuild,
> >               struct ice_pf *peer_pf =3D ptp_port_to_pf(port);
> >
> >               if (!ice_is_primary(&peer_pf->hw)) {
> > -                     if (rebuild)
> > +                     if (rebuild) {
> > +                             /* TODO: When implementing rebuild=3Dtrue=
:
> > +                              * 1. Ensure secondary PFs' VSIs are
> > rebuilt
> > +                              * 2. Call ice_ptp_queue_work(peer_pf)
> > after VSI rebuild
> > +                              */
> Shouldn't we resolve all TODOs before merging?
>

now the code only set rebuild =3D false.
This note is for future if anyone implement secondary PFs rebuilt,
So add todo here.

Thanks for review.
Aaron

>
> >                               ice_ptp_rebuild(peer_pf, reset_type);
> > -                     else
> > +                     } else {
> >                               ice_ptp_prepare_for_reset(peer_pf,
> > reset_type);
> > +                     }
> >               }
> >       }
> >  }
> > @@ -2984,9 +3003,6 @@ void ice_ptp_rebuild(struct ice_pf *pf, enum
> > ice_reset_req reset_type)
> >
> >       ptp->state =3D ICE_PTP_READY;
> >
> > -     /* Start periodic work going */
> > -     kthread_queue_delayed_work(ptp->kworker, &ptp->work, 0);
> > -
> >       dev_info(ice_pf_to_dev(pf), "PTP reset successful\n");
> >       return;
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h
> > b/drivers/net/ethernet/intel/ice/ice_ptp.h
> > index 27016aac4f1e8..428f7f79343a7 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_ptp.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
> > @@ -317,6 +317,7 @@ void ice_ptp_prepare_for_reset(struct ice_pf *pf,
> > void ice_ptp_init(struct ice_pf *pf);  void ice_ptp_release(struct
> > ice_pf *pf);  void ice_ptp_link_change(struct ice_pf *pf, bool
> > linkup);
> > +void ice_ptp_queue_work(struct ice_pf *pf);
> >  #else /* IS_ENABLED(CONFIG_PTP_1588_CLOCK) */
> >
> >  static inline int ice_ptp_hwtstamp_get(struct net_device *netdev, @@
> > -383,6 +384,10 @@ static inline void ice_ptp_link_change(struct ice_pf
> > *pf, bool linkup)  {  }
> >
> > +static inline void ice_ptp_queue_work(struct ice_pf *pf) { }
> > +
> >  static inline int ice_ptp_clock_index(struct ice_pf *pf)  {
> >       return -1;
> > --
> > 2.43.0
>
