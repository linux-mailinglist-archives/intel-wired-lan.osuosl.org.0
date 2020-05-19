Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A89F1D9C1C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2020 18:11:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BFB3422CB0;
	Tue, 19 May 2020 16:11:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fYCwvqEDrJez; Tue, 19 May 2020 16:11:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E206222D44;
	Tue, 19 May 2020 16:11:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CFE2F1BF28D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 16:11:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C8F8C8872E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 16:11:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8lJa3qEreIQJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2020 16:11:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1F7808870B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 16:11:09 +0000 (UTC)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04JGB680019838;
 Tue, 19 May 2020 11:11:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1589904666;
 bh=9PSNrF+ZsrRDAVKY+XCrhqveSnWUlPgRwbE4gSyrvoY=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=CbObd3zbfonpCVRCA3+R8KRXbLaISHzZFzsc3bw+bpERcbNAr+gQ/u5NmcrSzDaYv
 If/qGeWAp441XtjBNCNvIXGct+8nwfotaQoDCmabPTcHmufU0d4l4ljSfmSLbCqPAz
 JfmemVJbfcSOecixI8BCxt3KPeni+gTDVXxlEal8=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04JGB6Qq105476
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 19 May 2020 11:11:06 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 19
 May 2020 11:11:06 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 19 May 2020 11:11:06 -0500
Received: from [10.250.74.234] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04JGB5tT065261;
 Tue, 19 May 2020 11:11:05 -0500
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20200516012948.3173993-1-vinicius.gomes@intel.com>
 <b33e582f-e0e6-467a-636a-674322108855@ti.com> <87v9ksndnr.fsf@intel.com>
From: Murali Karicheri <m-karicheri2@ti.com>
Message-ID: <a6c28ef7-59ae-94d8-a12a-1c6a821dc330@ti.com>
Date: Tue, 19 May 2020 12:11:05 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <87v9ksndnr.fsf@intel.com>
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
Cc: Jose.Abreu@synopsys.com, netdev@vger.kernel.org, po.liu@nxp.com,
 vladimir.oltean@nxp.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Vinicius,

On 5/19/20 11:32 AM, Vinicius Costa Gomes wrote:
> Murali Karicheri <m-karicheri2@ti.com> writes:
> 
>>> $ ethtool $ sudo ./ethtool --show-frame-preemption enp3s0
>>> Frame preemption settings for enp3s0:
>>> 	support: supported
>>> 	active: active
>>> 	supported queues: 0xf
>>
>> I assume this is will be in sync with ethtool -L output which indicates
>> how many tx h/w queues present? I mean if there are 8 h/w queues,
>> supported queues will show 0xff.
> 
> In this approach, the driver builds these bitmasks, so it's responsible
> to keep it consistent with the rest of the stuff that's exposed in
> ethtool.
Agree
> 
>>
>>> 	supported queues: 0xe
>>   From the command below, it appears this is the preemptible queue mask.
>> bit 0  is Q0, bit 1 Q1 and so forth. Right? In that case isn't it more
>> clear to display
>>           preemptible queues : 0xef
>>
>> In the above Q7 is express queue and Q6-Q0 are preemptible.
> 
> In my case, the controller I have here only has 4 queues, and Queue 0 is
> the highest priority one, and it's marked as express.
> 

Ok. So it is up to the device driver to manage this.

>>
>> Also there is a handshake called verify that happens which initiated
>> by the h/w to check the capability of peer. It looks like
>> not all vendor's hardware supports it and good to have it displayed
>> something like
>>
>>           Verify supported/{not supported}
>>
>> If Verify is supported, FPE is enabled only if it succeeds. So may be
>> good to show a status of Verify if it is supported something like
>>           Verify success/Failed
>>
>>> 	minimum fragment size: 68
>>>
>>>
>>> $ ethtool --set-frame-preemption enp3s0 fp on min-frag-size 68 preemptible-queues-mask 0xe
>>>
>>> This is a RFC because I wanted to have feedback on some points:
>>>
>>>     - The parameters added are enough for the hardware I have, is it
>>>       enough in general?
>>
>> As described above, it would be good to add an optional parameter for
>> verify
>>
>> ethtool --set-frame-preemption enp3s0 fp on min-frag-size 68
>> preemptible-queues-mask 0xe verify on
>>
> 
> The hardware I have do not support this, but this makes sense.

I can work to support this for TI AM65 CPSW once a formal patch is
available. AM65 CPSW supports Verify as an optional feature. H/w works
also in manual mode where it is assumed that it is connected to a
IET FPE capable partner, but can't do Verify.

Thanks for sending the RFC.

regards,

Murali
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
