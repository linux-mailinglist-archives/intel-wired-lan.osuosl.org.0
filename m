Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wLVJIkffwWnxXQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 01:48:07 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F8BD2FFFC2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 01:48:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 10C4F40BD9;
	Tue, 24 Mar 2026 00:48:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nlXZZ7KBrK_n; Tue, 24 Mar 2026 00:48:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6DDDC40C2A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774313282;
	bh=+LWuufKj3Ca7W+mTQBImS6ME170w4sIY4+hOSk2ETqw=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=z6oQie05Y/IbJAQRMl9Z/M0oBnEGeIvCBijmYdlbnUYKTCQ412jy8f3g4uqVEWNSi
	 lB8kj8Lihnr7bdItAZnAa1Jbg1DY1nEr7+837WQNnmvC4NOytQzwuGbgmDdGi3VKp7
	 lDL9vbvCH4zdSGuYcf83495K40dBcA/SYi6U6GUFjzknxhGFTxwv3pcr1sfVwQfSx1
	 qZZ+SrfmLaTEx+a1L0F8iFBFSSoDMOre3X6TaXrDxslAMH2d+DulkbxJOlylOMpHmE
	 MVVqspvFuOGsnfU1YdzLjdtIAKZ05PIndwFb396PwOVqjcT5+Bgq5LQxsKZCHF6wM2
	 qHHByGBaTvv1A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6DDDC40C2A;
	Tue, 24 Mar 2026 00:48:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 04E8A353
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 00:48:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EA02B40BD9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 00:48:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XMOJdXMqRbKI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Mar 2026 00:47:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1161; helo=mail-yw1-x1161.google.com;
 envelope-from=michael.chan@broadcom.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5421640BCE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5421640BCE
Received: from mail-yw1-x1161.google.com (mail-yw1-x1161.google.com
 [IPv6:2607:f8b0:4864:20::1161])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5421640BCE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 00:47:59 +0000 (UTC)
Received: by mail-yw1-x1161.google.com with SMTP id
 00721157ae682-79a40fb9890so32700337b3.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 17:47:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774313278; x=1774918078;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=+LWuufKj3Ca7W+mTQBImS6ME170w4sIY4+hOSk2ETqw=;
 b=RrC2s29esZAx+coDZBlUIwbM4kjHlkbOXDMFPwduPmxxeFEIl2RSUxaHWue6GBKp0w
 03koPUnnRemv0TSPUkl6ishbBTWgk4SEB42ejj6snJDer4q67IJsS4uXIsO5Pj6tO04C
 rrNeMAscHIjD/9+KDQQjVMPczRkWcdtqwM9zyTiNPhQNqVv0Lo8FYgLEe+3JC3mPMj/F
 bcLaZppglZWEDJfgXuuVXSpykjAr1GrwLdrIXoUEdowVlEI+vXOA6dzuecHRdKLpv1Km
 6yxYvvcbCCUm/PLEhVuy7Ikz9caIVcrnMhTob88GepqAyyrdXaUNUP5X+sp6aaKdwShA
 +dCQ==
X-Forwarded-Encrypted: i=2;
 AJvYcCWsq/TD9IunlQaFcd5dtdz1imQMJNsS99O4RE1YpEqcgLwh2qJ54npljYDXnkZHr7j39FbdN1vLbOXuXJA7NGs=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzZsHzn757bmmGpzNcsI+RaO4+MVGhOBTOs/X90tZstKa0/ehkO
 Xp7UGb4sBGouuh7ahMNQng3d6Y4cjGY0m1NLdTDQtvi+s0IEpA5F4ojKeiszOMT1B7dMyEkuEnh
 xETBm5tI9N+TTxkGpDUH3bS1SAOTqid8zfMh3ynEIDKvm75wgjx+b8npnP6GcUUlUsR567ccpXZ
 yg9EOLLwT58S4m2G4+zEkGxd087k72ldA2fL+BPUG0ZOUEBBMe/dhUgiFND08ZEMpswRmOETism
 KublmKr5LBYZ1pxk4H9dzVD
