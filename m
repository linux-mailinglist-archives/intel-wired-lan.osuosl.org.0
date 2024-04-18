Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D99DD8A9AC0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 15:03:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 83721416AC;
	Thu, 18 Apr 2024 13:03:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Dq_bg0X8FH0N; Thu, 18 Apr 2024 13:03:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 92BF8416AF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713445385;
	bh=1EtvARd3LNiKuseaLsK3AxuTAIqX4rdxJ4FBJML0okc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9dJ6Watpra2ICWCRBT252aaNjcHTuQxoE/bxaP3Pz1qNc+8ucAVMDagnt1bmRsrau
	 NiU1HJryDGe4+pBRiHXvlo7HuzllAPxs0dtD3Dnv2F6ai5zL0y6HDkG76CyPzldejz
	 GIrt+vBTNrdy1ID9SQteVt4jAWZ7KiXZGTUEbnMRpFX5NsHuOIGI2jitEKHLU/UPtt
	 K5BpyncObYtEdTYrmVWqGJJIESFbxST0QP90JD0sDkm9Xua7FqFwCsAMKJDO5FFF/n
	 dYn6W2EIzh1geVBRniZfklGsXyn6qg1lNzsUEwjDWfdO2ApuiVixnQjgehmjda19hI
	 FFQgmmr1Y4byw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 92BF8416AF;
	Thu, 18 Apr 2024 13:03:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 972F11BF373
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 13:03:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8336D60905
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 13:03:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M83OhCrqK4zQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 13:02:59 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::42b; helo=mail-wr1-x42b.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 428346062E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 428346062E
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com
 [IPv6:2a00:1450:4864:20::42b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 428346062E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 13:02:57 +0000 (UTC)
Received: by mail-wr1-x42b.google.com with SMTP id
 ffacd0b85a97d-34665dd7610so394776f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 06:02:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713445375; x=1714050175;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=1EtvARd3LNiKuseaLsK3AxuTAIqX4rdxJ4FBJML0okc=;
 b=eqEFEs91q3ablbzXLnugknVdfEdVjgccpaU0kNq/RDd6bdGeuLqFITipX5mFP58nGe
 2FZIMhRpjbiRFakbOfHhvP8cw87vxVcOSUnJsdeRlDeUZx4oyUtNsvaST28r60cWpDxv
 BPRhXlvtVj2tehhSMQJR9sPhYlzUHVfc+90R7QxBmtPqmuEyvVMuRa2U9KaOZGUIDEEI
 8VDGr5hJYG2PKVC4JFuF8PHCOVTYGMhtX0OSB0o9FCcxNnbedfHXJKQ477dYNvSJIYXs
 YOuZxyWhaDBOYhyGmlUbpkmysM+2v43w2Cw3FF1zYvw77v/5kCDj+ozd7xhXjQgciVjC
 k4aA==
X-Gm-Message-State: AOJu0YzJHQr+XdA+9daOKbisLOYv1UYIZ6RPAMx/NjGK2+7JIAIhz8Ij
 yfQuuRuW1dlGmSomgNkqGwTq11Wt0tb2hSpNuAbMvnFcQmIlVzfadhnDsjQx4yw=
X-Google-Smtp-Source: AGHT+IEhPAVXWXhk09rCMXcAkKygM5NW7vUYRMs+Xdl9WLBb+h1dXhG56C/WpvIJLOujdDLTkptYvA==
X-Received: by 2002:a05:6000:400e:b0:34a:3148:47f2 with SMTP id
 cp14-20020a056000400e00b0034a314847f2mr446938wrb.18.1713445375376; 
 Thu, 18 Apr 2024 06:02:55 -0700 (PDT)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 b16-20020a5d40d0000000b00346406a5c80sm1791455wrq.32.2024.04.18.06.02.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Apr 2024 06:02:53 -0700 (PDT)
Date: Thu, 18 Apr 2024 15:02:49 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <ZiEZ-UKL0kYtEtOp@nanopsycho>
References: <20240417142028.2171-1-michal.swiatkowski@linux.intel.com>
 <20240417142028.2171-6-michal.swiatkowski@linux.intel.com>
 <ZiEMRcP7QN5zVd8Z@nanopsycho> <ZiEWtQ2bnfSO6Da7@mev-dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZiEWtQ2bnfSO6Da7@mev-dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1713445375; x=1714050175;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=1EtvARd3LNiKuseaLsK3AxuTAIqX4rdxJ4FBJML0okc=;
 b=2xfVs1ZzdG/WX7mb/gGVZGS6mUeRtHXx9NiJnVz6qKSKKsVMSqgxtEux+bMZdDYYZc
 pNUH0gqh3UGiNmO4oB+HNgvcO8tTtoxgAJ1glNPY5GE1Rj+HBqWlE76qkhDpS3QTYZpo
 k05YRtCbraU+AbYZ9NzboNmG2q7e2J8iFRJKuXmk9qZtVvfF4atrN+RCv3sySOocQsPl
 EK6M8wE8VfI68cvx1BobcGf2IlWZpC0RnaNMB0EIk2ZargKnUxiTi3yqg9fmr/jE4hlm
 YYsraX3v7PySpD/l0QBvFXfjfwNkwyPbhv5Whz0uzlj6PeR5SGchk9xUYZ1YUbcEAW1b
 vQVg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=2xfVs1Zz
Subject: Re: [Intel-wired-lan] [iwl-next v4 5/8] ice: allocate devlink for
 subfunction
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
Cc: maciej.fijalkowski@intel.com, mateusz.polchlopek@intel.com,
 netdev@vger.kernel.org, jiri@nvidia.com, michal.kubiak@intel.com,
 intel-wired-lan@lists.osuosl.org, pio.raczynski@gmail.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thu, Apr 18, 2024 at 02:48:53PM CEST, michal.swiatkowski@linux.intel.com wrote:
>On Thu, Apr 18, 2024 at 02:04:21PM +0200, Jiri Pirko wrote:
>> Wed, Apr 17, 2024 at 04:20:25PM CEST, michal.swiatkowski@linux.intel.com wrote:
>> >From: Piotr Raczynski <piotr.raczynski@intel.com>
>> 
>> [...]
>> 
>> >+/**
>> >+ * ice_allocate_sf - Allocate devlink and return SF structure pointer
>> >+ * @dev: the device to allocate for
>> >+ *
>> >+ * Allocate a devlink instance for SF.
>> >+ *
>> >+ * Return: void pointer to allocated memory
>> >+ */
>> >+struct ice_sf_priv *ice_allocate_sf(struct device *dev)
>> 
>> This is devlink instance for SF auxdev. Please make sure it is properly
>> linked with the devlink port instance using devl_port_fn_devlink_set()
>> See mlx5 implementation for inspiration.
>> 
>> 
>
>I am going to do it in the last patchset. I know that it isn't the best

Where? Either I'm blind or you don't do it.


>option to split patchesets like that, but it was hard to do it differently.
>
>Thanks,
>Michal
>
>> >+{
>> >+	return ice_devlink_alloc(dev, sizeof(struct ice_sf_priv),
>> >+				 &ice_sf_devlink_ops);
>> >+}
>> >+
>> 
>> [...]
