Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB58A4638E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Feb 2025 15:48:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 86E70824E3;
	Wed, 26 Feb 2025 14:48:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p9HQHER5rAr2; Wed, 26 Feb 2025 14:48:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DDBC182422
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740581325;
	bh=nMoILKIF7N8WQlVNtPKgkkC84yA+V5fRgKd3rLXRVvE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8cc+9WxA8bI5lcBJ1OsJXUpqpwFgQZeROZ4rRMqDmtJCSDlCSbTJje0WGft9cPL/t
	 J2CHKDIgQzpxUcbcIe+wC6INYbXbcN+NJFB5RpeqmXjTfMtNDThB9VriIz2zf3JOxk
	 5uDoVqcL8niXdasiy+/1OjGZ/p4XxKHOET4nmBChHnorrW11bun+bNLpxFDK7d1xRF
	 z3AoA7jOmyKoo4QR/CqOnr+6gSyAD/BRepJHe6pv7TjF6vQc2RwzvGj/bqWSBLZAj9
	 nsll6XOyrZpVA1jf5f/6TVIT5Ic89Az1M2lIZ9zPweO2kYkyQnlk/WZJmSxn1VTHTd
	 r9JLA8ht6KwUQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DDBC182422;
	Wed, 26 Feb 2025 14:48:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3CA2594F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2025 14:48:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2F57440E0A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2025 14:48:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w5hEy-3WYKMo for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Feb 2025 14:48:43 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::536; helo=mail-ed1-x536.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7181F410A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7181F410A8
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7181F410A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2025 14:48:40 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id
 4fb4d7f45d1cf-5e4ad1d67bdso799853a12.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2025 06:48:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740581319; x=1741186119;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=nMoILKIF7N8WQlVNtPKgkkC84yA+V5fRgKd3rLXRVvE=;
 b=R7xAZFRSQuNRiJlj+l8rZbnwS98ZLFnsKtM29hUNDzozLYW+FBBZrsLLozuGglBuFo
 RvCzGMFoBjUed40ZKqLFvnLUC8SiahwvnYb4UBxP9D8pWom9sBehoZjybq06WcFXUkUP
 AZKODMbhknchxqcJ5P6maVOQs4WiajReKivqBwTeac0QX3ZlB59ZOY74Oq1mZyf6M8Nt
 qh4zGHPHOgt3FPmGupQL0dCohjEA+U6k81oMbCLU6ZL4aaSRn2Muprw2Acd7556tY1zs
 0xHqp4nY6AyFvdHsEH76rHDb/001288JvAqFLraiwmBsENezW2/7bfH+LOx9Yjw5SkLm
 DmrQ==
X-Gm-Message-State: AOJu0YxmF5I5o9xeUWDp8lUuWv6xy+iewk1klaFY/6aR6K9JEkgRaUti
 UR4vqxi1WF1dibpTG9XqpYJuLFu+ZMkB6sM12KybBfuRzYEvmSYQjj0AEwv5YUg=
X-Gm-Gg: ASbGncuWWIyqjW6kjwSVF47edW0VvJjHxGiRJVXbloKSjz0wn+kTfBsCktuOgYcqS8g
 71W/IW/DZhAcGH/bkui6DFnbGbO+APncjx8eYX14XrfELImY1HocBRMCM2dDpItyXtvozVrDOG+
 PYl5rHaEVJOQkWPZ5YawGw6Rsj1FKf4fPl/llu43UlW6f7L0axiLQZ8+7cizm2nqeT66dvL0u2v
 ex4bEaqnfCTElYJY3PqimQEtbkmAt+g0sUxEXrf5pGF0P2UMyLB4LfqohD7+/jBq5oh3WloXnpY
 lsNb3GQTw1TM7cF9djtcr/pczhMUjpusHo4nfRXNSlrPVIaPNnWReg==
