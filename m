Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 363998C22CB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 May 2024 13:08:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5430A42393;
	Fri, 10 May 2024 11:07:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EX-3dlhsbZRP; Fri, 10 May 2024 11:07:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6679942396
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715339277;
	bh=lOzOAqmI9nIWypFH/CIb7APO0wwyBNqPyzkSkyjLNdQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TG8VZ9MdUPhpMMbe4DXz3dl0ZZjlqHTkZPHttiAbARNoSKhM9EF2irF/AXq1tm0dd
	 p0jGTGXGd+BuRetnoh/93rZSaqxNdz7mfJ/Ovhg4woYd8DQAUxgEXeifp8GIr2ztuy
	 qLxt4e0AR32bvP8HUNpTP4FuD6Qxd6iCAAApALl0g3zKOXvld11xjG3kNt44ZB/8o6
	 JBRMtGT3yueg4oVgHd2ksszGNhO+84eU3M/YS1NVt0HHIPLyvo0Q/c4z59EobzIZHA
	 7r+FUzYpe1wMAoXodtQEcN53I1iAG67L6dio4sk6RyMHyM8iUPpBCb6tEYI4XnL8EY
	 qxFHm98xyQMCg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6679942396;
	Fri, 10 May 2024 11:07:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DA2581BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 11:07:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D361940B78
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 11:07:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8pZXcxTfNGjX for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 May 2024 11:07:53 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::22c; helo=mail-lj1-x22c.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CFE3540B67
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CFE3540B67
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com
 [IPv6:2a00:1450:4864:20::22c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CFE3540B67
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 11:07:52 +0000 (UTC)
Received: by mail-lj1-x22c.google.com with SMTP id
 38308e7fff4ca-2e45c0a8360so19013041fa.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 May 2024 04:07:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715339270; x=1715944070;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lOzOAqmI9nIWypFH/CIb7APO0wwyBNqPyzkSkyjLNdQ=;
 b=MOj/UZC02S3MXw+J08xG6rzeUNhIbo0LXO7u7ZUsa6pL87AxnNt/D0E6KosSosVg+2
 FuI79EEqpLEjGLPdlpqsXWQ/XjvPTZGDGZdyjlIalWh36Yc5gosTC7G4IWqrth7srWSf
 GkcOt1e/QUEZ/8DdfY05OxBs/Q88FBrUCaWuEwVLzJfnLzzD34ZSpGCiKhwa1ppTVodA
 U9SI9+49dKzfdGezVV7xGmVpI316TakDzKVrLeWzn7uRvXHuVjLl+bCQ+psefVEr4tEW
 OwGwVT0OPHQHYBbvHQZ4PPaZ752YSSTofjet0uHUyZ5SeVOYjrGzrIDeBSYubRY/uDah
 Bo8w==
X-Gm-Message-State: AOJu0YzQnh6uHJKn4DVCBveD4KgJgBl/d8lJhFN9lM7kBKlZwmpybnh9
 BparKBaXaUhXi8Q6AkhqJJCLA/IGR09xd/RU9n4uTx+OFGM1+14zTKTVJwZwdew=
X-Google-Smtp-Source: AGHT+IGW5QBg7jd7ZGdFB8kWjrOudgTh1Lj0FwS1SZreq7UTrqwgF47iDm7dS4XOHKLf8AuxaLt5AA==
X-Received: by 2002:a2e:9045:0:b0:2e3:38e0:54c7 with SMTP id
 38308e7fff4ca-2e5204b2f26mr13611271fa.38.1715339269900; 
 Fri, 10 May 2024 04:07:49 -0700 (PDT)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-41fa90e93absm80088015e9.9.2024.05.10.04.07.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 May 2024 04:07:47 -0700 (PDT)
Date: Fri, 10 May 2024 13:07:44 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <Zj4AAFwZudmyOWTm@nanopsycho.orion>
References: <20240507114516.9765-1-michal.swiatkowski@linux.intel.com>
 <20240507114516.9765-9-michal.swiatkowski@linux.intel.com>
 <ZjywddcaIae0W_w3@nanopsycho.orion> <Zj3NQw1BxqtOS9VG@mev-dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zj3NQw1BxqtOS9VG@mev-dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1715339270; x=1715944070;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=lOzOAqmI9nIWypFH/CIb7APO0wwyBNqPyzkSkyjLNdQ=;
 b=DKJiQlW2OAj7fNr+S6BslcxAIjLgkusoQCPqhKr50YHW9tXlXO8aNtwgN49KeVjw03
 iJRn5+drneVMaVaCrVdKzB/Iso2KFwNaerrz98ewaOdtwAqJtvd0UsSS7mqzrY2FOmVP
 qqh3CXmXy8auvpC9fELlyKMCmi1Txb8dPNT8AGWY736VRUpLFMPe2LXnDii1BjiC2hPT
 ibdCeds98eVEUk56Iz9sutwjeDOehhsBxlvoMmXXr2s/fjhd8Poowjt1aYkNlwti8tfq
 RviUE9L9uGalf/mZgfLpYryX42CH/jpevpmN4CEaq4+LKd2+ixr7FB8nMkYvR/7r0qhX
 Y3mg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=DKJiQlW2
Subject: Re: [Intel-wired-lan] [iwl-next v1 08/14] ice: create port
 representor for SF
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, May 10, 2024 at 09:31:15AM CEST, michal.swiatkowski@linux.intel.com wrote:
>On Thu, May 09, 2024 at 01:16:05PM +0200, Jiri Pirko wrote:
>> Tue, May 07, 2024 at 01:45:09PM CEST, michal.swiatkowski@linux.intel.com wrote:
>> >Store subfunction and VF pointer in port representor structure as an
>> >union. Add port representor type to distinguish between each of them.
>> >
>> >Keep the same flow of port representor creation, but instead of general
>> >attach function create helpers for VF and subfunction attach function.
>> >
>> >Type of port representor can be also known based on VSI type, but it
>> >is more clean to have it directly saved in port representor structure.
>> >
>> >Create port representor when subfunction port is created.
>> >
>> >Add devlink lock for whole VF port representor creation and destruction.
>> >It is done to be symmetric with what happens in case of SF port
>> >representor. SF port representor is always added or removed with devlink
>> >lock taken. Doing the same with VF port representor simplify logic.
>> >
>> >Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>> >Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>> >---
>> > .../ethernet/intel/ice/devlink/devlink_port.c |   6 +-
>> > .../ethernet/intel/ice/devlink/devlink_port.h |   1 +
>> > drivers/net/ethernet/intel/ice/ice_eswitch.c  |  85 +++++++++---
>> > drivers/net/ethernet/intel/ice/ice_eswitch.h  |  22 +++-
>> > drivers/net/ethernet/intel/ice/ice_repr.c     | 124 +++++++++++-------
>> > drivers/net/ethernet/intel/ice/ice_repr.h     |  21 ++-
>> > drivers/net/ethernet/intel/ice/ice_sriov.c    |   4 +-
>> > drivers/net/ethernet/intel/ice/ice_vf_lib.c   |   4 +-
>> > 8 files changed, 187 insertions(+), 80 deletions(-)
>> 
>> This calls for a split to at least 2 patches. One patch to prepare and
>> one to add the SF support?
>
>Is 187 insertions and 80 deletions too many for one patch? Or the
>problem is with number of files changed?

The patch is hard to follow, that's the problem.


>
>I don't see what here can be moved to preparation part as most changes
>depends on each other. Do you want me to have one patch with unused
>functions that are adding/removing SF repr and another with calling
>them?
>
>Thanks,
>Michal
