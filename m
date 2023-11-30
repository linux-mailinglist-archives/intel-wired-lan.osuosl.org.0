Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 68DAD7FEBE2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Nov 2023 10:33:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B74ED6F514;
	Thu, 30 Nov 2023 09:33:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B74ED6F514
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701336784;
	bh=lvQVqjOk1V0cPjeDx4Vhs2LvaHY4RH6YxO7WF7wzc6Q=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kSWLSOKBdKM4Bvl8o7zglwsrW7wbVxFMMSpBEQwiH02EXVWY0TRrHL789q5Fz5MUN
	 JenhGTJN6JPj16VCPTRa7gd1KM2jjtLna9M9foMc8OmG5AtOcaKcd9SgdbgNLskbF8
	 FHj+gP8JMDOKiIj2gWWV16/WTqdwR16/uAW3wbpPboBZDtV7DGXQzei/AczNJuXAkV
	 MsLndLjDYFVLjjcPjmLCVNHd0mtXF90EWKS+YVrkbbHrg0bG7dqTwCKgVnaEOPv7IU
	 GXtqiV81KUrJ12mvzFsAv7hnK07xNtsEc3NoXpdzFdPet3LW2qE+QNop7BW0L5O5XO
	 U/y27aVwf7ZbA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8YNqtaNfjCz9; Thu, 30 Nov 2023 09:33:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 54A4C6F510;
	Thu, 30 Nov 2023 09:33:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 54A4C6F510
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D7C291BF3C9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 09:32:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B82CA8447D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 09:32:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B82CA8447D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q3vAkyJ7kde6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Nov 2023 09:32:57 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4C9C384394
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 09:32:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C9C384394
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-526-ZaCJaLxlOu2xy4SPAGnBIQ-1; Thu, 30 Nov 2023 04:32:52 -0500
X-MC-Unique: ZaCJaLxlOu2xy4SPAGnBIQ-1
Received: by mail-ej1-f71.google.com with SMTP id
 a640c23a62f3a-a1867751573so94679366b.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Nov 2023 01:32:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1701336771; x=1701941571;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=4Xsun1l1Am9ErBEU0YKk76EQDLwtRFcU4lii6ZmYk+k=;
 b=VzRp+qRPUzWcOrn7qH3tB4FDJQesq0xLz38hQM5mZQMzWJVVmVGj+qCPwUxqnXS4sh
 WFflcrmpiiNscqqb9WY4tJ1QNupq38HvsqVTSXrRJ/L0NrhV0n9Ke509iXUiEPZra2Cn
 avgLC6HbG+aQu4TGo7iH0DlCBZFDjJXLd10Z4y2Xwfu32eX+CztMaVGDGUg/+Oq+3aB9
 mjJ3X3cCzVQxGn7blW4M4a8jWZ2D+HZdBevaPPj3Vd+pPye95LNDeUwghcIsHYQAjQnA
 cQBiI5Wcfc11p41Ux71aiKU4xPaiGR6zHjfJXNG1BMcJgZc/+lRNBJcDjvMxNVBdginv
 AEZg==
X-Gm-Message-State: AOJu0YzwvI7srmO9YotaHEVotHaizvbypIKCvVFRsP4AJY4cUzzWbAbP
 HMYZQDBevGS4K77i6KUTJl1mVLA+/OOpgK8AYRgnet1exDhWBsBAHVCDA2wsFxTLJZ25/YrpgVm
 rNb0K3jFwCnouyiLWa2YIUV5yilVqIg==
X-Received: by 2002:a17:907:2d88:b0:a00:76b1:7d9a with SMTP id
 gt8-20020a1709072d8800b00a0076b17d9amr23268035ejc.38.1701336771354; 
 Thu, 30 Nov 2023 01:32:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEFX1dhacEtPWsTgutwzAcbx249drAbMZEwTxvQmJSI0dd+Ru5xawHfPEfi5ZwMHlrJ2F9Mgw==
X-Received: by 2002:a17:907:2d88:b0:a00:76b1:7d9a with SMTP id
 gt8-20020a1709072d8800b00a0076b17d9amr23268015ejc.38.1701336770975; 
 Thu, 30 Nov 2023 01:32:50 -0800 (PST)
