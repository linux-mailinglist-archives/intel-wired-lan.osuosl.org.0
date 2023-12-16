Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF33815897
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 Dec 2023 11:03:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 41D9583EF6;
	Sat, 16 Dec 2023 10:03:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 41D9583EF6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702721034;
	bh=C5KpCxemhSdO5r+xefZxowm8mh+enmRgKRqzq6SYkkQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NeS5CuAUEdwCgwq5EHihhS6/jm6VHwnqHchcoCjM6t/ljUE5VAixywlIdzK/h1U7d
	 DkU2b9KKB8qKzQScX+xJ2qWdG8a9hR+mbVqjEvtUF/aX59EobWsmlgPnuMCMlRpsx+
	 9crbfX39vMZ8GFhcfoaY4NB3AHoAyS1GeWZD0z07RBN1DcyRT2pgORcZNcwQmG5PMR
	 RcWE/mk2MZKgbtwCgt2atFf+q7w5QOl5/3/PA8cDU1T9sc2WkYeZ2WlRZrkXelnEC3
	 O/RYLHtgT2rg4q2lssbjWGULUe32X+ApxQgeZN48qr/1EPBdoDXwRxZDCjoOAaAEOB
	 EtiAo15FuuCFA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kr8hDeaZ4s-S; Sat, 16 Dec 2023 10:03:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 240D783EE7;
	Sat, 16 Dec 2023 10:03:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 240D783EE7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 65F1B1BF338
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Dec 2023 10:03:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3E40E42261
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Dec 2023 10:03:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E40E42261
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uQDzXUngz6yy for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Dec 2023 10:03:47 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7362E4225F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Dec 2023 10:03:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7362E4225F
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 4B3E3CE08BE;
 Sat, 16 Dec 2023 10:03:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 70517C433C8;
 Sat, 16 Dec 2023 10:03:40 +0000 (UTC)
Date: Sat, 16 Dec 2023 10:03:37 +0000
From: Simon Horman <horms@kernel.org>
To: Lukasz Plachno <lukasz.plachno@intel.com>
Message-ID: <20231216100337.GL6288@kernel.org>
References: <20231214043449.15835-1-lukasz.plachno@intel.com>
 <20231214043449.15835-3-lukasz.plachno@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231214043449.15835-3-lukasz.plachno@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1702721021;
 bh=GR78kp2M52nF0sM0SHOrXYdt45Bz3o9fsu/Czb3BiDw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JIGSJ2dcK1OHQCGbQH5TgNPW4ooAYhW9QbC9hMrn/r6F1f99dLs4+wWGmjsYPBtR+
 s7q3SujUNKg3kYyKq6EqmPB38a8eXuY0AGjWzhL1BlgZMITTRP6Btk9EK3EFTAmftL
 3P9sRz0vfA8UbIaqv5ykkkxewk6aVnuRNBJEzOxg/WexAarzp1YtNJod9AMzyu9nWx
 aVFmr+n6K0ujcQv7EQJwBlEJ27Rc3C0m51lahJjUA2CTwkgR1KAugOtWF8Eb2Voeb2
 QLlKCK0ma8f/zZf7bxUEO9w0wfihHje7pa/l7mOsBaWSycHTMsa29uDduo7VsMlXzV
 zEPqsK9IJCc8Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=JIGSJ2dc
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 2/2] ice: Implement
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

On Thu, Dec 14, 2023 at 05:34:49AM +0100, Lukasz Plachno wrote:

...

> @@ -1199,6 +1212,99 @@ ice_set_fdir_ip6_usr_seg(struct ice_flow_seg_info *seg,
>  	return 0;
>  }
>  
> +/**
> + * ice_fdir_vlan_valid - validate VLAN data for Flow Director rule
> + * @fsp: pointer to ethtool Rx flow specification
> + *
> + * Return: true if vlan data is valid, false otherwise
> + */
> +static bool ice_fdir_vlan_valid(struct ethtool_rx_flow_spec *fsp)
> +{
> +	if (fsp->m_ext.vlan_etype &&
> +	    ntohs(fsp->h_ext.vlan_etype) & ~(ETH_P_8021Q | ETH_P_8021AD))
> +		return false;

Hi Jakub and Lukasz,

It is not obvious to me that a bitwise comparison of the vlan_ethtype is
correct. Possibly naively I expected something more like
(completely untested!):

	if (!eth_type_vlan(sp->m_ext.vlan_etype))
		return false:

> +
> +	if (fsp->m_ext.vlan_tci &&
> +	    ntohs(fsp->h_ext.vlan_tci) >= VLAN_N_VID)
> +		return false;
> +
> +	return true;
> +}

...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
