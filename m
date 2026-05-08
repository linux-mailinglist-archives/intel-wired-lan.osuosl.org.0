Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KHv8GZls/mkgqgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 09 May 2026 01:07:05 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B4EA4FC99C
	for <lists+intel-wired-lan@lfdr.de>; Sat, 09 May 2026 01:07:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 67EF761C5E;
	Fri,  8 May 2026 23:07:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2r_Mu4RjjPKH; Fri,  8 May 2026 23:07:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C94EE61C61
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778281620;
	bh=IjzEfq7F3/kgZN4tLvVENq0DffBa4fv6U1JwqNXOSRk=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=MLlgPgYq/2sMYP4Ft2TV8ZMgsCyjNIJ8//ihjuct74m2xnAqghwDoX93fz1qKmewE
	 hA3lE+YDzAaxVLK74UybQS5wQ3NkkKpTbOeigwTJVWn2bP0bi3c8K4m91bKForFrwy
	 hK96apu4kPwzFSfj/YIaC+f2iBuYbVep6MyzqUvQdc9h/jkTGZufWG/dgUDc1u0l+Z
	 hOjz/jFaoX+kLwX90gnLMmC3RXzX0nYILNqO2Q1j+sjl8wDkA6mvdNE/a8gsT9/6j9
	 KlzpQqYjmo57cld2FMX/iTTHoqyXUlaKhjGbNqZTbBdXJQJ0J1HZ8QRezUTuXrJIAy
	 kRIePlJkgAYTA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C94EE61C61;
	Fri,  8 May 2026 23:07:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id BA063272
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 23:06:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9F79E42232
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 23:06:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IU0WobcTfCxX for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 23:06:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::234; helo=mail-lj1-x234.google.com;
 envelope-from=boolli@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 98B0D4222E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 98B0D4222E
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com
 [IPv6:2a00:1450:4864:20::234])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 98B0D4222E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 23:06:56 +0000 (UTC)
Received: by mail-lj1-x234.google.com with SMTP id
 38308e7fff4ca-38e800deae4so17959061fa.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 08 May 2026 16:06:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778281615; cv=none;
 d=google.com; s=arc-20240605;
 b=CaK0STId2Z69Xn7APEjnFoOJk+ks6s8ZCcGWjtWK71bKrJ1pfeJegnVutknSYFHqm4
 Fs8Rr1IQKz4rrqZRYNX28Gf3ucLSRMqGdC+7ZGNYY5RxUnPDrCFCuOorH0FX6IVtm4ob
 qrcLJY46e+g20TtZ02/Od1t6aCbb2/xipHBJGoNk4QDT+L/axrzo0wIgrddjPkK3OERL
 VCuIbjquha8tYqmicdFLdPoaxXKLFvM1PafQqNUN8kOXkUFVDPpTok0nq5NiFHvRGsKm
 VaF6e/NIXaDybfmopKzqlU0cMl0DbsKP/ZKkat8muXSE0sK66DsHmlQm7gsMthG3TE5w
 umCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=IjzEfq7F3/kgZN4tLvVENq0DffBa4fv6U1JwqNXOSRk=;
 fh=JXEGS8S3PDN6Eu0pERKZLmXFhcTbbPOHh48dlakPzHA=;
 b=kDNztl5e230wuPmbQ5pnEjR1R/4c/0zjaKiXFVnYn9krG/E4Wqf0w+K/i5Dhw9wgPt
 Oxdg/zMoy5+SA4hKXRYURSCqivxegMec9S7WAwX0alGW+Dv5AJtjjKL7twjtllFpjMWD
 Nr4GV6gnh6rZaDUE3sYNIw2Z0mgFmEPvqXCkQ/OwAgIkU9nDx9nQ/apLAFx5xy1FMVx3
 sksTl9TP1Ttf13k+7xrgYeB9P8D3jrQHz6/KBVHpZbf1mp70ACM3pUIddC9xTf/g8twI
 MGOmfLLRH45s73yqPCOWgR73VG54r7gmVHg2ddJD59tJqwL8KIa70BVwxLCdSEYyu07E
 PPnw==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1778281615; x=1778886415;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=IjzEfq7F3/kgZN4tLvVENq0DffBa4fv6U1JwqNXOSRk=;
 b=QsUzbet7og5GpZSICYul6+40EqhWYfbt1Qgo5n0NPLyTkGHP4GC+Gfb/CpgAo3ABfK
 HTM6OdrlaRxM43wECuMSl5f2HP6aJ3qt3r0EXJ2bhFq8YJOG3zIXb4KcfwYjk5RgotBH
 cCQvx2QixOlD1olgU9nQvdixWkltlk6OjXorlNnFGcysfc0g0FHTRHVN9avbyjx5OBh8
 rXM8h3+H4pBLTt93uQhNu7EUawk9v4hLdLPBluI7d3c0Je1dO4wY7DMKn0UevauJVhg1
 +3Xk8jonAHkHK7nr4OknZiwsymmGEeMYRPZNgZDHJSV2GXXnoYzVPtW+jgDFuW5/wN+A
 j92w==
