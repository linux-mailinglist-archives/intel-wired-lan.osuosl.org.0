Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 06FAC80E923
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Dec 2023 11:29:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A691614EC;
	Tue, 12 Dec 2023 10:29:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A691614EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702376966;
	bh=B92tY0Apv1+9bNGEVziHgrOy2B/FhOcNcJL5AImzmSQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=b5xatm9nKW0w9khnGVZVIv8XinfOFN78JFuCC2Ios8PiyPyMQFqVtunEpKQWiIOcH
	 H2eb8G4URZD+TwOQ/5pB/4Rw/B9dvK8DAxb+DC4UI7YuS5L0zzdFEJXGRb97hyCBFq
	 dXAPl75+amsLXjD7lFtXl1RPRGSdYytk5vFVd+Ugfj8RIbFfMgRQ4sIxqITwt3Vuck
	 L6BYhxZiFinDBPJ4Mgg/3DrR2Oai0dwTps3+TB+edOriFNRXWvdBYcrpMqCYeb+sAS
	 hcY24y1eX2lmL0vvE9irM8flhZgWQnhEh6GKBlzDDZuYWcxVInpTv6ALKQDrjDMegf
	 JQQMjwA16xgJA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id foZYf-dInqv2; Tue, 12 Dec 2023 10:29:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F0CA560D65;
	Tue, 12 Dec 2023 10:29:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F0CA560D65
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DF3ED1BF288
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 10:29:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B8E6760D65
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 10:29:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B8E6760D65
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MQWpd40KLOCe for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Dec 2023 10:29:19 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 28A0E60AA0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 10:29:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 28A0E60AA0
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 614026179F;
 Tue, 12 Dec 2023 10:29:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97666C433C8;
 Tue, 12 Dec 2023 10:29:16 +0000 (UTC)
Date: Tue, 12 Dec 2023 10:29:13 +0000
From: Simon Horman <horms@kernel.org>
To: Lukasz Plachno <lukasz.plachno@intel.com>
Message-ID: <20231212102913.GX5817@kernel.org>
References: <20231207124838.29915-1-lukasz.plachno@intel.com>
 <20231207124838.29915-3-lukasz.plachno@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231207124838.29915-3-lukasz.plachno@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1702376958;
 bh=iOmLw4iZ300s3Fur2rlkcac2KCwHfVdoXpxspxKo6qQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=t2YYmUsgfnJ/2wZdQHtsPkJwCyrGhYd+wK61fu8DCkWuSesA9BRVGIpNrXicSpBy+
 iHW4SPYZUBdD5q/xHmgkXS9bGy2kZ3JCchttT3ggJnKrk+8y1ybBBRHYt8O1Kbfn4i
 GGZXtJJcmJ+Xo5Yhes9izoY/V2/n6JeftJ76N8XtYaYg4nfxks+co0s7boLY7y9BzG
 EsBDd94vYFGi4TYtdIMr5hTxiP3+qaNx6YT2ETIM15vD4yWaOA3xcYs1k4suvVVsvB
 IsKFvMvIjhWYpUo/MjdrnZjxr3xoIzkt9TneK2iiA2vNBDm2l820W1YVorNpqg07d2
 wokyTCGIMCT7w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=t2YYmUsg
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/2] ice: Implement
 'flow-type ether' rules
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Jakub Buchocki <jakubx.buchocki@intel.com>,
 Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Dec 07, 2023 at 01:48:40PM +0100, Lukasz Plachno wrote:
> From: Jakub Buchocki <jakubx.buchocki@intel.com>
> 
> Add support for 'flow-type ether' Flow Director rules via ethtool.
> 
> Rules not containing masks are processed by the Flow Director,
> and support the following set of input parameters in all combinations:
> src, dst, proto, vlan-etype, vlan, action.
> 
> It is possible to specify address mask in ethtool parameters but only
> 00:00:00:00:00 and FF:FF:FF:FF:FF are valid.
> The same applies to proto, vlan-etype and vlan masks:
> only 0x0000 and 0xffff masks are valid.
> 
> Signed-off-by: Jakub Buchocki <jakubx.buchocki@intel.com>
> Co-developed-by: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
> Signed-off-by: Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Lukasz Plachno <lukasz.plachno@intel.com>

...

> @@ -1268,6 +1374,16 @@ ice_cfg_fdir_xtrct_seq(struct ice_pf *pf, struct ethtool_rx_flow_spec *fsp,
>  		ret = ice_set_fdir_ip6_usr_seg(seg, &fsp->m_u.usr_ip6_spec,
>  					       &perfect_filter);
>  		break;
> +	case ETHER_FLOW:
> +		ret = ice_set_ether_flow_seg(seg, &fsp->m_u.ether_spec);
> +		if (!ret && (fsp->m_ext.vlan_etype || fsp->m_ext.vlan_tci)) {
> +			if (!ice_fdir_vlan_valid(fsp)) {
> +				ret = -EINVAL;
> +				break;
> +			}
> +			ret = ice_set_fdir_vlan_seg(seg, &fsp->m_ext);
> +		}
> +		break;
>  	default:
>  		ret = -EINVAL;
>  	}

Hi Jakub,

A bit further down this function, perfect_filter is used as follows.

	...

	if (user && user->flex_fltr) {
		perfect_filter = false;
		...
	}

	...

	assign_bit(fltr_idx, hw->fdir_perfect_fltr, perfect_filter);

And unlike other non-error cases handled in the switch statement,
the new ETHER_FLOW case does not set perfect_filter.

It's unclear to me if this is actually the case or not,
but Smatch flags that perfect_filter may now be used uninitialised
in the assign_bit() call above.

...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
