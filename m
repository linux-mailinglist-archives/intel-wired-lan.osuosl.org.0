Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28299646ABC
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Dec 2022 09:40:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AD6D9405D4;
	Thu,  8 Dec 2022 08:40:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AD6D9405D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670488849;
	bh=LdjkWd+DcpptnP+CRF/AlsuNEM8HaDTVEhfm7a3LI5E=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yu+IWrhzM2gO9LTRbAoDvjbodbHQiniNd7AS5Gc//0NJ6Uo6AViJampP8xa1uqqmb
	 6jjprKKs/SBR+lsNC6VrvZVRaOst0NmCKbVv/Ej4qAt3H+UtOvt37PQEMsqzvzXq6X
	 5CiW1RivV27bHSZZP8EK67eatFk50gWyG7v6/Wjx/Pj5VVGn8wtYG3NrfiRMoX9mJW
	 yYAmf1e1HXr55CJeAgTBfrpiaI9D9uh+7dFdBQY5PHir2aU5c+r4DjjXiY92Tj7BuN
	 35jMND9wMXY+tQAPQ6TOKeNcVkcw7ZRNbR00kEAb7n5ratGrm5ObHzkQAeLOLoGlwz
	 DCHDGSGcHqOiA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t-SUpx1rrIJN; Thu,  8 Dec 2022 08:40:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 90A3940339;
	Thu,  8 Dec 2022 08:40:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 90A3940339
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 86A961BF331
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 08:40:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5F5BD4186C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 08:40:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F5BD4186C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0jjxz7t_PVYP for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Dec 2022 08:40:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1873141867
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1873141867
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Dec 2022 08:40:42 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 359C4B821E9;
 Thu,  8 Dec 2022 08:40:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75269C433C1;
 Thu,  8 Dec 2022 08:40:38 +0000 (UTC)
Date: Thu, 8 Dec 2022 10:40:34 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Corinna Vinschen <vinschen@redhat.com>
Message-ID: <Y5GjAu4Uu6mg9a1I@unreal>
References: <20221207104907.2626043-1-vinschen@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221207104907.2626043-1-vinschen@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1670488839;
 bh=0mzMvqt/N0FS9AffGIMeWfaZ37WKQbADudwTZRkYGEQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=I4/HMl/9oyPySydbRq0bBNmlcqDUaNKCuMGV6vhMfF9G+JdIooZbyOzUN+UJIF0Gb
 +cv6b00N20f9kQAkPqNt+GJJpiRdjbSV2Am8yivj4HB+jYy4C5Mi4LV9uKXrzYsXML
 3mffTTpj5yC57zx3CVC2ePq5RGWvTycwJ5xQn4IIQ3OcmbwPxYGytlRsHL74XGc0MA
 sqO642wUNa6139suM5uVf/T/tgt6BDVsegofkpEDW0m0RoaTObYA06DfOupf2ZhRTp
 YR7WgyY4Vyh7z3sX0GNyw4lhD3WcFtq+vmu/qfXUvA/0Yk5riNoMgKmhx8PFb7Ygws
 Xk5xrZkTFbI0A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=I4/HMl/9