X-Forwarded-Encrypted: i=1;
 AFNElJ9yzYwpKZfYqgq2hqrAulbcNYXHBK7Rog2T5F6TJdZ+bFlOkpjmOslhTi8lrtfWBY8GIBrm4qEZfRgfTNf09CQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwkkfLNJf9JV4QBwta023Jwsr/onrIqhlSBmYeEkVUorZUBNtRl
 E++SkKbh0Zs1ic9v0/9JPlsTX92s4OnZPwvTYpGiTiCkoY3Msv2c4+D/xegNVFLrJAsw+hrOTrY
 vQeuqDcTxxYOwKoiXaacT1W4YZCn67Rz1wVyc0PHh
X-Gm-Gg: Acq92OF+Asrb3UBsw8y++awxTryQpYbRZ5vRMK36MTRw7FgFzMOCKfnGvStsXmbqBEg
 N1o0bGr1yaIUJnrIVQCcd1qTcZXA9/F7Oy8HRrX+jWPleAhlLLa3Q6GMW+efU5d/rOLoaPdzWKZ
 JYpvWAX5V5JdzvCUFB9ntZ5f0+yGqzoWpSTdvVc9dQ2RZlVdRG42+Qyb9lVUpJ3ixuJsvG6XvcP
 dHVRs7BIDXW5xSugrVobacDhKlPUPdBUCiUzOVwEINm+Yxy8mS8zA0i99gZPqUTDSMx3oWFeDR+
 vIJ2nxHCu89k1b/YJbo=
X-Received: by 2002:a2e:bcce:0:b0:38b:e6c7:2c4d with SMTP id
 38308e7fff4ca-39408060bf5mr568971fa.12.1778281614184; Fri, 08 May 2026
 16:06:54 -0700 (PDT)
