Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D001A86C4CE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Feb 2024 10:20:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4BC244050D;
	Thu, 29 Feb 2024 09:20:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nLircgSQ7Eq6; Thu, 29 Feb 2024 09:20:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 72D2040362
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709198414;
	bh=3WwQvPtrchQr55jMR6QmPbP1tMQ2V4TzDErrhsqCBXY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oJZTC5CorffsOcOGDEjwDT+d/OoMvAVvsLaVJMwgo7eNZc4G4KwP9okj0Ha3C6zVh
	 1u1RMJgh9ZeTXadtrNOkCz5PvZHjvQhJ5+29uB5ucfN4LhgW23ubiJhK/p+GXwo7xs
	 nnWu7yw6Q4hA/BOIi0Ib/gFK2xdgY6uQoY6xIFk7SX0UGQI8+SPR5Ps9GqI9diW2Bp
	 gOnzqSsrhfSgYmsFH3lkcMjMwiVc/C/sdGWQE2lYr6XiDZX4s0vXZTN8lhR3c+vBIL
	 WLynBC4tU6CMYjefC8dRcInpndbtX6nUgCn4dPXpPegZQID5Zes0ev5SwIwB8dlLc5
	 Iqy9FXk6W+Wig==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 72D2040362;
	Thu, 29 Feb 2024 09:20:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A37541BF408
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Feb 2024 09:20:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8DD9D40531
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Feb 2024 09:20:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c4ejzQ-PdPFn for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Feb 2024 09:20:10 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::633; helo=mail-ej1-x633.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org ABD06414BA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ABD06414BA
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ABD06414BA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Feb 2024 09:20:09 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id
 a640c23a62f3a-a3e550ef31cso87818066b.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Feb 2024 01:20:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709198407; x=1709803207;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=3WwQvPtrchQr55jMR6QmPbP1tMQ2V4TzDErrhsqCBXY=;
 b=eVAwzGsUvLweqbQOyzOLDZEMtuUzlwnTLi5JiqRLMjMEqW8PCOBYD1wKRBS9fh//4m
 cSVxiZRSmhZSBXPeb1dwyixfjwIdVJ1B64xQns+gEadxzzXNx7OBg9F8Mo+JQDk3Peba
 GUdnDsZBFKY+kTiaek8WrBmbZnJ3KdgYhRlay8qQobON72tVYGyThDkiLL5Q7E3+WL+h
 /YWMJFNoG9rX5nR0F8ap497AekWFjXx9IuVLIjwS5eBEGG6UePK4G7hoQLYi03aNr51O
 muyPuRqFOtFrLQP52fBH3kGI/22Siu4U7bXx1Ka4cbcNkSpGZF4ScETMnGY6hPaS+dx7
 uFDQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWkStZxlCfsFjHitBDngFDp1FxeOUVBvAgiykuE0JcMMBad9UDct1qgTbTrEx1mFdtJb3+LbqVxj3X0Z9HMftVPDfNBnaF7hnGRet1rGEtuJg==
X-Gm-Message-State: AOJu0YzJphdkWswdPCZOQuT8VDLCMSY+Xdxetw8p3resTiupztegWxxl
 OcswJkW2xz+WUJd9iCA/eUte3ScvBgwaOtMBmMDXC+mpBXm36R5jddAlB9V7H/E=
X-Google-Smtp-Source: AGHT+IH4DjWRcIUwOnrisXOgXOTPoAtgvr+Hfo1U5qDrkqpiXjsIbxHBau+xcepAx4WAx5xlZ3c19Q==
X-Received: by 2002:a17:906:1c4b:b0:a3e:a3c3:9658 with SMTP id
 l11-20020a1709061c4b00b00a3ea3c39658mr1054883ejg.22.1709198407361; 
 Thu, 29 Feb 2024 01:20:07 -0800 (PST)
Received: from localhost ([86.61.181.4]) by smtp.gmail.com with ESMTPSA id
 s22-20020a17090699d600b00a3f4bb02bc8sm488281ejn.42.2024.02.29.01.20.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Feb 2024 01:20:06 -0800 (PST)
Date: Thu, 29 Feb 2024 10:20:05 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <ZeBMRXUjVSwUHxU-@nanopsycho>
References: <20240228155957.408036-1-larysa.zaremba@intel.com>
 <20240228084745.2c0fef0e@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240228084745.2c0fef0e@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1709198407; x=1709803207;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=3WwQvPtrchQr55jMR6QmPbP1tMQ2V4TzDErrhsqCBXY=;
 b=Cr2WS45DwG14968YVfI86rxmXyMAspB9Ehr443DaP3GPbaEESJJdhJ9Jk5JCdFsH2f
 /g5Ima9f9mffZ7Z5we/7LWsl3YOU4NHDRvCra4we901WoyCtnSTZkF+mVWG3PWFcdi11
 1wUS+940UdbQ5ilEbaB/cEECY2VhXTwP0lNgVDh2tVjfCYZoxLmhzIQhiGIX+Kf0Fr0J
 AtNaj0g25Q2f6g3US+xFwQ+lFBi1LlGfoSvEeDIXOxDAehyCMwzrwzPkrWOjHHJbuguK
 UqCvGwzv2mR80nCAR9FurXNWTGl8A2c1ooLxuEjQJih+eIq5s2wj9WkmK31Y0/SZo4/3
 cupg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=Cr2WS45D
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 0/5] ice: LLDP support for VFs
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
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Eric Dumazet <edumazet@google.com>, Larysa Zaremba <larysa.zaremba@intel.com>,
 netdev@vger.kernel.org, Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 linux-kernel@vger.kernel.org, Jakub Buchocki <jakubx.buchocki@intel.com>,
 Pawel Chmielewski <pawel.chmielewski@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Lukasz Plachno <lukasz.plachno@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Pawel Kaminski <pawel.kaminski@intel.com>,
 Mateusz Pacuszka <mateuszx.pacuszka@intel.com>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Wed, Feb 28, 2024 at 05:47:45PM CET, kuba@kernel.org wrote:
>On Wed, 28 Feb 2024 16:59:44 +0100 Larysa Zaremba wrote:
>> Allow to:
>> * receive LLDP packets on a VF
>> * transmit LLDP from a VF
>> 
>> Only a single VF per port can transmit LLDP packets,
>> all trusted VFs can transmit LLDP packets.
>> 
>> For both functionalities to work, private flag
>> fw-lldp-agent must be off.
>> 
>> I am aware that implemented way of configuration (through sysfs) can be
>> potentially controversial and would like some feedback from outside.
>
>Why is the device not in switchdev mode? You can put your lldp-agent
>priv flag on repr netdevs.
>

But isn't it a matter of eswitch configuration? I mean, the user should
be free to configure filtering/forwarding of any packet, including LLDP
ones.