X-Gm-Gg: ATEYQzyNRsqsqc07w/Vw1ZbI7279MQJ8Itz+ZDvH+CV/NR4Aoe9TgFsks7eGyDgJ/op
 AayW64YpbedYpZN69AScG7MzkvEfc7HN2ImMnNuBWgGB4bO8DO6S/cA5GYg70KxpeT4cDkeOK75
 qIAKhK69cO6Neh7n1lvR5n8TY06k6RXrzpE+1Rrf42cwzt39YMYsr317DxAU3OvHTzS0o/6ZN7M
 9VXlWbS+8VnorWhwD368mpU77271i7ZalZ5bFdxiYpKIW7YLIgJXZyRnPKzS1WUwdKEGw0OriPP
 rviycpzz6hKBFDJI2mnt9Igjq6FRq7Kh/8RI2vInu0js0o5FtDNnQCGfFNBFRfC6DanZ4yf4okr
 o6BmfSfLuwHS+Q8OXFaWsE/pSy9rIjI5nQm03RMNxSoBVcIxAjLPWDX6yEeSmV6Qsj8OgeUi9J4
 8QHuXQdUHm36/ePl9C4iqWrU+t2qa17Ta+e1JgcOU1Y7h+IL0mG+F2JMlu/yg=
X-Received: by 2002:a05:690c:38b:b0:79a:36ea:2c2a with SMTP id
 00721157ae682-79a90c4fe3bmr143452187b3.59.1774313277504; 
 Mon, 23 Mar 2026 17:47:57 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com
 (address-144-49-247-117.dlp.protect.broadcom.com. [144.49.247.117])
 by smtp-relay.gmail.com with ESMTPS id
 00721157ae682-79a903e4375sm10439057b3.10.2026.03.23.17.47.57
 for <intel-wired-lan@lists.osuosl.org>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 23 Mar 2026 17:47:57 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-ed1-f69.google.com with SMTP id
 4fb4d7f45d1cf-662f12c2747so2997932a12.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 17:47:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774313276; cv=none;
 d=google.com; s=arc-20240605;
 b=etbsuLc/B8zXieACB50YEffPF9H7wMUkA+XtXEO2J2bHgD+HkyCh2RYGvp8fD9JsHW
 u9POrDtx+UpeUWP3AYEVisFCVt+cN3uTd+SapOx4wrz6lvpqEIaJGTCxif7lHPj1XTnX
 hfsv+53rjAczUQqtyOVtIO6vsoAE6LhXx2Rk/1FdUUaJoaPGmS4Txc2IzpajvgjDGkWk
 gVvpXVcwuY3yIymZwizMC8iNvvZTMcRt5SZLAfNPvGPhXnpQbfnUn3KNFXZWuNgRQ6eD
 2WKz9ttYya95nyNJDrE5u7jZUCQt6wulnNhl+vGO5sePS7NuRecRNUHjYUlCKODZqARv
 PRRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=+LWuufKj3Ca7W+mTQBImS6ME170w4sIY4+hOSk2ETqw=;
 fh=NYtat/eFtt3OiDZraFLH4PEIf2CM2m74lTNFx5ukBA8=;
 b=Q18rwMF2B7+1mNsGuLXZu47RR/aGz/5vKJVpd8pVoyYsR4M42wGRSdhnCmU+xOc90v
 coVVUfrPdxUbQx70n/ETAaAgS3FLe2Sz2W6P7q0FQIMVjEoFTK9nJMHL5OBXw9Sl0Fd5
 1iRxxb2HhBQwcOXvE/9vD7x7c9zzQOM4fm67ulYrvmoN8IXSjEJIovaYPHQdHMQEE46K
 UZuXFYvQAg81126XLsK8K3OHCHMvnzR+f3P1YHmMhhAMO0GcfNIbl4e8VB0dHI73mwv6
 okGekIastq1EKU3EwHjpPbfWVmKiRihcS3Y1QLDg4/7mA+zC9qPdbNMh3A/i++jDyoqu
 Da2w==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Forwarded-Encrypted: i=1;
 AJvYcCUai9VusBmBWS2uCHn8BtewT4r2umjq+LxHNqMnbTxrMTW1es5u/q7bxVznHhKYgSUjhCzrKZyrPqItn9CTrf4=@lists.osuosl.org
