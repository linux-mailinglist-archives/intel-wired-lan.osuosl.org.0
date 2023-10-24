Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B2FB7D5389
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 16:00:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DCF0682269;
	Tue, 24 Oct 2023 14:00:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DCF0682269
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698156008;
	bh=J5JzInJFzQRHPpU+Dsm2uzFhGdYC7rKbNtXTGrkee60=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=e37bgjeHEIGu5ZoB5dTVMmmFdZPTajckoZDDZJ5rEa5oXtc2wBzEhuSFBJib+XbYE
	 AhPh/eyU78/9+ALTSDmGjyhjjL0Aktna1ctiXA5GOj2gTveuFL63GC1Y8tLjDocb0V
	 2WDmWUmSpy6ZdEFlik9WBqjGvEzH18Fbe7I/j6DSfuOfIiQ/AyyZ0FLsg+z786VGG3
	 sWAILbUSmeMRZ4ux4RQAf6r8WvWPRslatxGbePoq0qdFiXPgMFtbfD1T3CnSf1VreQ
	 I2v2NeuUA7vDdB1eUxBqCjh4bn1dgCWvzHLsBf/eeq8e9klaBUjTniOIPNCjwg5OsQ
	 nD91nWy0cVE4g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s1dyXSsgGlhg; Tue, 24 Oct 2023 14:00:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 860808201B;
	Tue, 24 Oct 2023 14:00:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 860808201B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 89CEB1BF2F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 14:00:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 608BE42F80
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 14:00:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 608BE42F80
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IGWh9d30WizG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Oct 2023 14:00:00 +0000 (UTC)
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 122FD42F73
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 13:59:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 122FD42F73
Received: by mail-ed1-x52b.google.com with SMTP id
 4fb4d7f45d1cf-53f6ccea1eeso6905678a12.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 06:59:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698155997; x=1698760797;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=SgdX192KFs5xjFiQY9Esfa/RVC4h8fO0VTXfZSLKSz0=;
 b=aswBzv+CkS8D+yIrVANc3vjAqXZPtx8b5Uuv2pQo0hyozA1PdXhf2GlcQV5UNZltfH
 0VTIz+qIyr3h8X+mJl13kp4YzyZEsBVgF2yZymk89Q+LMfDiw6BUh0BAInytHMAK1fni
 tHqBbkzgeWM8rpAoDV8iGFSNq0CyF9C0sVYVz48ngttdJn9OBA2/FaxcLrfdYzvC/Se2
 pkGJYCVm3UPsR9joaPNObft9kTSi95TK6H2HcMGGEseYK8z9qskcwW2u+nzehs9pZmQ2
 Ew6g6+S72ewrE3aVT/YEwxBylB9Vw+VS2JDDjgXQPbe/gfy+uwRX1ewJyMVmifUWkf7x
 nOIA==
X-Gm-Message-State: AOJu0YwO2yCa/5p2qDS9Wi7kjo8Hv89fjo/IRh0fXna/kvwvEUqxOQzR
 8BCe8JQgdVR/VTtvetfoC3pKhA==
X-Google-Smtp-Source: AGHT+IEOqSVuyPBWT2PEqpT8k//S2BmNYh48OAyoFg4PNFz48+TogLO7Km36A6Ryl0V8LASW4amubg==
X-Received: by 2002:a05:6402:2707:b0:540:3a46:cdcd with SMTP id
 y7-20020a056402270700b005403a46cdcdmr6418116edd.29.1698155997370; 
 Tue, 24 Oct 2023 06:59:57 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 o2-20020a509b02000000b0053db0df6970sm8138765edi.54.2023.10.24.06.59.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Oct 2023 06:59:56 -0700 (PDT)
