Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 171E62DE9DC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Dec 2020 20:41:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C35F987BC7;
	Fri, 18 Dec 2020 19:41:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7fCYqn5p7XWx; Fri, 18 Dec 2020 19:41:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 08B2687BD6;
	Fri, 18 Dec 2020 19:41:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 67CDC1BF9B6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 19:41:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6366A87B38
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 19:41:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ySp7bzScwA4H for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Dec 2020 19:41:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail3.candelatech.com (mail2.candelatech.com [208.74.158.173])
 by hemlock.osuosl.org (Postfix) with ESMTP id A308287AC8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 19:41:49 +0000 (UTC)
Received: from [192.168.254.6] (unknown [50.46.158.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 154C613C2B0;
 Fri, 18 Dec 2020 11:41:48 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 154C613C2B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1608320509;
 bh=VBhBhWK+1LyRfw+uaRWZOR6ZdUMWpmPQJQMCg/APDN4=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=avmFG6UHhDJh3+6V5PGa26K88BYv0Vji2xupKWBseKCdrVfyC524zOpHkvpGbFvZp
 3bJxXWPuQUVLdcTGmi013k/h4zpgdE/ZsqpuajIj3AOz/d+ufrD1oWLQvaUUbCqdfh
 Uc8fVEfHi16bXDb6DdyEqGa86ieYn44NFOLt451A=
To: "Fujinaka, Todd" <todd.fujinaka@intel.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>
References: <7bb485c3-9556-d9f1-e70f-a4b3a05909c9@candelatech.com>
 <BYAPR11MB3606E48BA821185142354D67EFC30@BYAPR11MB3606.namprd11.prod.outlook.com>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <638c7cb6-9aaa-1365-a99a-9551c9d985b5@candelatech.com>
Date: Fri, 18 Dec 2020 11:41:48 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <BYAPR11MB3606E48BA821185142354D67EFC30@BYAPR11MB3606.namprd11.prod.outlook.com>
Content-Language: en-MW
Subject: Re: [Intel-wired-lan] 5.10.0 kernel regression for 2.5Gbps link
 negotiation?
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

That is going to be a bit painful to implement.

Any chance we can get a compile time option to enable 2.5 and 5Ghz by default,
with user option to disable those rates in case they find problems?

Thanks,
Ben

On 12/18/20 11:27 AM, Fujinaka, Todd wrote:
> Yes, and I'm plugging the hole in the README right now. Here's the proposed text:
> 
> Advertisements for 2.5G and 5G on the x550 were turned off by default due to
> interoperability issues with certain switches. To turn them back on, use
> 
> ethtool -s <ethX> advertise N
> 
> where N is a combination of the following.
> 
> 100baseTFull    0x008
> 1000baseTFull   0x020
> 2500baseTFull   0x800000000000
> 5000baseTFull   0x1000000000000
> 10000baseTFull  0x1000
> 
> For example, to turn on all modes:
> ethtool -s <ethX> advertise 0x1800000001028
> 
> For more details please see the ethtool man page.
> 
> Todd Fujinaka
> Software Application Engineer
> Data Center Group
> Intel Corporation
> todd.fujinaka@intel.com
> 
> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Ben Greear
> Sent: Friday, December 18, 2020 10:08 AM
> To: intel-wired-lan <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] 5.10.0 kernel regression for 2.5Gbps link negotiation?
> 
> Hello,
> 
> One of our users reports that our 5.10 kernel negotiates the 1/2.5/5/10g NIC to 1Gbps instead of 2.5Gbps.  Booting the 5.4 kernel shows 2.5Gbps as expected.
> 
> I have not yet tried to bisect this...is it a known issue?
> 
> Thanks,
> Ben
> 
> --
> Ben Greear <greearb@candelatech.com>
> Candela Technologies Inc  http://www.candelatech.com _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> 


-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
