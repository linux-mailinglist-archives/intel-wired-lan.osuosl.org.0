Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 257B2A6256
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Sep 2019 09:14:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D864386138;
	Tue,  3 Sep 2019 07:14:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nyXWg2t2f5Aw; Tue,  3 Sep 2019 07:14:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 403E98656A;
	Tue,  3 Sep 2019 07:14:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9A59B1BF332
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2019 07:14:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 94314875D7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2019 07:14:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sWQO6qW495xZ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Sep 2019 07:14:47 +0000 (UTC)
X-Greylist: delayed 00:05:12 by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.134])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D9C6583FA2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2019 07:14:46 +0000 (UTC)
Received: from [192.168.0.7] ([91.45.211.96]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1Mzydy-1iPaem017W-00x3Db; Tue, 03 Sep 2019 09:09:18 +0200
To: Paul Menzel <pmenzel@molgen.mpg.de>, intel-wired-lan@lists.osuosl.org
References: <20190903060810.30775-1-sassmann@kpanic.de>
 <36909884-1de6-a537-0341-b060d01e4c0d@molgen.mpg.de>
From: Stefan Assmann <sassmann@kpanic.de>
Message-ID: <58a1b74a-574e-ed95-e33e-49a230017773@kpanic.de>
Date: Tue, 3 Sep 2019 09:09:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <36909884-1de6-a537-0341-b060d01e4c0d@molgen.mpg.de>
Content-Language: de-DE
X-Provags-ID: V03:K1:lfBeCfRWBy8mYEQMm9BalBScGqz+N1wwtJ0UDkwj0CN2cf8HyrI
 s0g9tsMu4994FJ5It7KZPj3rOnQYTlVGX2VEFomNd+0VZ6SE3/Ti1wk6OCfN1FfuCnXSKYx
 +pu3YZ3fw0cbL6OI4U0U9UCoepTMXETQuShSBYm+/ASF9J3TT8F0WWyKdoP5adEu+0p1Ofg
 h9Al6kMQcMEBiGbj0vU3w==
X-UI-Out-Filterresults: notjunk:1;V03:K0:0SSkh6xPBok=:BMHik3qV6gm82ginlEx9vP
 EEqXTUWsQUYbsQt8B3QwQOYvQfJJgZWPkz5CBqhFuYrAgH13MuoP8luN1+/IADyUMosTHwItI
 r5b8f0ZQj7f/pXtdkwdRLKFdfMOBld434ItugKpaqSc5KO0e+UN0zHLOvfAFEcBt3kmhvb9Pw
 4xwR7OWmczJuWwhqMHJzSxV96jR8PXB+VxDDSSvt9lqlm0X8OPo69DQLCNUqoupR/U52fIlkV
 ZUIkdpzPNk4VZmsO8Kg2WuByeD9XgqwF5tCnRI+6knobxOpIW+oCRrfuAfaTWGz8ZlIEV7aCk
 o2ShIbHQY01oU/50NQavqPi26kObJ6DoraK3r8i4nD96eAdZpCWQXAMK1bwCUZWldrUJL70yU
 y9pmw6XZB7XtnWGiF4QBLrwdYmPlAPMJQXo644HSggE+vdhYRq8Ay3EGxkC0J1ch22TRoRSBt
 1QugLE4m88DuJ+iQxLOGe3KcEJVrv6O645+57p0iwRG6z767Yk0ZTgBpLBGj+4w/jtI0uWX/6
 X/aKBTAHTCUGNuhHc/6xGqY/xCY1havLO6TEbBeDq6FSVXRaYKeYduihlxezhi5HU/jMN9t/c
 Cls5/WW3xMzsEJn7fSklixiMIGnl34YUj0Wy7/TuBRQkph7L20IRNTlfxpGkGX9NzQi796fyB
 n2Y3y3kZZP+nffCdM8WrWGa/2Y0cheORu3ER4memNb7OrRwe8kOK2TiOTTC6hKZJLXboqFRqH
 XZ4TxuNt9T0UwzVjnLHkWgn+2GNJ6HBA95IKMrwPSz4GLqQzFHUwztJ0ozwE+zm8Dtn26nctP
 EZuI/eSuINRlwrZpVp9eZmE5OoyLw==
Subject: Re: [Intel-wired-lan] [PATCH] i40e: clear
 __I40E_VIRTCHNL_OP_PENDING on invalid min tx rate
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
Cc: netdev@vger.kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 03.09.19 08:42, Paul Menzel wrote:
> Dear Stefan,

Hi Paul,

> On 03.09.19 08:08, Stefan Assmann wrote:
>> In the case of an invalid min tx rate being requested
>> i40e_ndo_set_vf_bw() immediately returns -EINVAL instead of releasing
>> __I40E_VIRTCHNL_OP_PENDING first.
> 
> What problem does this cause?

If the __I40E_VIRTCHNL_OP_PENDING bit never gets cleared no further
virtchnl op can be processed. For example you can no longer destroy the
VFs.

  Stefan

>> Signed-off-by: Stefan Assmann <sassmann@kpanic.de>
>> ---
>>   drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
>> index f8aa4deceb5e..3d2440838822 100644
>> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
>> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
>> @@ -4263,7 +4263,8 @@ int i40e_ndo_set_vf_bw(struct net_device *netdev, int vf_id, int min_tx_rate,
>>   	if (min_tx_rate) {
>>   		dev_err(&pf->pdev->dev, "Invalid min tx rate (%d) (greater than 0) specified for VF %d.\n",
>>   			min_tx_rate, vf_id);
>> -		return -EINVAL;
>> +		ret = -EINVAL;
>> +		goto error;
>>   	}
>>   
>>   	vf = &pf->vf[vf_id];
> 
> 
> Kind regards,
> 
> Paul
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
