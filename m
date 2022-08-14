Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 894CE591EDB
	for <lists+intel-wired-lan@lfdr.de>; Sun, 14 Aug 2022 09:06:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B688C611B2;
	Sun, 14 Aug 2022 07:06:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B688C611B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660460776;
	bh=ViDpX3VkAaAtHHcpNxnS86xUmdkWntnDMfMJTIfJoCM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vr8VMKq9xR5nzWl3d7a2LGHCFnrsnOkjDgkWqDn5U8Nq7dDLhVmSgL6DhUq25sHbL
	 rggMF3Zs9AL/X0yftkKq7yREWY/pF7+2EQ3gVtmHU/nDCd05qxIPlskE2ATOXdH/Gz
	 MARZizHv+4T0KvqEZ3/nRIbpc/LQ+4dVRdUk8pYPho/MCAjx9YsrDiS+aQlVQcaEK9
	 MyTXZ0VGpT2zyJD/I3lDj0S5uaeVSBGLRjhuJUL3fBP7GWKKwz/MdB7Ufpz5sVD2Ar
	 qwoOqOUOl2+yJ4D1g1Sxnj3XirIERWagmisv2M1rVaC99V4ll/uDaPIu9QGOZhCoM4
	 x8idNmDDtf4Zg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cdVVXkH_7fT3; Sun, 14 Aug 2022 07:06:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BA88560B9F;
	Sun, 14 Aug 2022 07:06:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BA88560B9F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1797D1BF393
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Aug 2022 07:06:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DC1FB60B9F
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Aug 2022 07:06:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DC1FB60B9F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7qeYoWI_TVFK for <intel-wired-lan@lists.osuosl.org>;
 Sun, 14 Aug 2022 07:06:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1AF73607FE
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1AF73607FE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Aug 2022 07:06:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10437"; a="317781445"
X-IronPort-AV: E=Sophos;i="5.93,236,1654585200"; d="scan'208";a="317781445"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2022 00:06:07 -0700
X-IronPort-AV: E=Sophos;i="5.93,236,1654585200"; d="scan'208";a="666308652"
Received: from naamamex-mobl.ger.corp.intel.com (HELO [10.13.13.121])
 ([10.13.13.121])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2022 00:06:06 -0700
Message-ID: <7007cb14-433d-c75b-aa0e-ef234e67bf4b@linux.intel.com>
Date: Sun, 14 Aug 2022 10:05:53 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20220808102421.1651482-1-sasha.neftin@intel.com>
From: "naamax.meir" <naamax.meir@linux.intel.com>
In-Reply-To: <20220808102421.1651482-1-sasha.neftin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660460770; x=1691996770;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=7NrMvxUlv/gzOXTCSs4kCW56jufLxC7tCxlyMHoQzLU=;
 b=ItW9y2Hx44cb2sNeLo/REh79fFgM+w3XblAypj7bplZ/In0//ldZL9AW
 xcbT6T8gJ70QnoA+Wo6qyN/pq6PfcmSvgTlDmjXyZNBsoycJRujW2i73Q
 GOmJonHzUs0fTEbfImW4ekq/5BQBU064Ecz+ycE9RN7XJid0fzukhx0x8
 A8S4ZsCdQJFv111EYA8UW4/55HOpDcfCXStDn101w0430cKE1ZNY76sfF
 MSkyDfDgc5jaSRj7ssKevfZ3+GlyX37kB++9wijY11MgJIaMh7iUkdqMC
 pAHuMEoli2W4k3uGFKswRMkDkpP6RaosSN3KOftbPlx0KJPxpgsmxc5cZ
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ItW9y2Hx
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove IGC_MDIC_INT_EN
 definition
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/8/2022 13:24, Sasha Neftin wrote:
> IGC_MDIC_INT_EN defnition is not used. This patch comes to tidy up the
> driver code.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_defines.h | 1 -
>   1 file changed, 1 deletion(-)
Tested-by: Naama Meir <naamax.meir@linux.intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
