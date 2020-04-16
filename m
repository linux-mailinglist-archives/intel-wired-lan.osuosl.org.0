Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF821ACF50
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2020 20:05:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0394D85E0B;
	Thu, 16 Apr 2020 18:05:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xhk0f_QazkBF; Thu, 16 Apr 2020 18:05:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4494C85785;
	Thu, 16 Apr 2020 18:05:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0FCA91BF33B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2020 18:04:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 07C3685319
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2020 18:04:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bVEFAphnJVxV for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Apr 2020 18:04:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 15D52851A4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2020 18:04:45 +0000 (UTC)
IronPort-SDR: OrgCJXGS5yUl+IUH5A3xh08R9sD0IqibQxYtchKXXQ37Sc8EEKasMToe7hWpydpxtoMTU2HJkT
 FlDjt+IEYEiw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2020 11:04:44 -0700
IronPort-SDR: LNaPg35OC5uRZ0OIjRARgb0cVL8eDW3Z9A8KHn8cixE1uZZMh+i1Hi7UcnZ9tv7gFXxQReiRYD
 ADTwNgxhpiNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,391,1580803200"; d="scan'208";a="400758680"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.251.162.29])
 ([10.251.162.29])
 by orsmga004.jf.intel.com with ESMTP; 16 Apr 2020 11:04:42 -0700
To: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>,
 Andrew Melnichenko <andrew@daynix.com>,
 "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
References: <CABcq3pESeM2aF=HP-j4-iu2fwaxF7+mr65zTgFaBK8prmu+srw@mail.gmail.com>
 <61CC2BC414934749BD9F5BF3D5D940449863D544@ORSMSX112.amr.corp.intel.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <1d6ca38c-13f8-9478-b746-0bf3dff08be6@intel.com>
Date: Thu, 16 Apr 2020 21:04:41 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <61CC2BC414934749BD9F5BF3D5D940449863D544@ORSMSX112.amr.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] Pls provide some advice - e1000e Linux link
 down
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
Cc: intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 4/16/2020 19:16, Kirsher, Jeffrey T wrote:
>> From: Andrew Melnichenko <andrew@daynix.com>
>> Sent: Saturday, April 11, 2020 12:56
>> To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>
>> Subject: Pls provide some advice - e1000e Linux link down
>>
>> Yo,
>> I'm a humble linux developer, currently I'm researching the issue with e1000e driver that can't handle "link down" on Linux guest(https://bugzilla.redhat.com/show_bug.cgi?id=1707441).
>> For now I've found that qemu can't raise LSC interrupts. But, on Windows guests the issue doesn't reproduce.
>> I've researched spec and the driver and for now, my main suspicion is still the issue in qemu and I have few hacks for "fixing".
>> But because on Windows guests that issue wasn't reproduced and I don't have a "real" device - I have a question:
>> Does "real" e1000e with Linux driver detect cable removing?
Definitely - LSC detected by watchdog.Should I look more the driver?
Please, try work with latest stable version from kernel.org. (any 
restrictions?)
>> Currently I have one hack for the driver that would "fix" the issue(small differences in interrupt clearing).
> 
> Adding the e1000e developers and the Intel Wired LAN mailing list...
> 
Hello Andrew,
Did you reproduced this problem on the latest stable version from 
kernel.org? I wonder if it only "qemu" problem. Looks as wrong 
representation in /sys/class/net/$nic/operstate

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
