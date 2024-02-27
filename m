Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 93DD586901A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Feb 2024 13:18:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A1EEA60B9C;
	Tue, 27 Feb 2024 12:17:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nrv27I59UMXw; Tue, 27 Feb 2024 12:17:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D34BB60B95
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709036277;
	bh=HuXDHId7fuKEY2MA5rzWQfyKuPAeNZD0D18+VnJhFgw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KXNsLeLFxmS03a8lRWHpm3U1yM1DvM+1Jd45ySexCHkjjIRiswxZZf61+MMu15kf9
	 nWhxJl0Qshu3t323TMR958I4InTK3iikc2geW1XLPloifDKgmfLDdRvlQbAFDqHje8
	 G8lV2nNAb1oJQD+XAKer0n5i+Y8LKMctaMIglKV+/Hn8xILYQ6l/ljnEh5fy6JYjSq
	 AtPIkkNGLL0NR6VXuS6sjLZxPNlWHVEP8addqQRSs2+1tQ7X6grCrC3oQCaAFamtld
	 yYX5TMP3kiZVcsTwA+UvhWHadTZ9YJESBbYMs2dENQWxkBleDN1SdcHafVXe0Z7meO
	 UP5ieARrR72jg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D34BB60B95;
	Tue, 27 Feb 2024 12:17:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 16FD71BF345
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 12:17:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F3AEB40459
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 12:17:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CdxxkozctejG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Feb 2024 12:17:53 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32d; helo=mail-wm1-x32d.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 912A340443
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 912A340443
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 912A340443
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 12:17:50 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id
 5b1f17b1804b1-412a9e9c776so6058105e9.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 04:17:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709036268; x=1709641068;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=HuXDHId7fuKEY2MA5rzWQfyKuPAeNZD0D18+VnJhFgw=;
 b=CktnV+Bf6zKy6LOhiJMz4yqGLjzo0YGmTlFjxBFSqxpYCDm7Euhz9pVmpbKyzSmX7x
 z//cZaigjN3H+lgCt4Vavo8M8n8KfJ78c3/wVY5EQ/kGH0Za190TxRFCDlnkhZiA552b
 uRPrsYhtKXS1BbnwBpS5CRvyR8K47Njoajy6/zlgvaQCykzuUkX5TW7DZdDFKipcmegD
 EpHwn8i1DGUmzQtLO500wsfjZpbWRUiLSuL86yTubNLkhwv84ciM2Z1C9uFhWEkcZAh9
 JPWE4/WIC7V3v/WT28Y5Nnz4GOKbMltsnoWfYcJEr3UeNNe1axZ59IeYIoFWzsLllDP1
 DQrg==
X-Forwarded-Encrypted: i=1;
 AJvYcCV0LfWQpVFUMKOGeltgFUiadvApalu/SecJ1iPwYzmZ9Gt37vXWnEpzrnpFSmnjSsjLUwhh9VBxApnvRCnp7kCeU/jRQ5rO9Eb+DlxjZOxnTA==
X-Gm-Message-State: AOJu0YxFvfjGOKn/tiFX29uspxxCj7NWvm/flQ5sssR8kdSRWn70a0yS
 1KUB7AeXrLAlRt+aebJlLQ+c9Er0seHM+pTHlkJiLXxlBjQ72DEHyfktvSPq11M=
X-Google-Smtp-Source: AGHT+IFdqWRjtqXQv6YmRyak547KLI+WLKcZ1zHDH3jhuWGZ4wzZwZEGEm/LpsWnxUSzxeaCwJPiOg==
X-Received: by 2002:a5d:634f:0:b0:33d:39db:a0f8 with SMTP id
 b15-20020a5d634f000000b0033d39dba0f8mr9564225wrw.7.1709036268506; 
 Tue, 27 Feb 2024 04:17:48 -0800 (PST)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 f1-20020adfe901000000b0033d8b1ace25sm11326560wrm.2.2024.02.27.04.17.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Feb 2024 04:17:47 -0800 (PST)
