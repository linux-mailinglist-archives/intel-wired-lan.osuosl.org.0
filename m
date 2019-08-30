Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A966CA3B01
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Aug 2019 17:51:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 679E488183;
	Fri, 30 Aug 2019 15:51:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XuZ1Xk8y6YDK; Fri, 30 Aug 2019 15:51:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 005FF88158;
	Fri, 30 Aug 2019 15:51:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2F40B1BF284
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 15:51:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2C566880F9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 15:51:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m+rKOiqGA20z for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Aug 2019 15:51:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B2B19880C5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 15:51:40 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id m3so3726951pgv.13
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2019 08:51:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version; bh=BLlV5SfFFdT/9adoJ3oAD9C/bDn8ekH/hdHHGvhN3VE=;
 b=DrpcBviwKCKjU0RkRteMpfFfg/ylbw304Alc89Kvw+yHA9YPES0o32EbK6NSSBAETt
 gVGQ9aUZYCTaE69GY5nEdgoxWgtVJ3fXlSEJ89yG37qZRIkxztE4eQmXGnwsUMnHmFQc
 2T6WpnT/dRqrdy2dn5tCej9AqeT58ISO/rXBPv9Aa2rvfes01wL4B7KuYI04xxmuTbDG
 UIAIsN0Dwj0MtFLUtDCignNlpbMBTD2Rz4xLhuRbxDchNLjSEaGX5MG5bi4jy7NL6iP7
 K5XrBrzan3dDTlBObZwTXDLF1q1xzDb8yqnFpJ8WCTZTMxRQESum8d7qJjPTpxrGQOXo
 nu5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version;
 bh=BLlV5SfFFdT/9adoJ3oAD9C/bDn8ekH/hdHHGvhN3VE=;
 b=gekBNGr5pu8JUDJ/j0UKeoji/sTheyTKyC7QoUibsjOOG7ppDqkTeynnYT+UddVQcL
 XMfOt5xHadBPUO0Xz1ypaicq3CDyM+Y4uNxQYG3cLG94M5oIUHjBiQZR/Ls2hbmrkaZS
 r+WVm3UAsk1y/uEfANQlhFmeKdXb51bFQ0tZDFTcXzA4gYabHB9bLiJB1RZDfBL5nZHe
 wYBhB/oSD9QgK/LakkqNJY9SCOgAxoZVv3NkgmXLss8WV75zzjm3AuPSBnj4w98QtAu/
 x+QECj7YWpAqlrIKBiaAEFx1IRJCrcrN4Rtu2T6JQu1Wz6bKr7PywlC7pxNKtsT6lP2N
 ckkw==
X-Gm-Message-State: APjAAAUj2PB92G5Hu6EicR3RSKDiY6/0OaLjbGP0bKan7zhfBX5gMmFa
 0TJiJ0Ge+78Ab2pyNGgV+jc=
X-Google-Smtp-Source: APXvYqy+IflP5czhCS1gShYkQQIIGxIyv6VyyEdAnRS5D3GUB4FquNzgaDRoo0hgMt5VJlVFnTZINw==
X-Received: by 2002:a63:4c5c:: with SMTP id m28mr14308963pgl.333.1567180300361; 
 Fri, 30 Aug 2019 08:51:40 -0700 (PDT)
Received: from [172.26.108.102] ([2620:10d:c090:180::7594])
 by smtp.gmail.com with ESMTPSA id j1sm6763972pfh.174.2019.08.30.08.51.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 30 Aug 2019 08:51:39 -0700 (PDT)
From: "Jonathan Lemon" <jonathan.lemon@gmail.com>
To: "Kevin Laatz" <kevin.laatz@intel.com>
Date: Fri, 30 Aug 2019 08:51:38 -0700
X-Mailer: MailMate (1.12.5r5635)
Message-ID: <320E20FD-E042-48AC-B52C-2E34FEA6A68E@gmail.com>
In-Reply-To: <20190827022531.15060-13-kevin.laatz@intel.com>
References: <20190822014427.49800-1-kevin.laatz@intel.com>
 <20190827022531.15060-1-kevin.laatz@intel.com>
 <20190827022531.15060-13-kevin.laatz@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v6 12/12] doc/af_xdp: include
 unaligned chunk case
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
Cc: maximmi@mellanox.com, jakub.kicinski@netronome.com, daniel@iogearbox.net,
 netdev@vger.kernel.org, ciara.loftus@intel.com, ast@kernel.org,
 stephen@networkplumber.org, saeedm@mellanox.com,
 intel-wired-lan@lists.osuosl.org, bruce.richardson@intel.com,
 bpf@vger.kernel.org, bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 26 Aug 2019, at 19:25, Kevin Laatz wrote:

> The addition of unaligned chunks mode, the documentation needs to be
> updated to indicate that the incoming addr to the fill ring will only be
> masked if the user application is run in the aligned chunk mode. This patch
> also adds a line to explicitly indicate that the incoming addr will not be
> masked if running the user application in the unaligned chunk mode.
>
> Signed-off-by: Kevin Laatz <kevin.laatz@intel.com>
Acked-by: Jonathan Lemon <jonathan.lemon@gmail.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
