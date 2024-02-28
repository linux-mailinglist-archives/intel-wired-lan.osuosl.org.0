Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1969486B4AF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Feb 2024 17:23:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8633860E7F;
	Wed, 28 Feb 2024 16:23:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BUKUyR43hdXz; Wed, 28 Feb 2024 16:23:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 94A5A60E81
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709137395;
	bh=HbOEijThNH46+MKcExlVA1bAK6/6kIlRSRkEOFZjgxo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NMc+im8QxLyq5cadzUS0tUcN2vGkhJLzQ3XEUx8ubiMi57ahyrebNSLelGabUydmE
	 8/HM4dQYV+zzSAo61vYXYCDLVG9NKXPl+evKbUDyXk0AuC15iCwCoacteFTM4QKi3k
	 ewSJPmk/2HR5THIvE59ND/a91l69aw1OaQIZOSsxM8Q3dWEwg5GXoNdczEzBFSVypN
	 /SThbN6xyGJrbtUbqEW6KXTHLDvquxj2sjpeKwOgq5dqksP9b3XqXSGolWa1RNaLoC
	 o9plKcKsX67L5L3cYXVUxOMf2+k8W8Lqiny1UVd33rOkT2DHF0Oi0fWxhtn6S+uKLJ
	 lXqLKaDz9xsCw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 94A5A60E81;
	Wed, 28 Feb 2024 16:23:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 56F561BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:23:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 424D3400E7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:23:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MM7Zs-eTOv0t for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Feb 2024 16:23:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1134; helo=mail-yw1-x1134.google.com;
 envelope-from=yury.norov@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 29F72400D9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 29F72400D9
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com
 [IPv6:2607:f8b0:4864:20::1134])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 29F72400D9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:23:11 +0000 (UTC)
Received: by mail-yw1-x1134.google.com with SMTP id
 00721157ae682-60943ad307fso6669097b3.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 08:23:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709137391; x=1709742191;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=HbOEijThNH46+MKcExlVA1bAK6/6kIlRSRkEOFZjgxo=;
 b=JlTofc6Dx+VBQdNLuIcr8Uxe+cVjEOWM64+fOFI75s/QUjVF+1UFs2QyuclomZFDWy
 W9Xmfq0+Z7tXA1OkRy+dVInSkakXmW72zPHafcp5I5D9y8I0dxQh3HEw5UcEA/xsMxN5
 v8xrfQftmgzdcVktSlilMg/pkjQF1V7A+GpfHLTRzqWnlJ3EuC2ZQVoxH4Q0TXw9s7B+
 fD/vv5KRt2G4ALnn6eUwyXR8eklvyhdi7MWCIhHShL4DodGIcsIqSmD2muZsN2iNtk/B
 QePy37DSgYUXerDIdGg6bX0A8NHvU095YL05F7ToSsPUxPRdeR4UrulAlX9VPty4IVcP
 u0Gg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXaq7/LNalZODWbiuJBswrF8XwfsPUtRZFx3UZApWUr5fH5ku3FGi0efiD8NA5JFLBuOmQlktQrXpetPDHnci4mb1A/Z7LVzNrEajiPj8GKZA==
X-Gm-Message-State: AOJu0YzTfpiFoMrJtY0bZLch2GoKo0t/PxcoCJp5wF92mlGdnjfagqQG
 tDxHGkMfJIW43aVleF2QSPWYJZXgoVLu+14zVtwb/LSS0oZKzua0
X-Google-Smtp-Source: AGHT+IGv4dKbA2FgkfgFeim73NTZL194kVoyen/ECEHKASPW+ceHW/ESvGQ3LlWv++LKuBu1H0b1TQ==
X-Received: by 2002:a81:4054:0:b0:609:205c:82b2 with SMTP id
 m20-20020a814054000000b00609205c82b2mr5476474ywn.0.1709137390676; 
 Wed, 28 Feb 2024 08:23:10 -0800 (PST)
Received: from localhost ([2601:344:8301:57f0:2256:57ae:919c:373f])
 by smtp.gmail.com with ESMTPSA id
 o15-20020a81de4f000000b00607fe5723e6sm2380884ywl.109.2024.02.28.08.23.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Feb 2024 08:23:10 -0800 (PST)
