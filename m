Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ABCC8A9EBF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 17:43:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F3A3E4053C;
	Thu, 18 Apr 2024 15:43:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MVdtmXgfD3Mb; Thu, 18 Apr 2024 15:43:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B0505403D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713455019;
	bh=wv84R62W+nFZK9Qn4TJM8MSeWSQNQQ/88HdTwn4ZbCo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oiWBkgaxBW5VHITDpWaC079xyZepJqfe9FKpUvO+zLgTdWcbsJZTdJl9zejNBQq+J
	 /3ANqHKLSYzPvs6D/gPMZWIrmAPojnk4pzrl8l7mHV+CF3I+5VDL7tOU0uS+RnQnon
	 P4HyiAcM9rfOsLSkxlkI9TpGkt/PMcuoKUsIXd1or1Y5P8gzCwcSqwKucp06uwAcR4
	 p4XP5PjfOxH/kH9kIR3Ga52JXz2w0qLCYKHMQS0J++l9b7rTs4KRTMbawwU4/SrQuC
	 SF4Nk4IKQZbkfXyDxkTn/W9+QlDWTmogAtsSb1oqhHKNI6qoUJvOpMZ1k236a5sy3i
	 wlrFrCCtM81lg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B0505403D0;
	Thu, 18 Apr 2024 15:43:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 67D301BF3CA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 15:43:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 53593605B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 15:43:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jEPGoFkJb9vB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 15:43:36 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::22b; helo=mail-lj1-x22b.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org ED0386006A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED0386006A
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com
 [IPv6:2a00:1450:4864:20::22b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ED0386006A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 15:43:32 +0000 (UTC)
Received: by mail-lj1-x22b.google.com with SMTP id
 38308e7fff4ca-2d094bc2244so15938541fa.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 08:43:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713455011; x=1714059811;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=wv84R62W+nFZK9Qn4TJM8MSeWSQNQQ/88HdTwn4ZbCo=;
 b=RqDLuoguvXloZjBIjEvdx+cERcT2SuAY+oELCBRs1bphcyNWSgeZrZnm8RFTN5eMgE
 KsTz0/dHCJ1TNDSOu17Mz3Gv82FK0iGU5rliQVHP66ugWJsfQqkRokC1YOa6I/nXESZb
 opfKSLvUoDC+i891fE4gIwqMM3fUreS4oCfAqn1VwscqQKuPWGA5zARV7vjtCtGw6fmK
 bySsyHsV7PSZrAdoQfPMiucRxGUZbZdk0WT28v5YEnhK55HOH/SnFJEQLPEWvgjqiT/7
 hJVW/1TPmnVrxp+jpgN6Y4EuExPsNFp6ADJzSpG+ex7ic1dKB2p/YGgNe7lIW9yk6oWi
 NLXA==
X-Gm-Message-State: AOJu0YzCgzu1+Hrh6S1zfyAE8apsQjO4DsR+8PXSdlMZ/PQWW7mhuYZc
 QfNjNYjFrz/TsyF8qVoNFWTbgsFYsYELRnXZXXBrys5Ip9aQGxSrS2FeDriM22g=
X-Google-Smtp-Source: AGHT+IH/KyPVd/2LhG5m5ZqHdXTFDZ0mdyAPGoty0zRQjHntyWkm4XehwnesZcdxZcnx+px/dhRbCg==
X-Received: by 2002:a2e:3015:0:b0:2d4:6f14:53d5 with SMTP id
 w21-20020a2e3015000000b002d46f1453d5mr1794363ljw.26.1713455010518; 
 Thu, 18 Apr 2024 08:43:30 -0700 (PDT)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 o12-20020a5d62cc000000b00349c42f2559sm2112203wrv.11.2024.04.18.08.43.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Apr 2024 08:43:29 -0700 (PDT)
Date: Thu, 18 Apr 2024 17:43:25 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <ZiE_nUEsGT8Cd3BK@nanopsycho>
References: <20240417142028.2171-1-michal.swiatkowski@linux.intel.com>
 <20240417142028.2171-6-michal.swiatkowski@linux.intel.com>
 <ZiEMRcP7QN5zVd8Z@nanopsycho> <ZiEWtQ2bnfSO6Da7@mev-dev>
 <ZiEZ-UKL0kYtEtOp@nanopsycho> <ZiEyP+t9uarUrLGO@mev-dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZiEyP+t9uarUrLGO@mev-dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1713455011; x=1714059811;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=wv84R62W+nFZK9Qn4TJM8MSeWSQNQQ/88HdTwn4ZbCo=;
 b=apOeMMRAJ52Wo0cZ+jQvCrN/SR60x/8Ly9jdkDC6z7wCWdNzteitmTN8M/eMo8B9/v
 P5Eh6AlCYHsWtLgV5ywo1TBjKyFdHDZLhrRNe80q9gcKCBb6XERUL65MZMJThaK/TXj1
 lh5Scy6GdjY5ft62+jke/2LETSm9dBEAM2jZwnDuNrX3WEd/FmviB6TPjrUQ93+obDdE
 6J2KrIbSJo6lLp66fKniKKhWNwpaFx9Hky8PLl3rhbw2R9pz2Ntyu5ZmAS4fkVzfKS2F
 XX23Ym//bF6shA8MDatnp8Tqp9JJ0NpjeQ7NgXrgJBTToTqIvUzu1WPvq+ISO2NdKZ5f
 gujg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=apOeMMRA
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

Thu, Apr 18, 2024 at 04:46:23PM CEST, michal.swiatkowski@linux.intel.com wrote:
>On Thu, Apr 18, 2024 at 03:02:49PM +0200, Jiri Pirko wrote:
>> Thu, Apr 18, 2024 at 02:48:53PM CEST, michal.swiatkowski@linux.intel.com wrote:
>> >On Thu, Apr 18, 2024 at 02:04:21PM +0200, Jiri Pirko wrote:
>> >> Wed, Apr 17, 2024 at 04:20:25PM CEST, michal.swiatkowski@linux.intel.com wrote:
>> >> >From: Piotr Raczynski <piotr.raczynski@intel.com>
>> >> 
>> >> [...]
>> >> 
>> >> >+/**
>> >> >+ * ice_allocate_sf - Allocate devlink and return SF structure pointer
>> >> >+ * @dev: the device to allocate for
>> >> >+ *
>> >> >+ * Allocate a devlink instance for SF.
>> >> >+ *
>> >> >+ * Return: void pointer to allocated memory
>> >> >+ */
>> >> >+struct ice_sf_priv *ice_allocate_sf(struct device *dev)
>> >> 
>> >> This is devlink instance for SF auxdev. Please make sure it is properly
>> >> linked with the devlink port instance using devl_port_fn_devlink_set()
>> >> See mlx5 implementation for inspiration.
>> >> 
>> >> 
>> >
>> >I am going to do it in the last patchset. I know that it isn't the best
>> 
>> Where? Either I'm blind or you don't do it.
>> 
>> 
>
>You told me to split few patches from first patchset [1]. We agree that
>there will be too many patches for one submission, so I split it into
>3:
>- 1/3 devlink prework (already accepted)
>- 2/3 base subfunction (this patchset)
>- 3/3 port representor refactor to support subfunction (I am going to
>  include it there)

Sorry, but how is this relevant to my suggestion to use
devl_port_fn_devlink_set() which you apparently don't?


>
>[1] https://lore.kernel.org/netdev/20240301115414.502097-1-michal.swiatkowski@linux.intel.com/
>
>Thanks,
>Michal
>
>> >option to split patchesets like that, but it was hard to do it differently.
>> >
>> >Thanks,
>> >Michal
>> >
>> >> >+{
>> >> >+	return ice_devlink_alloc(dev, sizeof(struct ice_sf_priv),
>> >> >+				 &ice_sf_devlink_ops);
>> >> >+}
>> >> >+
>> >> 
>> >> [...]