X-Received: by 2002:a05:6402:4542:b0:667:ddf7:7d9d with SMTP id
 4fb4d7f45d1cf-668c971954bmr7635465a12.10.1774313275863; 
 Mon, 23 Mar 2026 17:47:55 -0700 (PDT)
X-Received: by 2002:a05:6402:4542:b0:667:ddf7:7d9d with SMTP id
 4fb4d7f45d1cf-668c971954bmr7635430a12.10.1774313275425; Mon, 23 Mar 2026
 17:47:55 -0700 (PDT)
MIME-Version: 1.0
References: <20260320012501.2033548-1-sdf@fomichev.me>
 <20260320012501.2033548-8-sdf@fomichev.me>
In-Reply-To: <20260320012501.2033548-8-sdf@fomichev.me>
Date: Mon, 23 Mar 2026 17:47:43 -0700
X-Gm-Features: AQROBzA-_AUUB6-xri1Ls7aYRImwmpFhYIiqzLVvcCXA93ChCnVc1sxi6-ZS8to
Message-ID: <CACKFLimO_K4qRb2Tnio-0xa6U1xmTEbz0Q-rzC7RqygQOBLnpQ@mail.gmail.com>
To: Stanislav Fomichev <sdf@fomichev.me>
Cc: netdev@vger.kernel.org, davem@davemloft.net, edumazet@google.com, 
 kuba@kernel.org, pabeni@redhat.com, horms@kernel.org, corbet@lwn.net, 
 skhan@linuxfoundation.org, andrew+netdev@lunn.ch, pavan.chebbi@broadcom.com, 
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, saeedm@nvidia.com, 
 tariqt@nvidia.com, mbloch@nvidia.com, alexanderduyck@fb.com, 
 kernel-team@meta.com, johannes@sipsolutions.net, sd@queasysnail.net, 
 jianbol@nvidia.com, dtatulea@nvidia.com, mohsin.bashr@gmail.com, 
 jacob.e.keller@intel.com, willemb@google.com, skhawaja@google.com, 
 bestswngs@gmail.com, aleksandr.loktionov@intel.com, kees@kernel.org, 
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org, 
 linux-wireless@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 leon@kernel.org
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
 micalg=sha-256; boundary="0000000000008cb17c064dba801f"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=broadcom.com; s=google; t=1774313276; x=1774918076; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=+LWuufKj3Ca7W+mTQBImS6ME170w4sIY4+hOSk2ETqw=;
 b=TVMm3bz4ZzAmTvuKalPaG3HNXirFZI7DbaJIbhn7ERnonxJ0irMLxQWE7OHW4yYftZ
 gOJlaXx6LE5TF8CAweEHik1jyD1Bu2WGPr3Qzw6dAmeoir4BXwgq/fmLC2EncbO+Io2K
 tKkBFIlW/q+rVExNJB1PsV0viaHc5ekyYVDKs=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=broadcom.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256
 header.s=google header.b=TVMm3bz4
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 07/13] bnxt: convert to
 ndo_set_rx_mode_async
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
From: Michael Chan via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Michael Chan <michael.chan@broadcom.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [-0.81 / 15.00];
	SIGNED_SMIME(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sdf@fomichev.me,m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:andrew+netdev@lunn.ch,m:pavan.chebbi@broadcom.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:saeedm@nvidia.com,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:alexanderduyck@fb.com,m:kernel-team@meta.com,m:johannes@sipsolutions.net,m:sd@queasysnail.net,m:jianbol@nvidia.com,m:dtatulea@nvidia.com,m:mohsin.bashr@gmail.com,m:jacob.e.keller@intel.com,m:willemb@google.com,m:skhawaja@google.com,m:bestswngs@gmail.com,m:aleksandr.loktionov@intel.com,m:kees@kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-rdma@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:leon@kernel.org,m:andrew@lunn.ch,m:mohsinbashr@gmail.com,s:lists@lfdr.de];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[36];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,mail.gmail.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	HAS_REPLYTO(0.00)[michael.chan@broadcom.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,linuxfoundation.org,lunn.ch,broadcom.com,intel.com,nvidia.com,fb.com,meta.com,sipsolutions.net,queasysnail.net,gmail.com,lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	HAS_ATTACHMENT(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 1F8BD2FFFC2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--0000000000008cb17c064dba801f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 19, 2026 at 6:25=E2=80=AFPM Stanislav Fomichev <sdf@fomichev.me=
> wrote:
>
> Convert bnxt from ndo_set_rx_mode to ndo_set_rx_mode_async.
> bnxt_set_rx_mode, bnxt_mc_list_updated and bnxt_uc_list_updated
> now take explicit uc/mc list parameters and iterate with
> netdev_hw_addr_list_for_each instead of netdev_for_each_{uc,mc}_addr.
>
> The bnxt_cfg_rx_mode internal caller passes the real lists under
> netif_addr_lock_bh.
>
> BNXT_RX_MASK_SP_EVENT is still used here, next patch converts to
> the direct call.
>
> Cc: Michael Chan <michael.chan@broadcom.com>
> Cc: Pavan Chebbi <pavan.chebbi@broadcom.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Stanislav Fomichev <sdf@fomichev.me>

Reviewed-by: Michael Chan <michael.chan@broadcom.com>

--0000000000008cb17c064dba801f
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
DPVtLUtep/P3evQuAtTQRaKedjamBcUpJ7qUhBuv/Z07LlLIlB/vfNSPWe1V+njTezc8m3VfvNEC
qEpXasPSfDgfcuUhcPR+7++oUDaTt9iqGFOjwiURxx08pL6ogSuiT41O4Xu7msabnUE6RY0O0xR5
5UGwbpC1QSmnBq7TAy8oQg/nNw4vowEh3S2lmjdHCOdR270Ygd7jet8WQKa5ia4ZK4QdkS8+5uLt
rMMRyM3QurndiZZJBipjPvEWJR/+jod8867f3n0CAwEAAaOCAd0wggHZMA4GA1UdDwEB/wQEAwIF
oDAMBgNVHRMBAf8EAjAAMIGTBggrBgEFBQcBAQSBhjCBgzBGBggrBgEFBQcwAoY6aHR0cDovL3Nl
Y3VyZS5nbG9iYWxzaWduLmNvbS9jYWNlcnQvZ3NnY2NyNnNtaW1lY2EyMDIzLmNydDA5BggrBgEF
BQcwAYYtaHR0cDovL29jc3AuZ2xvYmFsc2lnbi5jb20vZ3NnY2NyNnNtaW1lY2EyMDIzMGUGA1Ud
IAReMFwwCQYHZ4EMAQUDAzALBgkrBgEEAaAyASgwQgYKKwYBBAGgMgoDAjA0MDIGCCsGAQUFBwIB
FiZodHRwczovL3d3dy5nbG9iYWxzaWduLmNvbS9yZXBvc2l0b3J5LzBBBgNVHR8EOjA4MDagNKAy
hjBodHRwOi8vY3JsLmdsb2JhbHNpZ24uY29tL2dzZ2NjcjZzbWltZWNhMjAyMy5jcmwwJAYDVR0R
BB0wG4EZbWljaGFlbC5jaGFuQGJyb2FkY29tLmNvbTATBgNVHSUEDDAKBggrBgEFBQcDBDAfBgNV
HSMEGDAWgBQAKTaeXHq6D68tUC3boCOFGLCgkjAdBgNVHQ4EFgQUJbO/Fi7RhZHYmATVQf6NlAH2
qUcwDQYJKoZIhvcNAQELBQADggIBABcLQEF8mPE9o6GHJd52vmHFsKsf8vRmdMEouFxrW+GhXXzg
2/AqqhXeeFZki82D6/5VAPkeVcgDeGZ43Bv89GHnjh/Vv0iCUGHgClZezpWdKCAXkn698xoh1+Wx
K/c/SHMqGWfBSVm1ygKAWkmzJLF/rd4vUE0pjvZVBpNSVkjXgc80dTZcs7OvoFnt14UgvjuYe+Ia
H/ux6819kbi0Tmmj5LwSZW8GXw3zcPmAyEYc0ZDCZk9QckL5yPzMlTAsy0Q+NMVpJ8onLj/mHgTk
Ev8zt1OUE8MlXZj2+wgVY+az2T8rGmqRU2iOzRlJnc86qVwuwjL9AA9v4R13Yt8zYyA7jL0NiBNP
WaOSajKBB5Z/4ZVtcvOMILD1+G+CVZX7GUWERT9NRXw/SyIEMU59lFbuvy4zxe3+RbOleCgp3pze
q8HE2p9rkOJT3MkCNLxe+ij4RytIvPQXACsZeLdfTDUnjeXCDDJ9KugVhuqMelAZc4NissPz8FOn
2NK++r5/QamlFqYRhsFxSBIvhkh2Q/hD3/zy4j17Yf/FUje5uyg03FblSBOk2WYpRpXEuCpyn5pb
bYVIzfhQJgwGfO+L8BAeZIFjO1QL3s/zzn+RBlTl4wdDzh8L9eS+QEDhMcSsqb4fFRDbsoVuRjpx
R5MunSUzk4GcmmM19m7oHhPGeKwIMYICVzCCAlMCAQEwYjBSMQswCQYDVQQGEwJCRTEZMBcGA1UE
ChMQR2xvYmFsU2lnbiBudi1zYTEoMCYGA1UEAxMfR2xvYmFsU2lnbiBHQ0MgUjYgU01JTUUgQ0Eg
MjAyMwIMZh03KTi4m/vsqWZxMA0GCWCGSAFlAwQCAQUAoIHHMC8GCSqGSIb3DQEJBDEiBCDQUe5+
MnF5gGNR7DKTscnoSulx7eb9g2hc5867TiEBijAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwG
CSqGSIb3DQEJBTEPFw0yNjAzMjQwMDQ3NTZaMFwGCSqGSIb3DQEJDzFPME0wCwYJYIZIAWUDBAEq
MAsGCWCGSAFlAwQBFjALBglghkgBZQMEAQIwCgYIKoZIhvcNAwcwCwYJKoZIhvcNAQEHMAsGCWCG
SAFlAwQCATANBgkqhkiG9w0BAQEFAASCAQA82A5a/zCgoE7aNYo3a3h9KK5gAHJbcIbIEKXP1UiO
YZ/CuT++ELFmS8Zm05ECPgmPyHK3wyVZjYXmQ17PNTPa+nbuXahezcvHv9lP5b/m/P6wQeQSGZ6W
g/y/XDzfd8yEtjX8KzuVGheMtfzbECTHWSXxhVSOn9AvHFu0OWrW+6Rna+1cuO1CP+5COvpsgUP7
/lknTSHSX8OcA52tbFKwgd8oOu1GiuaULHkEttX5HFrf00ux5IrQqatxpbAfV5avd7G5dY6qQn08
JDIiMsNE304h5G4QGxRzT6OPZ1hXKBMMLUb/aUhlU4wlQ+BptcoZhjgyXEP56fIuGgJGPwjL
--0000000000008cb17c064dba801f--
