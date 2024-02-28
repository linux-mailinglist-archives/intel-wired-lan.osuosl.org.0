Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E997186B4A3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Feb 2024 17:20:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 97E6660E7B;
	Wed, 28 Feb 2024 16:20:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BC8T4Ru8LpYs; Wed, 28 Feb 2024 16:20:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED0DF60E7F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709137255;
	bh=mdo+WCwYssTHA5Y/xcZDi9YAkmpmO4mLfP1Bdut2TaY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mkOsoFsKaoChW+nRbuIeakcCk606CxzTsARX4//LQzXpDUhp6TE5QXxFbb0wuAXxQ
	 Lu+2zUIv6X4Yjl5b/c0mvhRzw0Ui1LAUMXc1CcbN2hpi5kh/6RnWAsoYf+ALKlXbZO
	 2T9Bh0qe8n9KJBO2g+JRrDGA5Nd5Gn8YeD0sFbIOEJ4RdMF7KBWW0FDDG8cUcR5Hc+
	 D6NqaiNdZ1HsFUXy0sJSQx/Uwu5I7XyAMaOZ9hBDUb3N6a4CU8BHGheG8Umm+NwD3A
	 dakrJlku9gQAKSHnrN01otfQo8QvUlMEq6JxN4giezbizZOO4wWG36SlapnTx2tAFW
	 N2qBcWx42ln7Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ED0DF60E7F;
	Wed, 28 Feb 2024 16:20:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7CD461BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:20:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 68B2181495
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:20:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JzYkZwiD90I7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Feb 2024 16:20:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::112b; helo=mail-yw1-x112b.google.com;
 envelope-from=yury.norov@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A8AE38148B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A8AE38148B
Received: from mail-yw1-x112b.google.com (mail-yw1-x112b.google.com
 [IPv6:2607:f8b0:4864:20::112b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A8AE38148B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:20:51 +0000 (UTC)
Received: by mail-yw1-x112b.google.com with SMTP id
 00721157ae682-608ed07bdc5so38350717b3.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 08:20:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709137250; x=1709742050;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=mdo+WCwYssTHA5Y/xcZDi9YAkmpmO4mLfP1Bdut2TaY=;
 b=w0SfXN6H3jVzb92aoea5Asa8CAVvASPgC4dAHcuWEHM59L/bHlMgy68S2V0It6ISWG
 GZP7sih35Gqh/Z80bB4Ld/DzNC4sbTP/nTuBL4mE3i62fxCNbuWVZ0nTZ1IZzATHNc+1
 fNWnr3fAjk3pxnGKDijHZuc0VqOdQBBfeCGtPhoriHC+/Jmc5bvYVP6vMMo2VZrMaXhC
 m9IZbp8YbHQYcx6/TKYUVi7q5copmndfhi8zXQ3dIODEdin0g4ae/XGZKJ5P4O+6ouUF
 WmAd6hVsVCGeof6ieawekCSxYaUe5HQjDppHd5+pyNfMrAMetlnRIhr/4e1tSkF+CogY
 qf6g==
X-Forwarded-Encrypted: i=1;
 AJvYcCULm0OLfSiPjyJoxjLoOaCumMOEIue6Rm0tZBeqkLegbEkHPu9VrNyevCNREpKaCew1ZdVYZhFeZ9wsPYjT1saP5SVgVu4OP9bAuzF8v+JKsQ==
X-Gm-Message-State: AOJu0YyiuZ7zlv/gFUWjGfUtIyeOIJ6o+8FmWMHNqOqiOYiS4cmc9aYY
 4g38IadQcnGF7AmTQmRcPI2HTuF3+4Ky3Rf3QtmIpinpfLHsd7KO
X-Google-Smtp-Source: AGHT+IFog7Zlb1nyvjIUA4ujLfkoca4T12KmwBu9waTIaa8SAH+ATAMvMCHoJTwS61raA1yWNAPR4A==
X-Received: by 2002:a81:e349:0:b0:608:d188:6fd9 with SMTP id
 w9-20020a81e349000000b00608d1886fd9mr5510309ywl.33.1709137250415; 
 Wed, 28 Feb 2024 08:20:50 -0800 (PST)
Received: from localhost ([2601:344:8301:57f0:2256:57ae:919c:373f])
 by smtp.gmail.com with ESMTPSA id
 v1-20020a81a541000000b005fff0d150adsm2393743ywg.122.2024.02.28.08.20.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Feb 2024 08:20:50 -0800 (PST)
Date: Wed, 28 Feb 2024 08:20:49 -0800
From: Yury Norov <yury.norov@gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <Zd9dYVolWW/kyngn@yury-ThinkPad>
References: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
 <20240201122216.2634007-6-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240201122216.2634007-6-aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1709137250; x=1709742050; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=mdo+WCwYssTHA5Y/xcZDi9YAkmpmO4mLfP1Bdut2TaY=;
 b=if0VktKgsHuMATu+OdWYZng9ksp0Lc55etMaz4hwPwEA56LFtp59U2TOPGWNDfsXGZ
 NFrx5BMB3AooPKv53gA5zvXPCoHZy4pIGzqGtWIOIDMF9tNmfy0LL5InTWFSDw0NsQih
 pND2saXEUOnz9Kn4KohjdnPAolpMsHOTI87SahgW7fuiqEgXRYaOcqFbCTl99etHJVrS
 JjjdVIqylgtq0mrLCLX4/OxBwNNHlqYDDebV/uBiOcItOrIz4odUXH0wkZkWytH6iUI6
 vSOXuPX+L4wXbE7Ck6oXKTHfatArzJfxpcOhr7DoECyKlfArqhEeTm7NBs5t1dpHdMp0
 13KA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=if0VktKg
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 05/21] bitops: make
 BYTES_TO_BITS() treewide-available
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

On Thu, Feb 01, 2024 at 01:22:00PM +0100, Alexander Lobakin wrote:
> Avoid open-coding that simple expression each time by moving
> BYTES_TO_BITS() from the probes code to <linux/bitops.h> to export
> it to the rest of the kernel.
> Simplify the macro while at it. `BITS_PER_LONG / sizeof(long)` always
> equals to %BITS_PER_BYTE, regardless of the target architecture.
> Do the same for the tools ecosystem as well (incl. its version of
> bitops.h). The previous implementation had its implicit type of long,
> while the new one is int, so adjust the format literal accordingly in
> the perf code.
> 
> Suggested-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>

Acked-by: Yury Norov <yury.norov@gmail.com>
