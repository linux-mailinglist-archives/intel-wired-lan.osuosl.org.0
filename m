Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 65514AD2A62
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Jun 2025 01:19:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1FAA783295;
	Mon,  9 Jun 2025 23:19:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ORUrA28zwn61; Mon,  9 Jun 2025 23:19:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 38191832A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749511178;
	bh=WuMn2eerhCidgiefO3mm6DZg/epTXqNO4m++hNzNzoE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cYypul0G4BwyidgMJr71r5UboLnCt0Bk7VyMeutQyaqWHjuMpoDYiVq/+59x8KADa
	 Lu9Gvr7T2xnAU2G8W5TmLoWFZuRfCXlbCpwYqTZW3o8Ql5Lw1QMPN31svAicT8tUUc
	 9ZJU8uGdOMxMSETlb36NP/NekmbL1E6ixLZaT6E9wkAqrtSBwLEFJ2CM4mcANkVXCP
	 xk2w2MAcW1rcCs+gvUV3es65A+IHzc7Y/r5iky6bfT24KNF3f8eeJpstTQH00RBLGs
	 KiSKK1gCJ5UHfC4Bq4WAeD5GVz2rqQ2dDUDEI7u31c5moITO16fR4ZPktKpPHRPDyl
	 jN5YE+1ZQHSIw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 38191832A9;
	Mon,  9 Jun 2025 23:19:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 296A11A4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 23:19:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0F00D83267
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 23:19:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ctvj_Rx0bnjA for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Jun 2025 23:19:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::630; helo=mail-pl1-x630.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 428FF831F5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 428FF831F5
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com
 [IPv6:2607:f8b0:4864:20::630])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 428FF831F5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 23:19:36 +0000 (UTC)
Received: by mail-pl1-x630.google.com with SMTP id
 d9443c01a7336-2351227b098so36745855ad.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 09 Jun 2025 16:19:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1749511175; x=1750115975;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=WuMn2eerhCidgiefO3mm6DZg/epTXqNO4m++hNzNzoE=;
 b=gVN2pj9RZXSqPbuU7vflnEpubDEV2w3Z8UxnxceUbL3UZF272XXeY3jIhZsxftZA9w
 pvMBlY1ajl2WK30hIFf8TSDIn2UyZZrvoN4abWmE7n+3S50Wyq3O3W+1WR23lfWG9YFW
 3c21lG2gaD4/apKCZc9uC+c1Pu7OLcJm6sJDVkNgSXKoahTuw8q1tsp3rnzrbC4hbgw9
 VgtMyb1aKhMWfPNMZOQ+pJ1XeMpRpoQ0jy2MT0I+lvtJvf4Wv5fXVeIKA6xvYRffx6nQ
 Gx/Fo3ysjRycD6Xu4EXQZxyKh/ees3dVV8wyemNIkH0ui1LcXdEf47EM7oyW1wGSMXUj
 6Blw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXmPDdEHFOM28fBsXjaI5Lzc6CpRm1MshzmwnOzcwkHAyK4RpnVIXRLDtqLOqLQ4wIXcjAhP2JzvQqMJFhAwUI=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yx5lXenbEqaYXm60g4x3+OkWMNgCxq6lT/iQAOVmPM/EEq77Lw+
 SJ7BDwT9Y/1mYM/AYMgpj1DL5KDHuHXvC7AQdh9wOKcVC4Jc34TYKm0=
X-Gm-Gg: ASbGncsButpbbDlEv2PKq752Xfd4SYo8DS3tJaOGO+ygS33dVxQHctFCEQZZ8NXjAKV
 E/ASCo3j/PSzk04XkvzZSD4hFgMQcTt605h4y0YOq0oPP1UZh/cyxRF43V7HPd9qff4Ei01W7wk
 SqO36zKk5x/RtIriWgAciXQScwQzParVjD2ySumVciH1CBmDXRxbDE5P8lgxDwt7ZUBeo4xxT7O
 PqCa33LLUB+4GkLhQnpUEvH1I720a37X9YRe3Y0fJ+sXuTynLD/VSG2HWep++Qk4Okj+njXQ/sd
 NcI1lWyXVmGWaTCoUybzTbpYI221vIZMPlpCbQ16Xt3tFlSXOpPtc5Hb4IFXfSPAsBVNesdtUva
 +kySYaD51VeI2Re2vi7Ik/gxK/XNcXDuFyg==
