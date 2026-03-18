Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aEeKFtztuWnPPgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 01:12:12 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C9BD82B48FE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 01:12:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BF98E813FD;
	Wed, 18 Mar 2026 00:12:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lNVgzny9l2AV; Wed, 18 Mar 2026 00:12:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0544080C6C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773792729;
	bh=xQHa29a0F9hQB3K+TT1RUsgpE1a93bcbnQ1K/3gSFjQ=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=vnw7I7l67lkDP6E9UGZ8dnXrPGK32vpGCHo2URgQFHb8KdU+XhBfvZm9g07yn7G0Q
	 bcFzGyMhrCGhvkjXMmvlNjzvQ/XjuNL4Aa+j9Vr5V1/SP4PayB/35VxJG6Tz21vOko
	 fCGRCUc5OuvH3X84Jo2cM3zRtCstULBtmPiA865hiG0hLzo4H2gf6g0fWEt6C+QQoo
	 a1FXu4h12DftH9wA9DDC/kZMSZ/3h3nnkU+6ND2hWwdxKcQZ86I4gGMyN9JE9uVaCU
	 Mo2zZnxxW5ZZCjqAvh36j3IRKvrHR6QB4Dvb7sdgriEN4thI76JLcw5YVhZxDm3Oql
	 ZropqVyg8dYHA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0544080C6C;
	Wed, 18 Mar 2026 00:12:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 91EAFD3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 00:12:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8F10140235
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 00:12:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QgQDnzij7LbN for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2026 00:12:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b12c; helo=mail-yx1-xb12c.google.com;
 envelope-from=boolli@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C8B974002A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C8B974002A