Subject: Re: [Intel-wired-lan] [PATCH] igb: conditionalize I2C bit banging
 on external thermal sensor support
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
Cc: netdev@vger.kernel.org, patryk.piotrowski@intel.com,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Dec 07, 2022 at 11:49:07AM +0100, Corinna Vinschen wrote:
> Commit a97f8783a937 ("igb: unbreak I2C bit-banging on i350") introduced
> code to change I2C settings to bit banging unconditionally.
> 
> However, this patch introduced a regression:  On an Intel S2600CWR
> Server Board with three NICs:
> 
> - 1x dual-port copper
>   Intel I350 Gigabit Network Connection [8086:1521] (rev 01)
>   fw 1.63, 0x80000dda
> 
> - 2x quad-port SFP+ with copper SFP Avago ABCU-5700RZ
>   Intel I350 Gigabit Fiber Network Connection [8086:1522] (rev 01)
>   fw 1.52.0
> 
> the SFP NICs no longer get link at all.  Reverting commit a97f8783a937
> or switching to the Intel out-of-tree driver both fix the problem.
> 
> Per the igb out-of-tree driver, I2C bit banging on i350 depends on
> support for an external thermal sensor (ETS).  However, commit
> a97f8783a937 added bit banging unconditionally.  Additionally, the
> out-of-tree driver always calls init_thermal_sensor_thresh on probe,
> while our driver only calls init_thermal_sensor_thresh only in
> igb_reset(), and only if an ETS is present, ignoring the internal
> thermal sensor.  The affected SFPs don't provide an ETS.  Per Intel,
> the behaviour is a result of i350 firmware requirements.
> 
> This patch fixes the problem by aligning the behaviour to the
> out-of-tree driver:
> 
> - split igb_init_i2c() into two functions:
>   - igb_init_i2c() only performs the basic I2C initialization.
>   - igb_set_i2c_bb() makes sure that E1000_CTRL_I2C_ENA is set
>     and enables bit-banging.
> 
> - igb_probe() only calls igb_set_i2c_bb() if an ETS is present.
> 
> - igb_probe() calls init_thermal_sensor_thresh() unconditionally.
> 
> - igb_reset() aligns its behaviour to igb_probe(), i. e., call
>   igb_set_i2c_bb() if an ETS is present and call
>   init_thermal_sensor_thresh() unconditionally.
> 
> Fixes: a97f8783a937 ("igb: unbreak I2C bit-banging on i350")
> Co-authored-by: Jamie Bainbridge <jbainbri@redhat.com>
> Tested-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> Signed-off-by: Corinna Vinschen <vinschen@redhat.com>
> Signed-off-by: Jamie Bainbridge <jbainbri@redhat.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 44 +++++++++++++++++------
>  1 file changed, 34 insertions(+), 10 deletions(-)

The patch should have target in its title: "[PATCH net] ...."

> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index 4e65ffe3f4e3..7f56322b3ec2 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -138,6 +138,9 @@ static irqreturn_t igb_msix_ring(int irq, void *);
>  static void igb_update_dca(struct igb_q_vector *);
>  static void igb_setup_dca(struct igb_adapter *);
>  #endif /* CONFIG_IGB_DCA */
> +#ifdef CONFIG_IGB_HWMON
> +static void igb_set_i2c_bb(struct e1000_hw *);

IMHO, it is better to follow kernel coding style for new code.
The functions should have variable names too.

> +#endif /* CONFIG_IGB_HWMON */
>  static int igb_poll(struct napi_struct *, int);
>  static bool igb_clean_tx_irq(struct igb_q_vector *, int);
>  static int igb_clean_rx_irq(struct igb_q_vector *, int);
> @@ -2399,7 +2402,8 @@ void igb_reset(struct igb_adapter *adapter)
>  			 * interface.
>  			 */
>  			if (adapter->ets)
> -				mac->ops.init_thermal_sensor_thresh(hw);
> +				igb_set_i2c_bb(hw);
> +			mac->ops.init_thermal_sensor_thresh(hw);
>  		}
>  	}
>  #endif
> @@ -3116,21 +3120,12 @@ static void igb_init_mas(struct igb_adapter *adapter)
>   **/
>  static s32 igb_init_i2c(struct igb_adapter *adapter)
>  {
> -	struct e1000_hw *hw = &adapter->hw;
>  	s32 status = 0;
> -	s32 i2cctl;
>  
>  	/* I2C interface supported on i350 devices */
>  	if (adapter->hw.mac.type != e1000_i350)
>  		return 0;
>  
> -	i2cctl = rd32(E1000_I2CPARAMS);
> -	i2cctl |= E1000_I2CBB_EN
> -		| E1000_I2C_CLK_OUT | E1000_I2C_CLK_OE_N
> -		| E1000_I2C_DATA_OUT | E1000_I2C_DATA_OE_N;
> -	wr32(E1000_I2CPARAMS, i2cctl);
> -	wrfl();
> -
>  	/* Initialize the i2c bus which is controlled by the registers.
>  	 * This bus will use the i2c_algo_bit structure that implements
>  	 * the protocol through toggling of the 4 bits in the register.
> @@ -3146,6 +3141,30 @@ static s32 igb_init_i2c(struct igb_adapter *adapter)
>  	return status;
>  }
>  
> +#ifdef CONFIG_IGB_HWMON
> +/**
> + *  igb_set_i2c_bb - Init I2C interface
> + *  @adapter: pointer to adapter structure
> + **/
> +static void igb_set_i2c_bb(struct e1000_hw *hw)
> +{
> +	s32 i2cctl;
> +	u32 ctrl_ext;

Reversed Christmas tree, please.

Thanks
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
