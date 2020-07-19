Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7B0224FCD
	for <lists+intel-wired-lan@lfdr.de>; Sun, 19 Jul 2020 07:34:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 820EF87D73;
	Sun, 19 Jul 2020 05:34:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QqVyPMrebecw; Sun, 19 Jul 2020 05:34:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E36AD87D65;
	Sun, 19 Jul 2020 05:34:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 54C771BF4E6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Jul 2020 05:34:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4EB8F849BE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Jul 2020 05:34:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id upPLCQcK7byz for <intel-wired-lan@lists.osuosl.org>;
 Sun, 19 Jul 2020 05:34:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D7877849A3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 19 Jul 2020 05:34:16 +0000 (UTC)
IronPort-SDR: qn5vk642TDZSwyOTDWLOXmcYdJ1C9zESXPg8qbhwwYGgs0nZjO+yUzJ3UWjiyoZzOXIIsEbvhr
 T4ag5hgo9gMg==
X-IronPort-AV: E=McAfee;i="6000,8403,9686"; a="149774357"
X-IronPort-AV: E=Sophos;i="5.75,369,1589266800"; d="scan'208";a="149774357"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2020 22:34:16 -0700
IronPort-SDR: FXW1Ac7iCitpqkwhFvTSn54O81Pc62W1bjCaB9G8zwy97xDiluuZbiRJb2PRtHwllONbbVj6kR
 IbZFJPomRm6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,369,1589266800"; d="scan'208";a="269858023"
Received: from sneftin-mobl.ger.corp.intel.com (HELO [10.249.88.79])
 ([10.249.88.79])
 by fmsmga007.fm.intel.com with ESMTP; 18 Jul 2020 22:34:13 -0700
To: Nathan Chancellor <natechancellor@gmail.com>
References: <20200716044934.152364-1-natechancellor@gmail.com>
 <cdfec63a-e51f-e1a6-aa60-6ca949338306@intel.com>
 <20200717021235.GA4098394@ubuntu-n2-xlarge-x86>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <96131050-57e4-934a-3d9a-a285f234e633@intel.com>
Date: Sun, 19 Jul 2020 08:34:12 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200717021235.GA4098394@ubuntu-n2-xlarge-x86>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] igc: Do not use link uninitialized in
 igc_check_for_copper_link
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/17/2020 05:12, Nathan Chancellor wrote:
> On Thu, Jul 16, 2020 at 07:29:03PM +0300, Neftin, Sasha wrote:
>> On 7/16/2020 07:49, Nathan Chancellor wrote:
>>> Clang warns:
>>>
>> Hello Nathan,
>> Thanks for tracking our code.Please, look at https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20200709073416.14126-1-sasha.neftin@intel.com/
>> - I hope this patch already address this Clang warns - please, let me know.
> 
> I have not explicitly tested it but it seems obvious that it will. Let's
> go with that.
> 
Good Nathan, let's go with my 
https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20200709073416.14126-1-sasha.neftin@intel.com/ 
and let me know if warning still generated.
Thanks,
Sasha
> Cheers,
> Nathan
> 
>>> drivers/net/ethernet/intel/igc/igc_mac.c:374:6: warning: variable 'link'
>>> is used uninitialized whenever 'if' condition is true
>>> [-Wsometimes-uninitialized]
>>>           if (!mac->get_link_status) {
>>>               ^~~~~~~~~~~~~~~~~~~~~
>>> drivers/net/ethernet/intel/igc/igc_mac.c:424:33: note: uninitialized use
>>> occurs here
>>>           ret_val = igc_set_ltr_i225(hw, link);
>>>                                          ^~~~
>>> drivers/net/ethernet/intel/igc/igc_mac.c:374:2: note: remove the 'if' if
>>> its condition is always false
>>>           if (!mac->get_link_status) {
>>>           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>> drivers/net/ethernet/intel/igc/igc_mac.c:367:11: note: initialize the
>>> variable 'link' to silence this warning
>>>           bool link;
>>>                    ^
>>>                     = 0
>>> 1 warning generated.
>>>
>>> It is not wrong, link is only uninitialized after this through
>>> igc_phy_has_link. Presumably, if we skip the majority of this function
>>> when get_link_status is false, we should skip calling igc_set_ltr_i225
>>> as well. Just directly return 0 in this case, rather than bothering with
>>> adding another label or initializing link in the if statement.
>>>
>>> Fixes: 707abf069548 ("igc: Add initial LTR support")
>>> Link: https://github.com/ClangBuiltLinux/linux/issues/1095
>>> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>>> ---
>>>    drivers/net/ethernet/intel/igc/igc_mac.c | 6 ++----
>>>    1 file changed, 2 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/igc/igc_mac.c b/drivers/net/ethernet/intel/igc/igc_mac.c
>>> index b47e7b0a6398..26e3c56a4a8b 100644
>>> --- a/drivers/net/ethernet/intel/igc/igc_mac.c
>>> +++ b/drivers/net/ethernet/intel/igc/igc_mac.c
>>> @@ -371,10 +371,8 @@ s32 igc_check_for_copper_link(struct igc_hw *hw)
>>>    	 * get_link_status flag is set upon receiving a Link Status
>>>    	 * Change or Rx Sequence Error interrupt.
>>>    	 */
>>> -	if (!mac->get_link_status) {
>>> -		ret_val = 0;
>>> -		goto out;
>>> -	}
>>> +	if (!mac->get_link_status)
>>> +		return 0;
>>>    	/* First we want to see if the MII Status Register reports
>>>    	 * link.  If so, then we want to get the current speed/duplex
>>>
>>> base-commit: ca0e494af5edb59002665bf12871e94b4163a257
>>>
>> Thanks,
>> Sasha

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
