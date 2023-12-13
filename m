Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A8105811AA1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Dec 2023 18:14:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BAAC182CE5;
	Wed, 13 Dec 2023 17:14:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BAAC182CE5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702487697;
	bh=5Je6etcPH8uKbQqSVhXtsCmtgGX4UR7NdwhzNhaG5Ec=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oaBolowGKTqCf3O2cjQ2r2qyN9XcTlXP/g6e5F02OipieCslbN4W9wrtxv1U5UrWs
	 0dKoehDvr8LwOVurmZ2v9dmU23G94uC4Fk1EF5QXwzmfMRwrr+vUNzlJy8CyjgSNN6
	 8KyzNVg8IijMubCx687ylR/kitCNPoQvy42vfEoNgEpcOSfXnP+tJXt/m2ayEKwqPr
	 tnHYqFfzYXwIM2SZ8zelRBdc3UW+P8jwcX50NNLjfo1s1rnlbKae4+ITYvxzxO1pzh
	 L7H3dQQ4uLXiDxmqjoSt6JKEzDx7w9ZBprO7TIsg11dS/e5/7K8aiwAlINgBfJpnp9
	 +ihriaF+qppBw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q3piK1xyrAry; Wed, 13 Dec 2023 17:14:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9130381C26;
	Wed, 13 Dec 2023 17:14:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9130381C26
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7B8E71BF484
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 17:14:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5BCF960F2B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 17:14:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5BCF960F2B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rFpQ_pHuBTKE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Dec 2023 17:14:50 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 95F4860803
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 17:14:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95F4860803
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 46124B81E9C;
 Wed, 13 Dec 2023 17:14:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 991ADC433C8;
 Wed, 13 Dec 2023 17:14:40 +0000 (UTC)
Date: Wed, 13 Dec 2023 17:14:37 +0000
From: Simon Horman <horms@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20231213171437.GI5817@kernel.org>
References: <20231212024015.11595-1-chentao@kylinos.cn>
 <1abd6bcb-6f6c-10a7-9b6f-e5e038233af8@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1abd6bcb-6f6c-10a7-9b6f-e5e038233af8@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1702487683;
 bh=svCcv04oY4pPhaP+PSf8jygjO7luSLUDKs0GTRKp+Xs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RlRBHqgMa0oO92ov5WJduQRlrUcruMUHUti+EQXht5DU6hsCeDs4z7oTsO4CNbcWY
 +UwIcHpj/mUePiokaJV/x1QYB+HBw2mUJIoow7/PWjs/ZrhGVbwSDydK/zHJPUXzMM
 OQChXs3G89WUVY4M+9PE/JtvvQw6f1KKPkbnQ/PsoKABbW6Qx4lOZfgZIYWgdggLKT
 DHCvANtI0UaRvZvjFzfsyZ7U685lsz+b4URNIYi1rS5RsBzg2A+2tfhVgnkuyEnLoe
 w2oykk6gRAZQPzmoJIcW+McUhc2NnvLbukhCEFK0NHdq6TafGLymxJlLUP0GywYncx
 c9BNrNegUScHA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=RlRBHqgM
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next] ice: Fix some null
 pointer dereference issues in ice_ptp.c
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
Cc: michal.michalik@intel.com, karol.kolacinski@intel.com,
 Kunwu Chan <chentao@kylinos.cn>, Kunwu Chan <kunwu.chan@hotmail.com>,
 intel-wired-lan@lists.osuosl.org, richardcochran@gmail.com,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, jacob.e.keller@intel.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Dec 13, 2023 at 10:49:10AM +0100, Przemek Kitszel wrote:
> On 12/12/23 03:40, Kunwu Chan wrote:
> > devm_kasprintf() returns a pointer to dynamically allocated memory
> > which can be NULL upon failure.
> > 
> > Fixes: d938a8cca88a ("ice: Auxbus devices & driver for E822 TS")
> > Cc: Kunwu Chan <kunwu.chan@hotmail.com>
> > Suggested-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> 
> You found the bug (or some some static analysis tool in that case);
> there is no need to add Suggested-by for every person that suggests
> something during review - the tag is for "person/s that suggested
> making such change in the repo".
> 
> Subject line would be better if less generic, eg:
> ice: avoid null deref of ptp auxbus name
> 
> > Signed-off-by: Kunwu Chan <chentao@kylinos.cn>
> > ---
> >   drivers/net/ethernet/intel/ice/ice_ptp.c | 4 ++++
> >   1 file changed, 4 insertions(+)
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> > index e9e59f4b5580..848e3e063e64 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> > @@ -2743,6 +2743,8 @@ static int ice_ptp_register_auxbus_driver(struct ice_pf *pf)
> >   	name = devm_kasprintf(dev, GFP_KERNEL, "ptp_aux_dev_%u_%u_clk%u",
> >   			      pf->pdev->bus->number, PCI_SLOT(pf->pdev->devfn),
> >   			      ice_get_ptp_src_clock_index(&pf->hw));
> > +	if (!name)
> > +		return -ENOMEM;
> >   	aux_driver->name = name;
> >   	aux_driver->shutdown = ice_ptp_auxbus_shutdown;
> > @@ -2989,6 +2991,8 @@ static int ice_ptp_create_auxbus_device(struct ice_pf *pf)
> >   	name = devm_kasprintf(dev, GFP_KERNEL, "ptp_aux_dev_%u_%u_clk%u",
> >   			      pf->pdev->bus->number, PCI_SLOT(pf->pdev->devfn),
> >   			      ice_get_ptp_src_clock_index(&pf->hw));
> > +	if (!name)
> > +		return -ENOMEM;
> >   	aux_dev->name = name;
> >   	aux_dev->id = id;
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> 
> Regarding iwl-next vs iwl-net: this bug is really unlikely to manifest,
> as we take care of both earlier and future mem allocs for ptp auxbus,
> and auxiliary_device_init() checks for null name, so no big deal,
> so: -next is fine

Thanks. FWIIW, this looks good to me too.

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
