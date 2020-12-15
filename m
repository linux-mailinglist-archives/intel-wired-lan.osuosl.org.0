Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A9B2DADEB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Dec 2020 14:23:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8141786DB0;
	Tue, 15 Dec 2020 13:23:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9f4r1zQz3BbZ; Tue, 15 Dec 2020 13:23:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4696486D8D;
	Tue, 15 Dec 2020 13:23:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1CE7A1BF2EA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Dec 2020 13:23:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 182C386D63
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Dec 2020 13:23:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xdlB7FyLp0HX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Dec 2020 13:23:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3609C86CD1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Dec 2020 13:23:10 +0000 (UTC)
IronPort-SDR: ffHwDGQNdlO1Ydr6gY9lb1hMUudVziQZpljHHAlUsH7n0mCIZqaEZoKFyE/bhVZGT8umajI002
 HoGPQWqnP2KA==
X-IronPort-AV: E=McAfee;i="6000,8403,9835"; a="193246989"
X-IronPort-AV: E=Sophos;i="5.78,421,1599548400"; d="scan'208";a="193246989"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2020 05:23:10 -0800
IronPort-SDR: jYmIOmy2/eGcHbaXjy4lRHBnOB0tckkaipLHd0Uhi2AxjwWMckjQHd0e2mkTAObhyfwBpOvCJb
 mIkGOifN5KUg==
X-IronPort-AV: E=Sophos;i="5.78,421,1599548400"; d="scan'208";a="411927717"
Received: from sneftin-mobl.ger.corp.intel.com (HELO [10.214.238.87])
 ([10.214.238.87])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2020 05:23:04 -0800
To: Mark Pearson <markpearson@lenovo.com>,
 Mario Limonciello <mario.limonciello@dell.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 David Miller <davem@davemloft.net>, Aaron Ma <aaron.ma@canonical.com>
References: <20201214153450.874339-1-mario.limonciello@dell.com>
 <80862f70-18a4-4f96-1b96-e2fad7cc2b35@redhat.com>
 <PS2PR03MB37505A15D3C9B7505D679D7BBDC70@PS2PR03MB3750.apcprd03.prod.outlook.com>
 <ae436f90-45b8-ba70-be57-d17641c4f79d@lenovo.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <18c1c152-9298-a4c5-c4ed-92c9fd91ea8a@intel.com>
Date: Tue, 15 Dec 2020 15:23:01 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <ae436f90-45b8-ba70-be57-d17641c4f79d@lenovo.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] Fw: [External] Re: [PATCH v4 0/4] Improve
 s0ix flows for systems i219LM
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
Cc: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>, Netdev <netdev@vger.kernel.org>,
 "Perry.Yuan@dell.com" <Perry.Yuan@dell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "anthony.wong@canonical.com" <anthony.wong@canonical.com>,
 "Yijun.Shen@dell.com" <Yijun.Shen@dell.com>, "Efrati,
 Nir" <nir.efrati@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Stefan Assmann <sassmann@redhat.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/14/2020 20:40, Mark Pearson wrote:
> Thanks Hans
> 
> On 14/12/2020 13:31, Mark Pearson wrote:
>>
>>
>> ------------------------------------------------------------------------
>> *From:* Hans de Goede <hdegoede@redhat.com>
>> *Sent:* December 14, 2020 13:24
>> *To:* Mario Limonciello <mario.limonciello@dell.com>; Jeff Kirsher
>> <jeffrey.t.kirsher@intel.com>; Tony Nguyen <anthony.l.nguyen@intel.com>;
>> intel-wired-lan@lists.osuosl.org <intel-wired-lan@lists.osuosl.org>;
>> David Miller <davem@davemloft.net>; Aaron Ma <aaron.ma@canonical.com>;
>> Mark Pearson <mpearson@lenovo.com>
>> *Cc:* linux-kernel@vger.kernel.org <linux-kernel@vger.kernel.org>;
>> Netdev <netdev@vger.kernel.org>; Alexander Duyck
>> <alexander.duyck@gmail.com>; Jakub Kicinski <kuba@kernel.org>; Sasha
>> Netfin <sasha.neftin@intel.com>; Aaron Brown <aaron.f.brown@intel.com>;
>> Stefan Assmann <sassmann@redhat.com>; darcari@redhat.com
>> <darcari@redhat.com>; Yijun.Shen@dell.com <Yijun.Shen@dell.com>;
>> Perry.Yuan@dell.com <Perry.Yuan@dell.com>; anthony.wong@canonical.com
>> <anthony.wong@canonical.com>
>> *Subject:* [External] Re: [PATCH v4 0/4] Improve s0ix flows for systems
>> i219LM
>>   
>> Hi All,
>>
> <snip>
>>
>> ###
>>
>> I've added Mark Pearson from Lenovo to the Cc so that Lenovo
>> can investigate this issue further.
>>
>> Mark, this thread is about an issue with enabling S0ix support for
>> e1000e (i219lm) controllers. This was enabled in the kernel a
>> while ago, but then got disabled again on vPro / AMT enabled
>> systems because on some systems (Lenovo X1C7 and now also X1C8)
>> this lead to suspend/resume issues.
>>
>> When AMT is active then there is a handover handshake for the
>> OS to get access to the ethernet controller from the ME. The
>> Intel folks have checked and the Windows driver is using a timeout
>> of 1 second for this handshake, yet on Lenovo systems this is
>> taking 2 seconds. This likely has something to do with the
>> ME firmware on these Lenovo models, can you get the firmware
>> team at Lenovo to investigate this further ?
> Absolutely - I'll ask them to look into this again.
> 
we need to explain why on Windows systems required 1s and on Linux 
systems up to 2.5s - otherwise it is not reliable approach - you will 
encounter others buggy system.
(ME not POR on the Linux systems - is only one possible answer)
> We did try to make progress with this previously - but it got a bit
> stuck and hence the need for these patches....but I believe things may
> have changed a bit so it's worth trying again
> 
> Mark
> 
Sasha
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
