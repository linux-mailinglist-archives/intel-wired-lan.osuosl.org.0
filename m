Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C63FC27D2A1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Sep 2020 17:25:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 825BC8676A;
	Tue, 29 Sep 2020 15:25:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tnJCf6Oxjm9M; Tue, 29 Sep 2020 15:25:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 90DBA8675F;
	Tue, 29 Sep 2020 15:25:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 417711BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 15:25:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3B6E3870C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 15:25:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rtDbeXUtThDz for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Sep 2020 15:25:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 788DC870C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 15:25:32 +0000 (UTC)
Received: from mail-vk1-f200.google.com ([209.85.221.200])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <kai.heng.feng@canonical.com>) id 1kNHVS-0006Qa-V6
 for intel-wired-lan@lists.osuosl.org; Tue, 29 Sep 2020 15:25:31 +0000
Received: by mail-vk1-f200.google.com with SMTP id o68so817388vkd.17
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 08:25:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=YJDOPwQUzl5aSIpyid8tmCuVZNrqUshrbuqI3Y6AxoI=;
 b=qphSIaQ1RKb4mhgDw23fIZw15oob8JdJaCKQVk8UIxsOsEabxOYgtWuvP9KEyHwxdz
 vhicbpSxH1E2dC/OtppShSx8Va9clfIB2ffZbGym2g2nSuwEVx6H4wNMKPwbTvWXCZfO
 RnG8r0TzLCJU4AbzUhvBR970aM246PeLFX7aQFbdC6SIhD85dDBixQv7jnVICcvQ80qB
 iU8KymHbFqDVa6Uu7h8Ds4IwMLheoOM+IWNoP1AOy8FVbmns1WsFHQa2iWLfeCLl+Ymt
 6fbeR+OUZdN6vaHPYURBLLhPH7X7HjaZYDxEgo/uk8GRF9LwF0v6g0lvvNOu3kxoB5d5
 N/xw==
X-Gm-Message-State: AOAM532dfGnhur+rfaonTfnd481rU1STODPeL3FsC9zqHBWZzzVeYbRn
 NzhHa1qDZwisgiQ593RAmAnAgIgqnPGeOjseh+A/3rwVyasrTJDdqyRd9HVuaJUHjjszckn2rDY
 9EN/poTobxy43O4xduLERaGhVjmky9ZUc3MBydTr7F+D7/tE=
X-Received: by 2002:a17:902:fe81:b029:d2:abce:b4a8 with SMTP id
 x1-20020a170902fe81b02900d2abceb4a8mr2304082plm.38.1601386293132; 
 Tue, 29 Sep 2020 06:31:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxrCCa5RaHIsON8gEnR1qHlA1ARIYuyRtVUTojcdZiOG31oLvl0sOul+3XWh2o4kYD9RLsUfQ==
X-Received: by 2002:a17:902:fe81:b029:d2:abce:b4a8 with SMTP id
 x1-20020a170902fe81b02900d2abceb4a8mr2304033plm.38.1601386292592; 
 Tue, 29 Sep 2020 06:31:32 -0700 (PDT)
Received: from [192.168.1.208] (220-133-187-190.HINET-IP.hinet.net.
 [220.133.187.190])
 by smtp.gmail.com with ESMTPSA id g9sm5736914pfo.144.2020.09.29.06.31.29
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 29 Sep 2020 06:31:31 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.4\))
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <469c71d5-93ac-e6c7-f85c-342b0df78a45@intel.com>
Date: Tue, 29 Sep 2020 21:31:27 +0800
Message-Id: <30761C6B-28B8-4464-8615-55EF3E090E07@canonical.com>
References: <20200924164542.19906-1-kai.heng.feng@canonical.com>
 <20200928083658.8567-1-kai.heng.feng@canonical.com>
 <469c71d5-93ac-e6c7-f85c-342b0df78a45@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>
X-Mailer: Apple Mail (2.3608.120.23.2.4)
Subject: Re: [Intel-wired-lan] [PATCH v4] e1000e: Increase polling timeout
 on MDIC ready bit
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Sasha,

> On Sep 29, 2020, at 21:08, Neftin, Sasha <sasha.neftin@intel.com> wrote:
> 
> On 9/28/2020 11:36, Kai-Heng Feng wrote:
>> We are seeing the following error after S3 resume:
>> [  704.746874] e1000e 0000:00:1f.6 eno1: Setting page 0x6020
>> [  704.844232] e1000e 0000:00:1f.6 eno1: MDI Write did not complete
>> [  704.902817] e1000e 0000:00:1f.6 eno1: Setting page 0x6020
>> [  704.903075] e1000e 0000:00:1f.6 eno1: reading PHY page 769 (or 0x6020 shifted) reg 0x17
>> [  704.903281] e1000e 0000:00:1f.6 eno1: Setting page 0x6020
>> [  704.903486] e1000e 0000:00:1f.6 eno1: writing PHY page 769 (or 0x6020 shifted) reg 0x17
>> [  704.943155] e1000e 0000:00:1f.6 eno1: MDI Error
>> ...
>> [  705.108161] e1000e 0000:00:1f.6 eno1: Hardware Error
>> As Andrew Lunn pointed out, MDIO has nothing to do with phy, and indeed
>> increase polling iteration can resolve the issue.
>> This patch only papers over the symptom, as we don't really know the
>> root cause of the issue. The most possible culprit is Intel ME, which
>> may do its own things that conflict with software.
>> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
>> ---
>> v4:
>>  - States that this patch just papers over the symptom.
>> v3:
>>  - Moving delay to end of loop doesn't save anytime, move it back.
>>  - Point out this is quitely likely caused by Intel ME.
>> v2:
>>  - Increase polling iteration instead of powering down the phy.
>>  drivers/net/ethernet/intel/e1000e/phy.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>> diff --git a/drivers/net/ethernet/intel/e1000e/phy.c b/drivers/net/ethernet/intel/e1000e/phy.c
>> index e11c877595fb..e6d4acd90937 100644
>> --- a/drivers/net/ethernet/intel/e1000e/phy.c
>> +++ b/drivers/net/ethernet/intel/e1000e/phy.c
>> @@ -203,7 +203,7 @@ s32 e1000e_write_phy_reg_mdic(struct e1000_hw *hw, u32 offset, u16 data)
>>  	 * Increasing the time out as testing showed failures with
>>  	 * the lower time out
>>  	 */
>> -	for (i = 0; i < (E1000_GEN_POLL_TIMEOUT * 3); i++) {
>> +	for (i = 0; i < (E1000_GEN_POLL_TIMEOUT * 10); i++) {
> As we discussed (many threads) - AMT/ME systems not supported on Linux as properly. I do not think increasing polling iteration will solve the problem. Rather mask it.

I am aware of the status quo of no proper support on Intel ME. 

> I prefer you check option to disable ME vi BIOS on your system.

We can't ask user to change the BIOS to accommodate Linux. So before a proper solution comes out, masking the problem is good enough for me.
Until then, I'll carry it as a downstream distro patch.

Kai-Heng

>>  		udelay(50);
>>  		mdic = er32(MDIC);
>>  		if (mdic & E1000_MDIC_READY)
> Thanks,
> Sasha

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
