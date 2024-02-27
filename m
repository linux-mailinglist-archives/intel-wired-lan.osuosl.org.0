Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F76869A91
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Feb 2024 16:39:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 75E7360BA4;
	Tue, 27 Feb 2024 15:39:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qbzEhcJf8kjJ; Tue, 27 Feb 2024 15:39:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9CDB360B1C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709048379;
	bh=XDRKa1sSPk0Ft0Yo+CMNcU/6RO+9yXRaNDIHU6vUgWI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hZ3peJ3EBkaU3x379R2qfN+mPrkNUPinc9FkoOa0lABixYQ8WeUBMsN4dlN+b2x37
	 4kFd7Ajak+x6p80TBfcxkY4xkYmkxUW2nVdIjyKE1tJv7ZGXrsMtn6mSuyj5ej0VZ5
	 pU5G/FBdSjBpt6STGN51FnyRuaWxY9y8KhAOIHtFasGPWeOj3VMPZZO1eWmO8q7eMe
	 kfSsMTgSWlJCGudQr3WqWHVnNChBQUaCv99MWGFd0hU7jzOxD80MuSdmiEZh0iHggG
	 Jub+5Mb1/yX2aIcp4DxWl0H4gMGoaR1In9Pb3wQiU7qLsak9DmhdazgHAzflB/9sqB
	 XLJ/wVxUOhO8g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9CDB360B1C;
	Tue, 27 Feb 2024 15:39:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 74D501BF307
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 15:39:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 60EFB81F7B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 15:39:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 329kfWYKRqWt for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Feb 2024 15:39:36 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::330; helo=mail-wm1-x330.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 54FC881756
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 54FC881756
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 54FC881756
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 15:39:33 +0000 (UTC)
Received: by mail-wm1-x330.google.com with SMTP id
 5b1f17b1804b1-412a9a61545so11103005e9.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 07:39:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709048371; x=1709653171;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=XDRKa1sSPk0Ft0Yo+CMNcU/6RO+9yXRaNDIHU6vUgWI=;
 b=ZzcXHbJvpHxrNqDGsUjJrd8UEiLgjDQEz+3EBFxUPtmupViQ+L3jqqwnGl9g5BNASu
 KqbzRNJh6+YlCBiikF+hmfPASpDEJEif8q7rxCXF5Olr6ybwicenqlHdcK2BjF1p0RFw
 pwwXIdNEBrJTuQUGdqXqXAsW3vf4GThoRYDHtvaTju6MaQZahySPfFuREtea/zmDsGxV
 J+njLsq43V62iTaC5EMclHC+r7a13XswXxcyMIVE+fI+ASdh0KRYh9O6Ka6+qba1b9xq
 RbK+9oYrihIftPNVfc3qOPR2cLAHnV1mq9HT9h+ao8fR7KcRAATWyThoGR9dgyWmzkr5
 cwGw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXQ3BK7Ok3kRajDia1h0q1HVxpCq4YcftiqWEZvqBWUdxy04a74TohBI6OAdZWeZxWcPxfsnuS8rU7DK0xRZ+wt5XT9afasqkkOCknzAornMg==
X-Gm-Message-State: AOJu0Yw2ZoKPr/9wnSpom2xYGIljjTeOrFc0ds5iw42twHkgZ45wnNPp
 khRQjO2kM4eZrDtzqXBKMZni6wwgXeXstdwoimM0vKbRrhjbwcKdx0dVEEyU4qI=
X-Google-Smtp-Source: AGHT+IG6Uu2nOKTEpyp17YkwLq6P9EXN6F12O2qhzUyR95K3CCYgIqGR+H+P+KKNbMo+Y5UKs6840Q==
X-Received: by 2002:a05:600c:35cb:b0:412:a1c1:207c with SMTP id
 r11-20020a05600c35cb00b00412a1c1207cmr4790389wmq.3.1709048371380; 
 Tue, 27 Feb 2024 07:39:31 -0800 (PST)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 u6-20020a05600c19c600b00412a332e1d2sm8108847wmq.47.2024.02.27.07.39.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Feb 2024 07:39:30 -0800 (PST)
