Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8390E2B44A9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Nov 2020 14:25:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0E4A085F44;
	Mon, 16 Nov 2020 13:25:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yME4OFwO_VUq; Mon, 16 Nov 2020 13:25:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4C64D85F34;
	Mon, 16 Nov 2020 13:25:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2BAC91BF2EC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 13:25:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 24D9D8551F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 13:25:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MAZnQLYytUKe for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Nov 2020 13:25:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 76AF585321
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 13:25:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1605533142;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=LSNkJPt+wjH1jlYQkXrm8+t1fMHnnPEPcU8guCAdnmA=;
 b=jCZEvPH2OTZW3fS4MlFQjunD6tPvij3OdiG9f4KaDY7ryXypa69FgTsqC38nKeuVKiEc1W
 jPd3/2TwMh5MzISRPjGbdkex6wHnNGX6rQgxfCQRn85FKxmNa2jUkNF75t9Rp6HAYUxXOP
 YNB+h79EezwUDk80oxfT2MKOnw2zv40=
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com
 [209.85.167.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-269-ElP2CsbcOhmYJvyEfGNOuQ-1; Mon, 16 Nov 2020 08:25:40 -0500
X-MC-Unique: ElP2CsbcOhmYJvyEfGNOuQ-1
Received: by mail-oi1-f198.google.com with SMTP id t3so8237078oij.18
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 05:25:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=LSNkJPt+wjH1jlYQkXrm8+t1fMHnnPEPcU8guCAdnmA=;
 b=HirRe1FyJkYihwx066x7grXs3YMzkoEP6AKMlFiLBeU5jqFUvpaMN05ALF66m5e/ym
 8ukNlBgv+6NT/7O7Uyos/4EzgI0c7b1a5AYBzud3UqQecPm1iopo8ZCqBKBRwz0R+99m
 IBRMomLhwlqFDHnOJD3YLkd0yD1xG5r2Qu8QuCpjGyiAMR78okM4mI9K0Oz19WT6iOvM
 ScXk0ZQh8pl2Nbd5mM/O5T8BqrO6F4Wk6u278x9IIte63kWVr5DGSIjDC5WP7B54mE6V
 zYBtMSdkNGSqzZWBv1bdZ0Nj2hwfntcBYRb69Xypi5KxzfgbX78Pi90fBK5kSy6Sx4SF
 /ThQ==
X-Gm-Message-State: AOAM530JXNPc0vFSruqfvNmVjDqi7aN944EiipvDWXmY1Dl/iMDi4dy3
 95PT32EUj5eMqH8Uw8MAauNMLM609/Qu5Mt3efdidmcI8mY6gyjiZUSMOGDJPTqaIpNRsBkHGUd
 j3jQgJx/HnWQ4eW1Ehm33jS1m38xPYg==
X-Received: by 2002:aca:aa90:: with SMTP id t138mr9995756oie.171.1605533139398; 
 Mon, 16 Nov 2020 05:25:39 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwrcA2prPU1Jbe9yJjkB8jL+sl2t2d8mCJs8iqH0rtGEAwN11et6kly+E4Ca4QR0EDC3hTQsQ==
X-Received: by 2002:aca:aa90:: with SMTP id t138mr9995708oie.171.1605533138652; 
 Mon, 16 Nov 2020 05:25:38 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id k11sm4636793otr.14.2020.11.16.05.25.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Nov 2020 05:25:37 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 05567181CF8; Mon, 16 Nov 2020 14:25:35 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: alardam@gmail.com, magnus.karlsson@intel.com, bjorn.topel@intel.com,
 andrii.nakryiko@gmail.com, kuba@kernel.org, ast@kernel.org,
 daniel@iogearbox.net, netdev@vger.kernel.org, davem@davemloft.net,
 john.fastabend@gmail.com, hawk@kernel.org
In-Reply-To: <20201116093452.7541-1-marekx.majtyka@intel.com>
References: <20201116093452.7541-1-marekx.majtyka@intel.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Mon, 16 Nov 2020 14:25:35 +0100
Message-ID: <875z655t80.fsf@toke.dk>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=toke@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-wired-lan] [PATCH 0/8] New netdev feature flags for XDP
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: maciejromanfijalkowski@gmail.com, Marek Majtyka <marekx.majtyka@intel.com>,
 intel-wired-lan@lists.osuosl.org, jonathan.lemon@gmail.com,
 bpf@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

alardam@gmail.com writes:

> From: Marek Majtyka <marekx.majtyka@intel.com>
>
> Implement support for checking if a netdev has native XDP and AF_XDP zero
> copy support. Previously, there was no way to do this other than to try
> to create an AF_XDP socket on the interface or load an XDP program and
> see if it worked. This commit changes this by extending existing
> netdev_features in the following way:
>  * xdp        - full XDP support (XDP_{TX, PASS, DROP, ABORT, REDIRECT})
>  * af-xdp-zc  - AF_XDP zero copy support
> NICs supporting these features are updated by turning the corresponding
> netdev feature flags on.

Thank you for working on this! The lack of a way to discover whether an
interface supports XDP is really annoying.

However, I don't think just having two separate netdev feature flags for
XDP and AF_XDP is going to cut it. Whatever mechanism we end up will
need to be able to express at least the following, in addition to your
two flags:

- Which return codes does it support (with DROP/PASS, TX and REDIRECT as
  separate options)?
- Does this interface be used as a target for XDP_REDIRECT
  (supported/supported but not enabled)?
- Does the interface support offloaded XDP?

That's already five or six more flags, and we can't rule out that we'll
need more; so I'm not sure if just defining feature bits for all of them
is a good idea.

In addition, we should be able to check this in a way so we can reject
XDP programs that use features that are not supported. E.g., program
uses REDIRECT return code (or helper), but the interface doesn't support
it? Reject at attach/load time! Or the user attempts to insert an
interface into a redirect map, but that interface doesn't implement
ndo_xdp_xmit()? Reject the insert! Etc.

That last bit can be added later, of course, but we need to make sure we
design the support in a way that it is possible to do so...

-Toke

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
