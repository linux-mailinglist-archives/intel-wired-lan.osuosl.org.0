Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39251437B24
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Oct 2021 18:53:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D9C0D403C3;
	Fri, 22 Oct 2021 16:53:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4XTU-3zJO6FX; Fri, 22 Oct 2021 16:53:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6F43F4027A;
	Fri, 22 Oct 2021 16:53:13 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 552A11BF36F
 for <intel-wired-lan@osuosl.org>; Fri, 22 Oct 2021 16:53:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4076640791
 for <intel-wired-lan@osuosl.org>; Fri, 22 Oct 2021 16:53:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GrUzBfBOuXcP for <intel-wired-lan@osuosl.org>;
 Fri, 22 Oct 2021 16:53:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from chris.i8u.org (mail.i8u.org [75.148.87.25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3B3A340434
 for <intel-wired-lan@osuosl.org>; Fri, 22 Oct 2021 16:53:07 +0000 (UTC)
Received: by chris.i8u.org (Postfix, from userid 1000)
 id 93E7D16C959B; Fri, 22 Oct 2021 09:53:06 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
 by chris.i8u.org (Postfix) with ESMTP id 9375E16C9292;
 Fri, 22 Oct 2021 09:53:06 -0700 (PDT)
Date: Fri, 22 Oct 2021 09:53:06 -0700 (PDT)
From: Hisashi T Fujinaka <htodd@twofifty.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <392a6fe-e920-31b-42dc-a214e311233c@twofifty.com>
Message-ID: <d7b27cf0-7983-29a4-8927-8da95998eb35@twofifty.com>
References: <trinity-58e35e17-0323-4cde-bbed-1582c3520822-1634891867291@3c-app-gmx-bap44>
 <9f4603a5-7811-c653-951b-777070f7ce54@molgen.mpg.de>
 <392a6fe-e920-31b-42dc-a214e311233c@twofifty.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v2] ixgbe: Allow disabling NBASE-T
 suppression hack
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
Cc: intel-wired-lan@osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 22 Oct 2021, Hisashi T Fujinaka wrote:

> We're not likely to accept this patch because it adds a private module
> parameter and upstream will not accept it.
>
> Also, why can't you set advertising for 2.5G and 5G on boot with
> ethtool?
>
> On Fri, 22 Oct 2021, Paul Menzel wrote:
>
>> Dear Robert,
>> 
>> 
>> Am 22.10.21 um 10:37 schrieb Robert Schlabbach:
>>> Commit a296d665eae1 ("ixgbe: Add ethtool support to enable 2.5 and 5.0
>>> Gbps support") introduced a hack which suppresses the advertisement of
>>> NBASE-T speeds by default, according to Todd Fujinaka to accommodate
>>> customers with network switches which could not cope with advertised
>>> NBASE-T speeds. However, this hack was not documented at all, nor was
>>> the way to work around it. Also, this was a rather unfriendly solution
>>> for customers with NBASE-T switches.
>> 
>> In my opinion you should call it out as a *regression*, which is against 
>> Linux? no regression policy. (I still think, the default needs to be 
>> changed.)
>
> Actually, this was a fix to the regression added by advertising 2.5G and
> 5G by default. 10G and 1G were our main objective and 2.5G and 5G were
> new at the time.
>
> Interoperability with existing hardware was more important than adding a
> feature that, honestly, hasn't been requested much (autoneg of 2.5G and
> 5G). The x550 is mainly being sold mainly into the server market and
> outside of the comms market, 2.5G and 5G has mainly been a "gamer"
> feature that's just coming out on normal motherboards now.
>
> Also keep in mind that interoperability issues were reported by
> customers who maintain large data centers (pick a big bank and you'd
> probably get the idea here) and you'll see why we thought this was
> necessary.
>
>>> Add a module parameter "disable_nbase_t_suppression_hack" to allow
>>> disabling the hack at boot time, for the benefit of customers with
>>> NBASE-T switches.
>>> 
>>> Properly document the hack and how to work around or disable it.
>
> The fix was documented in my initial patch, but I see that as it worked
> through the company that was removed. It was not in any external
> documentation, and that is a failure on our part.
>
>>> Reported-by: Robert Schlabbach <robert_s@gmx.net>
>>> Signed-off-by: Robert Schlabbach <robert_s@gmx.net>
>> 
>> I faintly remember the discussion, but didn?t find it. Can you please add 
>> an URL?
>> 
>> Also a Fixes tag might be useful.
>> 
>>> ---
>>>   .../device_drivers/ethernet/intel/ixgbe.rst   | 30 +++++++++++++++++++
>>>   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 15 ++++++++--
>>>   2 files changed, 43 insertions(+), 2 deletions(-)
>>> 
>>> diff --git 
>> a/Documentation/networking/device_drivers/ethernet/intel/ixgbe.rst 
>> b/Documentation/networking/device_drivers/ethernet/intel/ixgbe.rst
>>> index f1d5233e5e51..46502c7dcba6 100644
>>> --- a/Documentation/networking/device_drivers/ethernet/intel/ixgbe.rst
>>> +++ b/Documentation/networking/device_drivers/ethernet/intel/ixgbe.rst
>>> @@ -273,6 +273,16 @@ debug
>>>   This parameter adjusts the level of debug messages displayed in the 
>> system
>>>   logs.
>>> 
>>> +disable_nbase_t_suppression_hack
>>> +--------------------------------
>>> +:Valid Range: 0,1
>>> +:Default Value: 0 (hack enabled)
>>> +
>>> +This parameter disables the hack which suppresses the advertisement of 
>> NBASE-T
>>> +speeds to accommodate broken network switches which cannot cope with 
>> advertised
>>> +NBASE-T speeds. It is recommended to set this parameter to 1 in all 
>> network
>>> +environments with properly functioning network switches.
>>> +
>> 
>> Do you know one such broken model?
>>
>>>   Additional Features and Configurations
>>>   ======================================
>>> @@ -515,6 +525,26 @@ The offload is also supported for ixgbe's VFs, but 
>>> the 
>> VF must be set as
>>>     ethtool --set-priv-flags eth<x> vf-ipsec on
>>>     ip link set eth<x> vf <y> trust on
>>> 
>>> +NBASE-T Support
>>> +---------------
>>> +The ixgbe driver supports NBASE-T on some devices. However, the 
>> advertisement
>>> +of NBASE-T speeds is suppressed by default, to accommodate broken network
>>> +switches which cannot cope with advertised NBASE-T speeds. There are two 
>> ways
>>> +to enable advertising NBASE-T speeds on devices which support it:
>>> +
>>> +1. At runtime using the ethtool command (required after each boot)::
>>> +
>>> +  ethtool -s eth? advertise 0x1800000001028
>>> +
>>> +2. At boot time using the module parameter 
>> disable_nbase_t_suppression_hack::
>>> +
>>> +  Create a file /etc/modprobe.d/ixgbe.conf with the line::
>>> +
>>> +  options ixgbe disable_nbase_t_suppression_hack=1
>>> +
>>> +  Note that you may have to rebuild the initial ramdisk image for this 
>> change
>>> +  to take effect. On Debian or Ubuntu, this is done via "update-initramfs 
>> -u".
>> 
>> You might want to mark it up ``update-initramfs -u``.
>> 
>>> +
>>>
>>>   Known Issues/Troubleshooting
>>>   ============================
>>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c 
>> b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>>> index 13c4782b920a..f75943879fe7 100644
>>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>>> @@ -156,6 +156,11 @@ module_param(allow_unsupported_sfp, uint, 0);
>>>   MODULE_PARM_DESC(allow_unsupported_sfp,
>>>   		 "Allow unsupported and untested SFP+ modules on 82599-based 
>> adapters");
>>> 
>>> +static unsigned int disable_nbase_t_suppression_hack;
>>> +module_param(disable_nbase_t_suppression_hack, uint, 0);
>>> +MODULE_PARM_DESC(disable_nbase_t_suppression_hack,
>>> +		 "Disable hack which suppresses the advertisement of NBASE-T 
>> speeds to accommodate broken network switches");
>>> +
>>>   #define DEFAULT_MSG_ENABLE 
>>> (NETIF_MSG_DRV|NETIF_MSG_PROBE|NETIF_MSG_LINK)
>>>   static int debug = -1;
>>>   module_param(debug, int, 0);
>>> @@ -5526,8 +5531,14 @@ static int ixgbe_non_sfp_link_config(struct 
>>> ixgbe_hw 
>> *hw)
>>>   	if (!speed && hw->mac.ops.get_link_capabilities) {
>>>   		ret = hw->mac.ops.get_link_capabilities(hw, &speed,
>>>   							&autoneg);
>>> -		speed &= ~(IXGBE_LINK_SPEED_5GB_FULL |
>>> -			   IXGBE_LINK_SPEED_2_5GB_FULL);
>>> +		if (!disable_nbase_t_suppression_hack) {
>>> +			/* remove NBASE-T speeds from default autonegotiation
>>> +			 * to accommodate broken network switches in the 
>> field
>>> +			 * which cannot cope with advertised NBASE-T speeds
>>> +			 */
>>> +			speed &= ~(IXGBE_LINK_SPEED_5GB_FULL |
>>> +				   IXGBE_LINK_SPEED_2_5GB_FULL);
>>> +		}
>>>   	}
>>>
>>>   	if (ret)
>>> --
>>> 2.17.1
>> 
>> Acked-by: Paul Menzel <pmenzel@molgen.mpg.de>
>> 
>> 
>> Kind regards,
>> 
>> Paul

Sorry, I should've said, sorry I have to reply from my external account.
My Intel account is Outlook.

----
Todd Fujinaka <todd.fujinaka@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