Date: Tue, 27 Feb 2024 16:39:28 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <Zd4CMA4F9ARt-rpv@nanopsycho>
References: <ZdNLkJm2qr1kZCis@nanopsycho> <20240221153805.20fbaf47@kernel.org>
 <df7b6859-ff8f-4489-97b2-6fd0b95fff58@intel.com>
 <20240222150717.627209a9@kernel.org> <ZdhpHSWIbcTE-LQh@nanopsycho>
 <20240223062757.788e686d@kernel.org> <ZdrpqCF3GWrMpt-t@nanopsycho>
 <20240226183700.226f887d@kernel.org> <Zd3S6EXCiiwOCTs8@nanopsycho>
 <10fbc4c8-7901-470b-8d72-678f000b260b@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <10fbc4c8-7901-470b-8d72-678f000b260b@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1709048371; x=1709653171;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=XDRKa1sSPk0Ft0Yo+CMNcU/6RO+9yXRaNDIHU6vUgWI=;
 b=RFgFCsI7KfcHxaJWkJV104rOs6tpIwsCA1FocRKWSJ1LTVkIOiLNSrnL5pskVyR5mw
 +EFM7WS6cDmL0irm71OY4SaZ7zvR0kIflsxb2zOtffTCQzbSIKbeBL+hAPw4a4/ysxpW
 0nUaj906eCHxu/ZpQbcSLwKqv7itWbQKAstxzBbIYyr44Oo9Of1LS/8uAwu/KmbOmN2m
 Pj+sJmRBU2aVZJpd3dF1TaBjsN7fem9a94v4QKEzvdC53U2y2XSxum+nbDSka11aTRt5
 rzxU4phwr3XYohmmneLIRsdZ4tHvsjwDAZxUpBLVqnRWXyoRJD43QlX79VqLwsxABoxr
 stCw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=RFgFCsI7
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
Cc: netdev@vger.kernel.org, Lukasz Czapnik <lukasz.czapnik@intel.com>,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Feb 27, 2024 at 02:05:45PM CET, przemyslaw.kitszel@intel.com wrote:
>On 2/27/24 13:17, Jiri Pirko wrote:
>> Tue, Feb 27, 2024 at 03:37:00AM CET, kuba@kernel.org wrote:
>> > On Sun, 25 Feb 2024 08:18:00 +0100 Jiri Pirko wrote:
>> > > > Do you recall any specific param that got rejected from mlx5?
>> > > > Y'all were allowed to add the eq sizing params, which I think
>> > > > is not going to be mlx5-only for long. Otherwise I only remember
>> > > > cases where I'd try to push people to use the resource API, which
>> > > > IMO is better for setting limits and delegating resources.
>> > > 
>> > > I don't have anything solid in mind, I would have to look it up. But
>> > > there is certainly quite big amount of uncertainties among my
>> > > colleagues to jundge is some param would or would not be acceptable to
>> > > you. That's why I believe it would save a lot of people time to write
>> > > the policy down in details, with examples, etc. Could you please?
>> > 
>> > How about this? (BTW took me half an hour to write, just in case
>> > you're wondering)
>
>Thank you!
>
>> > 
>> > diff --git a/Documentation/networking/devlink/devlink-params.rst b/Documentation/networking/devlink/devlink-params.rst
>> > index 4e01dc32bc08..f1eef6d065be 100644
>> > --- a/Documentation/networking/devlink/devlink-params.rst
>> > +++ b/Documentation/networking/devlink/devlink-params.rst
>> > @@ -9,10 +9,12 @@ level device functionality. Since devlink can operate at the device-wide
>> > level, it can be used to provide configuration that may affect multiple
>> > ports on a single device.
>> > 
>> > -This document describes a number of generic parameters that are supported
>> > -across multiple drivers. Each driver is also free to add their own
>> > -parameters. Each driver must document the specific parameters they support,
>> > -whether generic or not.
>> > +There are two categories of devlink parameters - generic parameters
>> > +and device-specific quirks. Generic devlink parameters are configuration
>> > +knobs which don't fit into any larger API, but are supported across multiple
>
>re Jiri: Generic ones are described here.
>
>> > +drivers. This document describes a number of generic parameters.
>> > +Each driver can also add its own parameters, which are documented in driver
>> > +specific files.
>> > 
>> > Configuration modes
>> > ===================
>> > @@ -137,3 +139,32 @@ own name.
>> >     * - ``event_eq_size``
>> >       - u32
>> >       - Control the size of asynchronous control events EQ.
>> > +
>> > +Adding new params
>> > +=================
>> > +
>> > +Addition of new devlink params is carefully scrutinized upstream.
>> > +More complete APIs (in devlink, ethtool, netdev etc.) are always preferred,
>> > +devlink params should never be used in their place e.g. to allow easier
>> > +delivery via out-of-tree modules, or to save development time.
>> > +
>> > +devlink parameters must always be thoroughly documented, both from technical
>> > +perspective (to allow meaningful upstream review), and from user perspective
>> > +(to allow users to make informed decisions).
>> > +
>> > +The requirements above should make it obvious that any "automatic" /
>> > +"pass-through" registration of devlink parameters, based on strings
>> > +read from the device, will not be accepted.
>> > +
>> > +There are two broad categories of devlink params which had been accepted
>> > +in the past:
>> > +
>> > + - device-specific configuration knobs, which cannot be inferred from
>> > +   other device configuration. Note that the author is expected to study
>> > +   other drivers to make sure that the configuration is in fact unique
>> > +   to the implementation.
>
>What if it would not be unique, should they then proceed to add generic
>(other word would be "common") param, and make the other driver/s use
>it? Without deprecating the old method ofc.
>
>What about knob being vendor specific, but given vendor has multiple,
>very similar drivers? (ugh)
>
>> > +
>> > + - configuration which must be set at device initialization time.
>> > +   Allowing user to enable features at runtime is always preferable
>> > +   but in reality most devices allow certain features to be enabled/disabled
>> > +   only by changing configuration stored in NVM.
>> 
>> Looks like most of the generic params does not fit either of these 2
>> categories. Did you mean these 2 categories for driver specific?
>
>If you mean the two paragraphs above (both started by "-"), this is for
>vendor specific knobs, and reads fine.

Do you assume or read it somewhere? I don't see it. I have the same
assumption though :)
