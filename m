Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 05EF6AD65D4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jun 2025 04:48:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 94AD680D64;
	Thu, 12 Jun 2025 02:47:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 00OGnSG_xXAA; Thu, 12 Jun 2025 02:47:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 209E780CE6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749696479;
	bh=70dF3f186VX/2MCLOuJcDzIuL4GikkKOnVgxPnn7hR4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HOwrqFI3+rrSMMZY/UuqkhffK5H82IQik3L/aqzxbZXFxj1f+4TxvXVGQGjFlQFNI
	 hVUWVyIcJ0D8ca38586U9s2WJksMLF1ivASHVj1rjiIOxQyEP3vYF4eInIYw9w7oqZ
	 U2i/BqRCW4HpzCH/ASMX/abNyTD1a/eDmBb9y3l21OaypC0I2Sx0is50DfpFJxi3vP
	 3WBLGBMH07gWER4gxRR7HHtdfB9pzoI6gc+X4guy7bbvsTwwzCs/9mmC8mdMMeSAyK
	 HasPONCpc8z4hMqhldCqc1gJOYEk3hzrWGVv4FjSaw3qJ6WP2gA7CYc0YwBf6IGJho
	 uXY8KTFAhVR3A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 209E780CE6;
	Thu, 12 Jun 2025 02:47:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 34DBE1F2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 02:47:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1CB134072B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 02:47:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8JnTimGMbyum for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jun 2025 02:47:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::436; helo=mail-pf1-x436.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8E1AF4071F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8E1AF4071F
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com
 [IPv6:2607:f8b0:4864:20::436])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8E1AF4071F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 02:47:56 +0000 (UTC)
Received: by mail-pf1-x436.google.com with SMTP id
 d2e1a72fcca58-74800b81f1bso455700b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jun 2025 19:47:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1749696476; x=1750301276;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=70dF3f186VX/2MCLOuJcDzIuL4GikkKOnVgxPnn7hR4=;
 b=whK7Bd2uCpHn3UY0RYU/n5MVCC/xkOO+KPxOqjSqbrz+CfUvwhmk+Wdf87kcazvi8s
 m0cLIqSrbzq3gsSlF7Yz/3q9tVwksZhaPao4lHwetr6bzDsK9pu1P6pPFx69oJwUyct2
 qzYRHV4my6X+RMeBbKktb1RL3kD1J51uVcplhLC6iUhUEl3K/mBAH4cL5POfaR8kbdlZ
 +tT7nhs/qCOO/4PIKwZALzj1Sgw2lo3JOete5124gNSReKiH11am9IpLFmi1KuD0ka9P
 K+xSuJEY0uYskHkM1Zujd2jMH080sA/8HSWVmoTorrRKUxR0NcCOuNb/d7EKabmMaczV
 14FA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXfaopT1uXSHZVckwZQHpeQTx39e9UbRXTRHbthGix11W3+3hiRum8SZn4LaCBF7JqRx1UZeoCFzWk+5FMUtbI=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwZOb/V+oM0MMABjL1idWX8IuOnwk91DSsLQ5N73Aj4ER5ztIw/
 nYKYqzWxAh4dZpNfSQLT69+yF+8v2MStWQsyRkStbDCfUGVEXgVyA5s=
X-Gm-Gg: ASbGnct1FsOv9ocDcbCyHlF9caBY3Gh0DpPqSX8Dc4opy+6e/e3IDhbWcS6MokrT0VU
 VfvQt1Zydttg12HpTpzHSxWGbui9SUjTdy4NE9lnxI4dzFKhxn6O3XIwuYEveHfloCWYuSP2WF5
 y9ohq+RsnsZDK48spo3EL4TX4z4fKXMjKtO26FuynwPDDurr0piN2uzVsMzppGdMTpEb7zblB31
 q7nuLy35kWv+qBibeDAVT03cWoRJmLFYcqr4299kyEZSwdYpLHooAvJGPBXwhZQVS+8PNUFRD/L
 yot13qLSpLOokr56S14hR5WWEB7bGGPS1ECP7dP/q977BbaS9T0H7ba/zH2cVHHlmpLF8Qsa0tM
 oeLrAUyGxYPKwOs8W07Jc5/E=