MIME-Version: 1.0
References: <20260501012507.461044-1-boolli@google.com>
In-Reply-To: <20260501012507.461044-1-boolli@google.com>
Date: Fri, 8 May 2026 16:06:38 -0700
X-Gm-Features: AVHnY4KMv_JBo-afcJqBXs1Ubgk2KEOb3vvBl4wjuX7sgqTgfuyIJr7897EYiKI
Message-ID: <CAODvEq7D75chNgD3h5w0rfa1ZFgca9VEd54sp4Ww999gCed=Aw@mail.gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 David Decotigny <decot@google.com>, Anjali Singhai <anjali.singhai@intel.com>, 
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Brian Vazquez <brianvv@google.com>, emil.s.tantilov@intel.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1778281615; x=1778886415; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=IjzEfq7F3/kgZN4tLvVENq0DffBa4fv6U1JwqNXOSRk=;
 b=i7/Jp5xk/c8razfI6Rfhp61nbeJr6eBjj4BnpHOp0pyVBjl9x1AbrLbrAso5t7FnxV
 PTGlqaH4ALUG/sTQNU0FztxSbUKMLdalEolnb+ZTzhdk+cFNfrZrWBdVVwHMlSwVCxa3
 es98eS+2yoFlc8Yvf52FyDKr2p6e8AwJuGnGSWVRLSa+8oXqKeVLxFNOESkkVvlEex+t
 H1MT2KpYhlpJqqghtbMy0axY/p2qiDeJFGg6q8USK/FI34zOzexQS5PDSqv/uoJpdp8B
 eZkHFHSh2ZEjY/2MS4/ZfMpU4h8pJcyC3sqzS8vOeDtajRQBMKuMxocP14ryv/ClvzFM
 wwAg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20251104 header.b=i7/Jp5xk
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4] libie: log more info when
 virtchnl fails
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
X-Rspamd-Queue-Id: 1B4EA4FC99C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:emil.s.tantilov@intel.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[boolli@google.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Action: no action

Friendly ping on this patch.

Please let me know if you have any questions regarding this patch, thank yo=
u!

Li

On Thu, Apr 30, 2026 at 6:25=E2=80=AFPM Li Li <boolli@google.com> wrote:
>
> Virtchnl failures can be hard to debug without logs. Logging the details
> of virtchnl transactions can be useful for debugging virtchnl-related
> issues.
>
> Tested: Built & booted on a test machine and synthetically produced a
> virtual failure to produce the following log:
>
> idpf 0000:01:00.0: Non-zero virtchnl ret val 6 (msg op: 1, data_len: 8);
> xn id: 0, cookie: 0
> idpf 0000:01:00.0: Transaction failed (op 1, xn state:
> 3, id: 0, cookie: 0, size: 8)
>
> Signed-off-by: Li Li <boolli@google.com>
> ---
> v4:
>  - Simplify logging to reduce redundant "ret val"s.
>  - Use %u for xn->state.
> v3:
>  - Use dev_err_ratelimited in both logs.
>  - Move log placement to after virtchnl field validation.
>  - Remove redundant op/cookie fields since they were validated.
> v2:
>  - Use dev_warn_ratelimited instead of dev_notice_ratelimited based on
>    reviewer feedback.
>  drivers/net/ethernet/intel/libie/controlq.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>
> diff --git a/drivers/net/ethernet/intel/libie/controlq.c b/drivers/net/et=
hernet/intel/libie/controlq.c
> index ebc05355e39d..e1bc19d6cdbf 100644
> --- a/drivers/net/ethernet/intel/libie/controlq.c
> +++ b/drivers/net/ethernet/intel/libie/controlq.c
> @@ -766,6 +766,14 @@ libie_ctlq_xn_process_recv(struct libie_ctlq_xn_recv=
_params *params,
>             msg_cookie !=3D xn->cookie)
>                 return false;
>
> +       if (ctlq_msg->chnl_retval) {
> +               dev_err_ratelimited(
> +                       params->ctlq->dev,
> +                       "Non-zero virtchnl ret val %u (msg op: %u, data_l=
en: %u); xn id: %u, cookie: %u\n",
> +                       ctlq_msg->chnl_retval, ctlq_msg->chnl_opcode,
> +                       ctlq_msg->data_len, xn->index, xn->cookie);
> +       }
> +
>         spin_lock(&xn->xn_lock);
>         if (xn->state !=3D LIBIE_CTLQ_XN_ASYNC &&
>             xn->state !=3D LIBIE_CTLQ_XN_WAITING) {
> @@ -1011,6 +1019,11 @@ int libie_ctlq_xn_send(struct libie_ctlq_xn_send_p=
arams *params)
>                 params->recv_mem =3D xn->recv_mem;
>                 break;
>         default:
> +               dev_err_ratelimited(
> +                       params->ctlq->dev,
> +                       "Transaction failed (op %u, xn state: %u, id: %u,=
 cookie: %u, size: %zu)\n",
> +                       params->chnl_opcode, xn->state, xn->index, xn->co=
okie,
> +                       xn->recv_mem.iov_len);
>                 ret =3D -EBADMSG;
>                 break;
>         }
> --
> 2.54.0.545.g6539524ca2-goog
>
