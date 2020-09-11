Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6199E267656
	for <lists+intel-wired-lan@lfdr.de>; Sat, 12 Sep 2020 01:06:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C2FC487569;
	Fri, 11 Sep 2020 23:06:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d7U79TVH492y; Fri, 11 Sep 2020 23:06:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DCC1E87583;
	Fri, 11 Sep 2020 23:06:38 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DC92C1BF41B
 for <intel-wired-lan@osuosl.org>; Fri, 11 Sep 2020 23:06:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D26C087B90
 for <intel-wired-lan@osuosl.org>; Fri, 11 Sep 2020 23:06:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KV4p7f+83d0m for <intel-wired-lan@osuosl.org>;
 Fri, 11 Sep 2020 23:06:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 20C2A87B8B
 for <intel-wired-lan@osuosl.org>; Fri, 11 Sep 2020 23:06:36 +0000 (UTC)
IronPort-SDR: 2Bzp4bPufyPmveFvd6IAnGqls0AbmX6ZpRS6VL6CVsXdpwJXvp0GEdjwcsopXq2QfiRlrL3JbB
 ynx7bedphjhA==
X-IronPort-AV: E=McAfee;i="6000,8403,9741"; a="146567974"
X-IronPort-AV: E=Sophos;i="5.76,418,1592895600"; d="scan'208";a="146567974"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 16:06:35 -0700
IronPort-SDR: ZAUZYqdpr/7KQVc4282bd2XubqyNMY7KVP4nBAqAK5UcCZ5USSBxceVKym+Am9/1V8fkcK+Pil
 YOfmiiU2G/Fg==
X-IronPort-AV: E=Sophos;i="5.76,418,1592895600"; d="scan'208";a="329948174"
Received: from jekeller-mobl1.amr.corp.intel.com (HELO [10.209.122.57])
 ([10.209.122.57])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 16:06:34 -0700
To: intel-wired-lan@osuosl.org
References: <20200911012337.14015-1-jesse.brandeburg@intel.com>
 <20200911012337.14015-6-jesse.brandeburg@intel.com>
 <877dt0nr8r.fsf@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
Organization: Intel Corporation
Message-ID: <8d7a918e-ff8f-e9f6-37b6-ad07c674f6af@intel.com>
Date: Fri, 11 Sep 2020 16:06:33 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.2.2
MIME-Version: 1.0
In-Reply-To: <877dt0nr8r.fsf@intel.com>
Content-Language: en-US
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 9/11/2020 10:43 AM, Vinicius Costa Gomes wrote:
> Jesse Brandeburg <jesse.brandeburg@intel.com> writes:
> 
>> This takes care of all of the trivial W=1 fixes in the Intel
>> Ethernet drivers, which allows developers and maintainers to
>> build more of the networking tree with more complete warning
>> checks.
>>
>> Almost all of the changes were trivial comment updates on
>> function headers, but some of the changes were for variables that
>> were storing a return value from a register read, where the
>> return value wasn't used. Those conversions to remove the lvalue
>> of the assignment should be safe because the readl memory mapped
>> reads are marked volatile and should not be optimized out without
>> an lvalue (I suspect a very long time ago this wasn't guaranteed
>> as it is today).
>>
>> Inspired by Lee Jones' series of wireless work to do the same.
>> Compile tested only.
>>
>> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
>> ---
>>  drivers/net/ethernet/intel/e100.c             |   8 +-
>>  drivers/net/ethernet/intel/e1000/e1000_hw.c   | 147 ++++++++----------
>>  drivers/net/ethernet/intel/e1000/e1000_main.c |  39 +++--
>>  .../net/ethernet/intel/e1000e/80003es2lan.c   |   1 -
>>  drivers/net/ethernet/intel/e1000e/ich8lan.c   |  16 +-
>>  drivers/net/ethernet/intel/e1000e/netdev.c    |  50 ++++--
>>  drivers/net/ethernet/intel/e1000e/phy.c       |   3 +
>>  drivers/net/ethernet/intel/e1000e/ptp.c       |   2 +-
>>  drivers/net/ethernet/intel/igb/e1000_82575.c  |   6 +-
>>  drivers/net/ethernet/intel/igb/e1000_i210.c   |   5 +-
>>  drivers/net/ethernet/intel/igb/e1000_mac.c    |   1 +
>>  drivers/net/ethernet/intel/igb/e1000_mbx.c    |   1 +
>>  drivers/net/ethernet/intel/igb/igb_main.c     |  28 ++--
>>  drivers/net/ethernet/intel/igb/igb_ptp.c      |   8 +-
>>  drivers/net/ethernet/intel/igbvf/netdev.c     |  17 +-
>>  drivers/net/ethernet/intel/igc/igc_main.c     |   2 +-
>>  drivers/net/ethernet/intel/igc/igc_ptp.c      |   4 +-
>>  drivers/net/ethernet/intel/ixgb/ixgb_hw.c     | 135 ++++++++--------
>>  drivers/net/ethernet/intel/ixgb/ixgb_main.c   |  17 +-
>>  .../net/ethernet/intel/ixgbevf/ixgbevf_main.c |   3 +-
>>  20 files changed, 265 insertions(+), 228 deletions(-)
>>
> 
> ...
> 
>> diff --git a/drivers/net/ethernet/intel/e1000/e1000_hw.c b/drivers/net/ethernet/intel/e1000/e1000_hw.c
>> index 4e7a0810eaeb..2120dacfd55c 100644
>> --- a/drivers/net/ethernet/intel/e1000/e1000_hw.c
>> +++ b/drivers/net/ethernet/intel/e1000/e1000_hw.c
>> @@ -139,6 +139,7 @@ static void e1000_phy_init_script(struct e1000_hw *hw)
>>  		 * at the end of this routine.
>>  		 */
>>  		ret_val = e1000_read_phy_reg(hw, 0x2F5B, &phy_saved_data);
>> +		e_dbg("Reading PHY register 0x2F5B failed: %d\n", ret_val);
>>
> 
> Adding this debug statement seems unrelated.

Adding the debug statement does make ret_val become used, but yea it
could have been called out in the commit message.

> 
>>  		/* Disabled the PHY transmitter */
>>  		e1000_write_phy_reg(hw, 0x2F5B, 0x0003);
> 
> Apart from this,
> 
> Reviewed-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