X-Google-Smtp-Source: AGHT+IFRKiugap2uRP5iwvzv3ykxNxJY6sSKFAqSQYORKgyM6ljZEvpw3F28685FefjxRCqFHH0xZg==
X-Received: by 2002:a05:6a21:48d:b0:206:aa42:8e7c with SMTP id
 adf61e73a8af0-21f97800f84mr3290374637.18.1749696475840; 
 Wed, 11 Jun 2025 19:47:55 -0700 (PDT)
Received: from localhost (c-73-158-218-242.hsd1.ca.comcast.net.
 [73.158.218.242]) by smtp.gmail.com with UTF8SMTPSA id
 d2e1a72fcca58-748809d3066sm312312b3a.102.2025.06.11.19.47.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Jun 2025 19:47:55 -0700 (PDT)
Date: Wed, 11 Jun 2025 19:47:54 -0700
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
 shuah@kernel.org, ruanjinjie@huawei.com, mheib@redhat.com,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org, oss-drivers@corigine.com,
 linux-net-drivers@amd.com, linux-kselftest@vger.kernel.org,
 leon@kernel.org, Cosmin Ratiu <cratiu@nvidia.com>
Message-ID: <aEo_2hOn5kh6kBpk@mini-arch>
References: <20250610171522.2119030-1-stfomichev@gmail.com>
 <20250610171522.2119030-2-stfomichev@gmail.com>
 <20250611184345.3b403ad0@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250611184345.3b403ad0@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1749696476; x=1750301276; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=70dF3f186VX/2MCLOuJcDzIuL4GikkKOnVgxPnn7hR4=;
 b=cTr7xfmSPBBee3HmO9Cm0GOl3s869NjxEEDZb/FO9jg81AiPmpz1IhA79uGm4kNGrz
 XcNNGKCFHcEBrE45B19pW13jxOYfkBi585J07/eM9lFXmV+bKo7WuWrR4un/8/8pwSri
 kapH5Gkbvz64wDH9mYfnuq3PQ3mFczJ8cn/9eEzr0l+GYZFDOXOAkXwQ3SCf+BSlzapC
 6YUWX2YDfQsD+a2RbmhzdtLsi39EIEJ7waGzV5JvucC8PN7mco3UYmnXR6q+o5ysr79g
 u7CTrsZzSlUAzbdXxXefgR+7HjaEwfXn4v/qnJcyiY46qswZ41LoOqylNa4cUoPVELZf
 xYrw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=cTr7xfmS
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/4] udp_tunnel: remove
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

On 06/11, Jakub Kicinski wrote:
> On Tue, 10 Jun 2025 10:15:19 -0700 Stanislav Fomichev wrote:
> > Drivers that are using ops lock and don't depend on RTNL lock
> > still need to manage it because udp_tunnel's RTNL dependency.
> > Introduce new udp_tunnel_nic_lock and use it instead of
> > rtnl_lock. Drop non-UDP_TUNNEL_NIC_INFO_MAY_SLEEP mode from
> > udp_tunnel infra (udp_tunnel_nic_device_sync_work needs to
> > grab udp_tunnel_nic_lock mutex and might sleep).
> 
> There are multiple entry points to this code, basically each member of
> struct udp_tunnel_nic_ops and the netdev notifiers. In this patch only
> reset and work are locked. I'm a bit confused as to what is the new
> lock protecting :S

I though that most of the callers are from do_setlink and there we have
rtnl and we grab rtnl+lock during the sync. But that doesn't
address the suspend/resume vs do_setlink race, that's true :-(

Did not look deep into the notifiers, assuming they are a way to push
the info down to the devices (under rtnl) plus trigger the sync work,
will take a closer look.
