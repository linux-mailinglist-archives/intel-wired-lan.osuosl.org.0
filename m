Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4CA8A27D3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Apr 2024 09:20:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D699961379;
	Fri, 12 Apr 2024 07:20:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fWe9n8iyI0zY; Fri, 12 Apr 2024 07:20:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 44C4E6131C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712906427;
	bh=/hETkjv1iN/Uez3VNUgyub6IOOBYWx+XdQ6KBbWFX/o=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=citPGkx5vJJToFeAzPHIBYp7OTmb6D4ctTO+PjSpDDXk6VNh8LP0MKSwuhcJ7gDmC
	 IwLwiZFHd3HecZLPwJUdhqoiPlvfXh1tpHXNBM20HFLVMdiEoC2ZDWLdKMxuzZ9uvW
	 S0b93JGq40TF5PokG0ar2W5WpaqSyoLrJ/ey5xPtUjWm7HFxDLM2grvOmqP6fh9esc
	 1Uf2thRBMwY26N9NJBwjYHJTx9WXRt3l8DmrNTCEvvBOtyGGsRr+tusrT54xYg9MkI
	 CrjNFsBpKEaUS5ilpPTq5uADrwHADol1gkQYrw3wOEheMv7hR7K00qzGdm4EyzpcO3
	 XyMBYmg7yiz+Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 44C4E6131C;
	Fri, 12 Apr 2024 07:20:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C1A761BF316
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 07:20:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A7AE2824C1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 07:20:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NupfhJY7wUs3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Apr 2024 07:20:24 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::134; helo=mail-lf1-x134.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4395282331
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4395282331
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com
 [IPv6:2a00:1450:4864:20::134])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4395282331
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 07:20:23 +0000 (UTC)
Received: by mail-lf1-x134.google.com with SMTP id
 2adb3069b0e04-518931f8d23so26135e87.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 00:20:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712906421; x=1713511221;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/hETkjv1iN/Uez3VNUgyub6IOOBYWx+XdQ6KBbWFX/o=;
 b=n3+nup0Y0aAoAmNxldGzHhyQlGjwovT5fgITBgg9IehTDK4v4iXy7ND6ZjDXmpgHtj
 pDRSeWAU9q2FlYG4Z0q6DMbCD2GMsbg5VLOT9zmm8iQMC37a0FxLpFgYgfbhEopuZSMU
 SGFDD2qOMsCFQCry6t3MxEEegBBYxS/al+jZW34IETA1GxAEkFRdRe6jSSgKwlONvpeU
 1QGDlFO86cv042zxfNYvUluP0SmMfWWbldV3G+sP8jABfKXZiVNPuYwtwgGPDNWy1SQ1
 ijxJT0sIqOIfyhQFAoppepnTu9dDSZBM0S7fno1LSNmYBUUPwQOOFPEyc2ynnW16/AYZ
 0qmw==
X-Gm-Message-State: AOJu0YxNoe6hAueUTmWAtS70MDCWf95BD9J8nt0FDSpujuxvVsS44o9i
 L1REe0tDE8S7m5I2KjlOoLBjxEFB17MjAga9UruCG/FT9Dgpu5CwPT9T0cNasOQ=
X-Google-Smtp-Source: AGHT+IFLe7RifxtQxqtjmK6B5O9eNd0MR5sjGR86QN3vKg/4TzdpDfDeqTv+9mwREQpJLKPCPEBa4w==
X-Received: by 2002:a05:6512:29b:b0:515:9abe:6c46 with SMTP id
 j27-20020a056512029b00b005159abe6c46mr1007371lfp.34.1712906420875; 
 Fri, 12 Apr 2024 00:20:20 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 w10-20020ac2598a000000b005187d5cc274sm177157lfn.227.2024.04.12.00.20.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Apr 2024 00:20:20 -0700 (PDT)
Date: Fri, 12 Apr 2024 09:20:17 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <ZhjgsaK7hppdrFwM@nanopsycho>
References: <20240412063053.339795-1-michal.swiatkowski@linux.intel.com>
 <20240412063053.339795-6-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240412063053.339795-6-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1712906421; x=1713511221;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=/hETkjv1iN/Uez3VNUgyub6IOOBYWx+XdQ6KBbWFX/o=;
 b=OZgAac6ETn5sj4p59TfGC0SQwrQcCfO7lulIDqLnwLZnVXXNYiPZVxuQNTBh1nk+wZ
 1vpVjdLDlkDpatAj+30ZQyxANYyAYFPElE1fJKYnmtTnzuSgtpv5qUxRAnwPVY4PnoVO
 G9gChxLObJ7lXN2Lox9u+U2q6syNRRb4FR6Daqr2aFvG9Fcv2sjpHT7S4EdjzUahXfSD
 XrB/UwiReSzkT8skzfwg+hY75PRE79g1cDpbHsNndSHHJjrj4OwOI/82RjCpT4Z1eKN7
 /AMsm2NXDSU8OW/yli2CBS+cN4b2NOt2AzGRm79cnYC8qgBNP4GtfjP0AIuFF7boV8od
 BpWA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=OZgAac6E
Subject: Re: [Intel-wired-lan] [iwl-next v3 5/7] ice: base subfunction aux
 driver
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
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 jiri@nvidia.com, michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, Piotr Raczynski <piotr.raczynski@intel.com>,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, Apr 12, 2024 at 08:30:51AM CEST, michal.swiatkowski@linux.intel.com wrote:
>From: Piotr Raczynski <piotr.raczynski@intel.com>
>
>Implement subfunction driver. It is probe when subfunction port is
>activated.
>
>VSI is already created. During the probe VSI is being configured.
>MAC unicast and broadcast filter is added to allow traffic to pass.
>
>Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
>Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Reviewed-by: Jiri Pirko <jiri@nvidia.com>
