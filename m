Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F421C624379
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Nov 2022 14:44:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0FCC2404E0;
	Thu, 10 Nov 2022 13:44:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0FCC2404E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668087879;
	bh=W4LZbpyPCP4c2d6coi2en0b6D8MDHSI6Z611oQYcZUY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ld4Dy/gRY8ihuyuvLbusAZHbOsD2GFf7NDwLIPtwq1XiID9hH9d2/Dw57SwgLVDWr
	 rB93RIYigbmHM00Tcc7+MIqZNecIqzvWn3a9S+OSogscsYgliwO4FlS93P9JroxqDW
	 8HSfcCS8oPD7yuGbt1Rc/I3ePl1RHW8UeFdGPB0rlzD9W5KcwIYnjv7BxRxp9kJpRX
	 p77Ug2kgdHkBtLv3HDI+lZnr7vjB+D5/YaDewh7XDxeQx9o36vp27/N9t/qmz1tPbx
	 q0abAX+dZweKYDatbSYei1P7rZCN2e/f0DQcgVwofq7bEGsx7C9bAPwT3zqwhPooeS
	 3KG+U/knWoABg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gdfir4VG2J5p; Thu, 10 Nov 2022 13:44:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1BA25403E0;
	Thu, 10 Nov 2022 13:44:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1BA25403E0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 800811BF393
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 13:44:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5735C60F23
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 13:44:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5735C60F23
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K_EJQlhKvy8k for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Nov 2022 13:44:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 39D3060F20
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 39D3060F20
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Nov 2022 13:44:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="397603867"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="397603867"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 05:44:25 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="588178055"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="588178055"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 05:44:23 -0800
Date: Thu, 10 Nov 2022 14:44:15 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <Y20ALyOpF2HbtuzU@localhost.localdomain>
References: <20221110130353.3040-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221110130353.3040-1-wojciech.drewek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668087872; x=1699623872;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=xN2fMduQuvuDcANpZLhE401+lgc97SUOjafOsx/p7m0=;
 b=gVIcaoS/RhrAvP861KtEfE7CiEwprFSbddAdZ0Vv0/V5jEWPWiMvny6G
 gOzkNWjwKcULleleTti8lNBbdEbOmE/aSlKuQiosj0hHIWe1B/Ql/7x1x
 uQKJv1IFvxcS6xHVwfy7qQV9+Zl6VO8HlpmRHmZWbRk9QDTg9XwQwJwGo
 yDIcw0awZ/WLfzlArf7byCUI6NQOvkYdVam9UoGNk8oTtyAOQMNHMhTAj
 j7ZxBL7KP/G8WoFGrzoNXNH5gtedb7YcFnz2XCPm2o3WKJGrSF2Bx0/8q
 QQFVqOjhi5Ark+E2rLCbSzzATkWJvWnCC9ur0hKomV8Mt69FFHB7vO4JM
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gVIcaoS/
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: virtchnl rss hena
 support
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Nov 10, 2022 at 02:03:53PM +0100, Wojciech Drewek wrote:
> From: Md Fahad Iqbal Polash <md.fahad.iqbal.polash@intel.com>
> 
> Add support for 2 virtchnl msgs:
> VIRTCHNL_OP_SET_RSS_HENA
> VIRTCHNL_OP_GET_RSS_HENA_CAPS
> 
> The first one allows VFs to clear all previously programmed
> RSS configuration and customize it. The second one returns
> the RSS HENA bits allowed by the hardware.
> 
> Introduce ice_err_to_virt_err which converts kernel
> specific errors to virtchnl errors.
> 
> Signed-off-by: Md Fahad Iqbal Polash <md.fahad.iqbal.polash@intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  24 ++++
>  .../ethernet/intel/ice/ice_vf_lib_private.h   |   1 +
>  drivers/net/ethernet/intel/ice/ice_virtchnl.c | 112 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_virtchnl.h |   2 +
>  4 files changed, 139 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> index dfcf23cc7e55..2eaaa452f847 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> @@ -699,6 +699,30 @@ void ice_dis_vf_qs(struct ice_vf *vf)
>  	ice_set_vf_state_qs_dis(vf);
>  }
> 
[...]

looks good;
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Thanks
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
