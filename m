Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MMKVJ5PC82mw6gEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 22:58:59 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D144A7F7D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 22:58:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B6B976F582;
	Thu, 30 Apr 2026 20:58:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RwDb3gdRaeRI; Thu, 30 Apr 2026 20:58:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EAC416F580
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777582736;
	bh=hEnpSpB3eFO8NuC3B8ExUkCQEnerNqs6qb5XedqR3wE=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=xLba7DJ7CRnIB9w8QaPyg/1kXMzeQqRzvr3aMPmDKEEbQCJ4bMA1nOR+C7euS7hff
	 sJV0As7BXY1BuwLB0kfTUH9C2sEFXN5khOcJnbDkrdvMDPNnLFMs/JZrs5lpojEz1j
	 N7WjuiqJnwnuFlfYB2kdLnWL8+2WsgUaCfzmFYrSH45WlOn9jZekKgCzqPm18mmQr7
	 63dBDdm49xxvQzXpvVGxMkI6HoIZsIGE0eyXIGqj56vWuhP0DckyffWE8ZnURW4kDi
	 9VR/MFwxdrVrB+2hOsBwOD5ZPSccuDAWo/qaZgUCxxnEaJ2K9d3Vrz6nEfvi7IkXvT
	 h55kL7y3lzRVw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EAC416F580;
	Thu, 30 Apr 2026 20:58:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C0AC5127
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 20:58:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B244641D79
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 20:58:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nmBdkBccybSR for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Apr 2026 20:58:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b12e; helo=mail-yx1-xb12e.google.com;
 envelope-from=boolli@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A132141D77
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A132141D77
Received: from mail-yx1-xb12e.google.com (mail-yx1-xb12e.google.com
 [IPv6:2607:f8b0:4864:20::b12e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A132141D77
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 20:58:52 +0000 (UTC)
Received: by mail-yx1-xb12e.google.com with SMTP id
 956f58d0204a3-65890a6ca20so1432139d50.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 13:58:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777582731; cv=none;
 d=google.com; s=arc-20240605;
 b=jt/bhTif5i12+Ug9e+3KGEm17iFdeJW7Q5xLwqKvQEffYAf9FUAdLnKlJugAnspLlY
 NXRY4+6uQsp4PxyKjFQvfFq2cLPtqcfROfPUNqk2609CpCiuN9LGxzpjAK9Pq/ORsYQe
 0DB0hRWzfn1GlmYKqBpBbxgIodRFS+KeRInSDUNtLkOrp2M2d/urUlK9g42ij0fUxgHO
 lKjw8dmtkV4Sdk4Y+Aw8Q/2boqpJjj+fCJ2AGj6gByF2tLW4YkDglyUEtfHoUSEazqZD
 REpxHpzvbAyagXdFEl49xchjFWVQjgcn9T091hfToAfRYqdJcJPjY8qewqsQOhCdLH/e
 r1Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=hEnpSpB3eFO8NuC3B8ExUkCQEnerNqs6qb5XedqR3wE=;
 fh=pLhlbA2FyUqB87+WCZcYMB6pnaw/YjyAtRRUSEafTzw=;
 b=QgzLpSkmOdjt1WCEDHyhFihUMXrJ3nJIjzmL4oqXLZb/Hs4hcsMMkOni4EfLLjw5XE
 PVP0ZFWVDlHCoT1amKzLmIH0ijToKEm/X/M5nOUcnCj3HHLGEWX3R6bDFcJVKzNHzMhS
 oYZsE8O5Zu1djdTjIF/ho1WcV82HtPN+0VZSstECTx5Y4AJgV2A6LBxOHVjLFfFwCP7W
 2e7DlEks0pcmQsqF91RYRrLTwk0x4jOlazNKJ466DgtJUOxw6sGeaiE/VZ7ojD4KVD46
 162VKN8kF0xIYt+5Dk+NWgGLbYC7C4Z/6fKFvDFwCiilPq4tEUm613lusJYG42/r5t1D
 wZPQ==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777582731; x=1778187531;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=hEnpSpB3eFO8NuC3B8ExUkCQEnerNqs6qb5XedqR3wE=;
 b=R2G9EjYNIt5P/+LcUV1AnXZCSMuH2K6sMlXqLQA38pHJtkYiB03yXXh+k5kIX61TXH
 ILfUkrjncdikmdM44ka1hoEa26Iyqfq5RHYC1zQJSrIWM79gS9FsmY3FrJ4kO6/Mqyz3
 K64vKPRgbBinalk0QzE5xvnzDzGZZOULQQwPjLEnujlPEkawd5nKu/G8zvxrmrGLhuhW
 foMMXkmu7zfCt/F/p4e6ZM5W70vucBU5MJrf1QIJ5P2vcQu7EnDk6o3RIN95xaCOKYnD
 R5ccKNZbsj69AJ4eCKrmbGw46uqWblHWYWlABFWgpyt7aJKodlFB5FCHVk9otwKtpaHn
 pQ6w==
X-Forwarded-Encrypted: i=1;
 AFNElJ+bxx2t++kUmZRxvCPgEw7l7XNP5xO2BCVP0gqGcl6PywKZGPNWpYR/y5K24h8ASut32qB+oSGOogpOjYosP94=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyQzYcC20itOvsBSx/d3b8yanuGHNZsAODYpdItgL8ckH5q3c8e
 5dT4bMGnoBXqsQE5zHbSQtz6WclkMkb+wk4xdIIk3iZESdpzBTcnALhT84khU/ALJbeyDjMddiu
 HA98Tnk9jI2IoYK3qHFY2FBT/9Xf4hspu5+gdSR36
X-Gm-Gg: AeBDiev8CAdCO21kl6+1LGl6Fuhho8zF5ZZLuB/cji22X9rWtIqrf0RWIvlHZISp3St
 UC45DOVtJv6cCvNbrSUTGrc4I+gkq9LQ9ZJJusMhETBkQRKzGMTgUjTAUK7u5pPTpe8jZX+w4Lm
 Gew1Y+HertMcwzgTQ9p4+EhEIZtCI+YcDNIqNQy6NbQXAGcaOt8vp7fWY9KFwSlO8kkqSyl7Zd7
 oKdmlWR9GQ7+g7PkgyyOnXH8VQXRjxyBkJ9gcBcjMJvbJ52evIp9yvm6bRVG75yAU/d1b6F/d9R
 J4QobeKhWDa8sQY45UtQUhOB4zLo3i+JjiwZMnGG07byAw1oXUucyCmFijA=
X-Received: by 2002:a53:ac83:0:b0:65c:2ac8:ec3a with SMTP id
 956f58d0204a3-65c2ac8ed74mr1612608d50.21.1777582730691; Thu, 30 Apr 2026
 13:58:50 -0700 (PDT)
MIME-Version: 1.0
References: <20260421051641.370436-1-boolli@google.com>
 <20260423163307.989421-3-horms@kernel.org>
 <25163a38-53b5-445c-936c-0cba94cb731f@intel.com>
In-Reply-To: <25163a38-53b5-445c-936c-0cba94cb731f@intel.com>
Date: Thu, 30 Apr 2026 13:58:38 -0700
X-Gm-Features: AVHnY4I8U8-NSsj-bnIoiUgXgoUy_jiPXyvaEaAv_OuN_FcN8_8wmmTGL0lyL7M
Message-ID: <CAODvEq4R_7SXfo5QJ0z=fM5npz1ZFFcCQTTKkdoLKtXyoDnjRA@mail.gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Simon Horman <horms@kernel.org>, anthony.l.nguyen@intel.com, 
 przemyslaw.kitszel@intel.com, davem@davemloft.net, kuba@kernel.org, 
 edumazet@google.com, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, decot@google.com, anjali.singhai@intel.com, 
 sridhar.samudrala@intel.com, brianvv@google.com, emil.s.tantilov@intel.com, 
 stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1777582731; x=1778187531; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=hEnpSpB3eFO8NuC3B8ExUkCQEnerNqs6qb5XedqR3wE=;
 b=uIUnUojPLm1anvyOYBREFndXivUkgd152Y0t9sxH82QFwH9e7IreCmKofcDFPeoKdI
 ZNIe0LehmZkZhLzbAfQmqv7FlGxqLSbVu+RdkZS0tIDsiNJ3pgUHmSHW4qTE6sK06B3p
 ta//Bx+ozM+BFO3cA/Y9KTNuF75DB/UtZ+YK6CQ2AwxPFuFrd7PqL9jVR02mCu1Cm2zw
 v6wm4Vb2/XBKBGwTmn+kgw3kfk7qAp//wzKQjsK0EbdaqODXSxgJxtzXrjryI/Xk2KHc
 fXaC2jqYZerx0TDJcIg1nnTL/7As0bRrDR/6xsTMhHjvjhAX2ekQrbE5FqrCk5eLToVi
 PyXQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20251104 header.b=uIUnUojP
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] idpf: do not perform flow
 ops when netdev is detached
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
X-Rspamd-Queue-Id: 24D144A7F7D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,intel.com:email,mail.gmail.com:mid,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:emil.s.tantilov@intel.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	HAS_REPLYTO(0.00)[boolli@google.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[8]

On Thu, Apr 23, 2026 at 11:40=E2=80=AFAM Jacob Keller <jacob.e.keller@intel=
.com> wrote:
>
> On 4/23/2026 9:33 AM, Simon Horman wrote:
> > From: 'Simon Horman' <horms@kernel.org>
> >
> > This is an AI-generated review of your patch. The human sending this
> > email has considered the AI review valid, or at least plausible.
> > Full review at: https://sashiko.dev
> > ---
> > idpf: do not perform flow ops when netdev is detached
> >
> > This commit adds checks to prevent crashes when out-of-tree modules byp=
ass
> > ethtool core locks and call flow operations on detached netdevs during =
a
> > hardware reset. It introduces netdev and netif_device_present checks in
> > idpf_get_rxnfc and idpf_set_rxnfc.
> >
> >> Even though commit 2e281e1155fc ("idpf: detach and close netdevs while
> >> handling a reset") prevents ethtool -N/-n operations to operate on
> >> detached netdevs, we found that out-of-tree workflows like OpenOnload
> >> can bypass ethtool core locks and call idpf_set_rxnfc directly during
> >> an idpf HW reset.
> >
> > Is it acceptable to add defensive checks upstream solely to accommodate
> > out-of-tree modules that bypass core kernel locking?
> >
> > The core ethtool infrastructure manages locks like rtnl_lock for in-tre=
e
> > callers to guarantee safety. Modifying the upstream driver to paper ove=
r
> > locking violations in out-of-tree modules might contradict upstream pol=
icies.
> >
> > Simon says: If this is to address OOT module behaviour then I am concer=
ned.
> >             And I would suggest that the correct approach is to fix
> >           the OOT kernel module.
> >
>
> The commit message says: "OpenOnload can bypass ethtool core locks and
> call idpf_set_rxnfc directly". But if it somehow calls
> idpf_set_rxnfc_directly without holding the appropriate locks, then no
> amount of changes to the idpf driver will fix that issue. It is simply
> unsafe for that to be occurring, and this feels like it just patches one
> specific problem without addressing the root cause that something is
> calling the drivers ethtool function without correctly holding the
> expected locks.
>
>
> @Li Li, could you please explain more details about the workflow that
> triggers these behaviors? If it can't be reproduced with in-tree modules
> then I don't think we can accept this fix.

Yes, OpenOnload calls idpf_set_rxnfc directly without checking if the
netdev is detached first. I've discussed this with the team
internally, and we decided to fix OpenOnload directly, rather than
adding the check in idpf.

Please feel free to drop this patch, thank you!
