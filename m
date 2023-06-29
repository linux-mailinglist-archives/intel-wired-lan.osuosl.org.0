Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 78661742208
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jun 2023 10:22:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7548D81D5A;
	Thu, 29 Jun 2023 08:22:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7548D81D5A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688026974;
	bh=XLXmif6byoBPifMpqk76Q+Hu0nbDJ+xMM/WfFmjmiW4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6mNnSyJlHGFT8py/DeV+wtaDlmYP674ps37UgS8fQ4g4k//09seESvXtYqlcj0UCi
	 9HefBOC1vHyh0Pz4M6Ma5Y8Ql9C93ZjoDUt2NS9UlZEGn5hxL4gnouY/cQzS22P/Wm
	 jh6Vyyyg0U2jhnNXjWb7SjTZF4s30h1exGuZeT/L1SC8a4SQ0Lc/wOYNWjVFJBaJbr
	 v3fhuRnHL1ARpW0WMpmvcur2P6WRsvCUcpyd/nm74mf4Nhqh14gE9S2c4TolLpeGf9
	 jx8ZwXZh+iPZA9Ls7pMHJKAZYshWq6QvX8ZInt1TSxGI41QtOJiBb/ntZXXkWDCaCg
	 BlPRjYgBIwaww==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1qJiiI2RS36e; Thu, 29 Jun 2023 08:22:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 663C981A8E;
	Thu, 29 Jun 2023 08:22:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 663C981A8E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 89D551BF279
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 08:22:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 62C5E81B23
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 08:22:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 62C5E81B23
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xIJtoCsZJmjN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jun 2023 08:22:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA25781A8E
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CA25781A8E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 08:22:38 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id
 ffacd0b85a97d-313df030ccaso435742f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 01:22:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688026957; x=1690618957;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=pnekQegzwsRisctNnmboo1Flv3vcYES0Lp+fckFN5sY=;
 b=ijf7VAZoBOx+/2aWGwBhGC7j56XCXI/+wjCbmfIB6zKCkZTXVQYptQMVedlcj/pX1B
 XTgOpP4uqA/cMS6Gi7J7VeyJKHaFrrR8+KsHid0SXwTwOJsS4b0zpj8VKqPuJvhjEGA+
 otmXP2U6HoDOF6SNNgMaRwfEN8abvL4jrNKIcZFSiEMfSHKXJg/e5yQhtieL9dTy20OI
 AuKEia4mrR7SbCqW5Mo44NKZtLBRS5YDGRqEKhI8b8Bniz+XjXkHvVpdrFA3unqlDGJ0
 zuFYbaZp/5EXhWZMz5V2yEeIGsyAMpmd4Pbc0YRGkWiN0L54zn06ZEqUJhhJMnULy8xg
 O/4A==
X-Gm-Message-State: AC+VfDw1vezaaXZLtO86aZmtlu70KTezArqdA8vajU67qg7Oc8aGwAOJ
 VhGWPI2+AWXXwVTEnmAp3ZBfHw==
X-Google-Smtp-Source: ACHHUZ4JXzVgHJuPgHk885EhxpRoKdPImG5fW7Lkuhbe5Byutu+bzpvcBvxdLy7fTClkzPvy9enJ1Q==
X-Received: by 2002:a5d:4985:0:b0:313:f5f0:8efa with SMTP id
 r5-20020a5d4985000000b00313f5f08efamr8300725wrq.18.1688026956848; 
 Thu, 29 Jun 2023 01:22:36 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 j9-20020a5d4649000000b0030aefa3a957sm15272550wrs.28.2023.06.29.01.22.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Jun 2023 01:22:36 -0700 (PDT)
Date: Thu, 29 Jun 2023 10:22:34 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Vitaly Grinberg <vgrinber@redhat.com>
Message-ID: <ZJ0/StDYFANB1COA@nanopsycho>
References: <CACLnSDhkUA=19905RKk=f1WBkd3jTEDcvytJCgavi90FroXb5w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACLnSDhkUA=19905RKk=f1WBkd3jTEDcvytJCgavi90FroXb5w@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1688026957; x=1690618957; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=pnekQegzwsRisctNnmboo1Flv3vcYES0Lp+fckFN5sY=;
 b=QAmw8VvKPSKCa2K72rY2EW7V5lfX1lj+u/ACfv1Lx26QU/dIWS9faLaO9CZ17mMODc
 b6o/klntMdQqnroCYdNwla8FudZSYjpcRttWd5o8K5Gtlq9bcYQWm/SHdoKkCAhs9WW1
 KXp3TvZhEX/NLfsF/peaplmVa7L8ChKCi2Ykc2Gy4gLnFbYvgeDYufZ+b6ZIUq7lR9Ik
 grbNHJXGfMr3ChwJ3EnstUMChWbIT3wqtJDUA5u81A23t9LYLCAoU41TZxGUmHOcBrE/
 P1MM/p/SDZM9S2D59RbMaL94BIUGSkPWAhGmwBDC37C/V4VyCgZN200t/RgDEX7n3TaO
 GkNw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=QAmw8VvK
Subject: Re: [Intel-wired-lan] [RFC PATCH v8 00/10] Create common DPLL
 configuration API
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
Cc: geert+renesas@glider.be, linux-doc@vger.kernel.org, razor@blackwall.org,
 phil@nwl.cc, jesse.brandeburg@intel.com, edumazet@google.com,
 Benjamin Tissoires <benjamin.tissoires@redhat.com>, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, linux-clk@vger.kernel.org, lucien.xin@gmail.com,
 leon@kernel.org, corbet@lwn.net, linux-rdma@vger.kernel.org,
 masahiroy@kernel.org, Michael Tsirkin <mst@redhat.com>,
 Javier Martinez Canillas <javierm@redhat.com>, vadfed@meta.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, vadfed@fb.com,
 Paolo Abeni <pabeni@redhat.com>, ricardo.canuelo@collabora.com, arnd@arndb.de,
 idosch@nvidia.com, richardcochran@gmail.com, claudiajkang@gmail.com,
 kuniyu@amazon.com, jacek.lawrynowicz@linux.intel.com, liuhangbin@gmail.com,
 David Airlie <airlied@redhat.com>, nicolas.dichtel@6wind.com,
 linux-arm-kernel@lists.infradead.org, axboe@kernel.dk, sj@kernel.org,
 vadim.fedorenko@linux.dev, linux@zary.sk, gregkh@linuxfoundation.org,
 ogabbay@kernel.org, nipun.gupta@amd.com, linux-kernel@vger.kernel.org,
 andy.ren@getcruise.com, tzimmermann@suse.de, jonathan.lemon@gmail.com,
 saeedm@nvidia.com, davem@davemloft.net, milena.olech@intel.com,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thu, Jun 22, 2023 at 09:44:19AM CEST, vgrinber@redhat.com wrote:
>Hi,
>Could it be possible to add PPS DPLL phase offset to the netlink API? We
>are relying on it in the E810-based grandmaster implementation.

In which driver you need to implement this?


>Thanks,
>Vitaly
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