Date: Tue, 27 Feb 2024 13:17:44 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <Zd3S6EXCiiwOCTs8@nanopsycho>
References: <20240219100555.7220-1-mateusz.polchlopek@intel.com>
 <20240219100555.7220-5-mateusz.polchlopek@intel.com>
 <ZdNLkJm2qr1kZCis@nanopsycho> <20240221153805.20fbaf47@kernel.org>
 <df7b6859-ff8f-4489-97b2-6fd0b95fff58@intel.com>
 <20240222150717.627209a9@kernel.org> <ZdhpHSWIbcTE-LQh@nanopsycho>
 <20240223062757.788e686d@kernel.org> <ZdrpqCF3GWrMpt-t@nanopsycho>
 <20240226183700.226f887d@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240226183700.226f887d@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1709036268; x=1709641068;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=HuXDHId7fuKEY2MA5rzWQfyKuPAeNZD0D18+VnJhFgw=;
 b=HH9U/EeRO8BcxwB+J+Z5CibCjZvJRAWLT+c9f5PxJyLQFzlau41j+GRs43ojotTYvG
 jMSBo51rxIPOUpQZZUv7zZHlzygTiq5PD1YP+zp8qyh3+cHjNukvhEFF+6dqmiQd5rEZ
 lD/mQOP5DybrslPcnk4loXYIBdE0gv3FlSiO6yr53uyemRrqon1Lx6g5R0URcFXZhqYG
 ttpjWAwrEh02/058tbV3Zv9RbIiGJjLKUlZmLQKz177uxDShUv5SJFOBkKkh0f54kWmT
 WXEeJtjJyy5SM6n18GPgouN+S7XzzFQeWn8Js9d+wwgz1/HEXeG4+/MLog+mXT5ZOMEl
 0gjA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=HH9U/EeR
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 4/5] ice: Add
 tx_scheduling_layers devlink param
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
Cc: Mateusz Polchlopek <mateusz.polchlopek@intel.com>, netdev@vger.kernel.org,
 Lukasz Czapnik <lukasz.czapnik@intel.com>, intel-wired-lan@lists.osuosl.org,
 horms@kernel.org, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Feb 27, 2024 at 03:37:00AM CET, kuba@kernel.org wrote:
>On Sun, 25 Feb 2024 08:18:00 +0100 Jiri Pirko wrote:
>> >Do you recall any specific param that got rejected from mlx5?
>> >Y'all were allowed to add the eq sizing params, which I think
>> >is not going to be mlx5-only for long. Otherwise I only remember
>> >cases where I'd try to push people to use the resource API, which
>> >IMO is better for setting limits and delegating resources.  
>> 
>> I don't have anything solid in mind, I would have to look it up. But
>> there is certainly quite big amount of uncertainties among my
>> colleagues to jundge is some param would or would not be acceptable to
>> you. That's why I believe it would save a lot of people time to write
>> the policy down in details, with examples, etc. Could you please?
>
>How about this? (BTW took me half an hour to write, just in case 
>you're wondering)
>
>diff --git a/Documentation/networking/devlink/devlink-params.rst b/Documentation/networking/devlink/devlink-params.rst
>index 4e01dc32bc08..f1eef6d065be 100644
>--- a/Documentation/networking/devlink/devlink-params.rst
>+++ b/Documentation/networking/devlink/devlink-params.rst
>@@ -9,10 +9,12 @@ level device functionality. Since devlink can operate at the device-wide
> level, it can be used to provide configuration that may affect multiple
> ports on a single device.
> 
>-This document describes a number of generic parameters that are supported
>-across multiple drivers. Each driver is also free to add their own
>-parameters. Each driver must document the specific parameters they support,
>-whether generic or not.
>+There are two categories of devlink parameters - generic parameters
>+and device-specific quirks. Generic devlink parameters are configuration
>+knobs which don't fit into any larger API, but are supported across multiple
>+drivers. This document describes a number of generic parameters.
>+Each driver can also add its own parameters, which are documented in driver
>+specific files.
> 
> Configuration modes
> ===================
>@@ -137,3 +139,32 @@ own name.
>    * - ``event_eq_size``
>      - u32
>      - Control the size of asynchronous control events EQ.
>+
>+Adding new params
>+=================
>+
>+Addition of new devlink params is carefully scrutinized upstream.
>+More complete APIs (in devlink, ethtool, netdev etc.) are always preferred,
>+devlink params should never be used in their place e.g. to allow easier
>+delivery via out-of-tree modules, or to save development time.
>+
>+devlink parameters must always be thoroughly documented, both from technical
>+perspective (to allow meaningful upstream review), and from user perspective
>+(to allow users to make informed decisions).
>+
>+The requirements above should make it obvious that any "automatic" /
>+"pass-through" registration of devlink parameters, based on strings
>+read from the device, will not be accepted.
>+
>+There are two broad categories of devlink params which had been accepted
>+in the past:
>+
>+ - device-specific configuration knobs, which cannot be inferred from
>+   other device configuration. Note that the author is expected to study
>+   other drivers to make sure that the configuration is in fact unique
>+   to the implementation.
>+
>+ - configuration which must be set at device initialization time.
>+   Allowing user to enable features at runtime is always preferable
>+   but in reality most devices allow certain features to be enabled/disabled
>+   only by changing configuration stored in NVM.

Looks like most of the generic params does not fit either of these 2
categories. Did you mean these 2 categories for driver specific?