Date: Tue, 24 Oct 2023 15:59:55 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <ZTfN22fHri3vKWyF@nanopsycho>
References: <20231024110929.19423-1-michal.swiatkowski@linux.intel.com>
 <ZTeveEZ1W/zejDuM@nanopsycho> <ZTfCVsYtbwSg9nZ/@wasp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZTfCVsYtbwSg9nZ/@wasp>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1698155997; x=1698760797;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=SgdX192KFs5xjFiQY9Esfa/RVC4h8fO0VTXfZSLKSz0=;
 b=1jqjYFiScBwL66zvlmkK2+TbVal5kQKthvbdE/L/NJ6eOJxi1Au3nskvDzz9f/xIsw
 qt8qyTQjC654M7CmOg99tChDQczok6GBwcn5XXRdhZh7x1XQFXRPtObWSH8AguoxBBsp
 gMfNGhGO3dEvmzXlRVSMsaM7U9MhV0wnUIhM74jIW5DNGZe7Q85BxXh75yib/a/9XfJl
 b8upYgxssr7QocckvueEEjZ0yMgAhoU/YqwxOSUSil5YS5NrxowBS6sUndDJzs1hBVrs
 p2CtM/8Uge686nR9lVac8i4VXU5tn2ifJxZ1C4JN4fRPosLO3iLo62rDI/OPqbGjFBYZ
 9Rnw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=1jqjYFiS
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 00/15] one by one port
 representors creation
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 piotr.raczynski@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Oct 24, 2023 at 03:10:46PM CEST, michal.swiatkowski@linux.intel.com wrote:
>On Tue, Oct 24, 2023 at 01:50:16PM +0200, Jiri Pirko wrote:
>> Tue, Oct 24, 2023 at 01:09:14PM CEST, michal.swiatkowski@linux.intel.com wrote:
>> >Hi,
>> >
>> >Currently ice supports creating port representors only for VFs. For that
>> >use case they can be created and removed in one step.
>> >
>> >This patchset is refactoring current flow to support port representor
>> >creation also for subfunctions and SIOV. In this case port representors
>> >need to be createad and removed one by one. Also, they can be added and
>> >removed while other port representors are running.
>> >
>> >To achieve that we need to change the switchdev configuration flow.
>> >Three first patches are only cosmetic (renaming, removing not used code).
>> >Next few ones are preparation for new flow. The most important one
>> >is "add VF representor one by one". It fully implements new flow.
>> >
>> >New type of port representor (for subfunction) will be introduced in
>> >follow up patchset.
>> 
>> Examples please. Show new outputs of devlink commands.
>> 
>> Thanks!
>>
>
>If you mean outputs after refactor to one by one solution nothing
>has changed:
>
># devlink port show (after creating 4 VFs in switchdev mode)
>pci/0000:18:00.0/0: type eth netdev ens785f0np0 flavour physical port 0 splittable true lanes 8
>pci/0000:18:00.0/2: type eth netdev ens785f0np0_0 flavour pcivf controller 0 pfnum 0 vfnum 0 external false splittable false
>pci/0000:18:00.0/4: type eth netdev ens785f0np0_3 flavour pcivf controller 0 pfnum 0 vfnum 3 external false splittable false
>pci/0000:18:00.0/5: type eth netdev ens785f0np0_1 flavour pcivf controller 0 pfnum 0 vfnum 1 external false splittable false
>pci/0000:18:00.0/6: type eth netdev ens785f0np0_2 flavour pcivf controller 0 pfnum 0 vfnum 2 external false splittable false
>
>According subfunction, it will also be in cover latter for patchset that
>is implementing subfunction.
>
>Commands:
># devlink dev eswitch set pci/0000:18:00.0 mode switchdev
># devlink port add pci/0000:18:00.0 flavour pcisf pfnum 0 sfnum 1000
># devlink port function set pci/0000:18:00.0/3 state active
>
>Outputs:
>Don't have it saved, will send it here after rebasing subfunction of top
>of this one.

Ah, I was under impression it is part of this set. Sorry.


>
>Thanks,
>Michal
>
>> >
>> >Michal Swiatkowski (15):
>> >  ice: rename switchdev to eswitch
>> >  ice: remove redundant max_vsi_num variable
>> >  ice: remove unused control VSI parameter
>> >  ice: track q_id in representor
>> >  ice: use repr instead of vf->repr
>> >  ice: track port representors in xarray
>> >  ice: remove VF pointer reference in eswitch code
>> >  ice: make representor code generic
>> >  ice: return pointer to representor
>> >  ice: allow changing SWITCHDEV_CTRL VSI queues
>> >  ice: set Tx topology every time new repr is added
>> >  ice: realloc VSI stats arrays
>> >  ice: add VF representors one by one
>> >  ice: adjust switchdev rebuild path
>> >  ice: reserve number of CP queues
>> >
>> > drivers/net/ethernet/intel/ice/ice.h          |  13 +-
>> > drivers/net/ethernet/intel/ice/ice_devlink.c  |  29 +
>> > drivers/net/ethernet/intel/ice/ice_devlink.h  |   1 +
>> > drivers/net/ethernet/intel/ice/ice_eswitch.c  | 562 ++++++++++--------
>> > drivers/net/ethernet/intel/ice/ice_eswitch.h  |  22 +-
>> > .../net/ethernet/intel/ice/ice_eswitch_br.c   |  22 +-
>> > drivers/net/ethernet/intel/ice/ice_lib.c      |  81 ++-
>> > drivers/net/ethernet/intel/ice/ice_main.c     |   6 +-
>> > drivers/net/ethernet/intel/ice/ice_repr.c     | 195 +++---
>> > drivers/net/ethernet/intel/ice/ice_repr.h     |   9 +-
>> > drivers/net/ethernet/intel/ice/ice_sriov.c    |  20 +-
>> > drivers/net/ethernet/intel/ice/ice_tc_lib.c   |   4 +-
>> > drivers/net/ethernet/intel/ice/ice_vf_lib.c   |   9 +-
>> > drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   2 +-
>> > 14 files changed, 553 insertions(+), 422 deletions(-)
>> >
>> >-- 
>> >2.41.0
>> >
>> >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
