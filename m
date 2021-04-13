Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0466735E13B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Apr 2021 16:18:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9EDAC844D7;
	Tue, 13 Apr 2021 14:18:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bq2C0tL9XUtA; Tue, 13 Apr 2021 14:18:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6B736844CD;
	Tue, 13 Apr 2021 14:18:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E687A1BF2F0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 02:02:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D09C0842E0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 02:02:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yblZM7mKkVYD for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Apr 2021 02:02:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from qq.com (out203-205-221-210.mail.qq.com [203.205.221.210])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A00BD842DC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 02:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1618279342; bh=x10Kp7PX8NevVvToJr2FCs9U/BsD4zfVCBLR9Gdwmg4=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To;
 b=ZhMK52VbVCBF5Ia521ifVrEqRbTUQ4mrMC7PfXqHqHbhu4kUDbMzqz2uh310gxgoo
 Kz/z3wCptWCiWjRhbqh77SGNd19hnhBuvVwNu8do9/s27QAx2ZKfNDzaWl0HKr5R64
 E9VhxqVj7bRQw7Ldjq3MxMXqWHddCqKCkYE4YVso=
Received: from [192.168.10.254] ([116.128.247.22])
 by newxmesmtplogicsvrsza7.qq.com (NewEsmtp) with SMTP
 id 8613C97; Tue, 13 Apr 2021 10:02:06 +0800
X-QQ-mid: xmsmtpt1618279326trozgpbi2
Message-ID: <tencent_AAC300E9BCF5B21D7C99816BD69FA56E5D0A@qq.com>
X-QQ-XMAILINFO: ND1VCXdwBsU4o5mJ0sRpD4me6Zc12Ji28VgqnzAbseAcrM0o5AVLpOxVLs7CMa
 BnSHEP75uKzylbAOXrUhRpZYz6Nih2crM4PojBsXOctxMeDt9peOGwWI3RiHkvdTqA91uQ5FZQZ4
 8WgpnrkUcXYdlUDmc/EXhVnyxKNqwGbvc2Bn7qivmt0ty570/wmsH4Lv9074/yZwdXmT4M45JM82
 1n2kgbRID6pfqAwW9yjnVFEKh/BT41YHlI03lnfLGaRoRpqCDQWNhPqBsE0wTtOsvyqcMyYKdsTK
 P2YfMWj2cYDquPstJf7oVCaNxIP6nsPrVx1U//QKJJQwBGiMZaeJIRXh83nQI6nIYIBUNLFy1K74
 EIhYl8NR4VXNo8OTchBuRO7MDBAwoxaS6rDb1jRNd/PH4symCgKmDHJ2tEFIVxDITbS9Zzl/oghG
 1HDnfzZSccJK2QyzfN49CjzJfh84ZyhPz1vXQN20THjlK9HNkEHJLyoLHmEFd1msLG8HvuhPh6Q8
 0uEmQQV6XHIxJk/3pIOp/fKVuybSqZ7piG+kqJLYoOB/MUrxJhfVV7FEXuU6IqFT8tqdkkIoxQQ0
 YZYXB5FDPhY+orACZERckA0DLh3Ey9tcFyYkY5LW8zZVDONnySGD/T9j12dqOobBkmBMUpWaUFm/
 gTnG38BRz+UcvskoPyLBqzMpZqd3/O/NnqPjksd26faOz0AJeRE+hSAzxdKKrQqXkfkr5n5CEprM
 j2m7FpUksYxv1pmhTNTSmzZ8ZT25/PUiir2shtBE3KyzlyRUYyGMl1d2qU7NYHDZsxK92DsPYjxY
 M9SFOfyOyBZ/c8yTXiIqoJJaMWfiCJ9kAnHdnwnAZX/AmkgqQl92+y
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "xiao33522@qq.com" <xiao33522@qq.com>,
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
References: <tencent_A3F0B1FAA65495EB2220B5B72EB6E5AF1B07@qq.com>
 <DM6PR11MB4657EB5A8040E7D5A9CB155E9B739@DM6PR11MB4657.namprd11.prod.outlook.com>
From: xiao <534535881@qq.com>
X-OQ-MSGID: <6698ac64-d31c-13ce-18d9-a425d3764521@qq.com>
Date: Tue, 13 Apr 2021 10:02:06 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <DM6PR11MB4657EB5A8040E7D5A9CB155E9B739@DM6PR11MB4657.namprd11.prod.outlook.com>
Content-Language: en-US
X-Mailman-Approved-At: Tue, 13 Apr 2021 14:18:41 +0000
Subject: Re: [Intel-wired-lan] [PATCH] i40e: The state of phy may not be
 correct during power-on
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 xiaolinkui <xiaolinkui@kylinos.cn>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-2"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 4/10/21 2:12 AM, Kubalewski, Arkadiusz wrote:
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of =
xiao33522@qq.com
>> Sent: pi=B1tek, 9 kwietnia 2021 11:18
>> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L <a=
nthony.l.nguyen@intel.com>
>> Cc: netdev@vger.kernel.org; xiaolinkui <xiaolinkui@kylinos.cn>; linux-ke=
rnel@vger.kernel.org; intel-wired-lan@lists.osuosl.org; kuba@kernel.org; da=
vem@davemloft.net
>> Subject: [Intel-wired-lan] [PATCH] i40e: The state of phy may not be cor=
rect during power-on
>>
>> From: xiaolinkui <xiaolinkui@kylinos.cn>
>>
>> Sometimes the power on state of the x710 network card indicator is not r=
ight, and the indicator shows orange. At this time, the network card speed =
is Gigabit.
> By "power on state" you mean that it happens after power-up of the server?
Yes, it means that sometimes the boot state of the server is still in =

