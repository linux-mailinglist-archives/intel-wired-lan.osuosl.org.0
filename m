Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E1A959191
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2024 02:05:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0D33040197;
	Wed, 21 Aug 2024 00:05:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uRa7z-yVkapN; Wed, 21 Aug 2024 00:05:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 00919404CF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724198729;
	bh=ELfzGSU85Ube/i21ISp5VK7kSe9amSr2lKEG2/Vg88Q=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=W3i8VjEQ37EqVutIjc//tezAkVaGdr/HGZuBO8jPFStFh4R1O9CKSW48nTBjorO7s
	 TNukoK4lzn5bctgGdN0NNJBL51oMER0mil9mtSFhdmEAbLFMkzSZy1l40uht7o/QM2
	 FoprgDVnNt4J9W1WY848+SqRWoMt9BH7uSHq9a2C7xQAvIol5UeP3e3Hc1cIVaoOU5
	 bDDFs3hMf2nXSQDXGhKmIbA9+Xw3UG82X+LvBSGaCSIiJHP3XWYEc+u0w4VTpZkVWt
	 HS+fvTFuxuTV9EoZlE+NGvvI7bC9rjVHfZXNnfGbDhfhmPz1UGdr3R1MdNxqjm4ZYd
	 gIlK5oIlJS4hQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 00919404CF;
	Wed, 21 Aug 2024 00:05:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 25C6D1BF3B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 21:29:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1086A8122B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 21:29:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y86uKuRCIYKf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Aug 2024 21:29:27 +0000 (UTC)
X-Greylist: delayed 904 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 20 Aug 2024 21:29:26 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5804D8122A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5804D8122A
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=136.143.188.52;
 helo=sender4-of-o52.zoho.com; envelope-from=petr@jevklidu.cz;
 receiver=<UNKNOWN> 
Received: from sender4-of-o52.zoho.com (sender4-of-o52.zoho.com
 [136.143.188.52])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5804D8122A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2024 21:29:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1724188442; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=XgwUiGPDQfkbe7/DE86c/wlUPudOjaYrTgsQwmHvJP8W1kX0j+BfuXJB9uCSkH7dLgN9KUjbhgnhn1S0mcIIakKDG7n3lqNFYzMKpWNWoegoJKgsum4c4I4PaXJJ4OqP2qmSySDAu3/Bg48kWE5NJAKwpnJc3b0+F5YeQWDbaQo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1724188442;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=ELfzGSU85Ube/i21ISp5VK7kSe9amSr2lKEG2/Vg88Q=; 
 b=AvaVi8ioUWKvYFBKSzbvBEiIRFIUzlMWTDRqdbB8RXtplHbcPMt0ZCBkyThQ3nBx0L98qra81TXMltVqKypAUXXewupbyZRpBPdIHEaI9jf1HtPxJB5Cf98YKcYgcGB7P1oxY27qdbrblyUnQF+/mpscHqRazKkc6KHnQvNnQAM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=jevklidu.cz;
 spf=pass  smtp.mailfrom=petr@jevklidu.cz;
 dmarc=pass header.from=<petr@jevklidu.cz>
Received: by mx.zohomail.com with SMTPS id 1724188440687689.5836446683727;
 Tue, 20 Aug 2024 14:14:00 -0700 (PDT)
Message-ID: <7ec28d20-c729-496a-b8bf-2bf88bbb4d70@jevklidu.cz>
Date: Tue, 20 Aug 2024 23:13:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Bjorn Helgaas <helgaas@kernel.org>, Jiri Slaby <jirislaby@kernel.org>
References: <20240820180952.GA217979@bhelgaas>
Content-Language: cs-CZ
From: Petr Valenta <petr@jevklidu.cz>
In-Reply-To: <20240820180952.GA217979@bhelgaas>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ZohoMailClient: External
X-Mailman-Approved-At: Wed, 21 Aug 2024 00:05:27 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; t=1724188442; 
 s=zoho; d=jevklidu.cz; i=petr@jevklidu.cz;
 h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
 bh=ELfzGSU85Ube/i21ISp5VK7kSe9amSr2lKEG2/Vg88Q=;
 b=gfjM65wvvqAxR8k4L1ciKz1ZZUbT1MRfaVvxZcdd2EloJ8lm8nPTY+6K4HryPGw6
 3FLGI/Bl/vxcVE8llS785UAggco7b+kQyWtdSW4vfH2u6jdVCtr+Lwgjh4Qrezy5tio
 TDQ5UxZACk4zfL0IJ4jy8tBm3XXh/LF7Nw93+Aew=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=jevklidu.cz
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=jevklidu.cz header.i=petr@jevklidu.cz
 header.a=rsa-sha256 header.s=zoho header.b=gfjM65wv
