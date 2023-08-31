Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 453EA78ED9F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Aug 2023 14:51:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BECBE83486;
	Thu, 31 Aug 2023 12:50:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BECBE83486
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693486258;
	bh=h6l0Er3uuv+co8nXA6brGYu9fJF5RddKnmr5LFM+f9Y=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=73lzKvHYB49RgyBYU2+kUPeBDtyXpEEgkNGwORUEeAom78uTLVE327VP+rPRQ/6pn
	 e+MAersPnNZMWW7hTkmx8v1JG+37kINOpvJoOY3CRXcAjS67JxK/t615jKrDkkjC/5
	 PQP0/vazsBUbCoRUw0CmHU9CFZ1QK9HoE703UmALuNBRpZigwZzUg26rawsJKiMlj3
	 k5GJTgKfGE32KQxZD2wV3uAtQLGVB7pxiETICfsQr/0WDD+gH0Ly0mgaASodLWihRO
	 hevjOlhLuxihci7pax7Za6S4yVJI2RnzbHl7YGlHAaG4P8pWYaBMAXrlGdJV1gPvmL
	 KfJ7w4b4u8X8Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lslKXJTM6bPl; Thu, 31 Aug 2023 12:50:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B02198343B;
	Thu, 31 Aug 2023 12:50:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B02198343B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0690B1BF3D1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Aug 2023 12:50:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 938FD8343B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Aug 2023 12:50:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 938FD8343B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9OLCHfVKCY-p for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Aug 2023 12:50:51 +0000 (UTC)
Received: from out-244.mta1.migadu.com (out-244.mta1.migadu.com
 [IPv6:2001:41d0:203:375::f4])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ABF3483437
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Aug 2023 12:50:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ABF3483437
Message-ID: <f7c7aeb7-c43a-23c0-1c93-2bcb79d4d689@linux.dev>
Date: Thu, 31 Aug 2023 08:50:42 -0400
MIME-Version: 1.0
Content-Language: en-US
To: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>,
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Alexander Duyck
 <alexander.duyck@gmail.com>, "Rustad, Mark D" <mark.d.rustad@intel.com>,
 Darin Miller <darin.j.miller@intel.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Richard Cochran <richardcochran@gmail.com>
References: <20230823221537.816541-1-vadim.fedorenko@linux.dev>
 <BL0PR11MB3122FF925838E8F850787467BDE5A@BL0PR11MB3122.namprd11.prod.outlook.com>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <BL0PR11MB3122FF925838E8F850787467BDE5A@BL0PR11MB3122.namprd11.prod.outlook.com>
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1693486247;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rBzsFF9Aekog2IqwVNJElwdWwC36Gc+4PxmW8O3uWXA=;
 b=Qel81u6H0iUgB/UTe9FW3bsMg+TNKvOTmwI48o2fEjQKmJEqgM9WLUXzL5iWMEoMrxPzsF
 A3XwLPIi/vfYUGuqka6ALU6HUEh+cgi5+aFY7li9i72ZnXjVlxU8rFWRmshCXCd4r0hKax
 g9gDSyHsL/81OkrezYOTFXVaovJnEUM=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=Qel81u6H
Subject: Re: [Intel-wired-lan] [PATCH net] ixgbe: fix timestamp
 configuration code
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
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 31/08/2023 06:18, Pucha, HimasekharX Reddy wrote:
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Vadim Fedorenko
>> Sent: Thursday, August 24, 2023 3:46 AM
>> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Jakub Kicinski <kuba@kernel.org>; Alexander Duyck <alexander.duyck@gmail.com>; Rustad, Mark D <mark.d.rustad@intel.com>; Darin Miller <darin.j.miller@intel.com>; Jeff Kirsher <jeffrey.t.kirsher@intel.com>; Richard Cochran <richardcochran@gmail.com>
>> Cc: netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org; Vadim Fedorenko <vadim.fedorenko@linux.dev>
>> Subject: [Intel-wired-lan] [PATCH net] ixgbe: fix timestamp configuration code
>>
>> The commit in fixes introduced flags to control the status of hardware
>> configuration while processing packets. At the same time another structure
>> is used to provide configuration of timestamper to user-space applications.
>> The way it was coded makes this structures go out of sync easily. The
>> repro is easy for 82599 chips:
>>
>> [root@hostname ~]# hwstamp_ctl -i eth0 -r 12 -t 1
>> current settings:
>> tx_type 0
>> rx_filter 0
>> new settings:
>> tx_type 1
>> rx_filter 12
>>
>> The eth0 device is properly configured to timestamp any PTPv2 events.
>>
>> [root@hostname ~]# hwstamp_ctl -i eth0 -r 1 -t 1
>> current settings:
>> tx_type 1
>> rx_filter 12
>> SIOCSHWTSTAMP failed: Numerical result out of range
>> The requested time stamping mode is not supported by the hardware.
>>
>> The error is properly returned because HW doesn't support all packets
>> timestamping. But the adapter->flags is cleared of timestamp flags
>> even though no HW configuration was done. From that point no RX timestamps
>> are received by user-space application. But configuration shows good
>> values:
>>
>> [root@hostname ~]# hwstamp_ctl -i eth0
>> current settings:
>> tx_type 1
>> rx_filter 12
>>
>> Fix the issue by applying new flags only when the HW was actually
>> configured.
>>
>> Fixes: a9763f3cb54c ("ixgbe: Update PTP to support X550EM_x devices")
>> Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>> ---
>>   drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c | 28 +++++++++++---------
>>   1 file changed, 15 insertions(+), 13 deletions(-)
>>
> 
> Hi,
> With patch also we are observing same issue.

Hi,

What kind of issue do you observe? The hardware doesn't support
timestamping of all packets. The issue this patch fixes is that
after failed attempt to setup the timestamping of all RX packets,
the driver stops reading timestamps at all even though it reports
that timestamping of PTP RX packets is enabled.

> 
> # ./hwstamp_ctl -i eth10
> current settings:
> tx_type 1
> rx_filter 12
> # ./hwstamp_ctl -i eth10 -r 1 -t 1
> current settings:
> tx_type 1
> rx_filter 12
> SIOCSHWTSTAMP failed: Numerical result out of range
> The requested time stamping mode is not supported by the hardware.
> 
> Adapter details: Niantic (Spring Fountain)
> 
> SUT info:
> H/W:
>    Manufacturer: Intel Corporation
>    Product Name: S2600STQ
>    RAM: [62G/8G/49G]
>    CPU: Intel(R) Xeon(R) Platinum 8180 CPU @ 2.50GHz [112/112]
>    PF bus-info: 0000:d8:00.1 0x8086:0x10fb 0x8086 0x000c (0x01)
> S/W:
>    OS: "Red Hat Enterprise Linux 8.6 (Ootpa)" 6.5.0-rc7_next-queue_28-Aug-2023-01755-g938672aefaeb
>    CMD: BOOT_IMAGE=(hd0,msdos2)/vmlinuz-6.5.0-rc7_next-queue_28-Aug-2023-01755-g938672aefaeb root=/dev/mapper/rhel_os--delivery-root ro crashkernel=1G-4G:192M,4G-64G:256M,64G-:512M resume=/dev/mapper/rhel_os--delivery-swap rd.lvm.lv=rhel_os-delivery/root rd.lvm.lv=rhel_os-delivery/swap selinux=0 biosdevname=0 net.ifnames=0 rhgb quiet
>    FW firmware-version: 0x000161bf
>    PF version: 6.5.0-rc7_next-queue_28-Aug-202
> 
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
