Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0493E26677B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Sep 2020 19:43:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8706587B19;
	Fri, 11 Sep 2020 17:43:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5VfgGP8le4vW; Fri, 11 Sep 2020 17:43:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4C58C87B20;
	Fri, 11 Sep 2020 17:43:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1C76E1BF3CA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 17:43:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1839C86CA7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 17:43:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 27J-s1tZrS69 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Sep 2020 17:43:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5BAD886519
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 17:43:50 +0000 (UTC)
IronPort-SDR: gfsQb1fO/pH8vZy3wLc1c0G4BMNwxhrQMFJj229LvtvXietJJvEq3rXv14OXvFrlGhUMIZU9mU
 a/2kc7g/i13w==
X-IronPort-AV: E=McAfee;i="6000,8403,9741"; a="146513520"
X-IronPort-AV: E=Sophos;i="5.76,416,1592895600"; d="scan'208";a="146513520"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 10:43:49 -0700
IronPort-SDR: T6pL/wuj80l8d4SrfF4sts8AKUxwgNl50UXbdaKj6UC7II/4IK+FzYgIxsUc0RzhIhOjch0ytr
 +rR9yL0NnYMQ==
X-IronPort-AV: E=Sophos;i="5.76,416,1592895600"; d="scan'208";a="481403148"
Received: from prbhatt-mobl1.amr.corp.intel.com (HELO ellie) ([10.212.20.132])
 by orsmga005-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Sep 2020 10:43:48 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, netdev@vger.kernel.org
In-Reply-To: <20200911012337.14015-6-jesse.brandeburg@intel.com>
References: <20200911012337.14015-1-jesse.brandeburg@intel.com>
 <20200911012337.14015-6-jesse.brandeburg@intel.com>
Date: Fri, 11 Sep 2020 10:43:48 -0700
Message-ID: <877dt0nr8r.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v1 05/11] intel-ethernet:
 make W=1 build cleanly
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Jesse Brandeburg <jesse.brandeburg@intel.com> writes:

> This takes care of all of the trivial W=1 fixes in the Intel
> Ethernet drivers, which allows developers and maintainers to
> build more of the networking tree with more complete warning
> checks.
>
> Almost all of the changes were trivial comment updates on
> function headers, but some of the changes were for variables that
> were storing a return value from a register read, where the
> return value wasn't used. Those conversions to remove the lvalue
> of the assignment should be safe because the readl memory mapped
> reads are marked volatile and should not be optimized out without
> an lvalue (I suspect a very long time ago this wasn't guaranteed
> as it is today).
>
> Inspired by Lee Jones' series of wireless work to do the same.
> Compile tested only.
>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  drivers/net/ethernet/intel/e100.c             |   8 +-
>  drivers/net/ethernet/intel/e1000/e1000_hw.c   | 147 ++++++++----------
>  drivers/net/ethernet/intel/e1000/e1000_main.c |  39 +++--
>  .../net/ethernet/intel/e1000e/80003es2lan.c   |   1 -
>  drivers/net/ethernet/intel/e1000e/ich8lan.c   |  16 +-
>  drivers/net/ethernet/intel/e1000e/netdev.c    |  50 ++++--
>  drivers/net/ethernet/intel/e1000e/phy.c       |   3 +
>  drivers/net/ethernet/intel/e1000e/ptp.c       |   2 +-
>  drivers/net/ethernet/intel/igb/e1000_82575.c  |   6 +-
>  drivers/net/ethernet/intel/igb/e1000_i210.c   |   5 +-
>  drivers/net/ethernet/intel/igb/e1000_mac.c    |   1 +
>  drivers/net/ethernet/intel/igb/e1000_mbx.c    |   1 +
>  drivers/net/ethernet/intel/igb/igb_main.c     |  28 ++--
>  drivers/net/ethernet/intel/igb/igb_ptp.c      |   8 +-
>  drivers/net/ethernet/intel/igbvf/netdev.c     |  17 +-
>  drivers/net/ethernet/intel/igc/igc_main.c     |   2 +-
>  drivers/net/ethernet/intel/igc/igc_ptp.c      |   4 +-
>  drivers/net/ethernet/intel/ixgb/ixgb_hw.c     | 135 ++++++++--------
>  drivers/net/ethernet/intel/ixgb/ixgb_main.c   |  17 +-
>  .../net/ethernet/intel/ixgbevf/ixgbevf_main.c |   3 +-
>  20 files changed, 265 insertions(+), 228 deletions(-)
>

...

> diff --git a/drivers/net/ethernet/intel/e1000/e1000_hw.c b/drivers/net/ethernet/intel/e1000/e1000_hw.c
> index 4e7a0810eaeb..2120dacfd55c 100644
> --- a/drivers/net/ethernet/intel/e1000/e1000_hw.c
> +++ b/drivers/net/ethernet/intel/e1000/e1000_hw.c
> @@ -139,6 +139,7 @@ static void e1000_phy_init_script(struct e1000_hw *hw)
>  		 * at the end of this routine.
>  		 */
>  		ret_val = e1000_read_phy_reg(hw, 0x2F5B, &phy_saved_data);
> +		e_dbg("Reading PHY register 0x2F5B failed: %d\n", ret_val);
>

Adding this debug statement seems unrelated.

>  		/* Disabled the PHY transmitter */
>  		e1000_write_phy_reg(hw, 0x2F5B, 0x0003);

Apart from this,

Reviewed-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>

-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
