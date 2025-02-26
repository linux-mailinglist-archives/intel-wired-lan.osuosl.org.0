Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7A1A46487
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Feb 2025 16:25:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9AD5480CB7;
	Wed, 26 Feb 2025 15:25:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TMlqX08gtw9x; Wed, 26 Feb 2025 15:25:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F2E0D80CA5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740583551;
	bh=2cCFCorbQ79EPV2pbT8nLnau3UHQm0d9DNeVh1UKL6E=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PWry4OSbNjtVXKbHdw+/5BGG4rtSDEQ0bvV9HpjfWG+OxTNkCxn5+FGH1mAgA3B4h
	 VZKiqi3k5+8EiX23Ns6wyrqFwfNishhlvHyXATnA8Z5gXAIQLJeW5D7HDt41YbVyhj
	 u6ybfbNbq2XZ1coowRXIsO/gazZST1asZfgtLTc4jW/9OKTexDVWFZeltGzS6WHZgo
	 vFj2F8bJ6G+KRJlFi+xKud4RJx0rKeNmr1gjlHqLtPTYdsPDH9cyU+QVtQ7G9vJ/fO
	 zM1R4jq3O2XR8tsMSHf6mXx/3qi/rYlbfsBilrYbZ+QFMBiCs6ozmoWwjH9QvomWKE
	 ER+zKddt2T5Rw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F2E0D80CA5;
	Wed, 26 Feb 2025 15:25:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A34FA94F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2025 15:25:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8731480CB2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2025 15:25:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CMnoBYWEwmCx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Feb 2025 15:25:48 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::52c; helo=mail-ed1-x52c.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4CA9E80CA5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4CA9E80CA5
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4CA9E80CA5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2025 15:25:46 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id
 4fb4d7f45d1cf-5e0516e7a77so10682617a12.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Feb 2025 07:25:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740583544; x=1741188344;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=2cCFCorbQ79EPV2pbT8nLnau3UHQm0d9DNeVh1UKL6E=;
 b=CyCUVPPwFm+UXTh4dz3jnu/8fRGSDWaDP5QhH435QqpjAvn0RvFVch2lFZdKsF6SWe
 cmRqdTFbhT3KIk4tGXNcdoZ89sRNAOxAzL5C0fJ+Xi2HnVkCPDUNYBPp0/vcyqE58rXi
 wEaNbx4OlLHZKov7efod5Z0eAjN2vuEpa10rDqNiTzSjHCEFbJ26w6tZfqDnp+5c4RV6
 RHM/g5VDH2dnDydU3HG24LcZtEdKcDVV3d7s8e8rUPyZylkiZQ5fOnWvTkzu1tiX4Ru5
 /VM4RSopYtWSFlpDU7eLInybjeYLNng6rMibiVMM7mGzQ7VHpYKPj3qaCkKI8E1LBDxZ
 lzpw==
X-Gm-Message-State: AOJu0Yx8KQMZv46KZRsX1KCWAddjCZYNNWHrV1hNCy94yj//wig9AJPN
 NIagahKpdzrCuk0zfy8/Glkg5GT2GlJNXSI1Lr10taUVcjRhr54wO7vKVi3VqAQ=
X-Gm-Gg: ASbGncveVMhbMYK6lCl4tEkiGGONRJWXmHpprDCn1+YyfBk1oOcHp9LfwinXMm8pJQj
 IgmBNBAoQ0U0LQMyPAmegO9xOIf9pe1UCiPE3St+yn2DhxaIZvYCfYrxJZFFPvcazw29M6/6gT5
 nYnEI68ZD0kykd4WCjeGKH/RCT/dyh9TmpwDDWZgFEl21UuTDuf2IAtPkVtdyTTthDPuIEbFaJl
 EHOTP7YDv9hEaX63lS747VU0mxYwoH8JXACp4QsllftlEGPcP8aFYZAXbkNngi3Gi/S+IVNdGkG
 T2cA0O7PBSbb4gdXkJkYoYq5qD5rX6dCK9ckgt48PLHRWBh3fgGX9g==
