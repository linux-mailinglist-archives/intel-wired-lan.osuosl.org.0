Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6F7275B0E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Sep 2020 17:02:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 738418734E;
	Wed, 23 Sep 2020 15:02:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wQit4V5lFjvw; Wed, 23 Sep 2020 15:02:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7FDE58734F;
	Wed, 23 Sep 2020 15:02:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AF6541BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 15:02:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A5BE086749
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 15:02:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A3wA-q9-ye6N for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Sep 2020 15:02:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2EC6C86726
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 15:02:23 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 5DB2320646201;
 Wed, 23 Sep 2020 17:02:20 +0200 (CEST)
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
References: <20200923074751.10527-1-kai.heng.feng@canonical.com>
 <17092088-86ff-2d31-b3de-2469419136a3@molgen.mpg.de>
 <AC6D77B8-244D-4816-8FFE-A4480378EC4C@canonical.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <79f01082-c9b1-f80a-7af4-b61bdbf40c90@molgen.mpg.de>
Date: Wed, 23 Sep 2020 17:02:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <AC6D77B8-244D-4816-8FFE-A4480378EC4C@canonical.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Power cycle phy on PM resume
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
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Kai-Heng,


Am 23.09.20 um 16:46 schrieb Kai-Heng Feng:

>> On Sep 23, 2020, at 21:28, Paul Menzel wrote:

>> Am 23.09.20 um 09:47 schrieb Kai-Heng Feng:
>>> We are seeing the following error after S3 resume:
>>> [  704.746874] e1000e 0000:00:1f.6 eno1: Setting page 0x6020
>>> [  704.844232] e1000e 0000:00:1f.6 eno1: MDI Write did not complete
>>> [  704.902817] e1000e 0000:00:1f.6 eno1: Setting page 0x6020
>>> [  704.903075] e1000e 0000:00:1f.6 eno1: reading PHY page 769 (or 0x6020 shifted) reg 0x17
>>> [  704.903281] e1000e 0000:00:1f.6 eno1: Setting page 0x6020
>>> [  704.903486] e1000e 0000:00:1f.6 eno1: writing PHY page 769 (or 0x6020 shifted) reg 0x17
>>> [  704.943155] e1000e 0000:00:1f.6 eno1: MDI Error
>>> ...
>>> [  705.108161] e1000e 0000:00:1f.6 eno1: Hardware Error
>>> Since we don't know what platform firmware may do to the phy, so let's
>>> power cycle the phy upon system resume to resolve the issue.
>>
>> Is there a bug report or list thread for this issue?
> 
> No. That's why I sent a patch to start discussion :)

Then please add on what systems that is.

>>> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
>>> ---
>>>   drivers/net/ethernet/intel/e1000e/netdev.c | 2 ++
>>>   1 file changed, 2 insertions(+)
>>> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
>>> index 664e8ccc88d2..c2a87a408102 100644
>>> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
>>> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
>>> @@ -6968,6 +6968,8 @@ static __maybe_unused int e1000e_pm_resume(struct device *dev)
>>>   	    !e1000e_check_me(hw->adapter->pdev->device))
>>>   		e1000e_s0ix_exit_flow(adapter);
>>>   +	e1000_power_down_phy(adapter);
>>> +
>>>   	rc = __e1000_resume(pdev);
>>>   	if (rc)
>>>   		return rc;
>>
>> How much does this increase the resume time?
> 
> I didn't measure it. Because for me it's more important to have a working device.
> 
> Does it have a noticeable impact on your system's resume time?

I am not able to test the patch right now. But resume time is important 
to me. As I do not have the problem, nothing should be changed for my 
system (Dell Latitude E7250).

     00:19.0 Ethernet controller [0200]: Intel Corporation Ethernet 
Connection (3) I218-LM [8086:15a2] (rev 03)


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