X-Google-Smtp-Source: AGHT+IEV8CpYnlOB2YnfAeL9gQJAXPfboUO10GUHaeUTiTj5LkmkPPvpLnBpPyH1TV/VU7MOCFUvRA==
X-Received: by 2002:a17:902:d2c6:b0:235:efbb:9539 with SMTP id
 d9443c01a7336-23601cfebb3mr204848925ad.17.1749511175460; 
 Mon, 09 Jun 2025 16:19:35 -0700 (PDT)
Received: from localhost (c-73-158-218-242.hsd1.ca.comcast.net.
 [73.158.218.242]) by smtp.gmail.com with UTF8SMTPSA id
 d9443c01a7336-23603405fcdsm59911355ad.159.2025.06.09.16.19.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Jun 2025 16:19:35 -0700 (PDT)
Date: Mon, 9 Jun 2025 16:19:34 -0700
From: Stanislav Fomichev <stfomichev@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Cc: netdev@vger.kernel.org, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, skalluru@marvell.com, manishc@marvell.com,
 andrew+netdev@lunn.ch, michael.chan@broadcom.com,
 pavan.chebbi@broadcom.com, ajit.khaparde@broadcom.com,
 sriharsha.basavapatna@broadcom.com, somnath.kotur@broadcom.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 tariqt@nvidia.com, saeedm@nvidia.com, louis.peens@corigine.com,
 shshaikh@marvell.com, GR-Linux-NIC-Dev@marvell.com,
 ecree.xilinx@gmail.com, horms@kernel.org, dsahern@kernel.org,
 shuah@kernel.org, mheib@redhat.com, ruanjinjie@huawei.com,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org, oss-drivers@corigine.com,
 linux-net-drivers@amd.com, linux-kselftest@vger.kernel.org, leon@kernel.org
Message-ID: <aEdsBhZ4C--0ohYj@mini-arch>
References: <20250609162541.1230022-1-stfomichev@gmail.com>
 <20250609153817.14d7e762@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250609153817.14d7e762@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1749511175; x=1750115975; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=WuMn2eerhCidgiefO3mm6DZg/epTXqNO4m++hNzNzoE=;
 b=PWQwp3jNpwU2h6Sp5LxfN/kKuaOv6Vh2AmfREBpgNhIlJtBLakNHDkTpLgRVxtahsn
 w93gXI6uZt4N1309vsgXc5MU1BcwoFiHN9cMqzKtEngg5HA7oDepZR6tD2GYWCrPkViH
 cX3D8jL0dyDXay7w2Cui4uV2FZSNoKFtCZd5CrzrEpyhk+1cjcTTMifUCrEtF9NxGJUl
 TlQtsDbszwWyAJ8ONRsWNUiYf5ZcFJVxEFPTkGRZpaCmZHCtu1vQsY4oiAyP9+u0a0T4
 ZvGsppXbWUUL6dJdARjE7Fhbzwjo4grVqqEapjJq8VWY99TZGXVQtlv9eBYCJ3+Qaw12
 HUoA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=PWQwp3jN
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 0/4] udp_tunnel: remove
 rtnl_lock dependency
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 06/09, Jakub Kicinski wrote:
> On Mon,  9 Jun 2025 09:25:37 -0700 Stanislav Fomichev wrote:
> > Recently bnxt had to grow back a bunch of rtnl dependencies because
> > of udp_tunnel's infra. Add separate (global) mutext to protect
> > udp_tunnel state.
> 
> Appears to break the selftest, unfortunately:
> https://netdev.bots.linux.dev/contest.html?test=udp-tunnel-nic-sh&branch=net-next-2025-06-09--21-00

Argh, should have run it locally first :-(
Looks like there is a test that sets up pretty high sleep time (1 sec)
and expects entry to not appear during next 'ethtool --show-tunnels' run.

Gonna double check and remove the case if my understanding is correct.
Don't think there is much value in keeping the debugfs knob just for the
sake of this test? LMK if you disagree; otherwise gonna repost tomorrow.
