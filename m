Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 921FA951C3B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Aug 2024 15:51:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4904C813D7;
	Wed, 14 Aug 2024 13:51:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fwKXbtl1FSBY; Wed, 14 Aug 2024 13:51:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 872C581BB2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723643491;
	bh=HY6+pCY9ehqSqJDFE8HV9VdLuiE98nA8v+BgVfOFgHw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6/hLlFC3zyUvbYSQfaiAr9yUFcRT0qVCDyX0JzM8pbttHrHbMv9zB8RmKFYT/nPkW
	 7zPkpeIA5Y80wi15x4lkGAuz4n3EpyVUNpsk1F3dsxb/JTIVU2GMCWtsYwT6V5OGz3
	 MTxxCc3Mfo7XChJf2ZKjjSJjM0Wjf53VA4LCurra7z3zOrYGb8wzhwAgbj6+92VJMo
	 MsgyRcWBujcOVfC7Qy2ErbOScaZXcneyjZK1XTYIYdQITtSa8HpozQhgEET0W9kycN
	 wY1Xxkzw30KIQURpWsItvHwgfPx0Vaz6PjXKXjHzoOPJELS1V/lAp/DWmNc6n52lNM
	 kLSb/pGYg02XQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 872C581BB2;
	Wed, 14 Aug 2024 13:51:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D97911BF97D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 13:51:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C585740621
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 13:51:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pGb9Pf7Ij5mA for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2024 13:51:28 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::42c; helo=mail-wr1-x42c.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A9354405EF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A9354405EF
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A9354405EF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 13:51:25 +0000 (UTC)
Received: by mail-wr1-x42c.google.com with SMTP id
 ffacd0b85a97d-3687ea0521cso4713765f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 06:51:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723643483; x=1724248283;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=HY6+pCY9ehqSqJDFE8HV9VdLuiE98nA8v+BgVfOFgHw=;
 b=O2OmCavHfIGRQH9iJydzCJA4Us506sAMHgQsXYGRU7usxjfdee0MyGWgIn5J3si7SX
 V6DGo2qs+odtXWHMUar7i0gcX6nqiejOzs40wmjPUyl8pMa5x6NYzMrms3vfrtwk8N8h
 VI10uv20eDXLxZI/s9XrG1XNQm4xDrQPyOKgyu2aEzKmxx52p8NgXUK3h5FVR7+ewq0Y
 IBkLqH24FLGhpbl569IyjKdRlmx4ThZlrPM0agQHLOAZljxeqMRRN77bsQemsgKW6NLo
 Q7dPeEjIA1X/hutog83SwaHF5AOq3sSpeXU96H99mIOE5zdjKLmy4AEhAK3djLQHjBR4
 LEiw==
X-Gm-Message-State: AOJu0Yx19rdLpJc9stkYOcWPvL1sUVBQ67MYjm22boTTPneiraOYHBG9
 3Dh1H/bYu25bZ8JzDW0T2R6o6LEHVlIRP34XfS4xHoM75cojwuk866AUqU8TQVQ=
X-Google-Smtp-Source: AGHT+IGM/Kg8J/CcdohjEY5RAm1+8y6SdzbAu07J03j+lQEZzw0NedV1E9ohGzx8kXDzo6AVkCvs3Q==
X-Received: by 2002:a05:6000:2ac:b0:360:75b1:77fb with SMTP id
 ffacd0b85a97d-37177742ccamr3008355f8f.8.1723643482955; 
 Wed, 14 Aug 2024 06:51:22 -0700 (PDT)
Received: from localhost (37-48-50-18.nat.epc.tmcz.cz. [37.48.50.18])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-36e4c93714asm12856184f8f.27.2024.08.14.06.51.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2024 06:51:22 -0700 (PDT)
Date: Wed, 14 Aug 2024 15:51:20 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <Zry2WL9JFtz4Q-N1@nanopsycho.orion>
References: <20240813071610.52295-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240813071610.52295-1-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1723643483; x=1724248283;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=HY6+pCY9ehqSqJDFE8HV9VdLuiE98nA8v+BgVfOFgHw=;
 b=JnfirZGZkiKfnV+fmrUotEYmPzMmOZWcPBgtfDDJgVmCwk27028UotcM9Pez1n7pRE
 0IbzradWDnQ+GW/dgGaWQ+9/adQxai9N23oH6HNglhzu1GrJIwZ2Tt2Pe6ZuuzEzrPPf
 v5h+O1e+oHNVhImIMh55yHcn01607CPRQPsH4X3g2ywLZOleJ8PqLV6N50eNo6Xl/Bu2
 TO8teYgpp0rciHeO6OY6YnxPRvTZT5UmQ6Rgz3VBZ/8Yx/9F3Ud/WzaOQND2oop6G36u
 kowiFHQ9lIWkzXakJXCcWrz2kS+Th17ecuDeAE18LmRwWiOR9fb6qjS9GcAAIpDoVqfQ
 schQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=JnfirZGZ
Subject: Re: [Intel-wired-lan] [iwl-next v1] ice: use internal pf id instead
 of function number
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
Cc: wojciech.drewek@intel.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Aug 13, 2024 at 09:16:10AM CEST, michal.swiatkowski@linux.intel.com wrote:
>Use always the same pf id in devlink port number. When doing
>pass-through the PF to VM bus info func number can be any value.

From the patch subject I'm not sure which tree you target, but since
this is a bugfix of something not recent, you should target -net.
Also, please provide "Fixes" tag blaming the commit(s) that introduced
the issue.


>
>Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>Suggested-by: Jiri Pirko <jiri@resnulli.us>
>Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>---
> drivers/net/ethernet/intel/ice/devlink/devlink_port.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
>index 4abdc40d345e..1fe441bfa0ca 100644
>--- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
>+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
>@@ -340,7 +340,7 @@ int ice_devlink_create_pf_port(struct ice_pf *pf)
> 		return -EIO;
> 
> 	attrs.flavour = DEVLINK_PORT_FLAVOUR_PHYSICAL;
>-	attrs.phys.port_number = pf->hw.bus.func;
>+	attrs.phys.port_number = pf->hw.pf_id;
> 
> 	/* As FW supports only port split options for whole device,
> 	 * set port split options only for first PF.
>@@ -458,7 +458,7 @@ int ice_devlink_create_vf_port(struct ice_vf *vf)
> 		return -EINVAL;
> 
> 	attrs.flavour = DEVLINK_PORT_FLAVOUR_PCI_VF;
>-	attrs.pci_vf.pf = pf->hw.bus.func;
>+	attrs.pci_vf.pf = pf->hw.pf_id;
> 	attrs.pci_vf.vf = vf->vf_id;
> 
> 	ice_devlink_set_switch_id(pf, &attrs.switch_id);
>-- 
>2.42.0
>
