Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E221F1D9CE3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2020 18:34:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9F66587C30;
	Tue, 19 May 2020 16:34:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id osj7L71PWv9V; Tue, 19 May 2020 16:34:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B27F387834;
	Tue, 19 May 2020 16:34:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 278AF1BF3A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 16:34:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 232BD8683C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 16:34:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 984oqkg1bqpa for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2020 16:34:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7CE9887787
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 16:34:43 +0000 (UTC)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04JGYVRH038062;
 Tue, 19 May 2020 11:34:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1589906071;
 bh=/vOqGrqZKFEISSBDGaUAsu38PgJE2S0bQf4x+D43qGc=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=oS7HJU0w57Y720J+uVw+hhQwcf/pxqv8iCO/mP9lSKjM36MRjDOetWPjdDb3g/hdu
 06kGAQurGlp1gRWxO57EWDghp+AY0YFHPH/YpXAdOSBcXElnrnmAYTGPuUaKMwbWRO
 0MsSt57DwYXSIFSRibut8/AH29BH2AeD83ikwlfk=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04JGYVK3122996
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 19 May 2020 11:34:31 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 19
 May 2020 11:34:31 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 19 May 2020 11:34:31 -0500
Received: from [10.250.74.234] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04JGYUrS115717;
 Tue, 19 May 2020 11:34:30 -0500
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>, Jakub Kicinski
 <kuba@kernel.org>
References: <20200516012948.3173993-1-vinicius.gomes@intel.com>
 <20200516.133739.285740119627243211.davem@davemloft.net>
 <CA+h21hoNW_++QHRob+NbWC2k7y7sFec3kotSjTL6s8eZGGT+2Q@mail.gmail.com>
 <20200516.151932.575795129235955389.davem@davemloft.net>
 <87wo59oyhr.fsf@intel.com>
 <20200518135613.379f6a63@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <87h7wcq4nx.fsf@intel.com>
From: Murali Karicheri <m-karicheri2@ti.com>
Message-ID: <29959a1a-fc45-6870-fa11-311866b51aa0@ti.com>
Date: Tue, 19 May 2020 12:34:30 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <87h7wcq4nx.fsf@intel.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Subject: Re: [Intel-wired-lan] [next-queue RFC 0/4] ethtool: Add support for
 frame preemption
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
Cc: Jose.Abreu@synopsys.com, vladimir.oltean@nxp.com, po.liu@nxp.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, olteanv@gmail.com,
 David Miller <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/18/20 6:06 PM, Vinicius Costa Gomes wrote:
> Hi,
> 
> Jakub Kicinski <kuba@kernel.org> writes:
>>
>> Please take a look at the example from the cover letter:
>>
>> $ ethtool $ sudo ./ethtool --show-frame-preemption
>> enp3s0 Frame preemption settings for enp3s0:
>> 	support: supported
>> 	active: active
>> 	supported queues: 0xf
>> 	supported queues: 0xe
>> 	minimum fragment size: 68
>>
>> Reading this I have no idea what 0xe is. I have to go and query TC API
>> to see what priorities and queues that will be. Which IMHO is a strong
>> argument that this information belongs there in the first place.
> 
> That was the (only?) strong argument in favor of having frame preemption
> in the TC side when this was last discussed.
> 
> We can have a hybrid solution, we can move the express/preemptible per
> queue map to mqprio/taprio/whatever. And have the more specific
> configuration knobs, minimum fragment size, etc, in ethtool.

Isn't this a pure h/w feature? FPE is implemented at L2 and involves
fragments that are only seen by h/w and never at Linux network core
unlike IP fragments and is transparent to network stack. However it
enhances priority handling at h/w to the next level by pre-empting 
existing lower priority traffic to give way to express queue traffic
and improve latency. So everything happens in h/w. So ethtool makes
perfect sense here as it is a queue configuration. I agree with Vinicius
and Vladmir to support this in ethtool instead of TC.

Murali
> 
> What do you think?
> 
> 
> Cheers,
> 

-- 
Murali Karicheri
Texas Instruments
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