Received: from [192.168.2.117] ([46.175.183.46])
 by smtp.gmail.com with ESMTPSA id
 ay5-20020a170906d28500b009fc3f347109sm464316ejb.156.2023.11.30.01.32.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Nov 2023 01:32:50 -0800 (PST)
Message-ID: <b24eebdf-8ef4-4e93-a21c-64af73271829@redhat.com>
Date: Thu, 30 Nov 2023 10:32:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
References: <20231128194215.3318925-1-jacob.e.keller@intel.com>
From: Petr Oros <poros@redhat.com>
In-Reply-To: <20231128194215.3318925-1-jacob.e.keller@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, cs-CZ
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1701336776;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4Xsun1l1Am9ErBEU0YKk76EQDLwtRFcU4lii6ZmYk+k=;
 b=iHHDZkbdt8M8RWjEJZ8TVFr6LhcK9YIYyHrKfowLUR9kWtyosCcbR18Dn5ivGDyfpx/AHy
 9WAANfPvhu3/B9YnRyW6sVZf8EjmY918rHIfSKlzBuRYiDQELAaKx6FV+UFAUL/8ovOsKK
 WLpHEqYPbCspTX1ILHRGyWAEnheFCJI=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=iHHDZkbd
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4] ice: replace
 ice_vf_recreate_vsi() with ice_vf_reconfig_vsi()
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Buchocki <jakubx.buchocki@intel.com>,
 Rafal Romanowski <rafal.romanowski@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


Dne 28. 11. 23 v 20:42 Jacob Keller napsal(a):
> The ice_vf_create_vsi() function and its VF ops helper introduced by commit
> a4c785e8162e ("ice: convert vf_ops .vsi_rebuild to .create_vsi") are used
> during an individual VF reset to re-create the VSI. This was done in order
> to ensure that the VSI gets properly reconfigured within the hardware.
>
> This is somewhat heavy handed as we completely release the VSI memory and
> structure, and then create a new VSI. This can also potentially force a
> change of the VSI index as we will re-use the first open slot in the VSI
> array which may not be the same.
>
> As part of implementing devlink reload, commit 6624e780a577 ("ice: split
> ice_vsi_setup into smaller functions") split VSI setup into smaller
> functions, introducing both ice_vsi_cfg() and ice_vsi_decfg() which can be
> used to configure or deconfigure an existing software VSI structure.
>
> Rather than completely removing the VSI and adding a new one using the
> .create_vsi() VF operation, simply use ice_vsi_decfg() to remove the
> current configuration. Save the VSI type and then call ice_vsi_cfg() to
> reconfigure the VSI as the same type that it was before.
>
> The existing reset logic assumes that all hardware filters will be removed,
> so also call ice_fltr_remove_all() before re-configuring the VSI.
>
> This new operation does not re-create the VSI, so rename it to
> ice_vf_reconfig_vsi().
>
> The new approach can safely share the exact same flow for both SR-IOV VFs
> as well as the Scalable IOV VFs being worked on. This uses less code and is
> a better abstraction over fully deleting the VSI and adding a new one.
>
> Fixes: a4c785e8162e ("ice: convert vf_ops .vsi_rebuild to .create_vsi")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> Changes since v3:
> * Removal of filters was a side effect of VSI being fully deleted by
>    firmware. Since we don't do that now, it was not happening. Fix this by
>    adding a call to ice_fltr_remove_all(). Thanks to Jakub Buchocki for
>    figuring out this solution.
> * Rebase on to current dev-queue.
>
> v3 was posted at https://lore.kernel.org/intel-wired-lan/20230712222936.1048751-1-jacob.e.keller@intel.com/
> v2 was posted at https://lore.kernel.org/intel-wired-lan/20230712204730.326331-1-jacob.e.keller@intel.com/
> v1 was posted at https://lore.kernel.org/intel-wired-lan/20230504211829.3869868-1-jacob.e.keller@intel.com/
>
>
>   drivers/net/ethernet/intel/ice/ice_sriov.c    | 24 ++-----------
>   drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 35 +++++++++++++------
>   drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  1 -
>   .../ethernet/intel/ice/ice_vf_lib_private.h   |  1 +
>   4 files changed, 28 insertions(+), 33 deletions(-)
Issue from previous version is fixed. Thanks

everything looks fine.

Reviewed-by: Petr Oros <poros@redhat.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
