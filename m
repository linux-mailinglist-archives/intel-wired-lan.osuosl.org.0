Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 517899930F5
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Oct 2024 17:20:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0B84B408FB;
	Mon,  7 Oct 2024 15:20:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l-NPzH1v7vH5; Mon,  7 Oct 2024 15:20:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ECF144092B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728314438;
	bh=pPxzdbrBTki/yDMf9zuDFMMZBiHu7JxpPiSGspfiGJ8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aqhZUSh7AOSNslMCAQdXBDosx45UeM6V3sR4YNg0xnsN08oEUfxmaThf67eskvTbL
	 xM/V77evgGD8zLPV+ZAHMsJkKAEEYIvugEZTUO1PeDMKSPMuZtyodPX0KVW3nzdVrC
	 SRnJws9Ukq4ARcLm2ihp/ZTkr6rA07vsLUe4SZDaBq5+EUC5ZmK5Wl9OVt9rEZ8LUN
	 Tx/Tb69TnspP2qFtGmVROQ23gXet86SGGoAs5p40KYBfEUZHGvLnuFyk96qwhvAoMP
	 GJWvRQejncfRZU7c51wbulpGsDGjHjEJMoOCYs5gIJqztffh6pKTa+OEsLHbPDsiYc
	 gDnwUlOz9pfrQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id ECF144092B;
	Mon,  7 Oct 2024 15:20:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 65D631BF289
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2024 15:20:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 60D1F60752
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2024 15:20:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HmTmZjcOP4HK for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Oct 2024 15:20:35 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::62f; helo=mail-ej1-x62f.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 47A3F6066C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 47A3F6066C
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 47A3F6066C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2024 15:20:32 +0000 (UTC)
Received: by mail-ej1-x62f.google.com with SMTP id
 a640c23a62f3a-a9957588566so143555666b.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 07 Oct 2024 08:20:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728314430; x=1728919230;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=pPxzdbrBTki/yDMf9zuDFMMZBiHu7JxpPiSGspfiGJ8=;
 b=WSrjYVpenhjyf5h6vT9S/gKTG2pKVdlCRzmyxWc1CrjlrJJZiyi2rSjNSgzeDYsqL5
 f7UReusr1JOxEr1i10n6MDQknWoBt5A7zxBaEVwpn7tfj+G6CDe7fuSVnk7sMUt6FKLL
 Wi0h3E+k/7amgNWgrXDgMeJVtlC2rXOJbbpODCNGUsVYVWsxWKiCB4gm4Jf4ViO3nvFx
 R3wONEfzHp7ySjCZFXVP6o3n9BxN3Aivn0UxHzEXL4EeqPhrja8Vg4X+sxjMEQarh45X
 Yq5gdTiPzfyepB3j9dXCbDkbswvC4X9b3SCgrZIh0YGaaGu68dkKa5lVuvDt6y8c51ST
 CR2Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCVeSW3JaRtpkDgSq+meJep6NmY48kcSj29u+/VguRWPK5tA8wzHhnrvSvaRl8ywir2270xFnPW1mguBMUWwjbY=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxtG3ZhBEunTIYCp1LWEW7hxqz0eiUUNBHYZKCLAAju+VxaJX0+
 WsVMMY0QS5ariPZtv4fh0TSUDJ2wmtRyIL8qWz1no5R1sQXhBTksizXirMIQy9Q=
X-Google-Smtp-Source: AGHT+IGFPlkUrUyWa4Kqksj7oKkVWDH7XjJailgRfGtZS5xJypLhfrZ5Hyr0z5iyK1N2zJalyOYRIg==
X-Received: by 2002:a17:907:6d17:b0:a8d:2d2e:90e6 with SMTP id
 a640c23a62f3a-a991c00fb55mr1357264166b.60.1728314430225; 
 Mon, 07 Oct 2024 08:20:30 -0700 (PDT)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a99429c8bb9sm293586966b.196.2024.10.07.08.20.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2024 08:20:29 -0700 (PDT)
Date: Mon, 7 Oct 2024 17:20:25 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <ZwP8OWtMfCH0_ikc@nanopsycho.orion>
References: <cover.1727704215.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1727704215.git.pabeni@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1728314430; x=1728919230;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=pPxzdbrBTki/yDMf9zuDFMMZBiHu7JxpPiSGspfiGJ8=;
 b=kE4/7wFQnvu7ttnHU70XTTbyWmJOxisk9H4TSX2k8phzRdkDn1pmkn22uYe6RE2Y/Z
 i4vcNTPFTLbBt1J//dExr9HuA1NkUEi5wEZ5uH5seFg7yKcKxT2MB+3ibL+ZNCHXftVb
 VwBOWm+WrxL8bHPegTHME9GPbaBtBqqMTmi86e5ujMn3CqBv1Nug8mkRvCNEPHdN47fk
 PyyKNshmtQT6Uhewy8GrqkxHZcmMW8cn/mNkbDTTFEoTrz7QQWpScURjuvV05YoYSUlk
 DUVVkGVvWNRGm2E+YASCD+p9l1desAc3oKXhETb5KabltE+D9jJaRru/nwcsKUHZZzLi
 PGiA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=kE4/7wFQ
Subject: Re: [Intel-wired-lan] [PATCH v8 net-next 00/15] net: introduce TX
 H/W shaping API
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
Cc: Donald Hunter <donald.hunter@gmail.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 John Fastabend <john.fastabend@gmail.com>, Jamal Hadi Salim <jhs@mojatatu.com>,
 edumazet@google.com, Madhu Chittim <madhu.chittim@intel.com>,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com,
 Sunil Kovvuri Goutham <sgoutham@marvell.com>,
 Stanislav Fomichev <stfomichev@gmail.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Mon, Sep 30, 2024 at 03:53:47PM CEST, pabeni@redhat.com wrote:
>We have a plurality of shaping-related drivers API, but none flexible
>enough to meet existing demand from vendors[1].
>
>This series introduces new device APIs to configure in a flexible way
>TX H/W shaping. The new functionalities are exposed via a newly
>defined generic netlink interface and include introspection
>capabilities. Some self-tests are included, on top of a dummy
>netdevsim implementation. Finally a basic implementation for the iavf
>driver is provided.
>

[...]


>---
>Changes from v7:
> - fixed uninit error and related ST failures
> - dev lock cleanup
> - fixed a bunch of typos


Was out of the loop for last couple of iterations for personal reasons,
sorry for getting to this after such while!

Overall, I like very much how the patchset looks right now. I reviewed
it, didn't find anything noteworthy.

set-
Reviewed-by: Jiri Pirko <jiri@nvidia.com>

Thanks for the work Paolo!

I will try to convert devlink rate to this api soon, I promise.