Date: Wed, 28 Feb 2024 08:23:09 -0800
From: Yury Norov <yury.norov@gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <Zd9d7XS+TtOx73zP@yury-ThinkPad>
References: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
 <20240201122216.2634007-7-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240201122216.2634007-7-aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1709137391; x=1709742191; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=HbOEijThNH46+MKcExlVA1bAK6/6kIlRSRkEOFZjgxo=;
 b=Ox5O5j8FOPVvZ0RXfxK5hfNjGp8idnohuFoYBpabrzn/XqCqWxj103kKcdFfgqs/0e
 9PE3yIPg/J5DNCfH9uQS5xfI0I3y9LAm8Mdnhu2qSYUSq4iXyGrKHR/NP2vH2BbTGx+D
 wMPk01vaZkytXz4XyDHzjUpKQu4LfN9cTXvZ7M0A355X4/cIf7rX4L8Sjzu1UI+vB/iF
 xh3CRt93va3F8ekM6zkTEy1TXlfwJMfVkJyAY6cXLpkHVquAXgoCM+bA1d619RgQlqam
 pWgIEa5lDqGPM/5LMUIDAx1VXu03MESLq8GP0xWUkEpPb58D+ToJHxzRrfpCfv6goDkw
 +geA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=Ox5O5j8F
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 06/21] bitops: let the
 compiler optimize {__, }assign_bit()
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
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>, dm-devel@redhat.com,
 Alexander Potapenko <glider@google.com>, Jiri Pirko <jiri@resnulli.us>,
 linux-s390@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Wojciech Drewek <wojciech.drewek@intel.com>,
 Ido Schimmel <idosch@nvidia.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Marcin Szycik <marcin.szycik@linux.intel.com>, Simon Horman <horms@kernel.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, ntfs3@lists.linux.dev,
 "David S. Miller" <davem@davemloft.net>, linux-btrfs@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Feb 01, 2024 at 01:22:01PM +0100, Alexander Lobakin wrote:
> Since commit b03fc1173c0c ("bitops: let optimize out non-atomic bitops
> on compile-time constants"), the compilers are able to expand inline
> bitmap operations to compile-time initializers when possible.
> However, during the round of replacement if-__set-else-__clear with
> __assign_bit() as per Andy's advice, bloat-o-meter showed +1024 bytes
> difference in object code size for one module (even one function),
> where the pattern:
> 
> 	DECLARE_BITMAP(foo) = { }; // on the stack, zeroed
> 
> 	if (a)
> 		__set_bit(const_bit_num, foo);
> 	if (b)
> 		__set_bit(another_const_bit_num, foo);
> 	...
> 
> is heavily used, although there should be no difference: the bitmap is
> zeroed, so the second half of __assign_bit() should be compiled-out as
> a no-op.
> I either missed the fact that __assign_bit() has bitmap pointer marked
> as `volatile` (as we usually do for bitops) or was hoping that the
> compilers would at least try to look past the `volatile` for
> __always_inline functions. Anyhow, due to that attribute, the compilers
> were always compiling the whole expression and no mentioned compile-time
> optimizations were working.
> 
> Convert __assign_bit() to a macro since it's a very simple if-else and
> all of the checks are performed inside __set_bit() and __clear_bit(),
> thus that wrapper has to be as transparent as possible. After that
> change, despite it showing only -20 bytes change for vmlinux (due to
> that it's still relatively unpopular), no drastic code size changes
> happen when replacing if-set-else-clear for onstack bitmaps with
> __assign_bit(), meaning the compiler now expands them to the actual
> operations will all the expected optimizations.
> 
> Atomic assign_bit() is less affected due to its nature, but let's
> convert it to a macro as well to keep the code consistent and not
> leave a place for possible suboptimal codegen. Moreover, with certain
> kernel configuration it actually gives some saves (x86):
> 
> do_ip_setsockopt    4154    4099     -55
> 
> Suggested-by: Yury Norov <yury.norov@gmail.com> # assign_bit(), too
> Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>

Acked-by: Yury Norov <yury.norov@gmail.com>
