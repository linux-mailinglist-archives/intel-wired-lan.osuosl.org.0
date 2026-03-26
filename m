Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oPAYFWnCxGku3QQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 06:21:45 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 96BD132F53C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Mar 2026 06:21:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2B7B580F08;
	Thu, 26 Mar 2026 05:21:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4cNBZZwyDLnN; Thu, 26 Mar 2026 05:21:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7890680E5D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774502502;
	bh=h6xob+88D6E9GEQn7yU1Wmh2IpOqPRfLWkOOX/qRlp0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ezx8uDnIXfY031b3SPISKByCi/dJQdy5QdH3duMNjTbnkRVz+sCtAvPJ6/mANDhFO
	 3c3IREm1Rv7jYiK/Rdfe2JDPgkad/tWzMpaKFVs/t3Lshqcy1BfWTR45vrmx8dOAH6
	 U9YVudBPaIrXQra+2aJnGhAoRD+3sXk+MTWMmHurY+8q/n5oD6BeEdNZmC46J/2iAA
	 OI5GuVXgBoCzPnakJzuyyh93Uu9rGNpN4d3L8xMnOZkKyxNo5p0n9b2/dn/FZt9IXY
	 dxqmetnhZuw89+DOE+ClLF6ljj5nnOTbjRQC6jEBj8F5uhhUHDy7XOWHlYiUqNQbVg
	 VZd51s4Hg+Zpw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7890680E5D;
	Thu, 26 Mar 2026 05:21:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3B646F5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 05:21:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 215C740B13
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 05:21:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pM9t5jesLhMa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Mar 2026 05:21:39 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32c; helo=mail-wm1-x32c.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8408340AA0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8408340AA0
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8408340AA0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Mar 2026 05:21:38 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id
 5b1f17b1804b1-486507134e4so6734095e9.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 22:21:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774502496; x=1775107296;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=h6xob+88D6E9GEQn7yU1Wmh2IpOqPRfLWkOOX/qRlp0=;
 b=eKFnczKGW1tIzDECIfetMT9KwnpyaqWAdcNWlYNYi/gOqxm5OcAOk4ne26bBEZCHN6
 m4TvrV40Q9xF7RvDglDdYOjfO8fTV6kKnE0DfWxCBOm7R/pVwkxUFy9Os9I8u2cZRfTz
 wKHBeQXOdnyCst44gnmhguN+WvbiSeFOYpgpDQVDC6G370kfckTFQGUfyTZKCY1ctD/R
 GWrEK5+b2e1f09qD806tsBH88dtkRcxwGVoO0MlXC6LOnc0mncNL4yTcOSsLo6/WQanZ
 yQFIj4M+gCGCcWc3U052kgsPBot5dAhjVbhkF71Z72QGHsHWuxFpgc0KAWzFPhPISn8x
 hmBw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUA19USjdrLd42uRxht5eqEj284Z9Hz4ECr58h1Y6GeRPMN8B/xeLLMPnY2e4eWrCreosDCzifaYq2hQ0w9W7s=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxB9CFcxprYLWBXgwZ21NUtHA2hB72E7iM6lQ2+X8X1yOKvAmN6
 FOCOPmUV3NSud97fPaUhdrdJo2PSnx3Vady0lNC4kd0g+fCpLqmLVLP7gyp5zzfn8jc=
X-Gm-Gg: ATEYQzwJ1OStB2AFtAQfGRTbO0b3t1h3KdC+U3su3ELnHxa3wFOd3jvE6vucfUEZ2rq
 xaCiLKRTePIVmf3zS5ILuhVOUDCJZwPVoS4Rf/0v/ZpdzI/FTCEu0Qkoi4PrD631jM/CYrKjJpv
 imo+yfrmcY+lM1UcWZmSdFZLB5XRn5LDw0NS5EcJAiElsLtmpO+V19TWMbNOZp5EKz23BUGTE4L
 PflQDxra+1EaLS81b4hptzmDMmXuMnG02Ra+O6jfQX5dtl9n/5D9aV4Qzbi7fxCv4/HNxpSQwVg
 JKA3uR9aJvQ1e9MCQJOjVd0oAhiawnanEteKpxKl08L22IUnXUFaTEQZSLpkImvevfSU5ed3ev4
 MPnWFuA0XJkalSRa1nLXyWrTN321ra3BvwXlj73JhrNkgPWwiCd5dR01oqmj0LSYiF7qhELPQx3
 ThEEn9LGIOQT8BPZcFQLP7gAVRQ3W+v7iUW5c=
