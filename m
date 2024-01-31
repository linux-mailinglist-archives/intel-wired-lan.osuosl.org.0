Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 63553843F4A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jan 2024 13:18:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2AF7640929;
	Wed, 31 Jan 2024 12:17:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2AF7640929
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706703479;
	bh=wXe4LtPoUDxcEkwSyc3xDl5/BDGxRhVH0ZuJoP4XBmM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=J/+Tqg8jKIfe15rQ3LKFPe8rL/Z8AS+TEL9b3hfnTOEmGlHoT7716a/UZFraVtAMn
	 Ub+3HGSCajOpxCeP9TaWxpS72tRMUbrm2NHIUaL0o87oZKIEl6ni5AvnpfKDJ2Gr88
	 kFJzKxhjE5+qOaDSQZvkwd89LY1LUpx8kRF7UqsReOSSuxfj+Ex8NJFmXXex5LIxBW
	 +fZ5kl1b00kFpXxWRnjDbeRVCVojpNEN2WOD/5tqEmoZWoXlDc58jZZcuyxgyrEHrf
	 uCa0NsqkQ4Ldlot3mDA14140YIBCELjqH+2HrubICmz9IjRt9/rCJ7n8dXrA8tgdh8
	 xeXBNye/faruA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TjhAx4kd7dpS; Wed, 31 Jan 2024 12:17:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E0464401C8;
	Wed, 31 Jan 2024 12:17:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E0464401C8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A94D41BF5A2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 12:17:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7FBB940350
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 12:17:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7FBB940350
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FuJ0ucc51jwO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jan 2024 12:17:50 +0000 (UTC)
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com
 [IPv6:2a00:1450:4864:20::12c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 646BC400F3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 12:17:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 646BC400F3
Received: by mail-lf1-x12c.google.com with SMTP id
 2adb3069b0e04-51124d86022so1013851e87.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 04:17:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706703468; x=1707308268;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=wXe4LtPoUDxcEkwSyc3xDl5/BDGxRhVH0ZuJoP4XBmM=;
 b=TAtxsPeW/kTedpy7h2ouAbrV/8UCrOEwUvshYD+QeKLC2ho8HPh3rdjp8rz9eVmU/t
 Rnuqz+gwsNoCiMGGfu3F9Zr2KZPqP+DMzT1TGXfrXxhOinYk0/xz0IQanu5Zfa+NoBVN
 +xcH6oC1zEtErqnEX2M1+0yzrxJmnioMRy1BXenLKDzbdCrmIRywTAhWaug6uNeVda78
 UR73XI9czdlKz/mAcgFe+IEfgemTOCqzEcPn3wdfduaQmPgELo9voYUOebN37sGCuTRS
 8SZaBhRj3GdIwSKiGyTfcxYCSipjKFDl+lm5OQ7BD/Onq8TfwR33kRah2Zw3H2bpqqK+
 CP1A==
X-Gm-Message-State: AOJu0YyWcFJZzOfCmc1cpz0q+QzC8pisRqCtnxuRnx1Cq4ZZ7sk2yQAl
 cQv/c2Tz4e9yNZgCyFZHpC+hu17F1Yj8i0fuDOOYmxqjLFOj88WGg1CfoVxox04=
X-Google-Smtp-Source: AGHT+IFUFPGIQroV2J5G60/Il9MN8cQnsO4oiEKkBNSi26u7CBrurHiEZzGYyP88mKWGmEMZNSSNNQ==
X-Received: by 2002:a05:6512:3d9f:b0:511:16df:b31 with SMTP id
 k31-20020a0565123d9f00b0051116df0b31mr1256850lfv.51.1706703467700; 
 Wed, 31 Jan 2024 04:17:47 -0800 (PST)
X-Forwarded-Encrypted: i=0;
 AJvYcCWIohaufuMJ3i6wFwhAyNtE7sA3ssCtR5KPQ8W48Dkn3IuFScWcWCH4IqJh79DgVP0xKVBtpWfo8jvTe7OebI0j25oBbhLyitAZ63qlVjayxo+faEXEJMRqKR+sey/51NpKSLLE1y1TDrY0sW57iQM/skjCSrsYnomPE0wgDYetnwgs88FXJhl+5twVH5zgaeZMwW/M2ECIC/f0WZSWBAIX+MiD18I40Nx81niwQoodvqHXqeZcRy3OMMVXVRV5ceAoJQ9U8jr+
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 hn3-20020a05600ca38300b0040ef67bd244sm1425552wmb.17.2024.01.31.04.17.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 Jan 2024 04:17:47 -0800 (PST)
Date: Wed, 31 Jan 2024 13:17:44 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Schmidt <mschmidt@redhat.com>
Message-ID: <Zbo6aIJMckCdObs1@nanopsycho>
References: <20240131115823.541317-1-mschmidt@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240131115823.541317-1-mschmidt@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1706703468; x=1707308268;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=wXe4LtPoUDxcEkwSyc3xDl5/BDGxRhVH0ZuJoP4XBmM=;
 b=T1k/GJO5rI2KXXoyHkNBF9K5D5vfxpI2yNAYhQf7ccZeCLgdeaK7lChFdbR3FgjGmQ
 4cAb8wAhXmCxDuwgEKVZ8qMi4OolpINWwYV1MyTxuqM88hJD4vu5Hg5Px+DoXxNBfoJu
 gAZUJ1zvptXC0TSHgOwn6caLiDebLcFAUJ3ZJdcnojGm7fTPdicmIsZi9Pi0OnIicdW8
 8nVYni/KYSMUGDeuAx8O1uPFMplWd4hz1SW+pFxlm/9miE0uHWCXgykWdg07t0ulANPK
 R/vtpsAWXxKne9inKzTKyjdhS5azIptaEcndCbnsP+BtM+P0VWsS32Ngf98nYfE9d4j5
 96yQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=T1k/GJO5
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix unaligned access in
 ice_create_lag_recipe
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
Cc: Daniel Machon <daniel.machon@microchip.com>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Dave Ertman <david.m.ertman@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Wed, Jan 31, 2024 at 12:58:23PM CET, mschmidt@redhat.com wrote:
>new_rcp->recipe_bitmap was written to as if it were an aligned bitmap.
>It is an 8-byte array, but aligned only to 4.
>Use put_unaligned to set its value.
>
>Additionally, values in ice commands are typically in little-endian.
>I assume the recipe bitmap should be too, so use the *_le64 conversion.
>I don't have a big-endian system with ice to test this.
>
>I tested that the driver does not crash when probing on aarch64 anymore,
>which is good enough for me. I don't know if the LAG feature actually
>works.
>
>This is what the crash looked like without the fix:
>[   17.599009] Unable to handle kernel paging request at virtual address ffff07ff9c6dc004
>[   17.599011] Mem abort info:
>[   17.599011]   ESR = 0x0000000096000021
>[   17.599012]   EC = 0x25: DABT (current EL), IL = 32 bits
>[   17.599013]   SET = 0, FnV = 0
>[   17.599014]   EA = 0, S1PTW = 0
>[   17.599014]   FSC = 0x21: alignment fault
>[   17.599015] Data abort info:
>[   17.599016]   ISV = 0, ISS = 0x00000021, ISS2 = 0x00000000
>[   17.599016]   CM = 0, WnR = 0, TnD = 0, TagAccess = 0
>[   17.599017]   GCS = 0, Overlay = 0, DirtyBit = 0, Xs = 0
>[   17.599019] swapper pgtable: 4k pages, 48-bit VAs, pgdp=0000080dd6bd0000
>[   17.599020] [ffff07ff9c6dc004] pgd=1800083fffacf003, p4d=1800083fffacf003, pud=1800083ffface003, pmd=1800083fff9ea003, pte=006808001c6dcf07
>[   17.599025] Internal error: Oops: 0000000096000021 [#1] SMP
>[   17.599027] Modules linked in: crct10dif_ce ghash_ce sha2_ce sha256_arm64 mlx5_core sha1_ce sbsa_gwdt ice(+) nvme nvme_core mlxfw igb tls nvme_common psample i2c_algo_bit gnss pci_hyperv_intf i2c_designware_platform i2c_designware_core xgene_hwmon dm_mirror dm_region_hash dm_log dm_mod
>[   17.599043] CPU: 0 PID: 18 Comm: kworker/0:1 Not tainted 5.14.0-407.el9.aarch64 #1
>[   17.599044] Hardware name: GIGABYTE R272-P31-00/MP32-AR1-00, BIOS F31L (SCP: 2.10.20220531) 09/29/2022
>[   17.599046] Workqueue: events work_for_cpu_fn
>[   17.599051] pstate: 60400009 (nZCv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
>[   17.599053] pc : ice_create_lag_recipe.constprop.0+0xbc/0x11c [ice]
>[   17.599091] lr : ice_create_lag_recipe.constprop.0+0x54/0x11c [ice]
>[   17.599121] sp : ffff8000084a3c50
>[   17.599122] x29: ffff8000084a3c50 x28: ffffabc4a6790f00 x27: ffffabc4a6200fa0
>[   17.599124] x26: ffff07ff809e5c34 x25: ffff083e5f41980d x24: ffff07ff8610a0c0
>[   17.599126] x23: 0000000000000000 x22: ffff07ff9fe894c0 x21: ffff07ffb771a460
>[   17.599128] x20: ffff07ff9c6dc000 x19: 0000000000000000 x18: 0000000000000014
>[   17.599130] x17: 00000000c3142fa2 x16: 000000007e77e163 x15: 0000000018c66856
>[   17.599132] x14: 00000000b8afd426 x13: 000000007e8b3b19 x12: 000000004a34fdf7
>[   17.599134] x11: 00000000a7cb2fcc x10: 00000000ffffff8a x9 : 0000000000000000
>[   17.599136] x8 : 0000002000000005 x7 : 0000000000000001 x6 : ffffabc487a054d8
>[   17.599138] x5 : ffff07ff9c6dc004 x4 : 000000000000000a x3 : 0000000000000000
>[   17.599140] x2 : 0000000000000000 x1 : 0000000000000400 x0 : ffff07ff9c6dc004
>[   17.599142] Call trace:
>[   17.599143]  ice_create_lag_recipe.constprop.0+0xbc/0x11c [ice]
>[   17.599172]  ice_init_lag+0xcc/0x22c [ice]
>[   17.599201]  ice_init_features+0x160/0x2b4 [ice]
>[   17.599230]  ice_probe+0x2d0/0x30c [ice]
>[   17.599258]  local_pci_probe+0x58/0xb0
>[   17.599262]  work_for_cpu_fn+0x20/0x30
>[   17.599264]  process_one_work+0x1e4/0x4c0
>[   17.599266]  worker_thread+0x220/0x450
>[   17.599268]  kthread+0xe8/0xf4
>[   17.599270]  ret_from_fork+0x10/0x20
>[   17.599273] Code: 380044a4 f800429f 8b000ca0 d503201f (f821301f)
>[   17.599274] ---[ end trace 168d79e2ecf9f7e3 ]---
>[   17.599275] Kernel panic - not syncing: Oops: Fatal exception
>[   17.893321] SMP: stopping secondary CPUs
>[   17.897374] Kernel Offset: 0x2bc49c400000 from 0xffff800008000000
>[   17.903453] PHYS_OFFSET: 0x80000000
>[   17.906928] CPU features: 0x0,00000001,70028143,1041720b
>[   17.912226] Memory Limit: none
>[   17.915268] ---[ end Kernel panic - not syncing: Oops: Fatal exception ]---
>
>Fixes: 1e0f9881ef79 ("ice: Flesh out implementation of support for SRIOV on bonded interface")
>Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
>---
> drivers/net/ethernet/intel/ice/ice_lag.c | 4 +---
> 1 file changed, 1 insertion(+), 3 deletions(-)
>
>diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
>index 2a25323105e5..d4848f6fe919 100644
>--- a/drivers/net/ethernet/intel/ice/ice_lag.c
>+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
>@@ -1829,9 +1829,7 @@ static int ice_create_lag_recipe(struct ice_hw *hw, u16 *rid,
> 	new_rcp->content.act_ctrl_fwd_priority = prio;
> 	new_rcp->content.rid = *rid | ICE_AQ_RECIPE_ID_IS_ROOT;
> 	new_rcp->recipe_indx = *rid;
>-	bitmap_zero((unsigned long *)new_rcp->recipe_bitmap,
>-		    ICE_MAX_NUM_RECIPES);
>-	set_bit(*rid, (unsigned long *)new_rcp->recipe_bitmap);
>+	put_unaligned_le64(BIT_ULL(*rid), new_rcp->recipe_bitmap);

Looks like there might be another incorrect bitmap usage for this in
ice_add_sw_recipe(). Care to fix it there as well?

Otherwise, the patch looks fine.


> 
> 	err = ice_aq_add_recipe(hw, new_rcp, 1, NULL);
> 	if (err)
>-- 
>2.43.0
>
>
