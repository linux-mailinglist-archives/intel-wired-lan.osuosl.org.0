Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 697AE8A9976
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 14:04:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1B883408C3;
	Thu, 18 Apr 2024 12:04:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YDLu8Cuuby9m; Thu, 18 Apr 2024 12:04:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 11BEA4159A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713441875;
	bh=37f3ccn//ByTUoAR5JHG4cni1pFUTiZHTlyJI9lNZHw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ryt4kx77c9xV4+qFm9n9kJLzVy03ipIiRhvE4Miu4M3Bgn2qkREuMfHfaJ5/QNLsT
	 XUq6oPfw8VAmxwP9HA7xK2Q+1SlaHIUmYUha8GoCQA1E1OByoQ29J3aNi8CbBu3rlQ
	 Od2jSM7UW0168LefgrWDTbfTJOPP5h/McmUv2qfW3TYkPUGter5yWvNLUnHNXilHXL
	 Jno56+6nuCipkI5nR9N3rll0rkZw2M2WcqWvv/oLgssnawireF+7QI++lnDXCd/T54
	 PmqeeJO4yGglx04RgnS7j0fdDr0q903FtbmOVfBnGQVWThX1sHOZwYXdtavr/9YE9B
	 MKY+w/lVgGjPg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 11BEA4159A;
	Thu, 18 Apr 2024 12:04:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9F3F81BF373
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 12:04:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 97230402C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 12:04:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4HjPE5auszZ0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 12:04:27 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::629; helo=mail-ej1-x629.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DB301402BC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DB301402BC
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DB301402BC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 12:04:24 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id
 a640c23a62f3a-a51f9ad7684so40128066b.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 05:04:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713441863; x=1714046663;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=37f3ccn//ByTUoAR5JHG4cni1pFUTiZHTlyJI9lNZHw=;
 b=cWpeqtYEYwOK9uJiOx4H5rVMZfj+Gf/tYgc7O5YXnfve5D0VaXnsJ4GNTQQ+ll4jR6
 DaH4sqx61Pwl0rC2/xzSnGkYv//1xPp/yIkfRz0X7eKpSBZly9s6hYBf2eijx/ectkte
 3mA1u2jfQyB05x6uPESzADuPct9o9q31orkx42VwwABMiJxZpZKKKFmnMLM1677nA+iy
 aNvVrBiSgvyB2190Mjys5uKDwQWDBocIxMGdOd6mQUngbXYyOV3mq0jxMz9IX3bpnNyC
 YRuKw5bNHzn4KXqCRAKD7UmjoQ0egmRk7eU7PBxATA08XUsn7ydZBbuu3LFcfuXX1b35
 0DdA==
X-Gm-Message-State: AOJu0YxNdoUS4l5h6/ZZgo8VDY5wPTj1wbH9Y+PLCp3rPD8IoKVZghLK
 mdD43RVf6MUX8+bNE2QxQ85snONCKvNnaZPIZG3JwEZhgLRnk/3tgU+Cmywsyq8=
X-Google-Smtp-Source: AGHT+IH7SHBw7rC7zllH17bUzX7FhKAwi9y3jf1g1iOqWa0GZ7feR7s5nEWChL+Fwranei5nHBwbRg==
X-Received: by 2002:a50:cdc1:0:b0:56b:986b:b4e7 with SMTP id
 h1-20020a50cdc1000000b0056b986bb4e7mr2035401edj.27.1713441862964; 
 Thu, 18 Apr 2024 05:04:22 -0700 (PDT)
Received: from localhost (78-80-105-131.customers.tmcz.cz. [78.80.105.131])
 by smtp.gmail.com with ESMTPSA id
 s12-20020aa7c54c000000b0057025ea16f2sm790411edr.39.2024.04.18.05.04.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Apr 2024 05:04:22 -0700 (PDT)
Date: Thu, 18 Apr 2024 14:04:21 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <ZiEMRcP7QN5zVd8Z@nanopsycho>
References: <20240417142028.2171-1-michal.swiatkowski@linux.intel.com>
 <20240417142028.2171-6-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240417142028.2171-6-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1713441863; x=1714046663;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=37f3ccn//ByTUoAR5JHG4cni1pFUTiZHTlyJI9lNZHw=;
 b=j3daUWZf2YgLIVLp8EY7aKQGTwbWF2W1ijpcOCtMvM8cdiX8g5GmgcrdG4/qDbhiLn
 lrsVsOaBE37mJSd8SliXLVyNIDE8b2ULhOPta5kt74Mj0qrmIbv0dRIeKMWYOm691Mm1
 QBK82kEnV9IDXGKKrvkBf7nHxt0i/WqbcMSBXJlbyk/OaHYV9iIvq6AyFw0WRpn59g55
 Y4vjby9f4Ccc3qrSBsixvUPScya3HB/l0M4xOy2XMwkGSjsVPrgStwGZmYlAVGc80b/v
 6dhBqu7hCqcnv2iQazWkR5ke5vBmY6fixEYrVl7Dm1A5xTqNxt5NIuiaMJJoGQ7JYA2O
 8LJg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=j3daUWZf
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

Wed, Apr 17, 2024 at 04:20:25PM CEST, michal.swiatkowski@linux.intel.com wrote:
>From: Piotr Raczynski <piotr.raczynski@intel.com>

[...]

>+/**
>+ * ice_allocate_sf - Allocate devlink and return SF structure pointer
>+ * @dev: the device to allocate for
>+ *
>+ * Allocate a devlink instance for SF.
>+ *
>+ * Return: void pointer to allocated memory
>+ */
>+struct ice_sf_priv *ice_allocate_sf(struct device *dev)

This is devlink instance for SF auxdev. Please make sure it is properly
linked with the devlink port instance using devl_port_fn_devlink_set()
See mlx5 implementation for inspiration.


>+{
>+	return ice_devlink_alloc(dev, sizeof(struct ice_sf_priv),
>+				 &ice_sf_devlink_ops);
>+}
>+

[...]