X-Google-Smtp-Source: AGHT+IEAB0uZUjm/Wdvyv3vHgJUK+04TyiWeXLkLcV/pvCw1WVdLP+IcTgUanL5Fn+YUOt+NzbtPZQ==
X-Received: by 2002:a05:6402:348d:b0:5dc:7823:e7e4 with SMTP id
 4fb4d7f45d1cf-5e0b70f8732mr22414421a12.12.1740583544488; 
 Wed, 26 Feb 2025 07:25:44 -0800 (PST)
Received: from jiri-mlt.client.nvidia.com ([140.209.217.212])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-5e461f3e84bsm2970646a12.76.2025.02.26.07.25.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2025 07:25:44 -0800 (PST)
Date: Wed, 26 Feb 2025 16:25:41 +0100
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
Message-ID: <rar5z5jtct4qbucpcr6i73zecl5mz2otdqq6uc5ygaukxzi4jb@4rugso6dgobh>
References: <20250219164410.35665-1-przemyslaw.kitszel@intel.com>
 <20250219164410.35665-2-przemyslaw.kitszel@intel.com>
 <ybrtz77i3hbxdwau4k55xn5brsnrtyomg6u65eyqm4fh7nsnob@arqyloer2l5z>
 <87855c66-0ab4-4b40-81fa-b37149c17dca@intel.com>
 <zzyls3te4he2l5spf4wzfb53imuoemopwl774dzq5t5s22sg7l@37fk7fvgvnrr>
 <e027f9e5-ff3a-4bc1-8297-9400a4ff62a6@intel.com>
 <iiemy2zwko4iehuw6cgbipszcxonanjpumxzv4nbdvgvdgi5fx@jz3hkez3lygw>
 <31477321-c064-4f3d-b4c9-e858d98d5694@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <31477321-c064-4f3d-b4c9-e858d98d5694@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1740583544; x=1741188344;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=2cCFCorbQ79EPV2pbT8nLnau3UHQm0d9DNeVh1UKL6E=;
 b=pCXyZkRxFf6NE9tMlbGrQWwHvWVxURwrU3RYMcsVlCiyK1JEBeYz3V7pmzzsavaAZt
 1Ueya5dZujnjw1j8cgqFI2u3pRmALoOGhPEM9uuUAItofH7aRh5CaMJ2aU6XO8pB2oWb
 nB6I+TGl+CNO02cYBvWwN9h779taQGUkAd0tpDy6gW/7yFybdzkdirigZ2e/zFFFmrtf
 8gzv4+2Aum6tUq8fL4hFOzwRqkEODlian02XMNo7mOq30+Nx7gnZdgcqztD68Xyq2B07
 HpuVQN5PR8Huecm2lZYRJa60DG3iaUkNn6MoqQUq6kr4Jtizb0pk2Pu3jVmQuMMAAytT
 9Zeg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=pCXyZkRx
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

Wed, Feb 26, 2025 at 04:06:19PM +0100, przemyslaw.kitszel@intel.com wrote:
>On 2/26/25 15:48, Jiri Pirko wrote:
>> Tue, Feb 25, 2025 at 04:40:49PM +0100, przemyslaw.kitszel@intel.com wrote:
>> > On 2/25/25 15:35, Jiri Pirko wrote:
>> > > Tue, Feb 25, 2025 at 12:30:49PM +0100, przemyslaw.kitszel@intel.com wrote:
>> 
>> [...]
>> 
>> > > > output, for all PFs and VFs on given device:
>> > > > 
>> > > > pci/0000:af:00:
>> > > >    name rss size 8 unit entry size_min 0 size_max 24 size_gran 1
>> > > >      resources:
>> > > >        name lut_512 size 0 unit entry size_min 0 size_max 16 size_gran 1
>> > > >        name lut_2048 size 8 unit entry size_min 0 size_max 8 size_gran 1
>> > > > 
>> > > > What is contributing to the hardness, this is not just one for all ice
>> > > > PFs, but one per device, which we distinguish via pci BDF.
>> > > 
>> > > How?
>> > 
>> > code is in ice_adapter_index()
>> 
>> If you pass 2 pfs of the same device to a VM with random BDF, you get 2
>> ice_adapters, correct?
>
>Right now, yes

That is a bug.

>
>> 
>> [...]
>
>What I want is to keep two ice_adapters for two actual devices (SDNs)
