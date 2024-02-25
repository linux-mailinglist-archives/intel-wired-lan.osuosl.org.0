Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D7EB86299E
	for <lists+intel-wired-lan@lfdr.de>; Sun, 25 Feb 2024 08:18:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 043E181FDB;
	Sun, 25 Feb 2024 07:18:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W3pej6jl4aT0; Sun, 25 Feb 2024 07:18:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 49C3181FCB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708845491;
	bh=PrE6SPjvHEFxjwPlVIy+3LIJdPdKbmsIWC5aSbnqvCA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zIxxdL3MEADkPNMQxsHTiQoE/1wRmTqUa9mqh9/UZQNGzv4Wglh9vUXfmJOnI7koj
	 c0rCTsvFcUWu5rsHykeFLje5jP2BnvuLM9rbEyrY2rVvS7etngWKYpuEGUodVLDKAD
	 e+NFc/uQHB4cbtvCjeCw+Xc1rMbbEUNq6/RMkRiXfopqisL2TWEIJkE7UDaWN2rpUc
	 vJkoyDVXsEQSP4bqvaZf7+XwDjsbUb+Hl0xeiGrhB8e5yAWXdFcLneV5OY3xEGiwos
	 xEEGlELzOFuSKvbvPG85sil5UCGLGDPJdB1QUdX/3jTFpDh/e/XdzSaEhKM9d/Xo4c
	 D+2tOENRO2Mgw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 49C3181FCB;
	Sun, 25 Feb 2024 07:18:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C90A21BF20D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 Feb 2024 07:18:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B4C4440710
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 Feb 2024 07:18:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fi7R2f_rTZwP for <intel-wired-lan@lists.osuosl.org>;
 Sun, 25 Feb 2024 07:18:07 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::22e; helo=mail-lj1-x22e.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 04BFD4070E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 04BFD4070E
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com
 [IPv6:2a00:1450:4864:20::22e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 04BFD4070E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 Feb 2024 07:18:05 +0000 (UTC)
Received: by mail-lj1-x22e.google.com with SMTP id
 38308e7fff4ca-2d21cdbc85bso33741501fa.2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 24 Feb 2024 23:18:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708845483; x=1709450283;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=PrE6SPjvHEFxjwPlVIy+3LIJdPdKbmsIWC5aSbnqvCA=;
 b=ZVE67MK5AjIf8oZCg2tLtqb4MHJUmboqmfQSuVOQzpY0YcWx/UvFb6/eT96GCTlkV6
 owjcm4je16tmB79b3ogzsWPES7qST6PuFit3+VNQjHH2J7CceKxDa307JETyyWlid5KF
 Jklmu8YB7vllR/N1rQPYxKVQDPkVZg+1muXjyBj+LmpIiUxu72PDfHxGkWhQeC2VrEHu
 or6J7UZxyrqC8R85OziPdzFisoU1oHXvvDeIfWbvDpUQFWKvcDQqhwK7RBiOv9mvJ3BB
 5UduTisFpEc3ECTXjIGrEWLwSc9tNCFgtv1SQqORlY50RnFeNZWVlfNeWzMRbeefHCxM
 wsaA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXTqmIws8mcFVazb6EwrdyYk+SSFQoqnu1vBjgzWIKlMQ7WVMdroRC7Zr5Giicj60/BWtk/gvO0cvaMyJr72G6Z9t5xQBdWDkb8pT3a3YSiOA==
X-Gm-Message-State: AOJu0YyobMGfZ8L29kr4Yx5Gzu1Eugun1bOJYrqXWvYbLieG6Z45emIw
 04EEOZZuxTcIRYWAR4E3wk4GgGorbo1dpXqWeu5lRE1i9M3CQWm4gy7vGEd7x+I=
X-Google-Smtp-Source: AGHT+IGcbdy4Bs2kvvhSFmFEX1zM6pEjLy9i+beyz5COb8QRME+qrUAGr7Ggv7xa/c46aE3AhjgdOg==
X-Received: by 2002:a2e:2201:0:b0:2d2:6c74:58d6 with SMTP id
 i1-20020a2e2201000000b002d26c7458d6mr1976900lji.44.1708845482789; 
 Sat, 24 Feb 2024 23:18:02 -0800 (PST)
Received: from localhost ([86.61.181.4]) by smtp.gmail.com with ESMTPSA id
 v6-20020a5d6786000000b0033dd4783058sm204275wru.9.2024.02.24.23.18.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 24 Feb 2024 23:18:02 -0800 (PST)
Date: Sun, 25 Feb 2024 08:18:00 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <ZdrpqCF3GWrMpt-t@nanopsycho>
References: <20240219100555.7220-1-mateusz.polchlopek@intel.com>
 <20240219100555.7220-5-mateusz.polchlopek@intel.com>
 <ZdNLkJm2qr1kZCis@nanopsycho> <20240221153805.20fbaf47@kernel.org>
 <df7b6859-ff8f-4489-97b2-6fd0b95fff58@intel.com>
 <20240222150717.627209a9@kernel.org> <ZdhpHSWIbcTE-LQh@nanopsycho>
 <20240223062757.788e686d@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240223062757.788e686d@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1708845483; x=1709450283;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=PrE6SPjvHEFxjwPlVIy+3LIJdPdKbmsIWC5aSbnqvCA=;
 b=b6BJQvCS8qBZCOV5RmxLUMtcirVjiXOE/8cX90KkG4lDP8RSQWd2zs/XxT2F8fcXqn
 +racL9dgYTMyTPSqF+7g0FSmsNy5b92XUrj2YQZGhH+wNwQ+oH+LWsR2nlfIPIMhnxtf
 KlQ1v2U23ov2Y0ubget7D5CKfeqonu5PMp3He0PqdfSO0i244GiDGwvV8DUClDP2YEov
 V4JQ9CUFXWXxUSM+SEkYgNDSu78sqldIu3TZnngqXPT5hDC8hyTSzmSe3Rg8y0zTjqlY
 L7htdmZpsh5UBs6wHZ5YccD+KtQ3yHG8xX4dZbW981ONS/4dUx1JgekyKdqkhPpunJOs
 jnBQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=b6BJQvCS
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

Fri, Feb 23, 2024 at 03:27:57PM CET, kuba@kernel.org wrote:
>On Fri, 23 Feb 2024 10:45:01 +0100 Jiri Pirko wrote:
>>> Jiri, I'm not aware of any other devices with this sort of trade off.
>>> We shouldn't add the param if either:
>>>  - this can be changed dynamically as user instantiates rate limiters;
>>>  - we know other devices have similar needs.
>>> If neither of those is true, param seems fine to me..  
>> 
>> Where is this policy documented? If not, could you please? Let's make
>> this policy clear for now and for the future.
>
>Because you think it's good as a policy or because not so much?
>Both of the points are a judgment call, at least from upstream
>perspective since we're working with very limited information.
>So enshrining this as a "policy" is not very practical.

No, I don't mind the policy. Up to you. Makes sense to me. I'm just
saying it would be great to have this written down so everyone can
easily tell which kind of param is and is not acceptable.


>
>Do you recall any specific param that got rejected from mlx5?
>Y'all were allowed to add the eq sizing params, which I think
>is not going to be mlx5-only for long. Otherwise I only remember
>cases where I'd try to push people to use the resource API, which
>IMO is better for setting limits and delegating resources.

I don't have anything solid in mind, I would have to look it up. But
there is certainly quite big amount of uncertainties among my
colleagues to jundge is some param would or would not be acceptable to
you. That's why I believe it would save a lot of people time to write
the policy down in details, with examples, etc. Could you please?

Thanks!

