Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1457D4F37
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 13:50:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 31B45428E6;
	Tue, 24 Oct 2023 11:50:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 31B45428E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698148230;
	bh=f4DasIpQvlyK+Xm44wvAxslBrd9J+24d816nuRG7gxM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0XtY4Ed/gjndU/A4QECbb5tX9UzAlLOPneotoG26YIf4RfwBMDnjXkenANO4J4mt0
	 1QSs/VF0OsjOCCXcQeqWfQfkgVI3IqVnM9donOS1o1/B0Z7moWVLa2oXcYayXB9OHK
	 OsKCi3K4wqhI8iL8J7htRv2pv2+3KzMXjpUwlQKc9/6xLX+o8lLOlfu/cdNSLu5Fqe
	 aUcJcYDgQZZ0oVAESlMeQiNekRXIHDvLZMQmkKegNF4rY1sGZ723E7NWyrPsvv9mgO
	 wCTgDLgMit9hkd7V9zH/yNoK4ondCpKG9JkUtBboED7ca3PK59P3V+esdLwPVfltVq
	 kIq1wN4jfqFsw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FC71qTfudXsP; Tue, 24 Oct 2023 11:50:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C7B0E42093;
	Tue, 24 Oct 2023 11:50:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C7B0E42093
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D0D5F1BF2F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:50:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A7BF942071
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:50:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A7BF942071
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ivBXCgQAigsu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Oct 2023 11:50:22 +0000 (UTC)
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 10C8641F1D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 11:50:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 10C8641F1D
Received: by mail-wm1-x335.google.com with SMTP id
 5b1f17b1804b1-40839807e82so25430805e9.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 04:50:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698148219; x=1698753019;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=i2XdxedmWSwH4vw/QHp+RZVDywlMbPNif4GB1QAW8hE=;
 b=NyN9nuvRavS2250isYdQv/3wWvN/FgxTUYUTUR8k5qDaHDZqd8lXpUIz+4SP9H+4Uz
 LUuGh8/EE6goqJWoa4UFoi1Oad6OtkKG31hF2oupxiExKsR6ETn4qEXHbKAYddw/zCD2
 4wP4rFaPZasThek5Cn2w378lECogg2FHkDFDrPnct3BG0zveZoRbkLJ2JHOPfHtfJn7x
 kYPbhl/tLp4hVn0UdXOgK9sdoCiiHkjpbPLOh3YjEs3fUSIOyKcBQsmWvlS6hGEeGfYP
 IDpxF5zs1uwBA3jXPpSsox0AA1ow75vZb31haEO9yFAXib2qlGqO5EdK9xKW8LNp66zu
 ctaA==
X-Gm-Message-State: AOJu0YxxyvIMeHr5GZJCVtwfaYNKnU+w+HXz+y9CQ7PxQcGHGVRYvA0C
 cDXzMp2Klk20jF4AjqvstUOPTw==
X-Google-Smtp-Source: AGHT+IFYLVTxRjI85SHP8iUKKoWYZ69YKRQqPUSXVKzjW23w/XZMU4VToX0MAPWkBNL+z3sQ5mm9AQ==
X-Received: by 2002:a05:600c:602a:b0:407:4126:f71c with SMTP id
 az42-20020a05600c602a00b004074126f71cmr14878834wmb.6.1698148219327; 
 Tue, 24 Oct 2023 04:50:19 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 c16-20020a05600c0ad000b003fee567235bsm16537251wmr.1.2023.10.24.04.50.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Oct 2023 04:50:18 -0700 (PDT)
Date: Tue, 24 Oct 2023 13:50:16 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <ZTeveEZ1W/zejDuM@nanopsycho>
References: <20231024110929.19423-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231024110929.19423-1-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1698148219; x=1698753019;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=i2XdxedmWSwH4vw/QHp+RZVDywlMbPNif4GB1QAW8hE=;
 b=CtxTr7EgRhllhAjKAjUAkG+xW+ShMtFoU4/O17YFJPOfqFj9X/MuTaUnwt0cYv9I2C
 h90/SRwTDW63Sul7mdq3XKezawwTuP5bTaZo9KbxWX+G106gsA/9b/+1pr6fukcb/b08
 nQV2PSAn02ved3CxkDtbBIchwAY8xsWIP7SLx0dL2Pw7C+PumygNMvNerIwcQxi1RasN
 6Q1m/OWED8v7KmqPj+kRHuB1Q4Lyo6xidzLx5NQI2TED39boEQMJM+qiC6oL6Bm/bn8y
 2xkg/PVqW6Io/eF7Q5BGnnKhCYvJu6mgOMlTVkObTHxUmcS3QE0khI/b/0ZzjIOiMsld
 I2qg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=CtxTr7Eg
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

Tue, Oct 24, 2023 at 01:09:14PM CEST, michal.swiatkowski@linux.intel.com wrote:
>Hi,
>
>Currently ice supports creating port representors only for VFs. For that
>use case they can be created and removed in one step.
>
>This patchset is refactoring current flow to support port representor
>creation also for subfunctions and SIOV. In this case port representors
>need to be createad and removed one by one. Also, they can be added and
>removed while other port representors are running.
>
>To achieve that we need to change the switchdev configuration flow.
>Three first patches are only cosmetic (renaming, removing not used code).
>Next few ones are preparation for new flow. The most important one
>is "add VF representor one by one". It fully implements new flow.
>
>New type of port representor (for subfunction) will be introduced in
>follow up patchset.

Examples please. Show new outputs of devlink commands.

Thanks!


>
>Michal Swiatkowski (15):
>  ice: rename switchdev to eswitch
>  ice: remove redundant max_vsi_num variable
>  ice: remove unused control VSI parameter
>  ice: track q_id in representor
>  ice: use repr instead of vf->repr
>  ice: track port representors in xarray
>  ice: remove VF pointer reference in eswitch code
>  ice: make representor code generic
>  ice: return pointer to representor
>  ice: allow changing SWITCHDEV_CTRL VSI queues
>  ice: set Tx topology every time new repr is added
>  ice: realloc VSI stats arrays
>  ice: add VF representors one by one
>  ice: adjust switchdev rebuild path
>  ice: reserve number of CP queues
>
> drivers/net/ethernet/intel/ice/ice.h          |  13 +-
> drivers/net/ethernet/intel/ice/ice_devlink.c  |  29 +
> drivers/net/ethernet/intel/ice/ice_devlink.h  |   1 +
> drivers/net/ethernet/intel/ice/ice_eswitch.c  | 562 ++++++++++--------
> drivers/net/ethernet/intel/ice/ice_eswitch.h  |  22 +-
> .../net/ethernet/intel/ice/ice_eswitch_br.c   |  22 +-
> drivers/net/ethernet/intel/ice/ice_lib.c      |  81 ++-
> drivers/net/ethernet/intel/ice/ice_main.c     |   6 +-
> drivers/net/ethernet/intel/ice/ice_repr.c     | 195 +++---
> drivers/net/ethernet/intel/ice/ice_repr.h     |   9 +-
> drivers/net/ethernet/intel/ice/ice_sriov.c    |  20 +-
> drivers/net/ethernet/intel/ice/ice_tc_lib.c   |   4 +-
> drivers/net/ethernet/intel/ice/ice_vf_lib.c   |   9 +-
> drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   2 +-
> 14 files changed, 553 insertions(+), 422 deletions(-)
>
>-- 
>2.41.0
>
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
