Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F2886B4E8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Feb 2024 17:28:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3891F60E7F;
	Wed, 28 Feb 2024 16:28:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gBgfA3VowDlC; Wed, 28 Feb 2024 16:28:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 83910605FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709137715;
	bh=J9xXOsuu/zrmE8tx8GTKpJgtMByVr0NI+8cB4bxXCLw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=In/YbmrAUeTpa5gDRTMQsNZwVuA/j9P08K0yFg+lQ655vQ2l3YpxPt8mhrzBwpSCg
	 YoTfyVXQAvs2u+1GYcK0dExfq1MmCpI5uDTmVIe8OFBAEVtUfNZDzGS6aRvl2jn5Y2
	 sn6u3eULThIVOw4ghcIfLMWxUxw59C8KEzJx8QES+lAzFnHS9Uksv5fmUtGOoZ4AaJ
	 YY1nQkhwBVOQjz4ObXCKidS4/qSM+bNBPTlRi6pNSDXq2TiQ9a2egoURFYTtZIPLB/
	 zGeN4PTmZcEiW2bVfoHFGTbAHWPXgflTqAWSYF0VQEzMO2rKzb7Zlwr2GaXm42+faH
	 DTf2qUUyDcq2w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 83910605FA;
	Wed, 28 Feb 2024 16:28:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 13BDD1BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:28:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0054640328
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:28:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4YZsQUauuzo1 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Feb 2024 16:28:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1129; helo=mail-yw1-x1129.google.com;
 envelope-from=yury.norov@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 424C04021F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 424C04021F
Received: from mail-yw1-x1129.google.com (mail-yw1-x1129.google.com
 [IPv6:2607:f8b0:4864:20::1129])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 424C04021F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:28:32 +0000 (UTC)
Received: by mail-yw1-x1129.google.com with SMTP id
 00721157ae682-6094a87c4a7so5736037b3.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 08:28:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709137711; x=1709742511;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=J9xXOsuu/zrmE8tx8GTKpJgtMByVr0NI+8cB4bxXCLw=;
 b=byIiddd18icIdOWyy3Y1eAZkiqnTgWLqREXotmcwhtOq3vA1dmvPJvPB7zka3uP26o
 1qwVvoOvbS5fRfuG3dOgEbY1A5x7AIToGwjLdYE6j69OeDHGhJpTHSm1A4p90VcQh5XB
 J9ajNbETaO74S2k2VXt9Dgwz7Bj/BT3XGAaVS9Fyo1g6vu4afIVDII4KDmY+RFNk9rLT
 WBugot4uJR0iej8BgHjQiU4QPmCV39wP3q1t23LUkEJ+w013OZ1Qfa0l89zE5iKGAZ8b
 YvrZqnPlOlZM5RabUU2VGs/sS6ipNgWX17sz4Xf5ryYSs77J9JTpn/AEZO6idUGk1VR7
 reww==
X-Forwarded-Encrypted: i=1;
 AJvYcCWct5O5fr6Fs4IczCpobdy9Sbo9WXala0HMKWKVVA6AX/6psARz+MT4Fsg0CaTHFPUWPbqpb/En+MPTapQcV8+edgqo1XrlcSsJJxq4oEbLSw==
X-Gm-Message-State: AOJu0YyIUiii1khN0J040IGseblqS9D717KXpP3N0FyEVuEi6PpER260
 qhuTfOcLkqJ9UmlOlNets7c9h2DxQC32+wTrPShrADCWrgQjOmR7
X-Google-Smtp-Source: AGHT+IF7XbBhR5dwgNTUI3cgJlRp6cCPJaEGoJEGT6h5P61G+BSbNJ3st82/ffk1EVnm0MCnhDNYjg==
X-Received: by 2002:a81:e70c:0:b0:609:24ff:bf5b with SMTP id
 x12-20020a81e70c000000b0060924ffbf5bmr5536903ywl.22.1709137710910; 
 Wed, 28 Feb 2024 08:28:30 -0800 (PST)
Received: from localhost ([2601:344:8301:57f0:2256:57ae:919c:373f])
 by smtp.gmail.com with ESMTPSA id
 x6-20020a818706000000b0060499d3a893sm2464776ywf.116.2024.02.28.08.28.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Feb 2024 08:28:30 -0800 (PST)
Date: Wed, 28 Feb 2024 08:28:29 -0800
From: Yury Norov <yury.norov@gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <Zd9fLYP0uzqqwOdO@yury-ThinkPad>
References: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
 <20240201122216.2634007-12-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240201122216.2634007-12-aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1709137711; x=1709742511; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=J9xXOsuu/zrmE8tx8GTKpJgtMByVr0NI+8cB4bxXCLw=;
 b=j+XsQAe0jWKgIlauXYG8rqzGH9q9YAoNU5lcyPWxuz7JUj0GUOTw0D1QhRsES9w7ma
 p5xyn+5bR4/NuxdXZPCmY3O79gHjK1XspYAy8tIdi0MZ4MQDxuWWTPmf+s3zSkdQCG4i
 Tnul/T0XlzmgmycW30Uo7AXDZLzNan6ghDbTXMX+rvQOeLV05/qE9YYbGFZGW9g/N6yg
 jsp5OCv5PsbWaIpnPPmUUEQYfemjuS8wBBc3BcrYZHJxEGmv9PBRs7qGBzBHNGDXA4wk
 u+jKV/IGmOXvgBwLZnIhTF8wmBthULuU8uZUvsPJDqtuhsmiXO+AvEqP/yEZr0zmem1z
 f2hA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=j+XsQAe0
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 11/21] tools: move
 alignment-related macros to new <linux/align.h>
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
Cc: Andy Shevchenko <andy@kernel.org>, linux-s390@vger.kernel.org,
 ntfs3@lists.linux.dev, Wojciech Drewek <wojciech.drewek@intel.com>,
 Ido Schimmel <idosch@nvidia.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 dm-devel@redhat.com, linux-kernel@vger.kernel.org,
 Jiri Pirko <jiri@resnulli.us>, Eric Dumazet <edumazet@google.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Alexander Potapenko <glider@google.com>, Simon Horman <horms@kernel.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 linux-btrfs@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Feb 01, 2024 at 01:22:06PM +0100, Alexander Lobakin wrote:
> Currently, tools have *ALIGN*() macros scattered across the unrelated
> headers, as there are only 3 of them and they were added separately
> each time on an as-needed basis.
> Anyway, let's make it more consistent with the kernel headers and allow
> using those macros outside of the mentioned headers. Create
> <linux/align.h> inside the tools/ folder and include it where needed.
> 
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>

Reviewed-by: Yury Norov <yury.norov@gmail.com>
