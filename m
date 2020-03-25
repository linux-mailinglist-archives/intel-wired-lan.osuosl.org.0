Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DB220192141
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2020 07:40:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 933B486C22;
	Wed, 25 Mar 2020 06:40:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lkPjqXCK11Gm; Wed, 25 Mar 2020 06:40:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C255686C37;
	Wed, 25 Mar 2020 06:40:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B70BC1BF5E6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 06:40:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id ABB0887C20
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 06:40:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5UV5ehbRjcEO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2020 06:39:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8500B8654D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2020 06:39:59 +0000 (UTC)
Received: from mail-pj1-f71.google.com ([209.85.216.71])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>) id 1jGzhk-0007W3-P5
 for intel-wired-lan@lists.osuosl.org; Wed, 25 Mar 2020 06:39:57 +0000
Received: by mail-pj1-f71.google.com with SMTP id v8so3373075pju.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2020 23:39:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=iWtwzKqHnxSyWlleZtW4ct9mSZDNGZzNr3hrg6PDj8Y=;
 b=YQ9IOjxXVr8MkqDWX1j5LbTD4qR1jtnMrwU8Nn0jJ0dUsfScY62ARiPoRKNbv3wCGj
 2IC+9acGEyo8PXDKTtCEoUgXzuuLSE3dKdtDTIzLmAuWVzm9JDeKIKfCyRgz2ff1tcRL
 rt/oDj8XammRpvMKjJH+U9rfTIgaeq72x7hlhlUeVKJKL7XvgZZh7Hd9neGgEy+OX/Bz
 EUXvd9xbZn5ZfnXa/ajnvlU0uPlbm3rsRRyQybYtqDfZCdRIapL3VQO0SXlSy6gjuAhr
 K8up2IawE+zJ6qhwKZsG8MEOpMQtKRmXm9BbnZwUWztuhRAhZwF6AhDwhkUyd5D0xK0n
 bKsA==
X-Gm-Message-State: ANhLgQ3XqN2tveDOMQerfZKhxiKqrvNj/TUYTYRNVuOzme5Fy9r5Erjl
 A8r+ITGq/i57RDT0nl4qaREjfc6DYXvpRvc2iuDPh1DFZf/twgPdypKPU8TSrOXm4vd1/USRMz+
 AmuDy2mjOnzuo99nW+wUSzK/R5kQUqKnPotRm/EberKTarX0=
X-Received: by 2002:a17:90b:3653:: with SMTP id
 nh19mr149401pjb.154.1585118395361; 
 Tue, 24 Mar 2020 23:39:55 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtDCyUBDVvdOTPlz+d8xy5xLrtQ01jfAkPuGHdyrUmuN5as73UJTMJivR3g7I3qrCzNEoprkQ==
X-Received: by 2002:a17:90b:3653:: with SMTP id
 nh19mr149376pjb.154.1585118394965; 
 Tue, 24 Mar 2020 23:39:54 -0700 (PDT)
Received: from [192.168.1.208] (220-133-187-190.HINET-IP.hinet.net.
 [220.133.187.190])
 by smtp.gmail.com with ESMTPSA id e126sm17474185pfa.122.2020.03.24.23.39.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 24 Mar 2020 23:39:54 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <2c765c59-556e-266b-4d0d-a4602db94476@intel.com>
Date: Wed, 25 Mar 2020 14:39:51 +0800
Message-Id: <206441A5-70CF-4F34-93B2-90F4A846BF4E@canonical.com>
References: <20200323191639.48826-1-aaron.ma@canonical.com>
 <EC4F7F0B-90F8-4325-B170-84C65D8BBBB8@canonical.com>
 <2c765c59-556e-266b-4d0d-a4602db94476@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>
X-Mailer: Apple Mail (2.3608.60.0.2.5)
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: bump up timeout to wait when
 ME un-configure ULP mode
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
Cc: "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Aaron Ma <aaron.ma@canonical.com>, David Miller <davem@davemloft.net>,
 rex.tsai@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Sasha,

> On Mar 25, 2020, at 14:36, Neftin, Sasha <sasha.neftin@intel.com> wrote:
> 
> On 3/25/2020 06:17, Kai-Heng Feng wrote:
>> Hi Aaron,
>>> On Mar 24, 2020, at 03:16, Aaron Ma <aaron.ma@canonical.com> wrote:
>>> 
>>> ME takes 2+ seconds to un-configure ULP mode done after resume
>>> from s2idle on some ThinkPad laptops.
>>> Without enough wait, reset and re-init will fail with error.
>> Thanks, this patch solves the issue. We can drop the DMI quirk in favor of this patch.
>>> 
>>> Fixes: f15bb6dde738cc8fa0 ("e1000e: Add support for S0ix")
>>> BugLink: https://bugs.launchpad.net/bugs/1865570
>>> Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
>>> ---
>>> drivers/net/ethernet/intel/e1000e/ich8lan.c | 4 ++--
>>> 1 file changed, 2 insertions(+), 2 deletions(-)
>>> 
>>> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
>>> index b4135c50e905..147b15a2f8b3 100644
>>> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
>>> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
>>> @@ -1240,9 +1240,9 @@ static s32 e1000_disable_ulp_lpt_lp(struct e1000_hw *hw, bool force)
>>> 			ew32(H2ME, mac_reg);
>>> 		}
>>> 
>>> -		/* Poll up to 300msec for ME to clear ULP_CFG_DONE. */
>>> +		/* Poll up to 2.5sec for ME to clear ULP_CFG_DONE. */
>>> 		while (er32(FWSM) & E1000_FWSM_ULP_CFG_DONE) {
>>> -			if (i++ == 30) {
>>> +			if (i++ == 250) {
>>> 				ret_val = -E1000_ERR_PHY;
>>> 				goto out;
>>> 			}
>> The return value was not caught by the caller, so the error ends up unnoticed.
>> Maybe let the caller check the return value of e1000_disable_ulp_lpt_lp()?
>> Kai-Heng
> Hello Kai-Heng and Aaron,
> I a bit confused. In our previous conversation you told ME not running.

Yes I can confirm Intel AMT is disabled BIOS menu. I think Intel AMT is ME in this context?

How do I check if it's really disabled under Linux?

Kai-Heng

> let me shimming in. Increasing delay won't be solve the problem and just mask it. We need to understand why ME take too much time. What is problem with this specific system?
> So, basically no ME system should works for you.
> 
> Meanwhile I prefer keep DMI quirk.
> Thanks,
> Sasha
>>> -- 
>>> 2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