Subject: Re: [Intel-wired-lan] ACPI IRQ storm with 6.10
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
Cc: Linux regressions mailing list <regressions@lists.linux.dev>,
 "Rafael J. Wysocki" <rafael@kernel.org>, przemyslaw.kitszel@intel.com,
 Linux kernel mailing list <linux-kernel@vger.kernel.org>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Bjorn Helgaas <bhelgaas@google.com>,
 intel-wired-lan@lists.osuosl.org, Len Brown <lenb@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



Dne 20. 08. 24 v 20:09 Bjorn Helgaas napsal(a):
> [+to Petr, -cc Jesse, bouncing]
> 
> On Mon, Aug 19, 2024 at 07:23:42AM +0200, Jiri Slaby wrote:
>> On 19. 08. 24, 6:50, Jiri Slaby wrote:
>>> CC e1000e guys + Jesse (due to 75a3f93b5383) + Bjorn (due to b2c289415b2b)
>>
>> Bjorn,
>>
>> I am confused by these changes:
>> ==========================================
>> @@ -291,16 +288,13 @@ static int e1000_set_link_ksettings(struct net_device
>> *net
>> dev,
>>           * duplex is forced.
>>           */
>>          if (cmd->base.eth_tp_mdix_ctrl) {
>> -               if (hw->phy.media_type != e1000_media_type_copper) {
>> -                       ret_val = -EOPNOTSUPP;
>> -                       goto out;
>> -               }
>> +               if (hw->phy.media_type != e1000_media_type_copper)
>> +                       return -EOPNOTSUPP;
>>
>>                  if ((cmd->base.eth_tp_mdix_ctrl != ETH_TP_MDI_AUTO) &&
>>                      (cmd->base.autoneg != AUTONEG_ENABLE)) {
>>                          e_err("forcing MDI/MDI-X state is not supported when
>> lin
>> k speed and/or duplex are forced\n");
>> -                       ret_val = -EINVAL;
>> -                       goto out;
>> +                       return -EINVAL;
>>                  }
>>          }
>>
>> @@ -347,7 +341,6 @@ static int e1000_set_link_ksettings(struct net_device
>> *netde
>> v,
>>          }
>>
>>   out:
>> -       pm_runtime_put_sync(netdev->dev.parent);
>>          clear_bit(__E1000_RESETTING, &adapter->state);
>>          return ret_val;
>>   }
>> ==========================================
>>
>> So no more clear_bit(__E1000_RESETTING in the above fail paths. Is that
>> intentional?
> 
> Not intentional.  Petr, do you have the ability to test the patch
> below?  I'm not sure it's the correct fix, but it reverts the pieces
> of b2c289415b2b that Jiri pointed out.
> 

I tested the patch below but it didn't help. After the first boot with 
new kernel it looked promising as the irq storm only appeared for a few 
seconds, but with subsequent reboots it was the same as without the patch.

To be sure, I also send the md5sum of ethtool.c after applying the patch:

a25c003257538f16994b4d7c4260e894 ethtool.c

> diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
> index 9364bc2b4eb1..9db36ee71684 100644
> --- a/drivers/net/ethernet/intel/e1000e/ethtool.c
> +++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
> @@ -280,7 +280,8 @@ static int e1000_set_link_ksettings(struct net_device *netdev,
>   	if (hw->phy.ops.check_reset_block &&
>   	    hw->phy.ops.check_reset_block(hw)) {
>   		e_err("Cannot change link characteristics when SoL/IDER is active.\n");
> -		return -EINVAL;
> +		ret_val = -EINVAL;
> +		goto out;
>   	}
>   
>   	/* MDI setting is only allowed when autoneg enabled because
> @@ -288,13 +289,16 @@ static int e1000_set_link_ksettings(struct net_device *netdev,
>   	 * duplex is forced.
>   	 */
>   	if (cmd->base.eth_tp_mdix_ctrl) {
> -		if (hw->phy.media_type != e1000_media_type_copper)
> -			return -EOPNOTSUPP;
> +		if (hw->phy.media_type != e1000_media_type_copper) {
> +			ret_val = -EOPNOTSUPP;
> +			goto out;
> +		}
>   
>   		if ((cmd->base.eth_tp_mdix_ctrl != ETH_TP_MDI_AUTO) &&
>   		    (cmd->base.autoneg != AUTONEG_ENABLE)) {
>   			e_err("forcing MDI/MDI-X state is not supported when link speed and/or duplex are forced\n");
> -			return -EINVAL;
> +			ret_val = -EINVAL;
> +			goto out;
>   		}
>   	}
>   
