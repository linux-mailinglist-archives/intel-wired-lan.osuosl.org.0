Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D367EFF50
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 Nov 2023 12:38:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 76D2441BE0;
	Sat, 18 Nov 2023 11:38:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 76D2441BE0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700307498;
	bh=VTPk60hQo0by9VnsFRY6firElEnSYbPsgADngCVjloc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=M8SOespV026tBoXk/yoX42QZWZuhYLhcljNrP/aBkn58/3ITvB0rYn1WTh9kZy45J
	 vK35M/+ihUrd0OD/CflBfUGcFkCExQ/A1jllIRcxbu9miPLVizjhbD3v3/ckwSju8N
	 7yK3mkpYDvl8ocvIIM+Uz6WoPt+iNoRnq2bj6uy0UFWztbX5R0K5IUWUkUUp7pRaT/
	 UyCzxuygA6VTpneW4Xhl7Az2e6rkDtT1Xl54s3/LkIoVkvnZjsHbzcwUs2zukjyE1l
	 DCTRwEuRNQFZq+Od9NlmRBiwFNkI9hBQdfQHiqUm4mYjxL4vABmiFoNVSVTED3NvbF
	 TsgayBh3G5FsA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id as-JR_zP1JbV; Sat, 18 Nov 2023 11:38:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 54E4041BD5;
	Sat, 18 Nov 2023 11:38:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 54E4041BD5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2FF281BF2E3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Nov 2023 11:38:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F0E0D41BD5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Nov 2023 11:38:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F0E0D41BD5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I5ttrGu_PPNn for <intel-wired-lan@lists.osuosl.org>;
 Sat, 18 Nov 2023 11:38:10 +0000 (UTC)
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A229B41D8D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Nov 2023 11:38:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A229B41D8D
Received: by mail-ed1-x52f.google.com with SMTP id
 4fb4d7f45d1cf-53e751aeb3cso4068256a12.2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Nov 2023 03:38:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1700307487; x=1700912287;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=jwfAcLpPBP9/VcLdhWC2YYKbzJ5W2WwAWFFBT48SHb4=;
 b=KwBR5P9ugAaU66/NOlWIvKmKYNuzb5F/VvntoHiJNiBSE6XtK7pBk5TsnPf44lYStU
 pwzkrFkpegc7ywYJ85G4lKlpHsvNTIZwXQtGrQqGgP+3vTb/liDY/LNUXSQUbR3DcMMC
 af3R5tX3Gcx13oADLUVP4fqMoKNV/+A6LH/yKgElb8dqHUkaeGbqBiOmzs/iyGTKZv3g
 TBVezkLbKm4ou0JYkWD7zclup0vfPDUWo9d3igwu1cTkIOpJP2FDH2ae7TKULp7aLu7C
 enl1ucVnWnYnEcGo9j0LAYH4o1Z1jiAbUhM9O4E66ITB2PpvlwmjDrWMb6WvVe4NRLeL
 wVXw==
X-Gm-Message-State: AOJu0YxvozT4FxojsjMM6J9ntFWAVbGighblSDtKiv7yKmrZPgcDUnYX
 4ulpFgcawGEd+bqbcZzt2DtdKw==
X-Google-Smtp-Source: AGHT+IE+gKa6JOvpcInpH3bQMumK5AwCQgXOXPQVa/fdX7kkkSyuYgD+wsAxlw24m1SQ73zpdAvBhg==
X-Received: by 2002:a50:9ec3:0:b0:543:4fca:cc91 with SMTP id
 a61-20020a509ec3000000b005434fcacc91mr1333532edf.20.1700307486789; 
 Sat, 18 Nov 2023 03:38:06 -0800 (PST)
Received: from localhost ([86.61.181.4]) by smtp.gmail.com with ESMTPSA id
 c7-20020aa7c747000000b0053dfd3519f4sm1669355eds.22.2023.11.18.03.38.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Nov 2023 03:38:06 -0800 (PST)
Date: Sat, 18 Nov 2023 12:38:05 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Sachin Bahadur <sachin.bahadur@intel.com>
Message-ID: <ZViiHS0sYyoXHK+x@nanopsycho>
References: <20231117164427.912563-1-sachin.bahadur@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231117164427.912563-1-sachin.bahadur@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1700307487; x=1700912287;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=jwfAcLpPBP9/VcLdhWC2YYKbzJ5W2WwAWFFBT48SHb4=;
 b=G0hR7ZVWk60CeM9AmRSbdSE4L7ZKnrxNCTdHXlxYdIPPhhPXTI43gL5NGCZLDRWXZi
 Ohb7UOqS7YB0YxoIPplPAELafKw6orcoZEsxpZzsB0IlbD/mJH5s9DgRag+0a+I9Sbly
 2V1iM2CFQray9EaUfbqcIcwgtPd13e4hl2haXl8n8dCrOMDa3cTRU1atI26HW9HvWVY7
 6uyM47JxFZ13vONfMGFx9xWRfMk/3TZb3Ir3cDwUahSA3tbXIP8e0+YOksTF0lP0MfY1
 O+7pN3vpxSzVeVihOq/ZScM2ngw/5oUPtPnmB4pPah/2uKgbKA/q2aZxxXDtNZqVzRxb
 6ZtQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=G0hR7ZVW
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] ice: Block PF reinit if
 attached to bond
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, Nov 17, 2023 at 05:44:27PM CET, sachin.bahadur@intel.com wrote:
>PF interface part of LAG should not allow driver reinit via devlink. The
>Bond config will be lost due to driver reinit. ice_devlink_reload_down is

Reinit whould remove and re-create netdevices. This patch should not be
needed.


>called before PF driver reinit. If PF is attached to bond,
>ice_devlink_reload_down returns error.
>
>Fixes: trailer
>Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
>Signed-off-by: Sachin Bahadur <sachin.bahadur@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_devlink.c | 4 ++++
> 1 file changed, 4 insertions(+)
>
>diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
>index f4e24d11ebd0..5fe88e949b09 100644
>--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
>+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
>@@ -457,6 +457,10 @@ ice_devlink_reload_down(struct devlink *devlink, bool netns_change,
> 					   "Remove all VFs before doing reinit\n");
> 			return -EOPNOTSUPP;
> 		}
>+		if (pf->lag && pf->lag->bonded) {
>+			NL_SET_ERR_MSG_MOD(extack, "Remove all associated Bonds before doing reinit");
>+			return -EBUSY;
>+		}
> 		ice_unload(pf);
> 		return 0;
> 	case DEVLINK_RELOAD_ACTION_FW_ACTIVATE:
>-- 
>2.25.1
>
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
