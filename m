Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id ADB0D86B4FD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Feb 2024 17:32:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 65FA860E7F;
	Wed, 28 Feb 2024 16:31:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v-Vbtui5Lfi5; Wed, 28 Feb 2024 16:31:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B5D7F60A52
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709137918;
	bh=y00SGrd9M6s3CDkf95KQLhsTphwzXhcDaiAvmjSSj6k=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=A8tuyLpt+oPLW6hnw0BFosL1nqkOJ+RopJ+jUjLbtVNyHafJguedmgn0xOH6fADU7
	 e6U9bBexhAwxOEudOpb529S7bPrGx2GUF/ZZvOwbWRG/5h8sN6ZAu3k7pTtuAM7Cf8
	 8o/hG0jBpSqaobQ3YcWNViwMVlTOE+RDnPvjeSIybK9TxK6yBsK7R5viUgrbRMpgAE
	 qXNjfJyjVtj8vq7XUzHjV/J0VAN8/b8B63eaZxro9PDc11eA5uQQ6By2ZIeNM0RK8b
	 5yeZ3+O9zRvYnUUi/gH5CW8HZSr7V8RIxbGOdCMLAeg/50f9I7Lf0YEGN3Fi3yyrOD
	 WaUx3UXbm2hSw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B5D7F60A52;
	Wed, 28 Feb 2024 16:31:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B74D71BF2B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:31:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B154E60A4B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:31:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pri4k6wXiL9h for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Feb 2024 16:31:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1129; helo=mail-yw1-x1129.google.com;
 envelope-from=yury.norov@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 04F4060857
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 04F4060857
Received: from mail-yw1-x1129.google.com (mail-yw1-x1129.google.com
 [IPv6:2607:f8b0:4864:20::1129])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 04F4060857
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 16:31:55 +0000 (UTC)
Received: by mail-yw1-x1129.google.com with SMTP id
 00721157ae682-607c5679842so57461417b3.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 08:31:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709137915; x=1709742715;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=y00SGrd9M6s3CDkf95KQLhsTphwzXhcDaiAvmjSSj6k=;
 b=tsxU5UaGBGDaoaia3hkHKWjTbqIb0cG5L8JJ5IXYnup3JSytPKFmbSv78G9Kv/YLTJ
 dAXgMlF1gQZ6gJNfyaNMgWfFwvt9QWx0PNjkG699dVt3tIOmT5Cw2rIDJrJjzfiuqGFm
 M1jP9kyugladPVGB/vnvSsHKRSsyhZm9T9KVXBnUTeLYjF3e7ij7lbIYAh2qjAuFHTYD
 Qp3YvsY8jUsjQ/Q4NtDOhCYxVYgJACjDFaeHVnGa271uyB2wxa+HOk4ABiWTkT0v8++2
 nxMjwZ5V7ln91Ldg1eUncWjRXQFDv871tgvfVHbPTOHB3ONskpTEE9OPwIvccjgbUM/b
 5ewQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVAJ/5VcFZgDcsmatipQA3pXa08fzSPawZIM5l8C/r++RfrrCOtxP7U3bL7BhRa1+8O6lD89wGoumtD6WnuDybhjf0ZKbwWeUwNz0F7A+TipQ==
X-Gm-Message-State: AOJu0Yw4L9ndD78F/RLr92ZLeIFKl4v7s5rK4nY9n7zCNTIIeiibAzDC
 2HIS7HTnKNXSoIZ7c4nePRIs5TUP8BHPjTmQ7928Hh32YLyyjuM1
X-Google-Smtp-Source: AGHT+IGj4/IjP6v6QkD8PC0HSa34HyvewYGdsnXngXKn//7R1aZlo6viivB4X2GagxTTDYApigz2/w==
X-Received: by 2002:a81:ef14:0:b0:609:37fe:fb97 with SMTP id
 o20-20020a81ef14000000b0060937fefb97mr3571358ywm.4.1709137914777; 
 Wed, 28 Feb 2024 08:31:54 -0800 (PST)
Received: from localhost ([2601:344:8301:57f0:2256:57ae:919c:373f])
 by smtp.gmail.com with ESMTPSA id
 h135-20020a816c8d000000b0060923196f02sm1154828ywc.13.2024.02.28.08.31.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Feb 2024 08:31:54 -0800 (PST)
Date: Wed, 28 Feb 2024 08:31:53 -0800
From: Yury Norov <yury.norov@gmail.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <Zd9f+W33T+jWalBF@yury-ThinkPad>
References: <20240201122216.2634007-1-aleksander.lobakin@intel.com>
 <20240201122216.2634007-14-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240201122216.2634007-14-aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1709137915; x=1709742715; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=y00SGrd9M6s3CDkf95KQLhsTphwzXhcDaiAvmjSSj6k=;
 b=gLN4NMAbNhUcDTp64VvP8OqOs2EbUJuwf8VW28rCNoQZoQFGAdwHUjX5QN/1XVeJ6a
 /KT2Owla65Zz4HpJXGHhc4s0S1Pqtsjyn+GDBnZsHS1ey0xg/1+TmpEmhNc+l/fhlZWz
 RZ6/PvDU2dtXpMEt6u3QaMeZx5kAfFuty7kXVKxvqJcdSfbLJwy7Rbosb7NSLnbSTaRg
 FKSItzZGiV55e1w6iY+b2Dk+LdmNVg4HCY8/pmeS6FOGkppg68zQetsnOHQE22gFfE/k
 ykrr63EQ/5OQHlCW1uSrlOdW/sJNsK+Bm4l1I7XQhXv6QMpUMfk2KD1GSIBDG795i6Sv
 rZxQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=gLN4NMAb
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 13/21] bitmap: make
 bitmap_{get, set}_value8() use bitmap_{read, write}()
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

On Thu, Feb 01, 2024 at 01:22:08PM +0100, Alexander Lobakin wrote:
> Now that we have generic bitmap_read() and bitmap_write(), which are
> inline and try to take care of non-bound-crossing and aligned cases
> to keep them optimized, collapse bitmap_{get,set}_value8() into
> simple wrappers around the former ones.
> bloat-o-meter shows no difference in vmlinux and -2 bytes for
> gpio-pca953x.ko, which says the optimization didn't suffer due to
> that change. The converted helpers have the value width embedded
> and always compile-time constant and that helps a lot.
> 
> Suggested-by: Yury Norov <yury.norov@gmail.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>

Signed-off-by: Yury Norov <yury.norov@gmail.com>