Received: from mail-yx1-xb12c.google.com (mail-yx1-xb12c.google.com
 [IPv6:2607:f8b0:4864:20::b12c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C8B974002A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 00:12:06 +0000 (UTC)
Received: by mail-yx1-xb12c.google.com with SMTP id
 956f58d0204a3-64ad019bbd4so6603082d50.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Mar 2026 17:12:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773792725; cv=none;
 d=google.com; s=arc-20240605;
 b=aCPmnwANd7MEfB53mCyshyDZxIR4sv8JRTTHfZLVcwbeuhQ8d3NSEnn/TS+pvj9VYa
 64yKkI5ajodsEiyMODh9oY+wVKKN7PaPc8gA+kdtomtIsc29PFwol0eXM1rGpG5YJnsI
 IdX0NYrSwFfR4GvSlORTpi8IutwsnMvui/oKnZziTLOubZsKKsDFwAQ3+dV09zYJxPF0
 mqjtuWv6hfT6r06crL0Sx6cndEyh2ZnqXhMhHOXQgQAlfKfOUQCyC5iKYPn+GczIO/mW
 5HQiLrIc3VTH+wHO3u1Z5ugBQtcJIZ6sNohcrU63nXzimRBXd8sQSDpNXkfHuJOhTktw
 9cQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=xQHa29a0F9hQB3K+TT1RUsgpE1a93bcbnQ1K/3gSFjQ=;
 fh=FlEgfaKPftyqF+v3LZ29weqZV0PuS9EMvsXLuWxZXUE=;
 b=AiL5l5V7csvYa/2SQqZXuNWNap16ncfeFKIuI+p5Oa6O4WBSrWzgUcUVlrrMgkgq9e
 GKEvAnkx2w3s6L3NLrkjksHt0uj4z9o4Fx2XXSHzsX6hUBdx+PZxiPEt9q3FVWpVY0K4
 wR+YnItFC3Tt2frqha1vCt9Tcux6kZ1zJ0lzc2NHR1ZqwQ90W6cHUp0ZHnoLH082vSmv
 vUaq8W0CYT42w55vR4QYh06V4l9NkeU1FyWr1ltzJibOgL7kKS+Qh3p/a9/PEz7QpMTr
 +zFy0n1/9b3v8bs2us2JlP24GbiNjvH16xWWVPx6bJ1TnfF32CPb7xSl4HcOw8L4QWni
 nIwA==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773792725; x=1774397525;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=xQHa29a0F9hQB3K+TT1RUsgpE1a93bcbnQ1K/3gSFjQ=;
 b=MDBMT/0idfSRRH5HHce61lqNcyfQ4+RPWHP2e6rPIgelUovwhvZnhsdEbsswIYVrQH
 ZpYRCBSYJ+Gj2CpBngx/0Eyx80GQEuMW5KmSPdKSZjuiHRYxphmev1e+UhNMEkx525qy
 niHlkhdURF8QWI79dWHk/zf1wfZkzJZr+EvYE9BCaWXIrvnfQg8Yl5VvaLJSBNUNtJdI
 HTPXfWcrtUGiBUDfHm8qGDgFPwTPu+5QVa9enYmWx4HwSSq+R6e3Kd73x5vFVNQvs31v
 91m5E4Z3axgCHcOLKHchU+z2JNTE3Hkdn8CtZ6YaKvGcVFAw8bL/UOM5cijAXPfgGJax
 XVSw==
X-Gm-Message-State: AOJu0YzWA+n6g0NCqpyjbWRxk8eJduNPZKTs7a5713uQiGCb9aV0Ea5P
 jKCy8sqk7Ag8B+vIPw15udyo3aE4HItVNwE2oR0hj1XB1twN/qAC0o5Dro3Tz1iVYDYfNq+gby3
 c6M4bcaUBvtt2pSPEfbxtbpt5zVXNWOFdXVc4aCK3
X-Gm-Gg: ATEYQzzNoP0Ebl/gdv25EPT9rVCeu6sRsV3Ff3myLct00RsICJOsiaCf3UV8PmhnRHW
 mnjRfeSUxC02HhsPfRWwAF3vMcUnR791Ld7d9d3T0zpgdnh9Q0QS3gqNUS7H1/KQ5vWNe07e50P
 3dxEbS9bmxA78rb2qBSHnPme5Zgf/wcL84Ap9EzGoNzJCqSxBMTgljVj2NN+2mXihzJqcX7AGNe
 JBFyVximRcjnF45P1NEdtATrSH9a5TdrHUtCsrXi17Zdn9t6l84eRwyI9O1w7XuFUKa/0OoVbrZ
 vvTQs8B35/ypjYbpetWX3bZB73p2sfuyL20=
X-Received: by 2002:a53:edc1:0:b0:64c:a4ab:e4e8 with SMTP id
 956f58d0204a3-64e91327c01mr1498946d50.20.1773792724985; Tue, 17 Mar 2026
 17:12:04 -0700 (PDT)
MIME-Version: 1.0
References: <20260316232819.6872-1-emil.s.tantilov@intel.com>
 <20260316232819.6872-3-emil.s.tantilov@intel.com>
In-Reply-To: <20260316232819.6872-3-emil.s.tantilov@intel.com>
Date: Tue, 17 Mar 2026 17:11:52 -0700
X-Gm-Features: AaiRm51lAT37d5orb_kuGVpaQVhsFcoQau7SuZhTPMn1qsiJkxQa_jxj52FffUI
Message-ID: <CAODvEq7Ty-D6MPeS0r3077jXWMX0i9yp3UB7d+mnGTaQGegH-g@mail.gmail.com>
To: Emil Tantilov <emil.s.tantilov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 anthony.l.nguyen@intel.com, aleksandr.loktionov@intel.com, 
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net, 
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, 
 bigeasy@linutronix.de, clrkwllms@kernel.org, rostedt@goodmis.org, 
 linux-rt-devel@lists.linux.dev, sgzhang@google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1773792725; x=1774397525; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=xQHa29a0F9hQB3K+TT1RUsgpE1a93bcbnQ1K/3gSFjQ=;
 b=paK4N2xo6fBHbK+PAlSN0fsecAiCqBMXYc+T+vjbFJmmYLsyEcg7b9E1FKIaVSS09G
 QKSxe+HL7z2OnkADAgotK6PlqeDWOpSu8PDqyr75DeYNLEcF29FKKP65mdxxfs6CuIex
 FdHJBPEBXBwrhhfmMfFUkwzpHGa1sf8biXm16xMmkSMpQL5rssZhVTOdNhyib4/wiEFC
 a5CrW/Jau0YmmlHbpqVPgZE6cogNcH4MBX3fvEvRYHm8nSYToLnhReC0NIUclUJyEv66
 EJly3NvqonMoTDk9eF8O9Ia7o9jhdA6nSPjT0XVWvja7tHfadVAdjII0Y8iiqRSS6I0b
 XgMQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20251104 header.b=paK4N2xo
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/3] idpf: set the payload
 size before calling the async handler
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
X-Spamd-Result: default: False [1.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:emil.s.tantilov@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:aleksandr.loktionov@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:bigeasy@linutronix.de,m:clrkwllms@kernel.org,m:rostedt@goodmis.org,m:linux-rt-devel@lists.linux.dev,m:sgzhang@google.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,mail.gmail.com:mid,intel.com:email,osuosl.org:dkim];
	DKIM_TRACE(0.00)[osuosl.org:+];
	HAS_REPLYTO(0.00)[boolli@google.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: C9BD82B48FE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 16, 2026 at 4:28=E2=80=AFPM Emil Tantilov <emil.s.tantilov@inte=
l.com> wrote:
>
> Set the payload size before forwarding the reply to the async handler.
> Without this, xn->reply_sz will be 0 and idpf_mac_filter_async_handler()
> will never get past the size check.
>
> Fixes: 34c21fa894a1 ("idpf: implement virtchnl transaction manager")
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/ne=
t/ethernet/intel/idpf/idpf_virtchnl.c
> index 21a6c9d22085..6b9692b30040 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> @@ -627,6 +627,10 @@ idpf_vc_xn_forward_reply(struct idpf_adapter *adapte=
r,
>                 err =3D -ENXIO;
>                 goto out_unlock;
>         case IDPF_VC_XN_ASYNC:

Optional comment: could we only set the size if ctlq_msg->data_len >
0, in case the hw returns some invalid values?

> +               /* Set reply_sz from the actual payload so that async_han=
dler
> +                * can evaluate the response.
> +                */
> +               xn->reply_sz =3D ctlq_msg->data_len;
>                 err =3D idpf_vc_xn_forward_async(adapter, xn, ctlq_msg);
>                 idpf_vc_xn_unlock(xn);
>                 idpf_vc_xn_push_free(adapter->vcxn_mngr, xn);
> --
> 2.37.3
>

Reviewed-by: Li Li <boolli@google.com>