the BIOS boot stage, and the network card indicator is wrong(orange =

indicator).

>
>> After entering the system, check the network card status through the eth=
tool command as follows:
>>
>> [root@localhost ~]# ethtool enp132s0f0
>> Settings for enp132s0f0:
>> 	Supported ports: [ FIBRE ]
>> 	Supported link modes:   1000baseX/Full
>> 	                        10000baseSR/Full
>> 	Supported pause frame use: Symmetric
>> 	Supports auto-negotiation: Yes
>> 	Supported FEC modes: Not reported
>> 	Advertised link modes:  1000baseX/Full
>> 	                        10000baseSR/Full
>> 	Advertised pause frame use: No
>> 	Advertised auto-negotiation: Yes
>> 	Advertised FEC modes: Not reported
>> 	Speed: 1000Mb/s
>> 	Duplex: Full
>> 	Port: FIBRE
>> 	PHYAD: 0
>> 	Transceiver: internal
>> 	Auto-negotiation: off
>> 	Supports Wake-on: d
>> 	Wake-on: d
>> 	Current message level: 0x00000007 (7)
>> 			       drv probe link
>> 	Link detected: yes
>>
>> We can see that the speed is 1000Mb/s.
>>
>> If you unplug and plug in the optical cable, it can be restored to 10g.
>> After this operation, the rate is as follows:
>>
>> [root@localhost ~]# ethtool enp132s0f0
>> Settings for enp132s0f0:
>>         Supported ports: [ FIBRE ]
>>         Supported link modes:   1000baseX/Full
>>                                 10000baseSR/Full
>>         Supported pause frame use: Symmetric
>>         Supports auto-negotiation: Yes
>>         Supported FEC modes: Not reported
>>         Advertised link modes:  1000baseX/Full
>>                                 10000baseSR/Full
>>         Advertised pause frame use: No
>>         Advertised auto-negotiation: Yes
>>         Advertised FEC modes: Not reported
>>         Speed: 10000Mb/s
>>         Duplex: Full
>>         Port: FIBRE
>>         PHYAD: 0
>>         Transceiver: internal
>>         Auto-negotiation: off
>>         Supports Wake-on: d
>>         Wake-on: d
>>         Current message level: 0x00000007 (7)
>>                                drv probe link
>>         Link detected: yes
>>
>> Calling i40e_aq_set_link_restart_an can also achieve this function.
>> So we need to do a reset operation for the network card when the network=
 card status is abnormal.
> Can't say much about the root cause of the issue right now,
> but I don't think it is good idea for the fix.
> This leads to braking existing link each time
> i40e_aq_get_link_info is called on 1 Gigabit PHY.
> For example 'ethtool -m <dev>' does that.
>
> Have you tried reloading the driver?
> Thanks!
> I tried to unload the driver again and then load the driver, but it didn'=
t work.If I pull the fiber optic cable off and plug it in, it can be recove=
red from 1000Mb/s to 10000Mb/s.

>> Signed-off-by: xiaolinkui <xiaolinkui@kylinos.cn>
>> ---
>> drivers/net/ethernet/intel/i40e/i40e_common.c | 4 ++++
>> 1 file changed, 4 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net=
/ethernet/intel/i40e/i40e_common.c
>> index ec19e18305ec..dde0224776ac 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e_common.c
>> +++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
>> @@ -1866,6 +1866,10 @@ i40e_status i40e_aq_get_link_info(struct i40e_hw =
*hw,
>> 	hw_link_info->max_frame_size =3D le16_to_cpu(resp->max_frame_size);
>> 	hw_link_info->pacing =3D resp->config & I40E_AQ_CONFIG_PACING_MASK;
>>
>> +	if (hw_link_info->phy_type =3D=3D I40E_PHY_TYPE_1000BASE_SX &&
>> +	    hw->mac.type =3D=3D I40E_MAC_XL710)
>> +		i40e_aq_set_link_restart_an(hw, true, NULL);
>> +
>> 	/* update fc info */
>> 	tx_pause =3D !!(resp->an_info & I40E_AQ_LINK_PAUSE_TX);
>> 	rx_pause =3D !!(resp->an_info & I40E_AQ_LINK_PAUSE_RX);
>> --
>> 2.17.1
>>
>> _______________________________________________
>> Intel-wired-lan mailing list
>> Intel-wired-lan@osuosl.org
>> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
>>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