X-Google-Smtp-Source: AGHT+IGtH1CcVMxMCJwtVi3LYJ16g2hv5Xsh1dW0fQCUJV+H/J70PtPy1kYytDJYuVvZvlxBA+dtIg==
X-Received: by 2002:a05:6402:5202:b0:5e0:7f52:226 with SMTP id
 4fb4d7f45d1cf-5e4a0d45e24mr4468134a12.4.1740581317806; 
 Wed, 26 Feb 2025 06:48:37 -0800 (PST)
Received: from jiri-mlt.client.nvidia.com ([140.209.217.212])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-5e462032b00sm2912497a12.68.2025.02.26.06.48.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2025 06:48:37 -0800 (PST)
Date: Wed, 26 Feb 2025 15:48:35 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>, 
 Cosmin Ratiu <cratiu@nvidia.com>, Tariq Toukan <tariqt@nvidia.com>,
 netdev@vger.kernel.org, Konrad Knitter <konrad.knitter@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, davem@davemloft.net, 
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Andrew Lunn <andrew@lunn.ch>, linux-kernel@vger.kernel.org,
 ITP Upstream <nxne.cnse.osdt.itp.upstreaming@intel.com>, 
 Carolina Jubran <cjubran@nvidia.com>
Message-ID: <iiemy2zwko4iehuw6cgbipszcxonanjpumxzv4nbdvgvdgi5fx@jz3hkez3lygw>
References: <20250219164410.35665-1-przemyslaw.kitszel@intel.com>
 <20250219164410.35665-2-przemyslaw.kitszel@intel.com>
 <ybrtz77i3hbxdwau4k55xn5brsnrtyomg6u65eyqm4fh7nsnob@arqyloer2l5z>
 <87855c66-0ab4-4b40-81fa-b37149c17dca@intel.com>
 <zzyls3te4he2l5spf4wzfb53imuoemopwl774dzq5t5s22sg7l@37fk7fvgvnrr>
 <e027f9e5-ff3a-4bc1-8297-9400a4ff62a6@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e027f9e5-ff3a-4bc1-8297-9400a4ff62a6@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1740581318; x=1741186118;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=nMoILKIF7N8WQlVNtPKgkkC84yA+V5fRgKd3rLXRVvE=;
 b=jEU8bo2Lv6frD+1WySXwySjqQluXg4VsF6mF+duRx8j5hH8KstLPQhi4SFPA/nSH5e
 CfeFv8beJxTVfw/RKuhAKKsXT8Pyji9z+ZHo4va1mJSzH730JjCrYjsV3hYiOeZJfHdK
 Dn/GX+FtIi+d5UJ6qCqaPWVg+8sjbDNas4eyXyf2D5W+UpbMaDb9aCR3LH3zcmU6uTYD
 qG9ASz6rDy7DJr7Db1l3i0mBgjJy0LBzoDhC4W9KXT/1pX8LupZ7LMjurTY5OJIVhhhn
 JUCxfIZ9sDbIQyr+wliDP2C8nNvbTc9D9OIooq1oLuwzOQEsKT0uNPQrASf4XdTxSoqF
 uu7Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=jEU8bo2L
Subject: Re: [Intel-wired-lan] [RFC net-next v2 1/2] devlink: add whole
 device devlink instance
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

Tue, Feb 25, 2025 at 04:40:49PM +0100, przemyslaw.kitszel@intel.com wrote:
>On 2/25/25 15:35, Jiri Pirko wrote:
>> Tue, Feb 25, 2025 at 12:30:49PM +0100, przemyslaw.kitszel@intel.com wrote:

[...]

>> > output, for all PFs and VFs on given device:
>> > 
>> > pci/0000:af:00:
>> >   name rss size 8 unit entry size_min 0 size_max 24 size_gran 1
>> >     resources:
>> >       name lut_512 size 0 unit entry size_min 0 size_max 16 size_gran 1
>> >       name lut_2048 size 8 unit entry size_min 0 size_max 8 size_gran 1
>> > 
>> > What is contributing to the hardness, this is not just one for all ice
>> > PFs, but one per device, which we distinguish via pci BDF.
>> 
>> How?
>
>code is in ice_adapter_index()

If you pass 2 pfs of the same device to a VM with random BDF, you get 2
ice_adapters, correct?

[...]
