Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D358B0475
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Apr 2024 10:37:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7C346407D6;
	Wed, 24 Apr 2024 08:37:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9wOqn1VY2eoZ; Wed, 24 Apr 2024 08:37:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6D5014077B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713947866;
	bh=qorI3suMyIdRdC/dUrP3Dr+6BQYpyLT6jSRnmugtVNQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gs3wWeK8YnDctHMtg9TpR6msQ/f1fZSNvNdA7QWeufIzwmExSn2dj3v4l7ztC7lmT
	 uMvROh3hoQrpasHhrJxadx5deh8/TeMmWdxBjVjXgNELef0zFFjb3aPAaZvCAdyB86
	 5zRVrZxhSb9wdA7jW2pG/1uri2esNoFkqa5tKSU9iCwCnSkCTF2DO+wf4NmXV6KDfO
	 VEgG03AmGx9B6GXpqERNIu5MVpJfTxqQOahh4hMgkqIdJNRCV5fmcs8K0OsPkd94xX
	 x8TF70V5po7meuiE9BaOpiRxgXGNIavneQx2fdV+VSk/cGIzoPqXJaMsa+IwOsXpy6
	 kjDEjj47LjMYg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6D5014077B;
	Wed, 24 Apr 2024 08:37:46 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A2D1B1BF47D
 for <intel-wired-lan@osuosl.org>; Wed, 24 Apr 2024 08:37:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 98D6C81F5C
 for <intel-wired-lan@osuosl.org>; Wed, 24 Apr 2024 08:37:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PoqJFG8nZHTO for <intel-wired-lan@osuosl.org>;
 Wed, 24 Apr 2024 08:37:43 +0000 (UTC)
X-Greylist: delayed 414 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 24 Apr 2024 08:37:41 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 32B1381F18
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 32B1381F18
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 32B1381F18
 for <intel-wired-lan@osuosl.org>; Wed, 24 Apr 2024 08:37:41 +0000 (UTC)
Received: from [192.168.0.6] (ip5f5af5d1.dynamic.kabel-deutschland.de
 [95.90.245.209])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 4167A61E5FE05;
 Wed, 24 Apr 2024 10:30:29 +0200 (CEST)
Message-ID: <ec4765e9-c25a-4268-b6e5-016b849f1760@molgen.mpg.de>
Date: Wed, 24 Apr 2024 10:30:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Vitaly Lifshits <vitaly.lifshits@intel.com>
References: <20240417190320.3159360-1-vitaly.lifshits@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240417190320.3159360-1-vitaly.lifshits@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: change
 usleep_range to udelay in PHY mdic access
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
Cc: intel-wired-lan@osuosl.org, Sasha Neftin <sasha.neftin@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Vitaly,


Thank you for the patch.


Am 17.04.24 um 21:03 schrieb Vitaly Lifshits:
> This is a partial revert of commit 6dbdd4de0362 ("e1000e: Workaround
> for sporadic MDI error on Meteor Lake systems"). The referenced commit
> introduced an issue on vPro systems, where disconnecting and reconnecting
> the LAN cable might result in a kernel panic.

Please paste the panic, and document the test system.

> This was root caused to the usage of usleep_range in an atomic content

conte*x*t?

> while trying to access the PHY. Change back the usleep_range calls to
> udelay.

Please explain, why this is an atomic context.

> Fixes: 6dbdd4de0362 ("e1000e: Workaround for sporadic MDI error on Meteor Lake systems")
> Co-developed-by: Sasha Neftin <sasha.neftin@intel.com>
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
>   drivers/net/ethernet/intel/e1000e/phy.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/phy.c b/drivers/net/ethernet/intel/e1000e/phy.c
> index 93544f1cc2a5..f7ae0e0aa4a4 100644
> --- a/drivers/net/ethernet/intel/e1000e/phy.c
> +++ b/drivers/net/ethernet/intel/e1000e/phy.c
> @@ -157,7 +157,7 @@ s32 e1000e_read_phy_reg_mdic(struct e1000_hw *hw, u32 offset, u16 *data)
>   		 * the lower time out
>   		 */
>   		for (i = 0; i < (E1000_GEN_POLL_TIMEOUT * 3); i++) {
> -			usleep_range(50, 60);
> +			udelay(50);
>   			mdic = er32(MDIC);
>   			if (mdic & E1000_MDIC_READY)
>   				break;
> @@ -181,7 +181,7 @@ s32 e1000e_read_phy_reg_mdic(struct e1000_hw *hw, u32 offset, u16 *data)
>   		 * reading duplicate data in the next MDIC transaction.
>   		 */
>   		if (hw->mac.type == e1000_pch2lan)
> -			usleep_range(100, 150);
> +			udelay(100);
>   
>   		if (success) {
>   			*data = (u16)mdic;
> @@ -237,7 +237,7 @@ s32 e1000e_write_phy_reg_mdic(struct e1000_hw *hw, u32 offset, u16 data)
>   		 * the lower time out
>   		 */
>   		for (i = 0; i < (E1000_GEN_POLL_TIMEOUT * 3); i++) {
> -			usleep_range(50, 60);
> +			udelay(50);
>   			mdic = er32(MDIC);
>   			if (mdic & E1000_MDIC_READY)
>   				break;
> @@ -261,7 +261,7 @@ s32 e1000e_write_phy_reg_mdic(struct e1000_hw *hw, u32 offset, u16 data)
>   		 * reading duplicate data in the next MDIC transaction.
>   		 */
>   		if (hw->mac.type == e1000_pch2lan)
> -			usleep_range(100, 150);
> +			udelay(100);
>   
>   		if (success)
>   			return 0;

It’d also be interested where the delay values are specified.


Kind regards,

Paul