X-Received: by 2002:a5d:64e6:0:b0:43b:45d1:f438 with SMTP id
 ffacd0b85a97d-43b88994ef9mr8986926f8f.3.1774502496388; 
 Wed, 25 Mar 2026 22:21:36 -0700 (PDT)
Received: from FV6GYCPJ69 ([140.209.217.211]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-43b919e7372sm6396013f8f.34.2026.03.25.22.21.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2026 22:21:34 -0700 (PDT)
Date: Thu, 26 Mar 2026 06:21:32 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <npyzzb7a5rvpy3sb6tewabivvje2cqvr625y7tdgfctvqoeagj@42h6ru4dqwak>
References: <20260325063143.261806-1-przemyslaw.kitszel@intel.com>
 <20260325063143.261806-2-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260325063143.261806-2-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1774502496; x=1775107296;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=h6xob+88D6E9GEQn7yU1Wmh2IpOqPRfLWkOOX/qRlp0=;
 b=ilGF+haE+wunFgeK1h2vsDisad/DXhucbF90NjHjlX/Zuam1/EHJKp7JMhv9Hn2B7z
 v/sEpsH/mh254OqEeuMuqDT3gkUPYmp2qSm2NGmEDcykLPqU/KnldGoFx78NrEwT5cCF
 SyaWFaKaMScr2NGBWCMBaljg5SmXaIPSmwBvlOIOcM4qkwopPeu+6zPNr0TduE45k2Km
 D8/z30nRx63mMQCJHFatambGplG/AX/ezbW1FJpK/zNGC4OSRh7Q93kU9p0skM+ANPHS
 HTawUdIiNa/bBPddZ0ht5O0tbunqF3/vyd4+dykNCYtJuWZFPnM4j9bJKFn8wJKFbPOt
 k6Zg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=ilGF+haE
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] devlink: unify
 devlink_shd_get_priv() into devlink_priv()
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
Cc: netdev@vger.kernel.org, Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:edumazet@google.com,m:horms@kernel.org,m:kuba@kernel.org,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[resnulli.us];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[jiri@resnulli.us,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[jiri@resnulli.us,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 96BD132F53C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Wed, Mar 25, 2026 at 07:26:52AM +0100, przemyslaw.kitszel@intel.com wrote:
>Unify access API to shared devlink priv data with normal devlink.
>
>Thanks to Jiri Pirko, we now have ability to create shared devlink
>instances [1]. Introduction series have added usage of those for mlx, but
>without priv data attached to the shared devlink.
>
>Current API makes it possible to access shared devlink instance's priv
>data:
>
>	void *devlink_shd_get_priv(struct devlink *devlink);
>
>but it is easy to forget (especially during rebase from "before shared
>devlinks" era) and call:
>
>	void *devlink_priv(struct devlink *devlink);
>
>which even has the same signature, so it's hard to catch the error.
>
>New proposed API unifies both calls into one, without any increase in the
>observed struct size. (Alternative could be to store additional pointer,
>set during devlink_alloc).
>
>Unexport the less convenient API call.
>
>[1] commit 411ad0605875 ("Merge branch 'devlink-introduce-shared-devlink-instance-for-pfs-on-same-chip'")
>[1] https://lore.kernel.org/all/20260312100407.551173-1-jiri@resnulli.us
>
>Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Reviewed-by: Jiri Pirko <jiri@nvidia.com>
