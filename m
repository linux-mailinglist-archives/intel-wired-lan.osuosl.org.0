Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD8F7543D1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jul 2023 22:36:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 87A0A41944;
	Fri, 14 Jul 2023 20:36:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 87A0A41944
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689366967;
	bh=QWLzFPWIZHGcFncvGDiCqM73L4OQjvmK5VD7Gc+h15g=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DKCNyHpeJHKc8RiJ9e57ynOj8POITZjnVIeYxCZ91c8I+cPBNwuFsoZAhPfIuAZgQ
	 wg7GwnbgF70aHYOOKg3bNgP00KmPY0brTi7N0dUt/7n8kI7djiHHnzrNl6Z4K+nmKI
	 1VOqb6eLvJ53T9Arqp6WLr6GDEffmfCdzHJUufu1x8pkeyMOwoK6ZwTKo1570MpAMi
	 u2CX/zm1XA+JV6+MRIGTUcmeVoFbH3M/khI7xwLeUUZqbo4WEMM1SoY/VOHEcqL4vX
	 g+7BbJNyMPP5nBTTDcOLHvAHYnafuhXsEI1snRtQ3+xx0O89ZE9c0Qfqa4IjWs/rcY
	 f5CNZ5XlgUBAQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zedlYKPjQOpm; Fri, 14 Jul 2023 20:36:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 373764191A;
	Fri, 14 Jul 2023 20:36:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 373764191A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3C3131BF3EF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jul 2023 20:36:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7A06F4193E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jul 2023 20:36:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7A06F4193E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mrVCZxmZ6SPB for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jul 2023 20:35:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E4AC941927
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E4AC941927
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jul 2023 20:35:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10771"; a="431749278"
X-IronPort-AV: E=Sophos;i="6.01,206,1684825200"; d="scan'208";a="431749278"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2023 13:35:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10771"; a="1053197010"
X-IronPort-AV: E=Sophos;i="6.01,206,1684825200"; d="scan'208";a="1053197010"
Received: from jkchitra-mobl1.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.209.5.179])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2023 13:35:56 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Bjorn Helgaas <helgaas@kernel.org>, Kai-Heng Feng
 <kai.heng.feng@canonical.com>
In-Reply-To: <20230714145445.GA354014@bhelgaas>
References: <20230714145445.GA354014@bhelgaas>
Date: Fri, 14 Jul 2023 13:35:55 -0700
Message-ID: <874jm6nsd0.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689366958; x=1720902958;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=zDj72u9E9a3wZCG32UrWexGXSZP8EqG3M+2b/gTOMaY=;
 b=d4zUPIa6tE0doq0jVFhKGkM+fa86i7T8mQecal3NgcL7bBmPgd9xovmU
 ZL8MoUEKkCkZP0dyHyjZIYl7IbFtPRpX5huyrclMBK0Ublg8XfqKbMHCg
 aCf0nzPQaS5K6nGjRX6GxXqXW8xzFYh5Z/uksVgPacXlnCthKsRjI7eLj
 U2RNylrq6tYAAhuHTdguqgVgfTb21rcz5wFE9Wbg54nOLBB6NFI+E/qq3
 bbhx+xRiq+EAX8ta1Q5SSUUZegEyIwkfX3bzt4EMEia39DMdh8OkpSp1i
 Ur8xU3FekS0d77Vx+0O192ldrvGPG6pW5f7BGKpmBLjgQqbiLnnP6FyGm
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=d4zUPIa6
Subject: Re: [Intel-wired-lan] [PATCH v2] igc: Ignore AER reset when device
 is suspended
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
Cc: Tony Luck <tony.luck@intel.com>, Kees Cook <keescook@chromium.org>,
 linux-pci@vger.kernel.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, "Guilherme G . Piccoli" <gpiccoli@igalia.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, linux-hardening@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Bjorn Helgaas <helgaas@kernel.org> writes:

> On Fri, Jul 14, 2023 at 01:05:41PM +0800, Kai-Heng Feng wrote:
>> When a system that connects to a Thunderbolt dock equipped with I225,
>> like HP Thunderbolt Dock G4, I225 stops working after S3 resume:
>> ...
>
>> The issue is that the PTM requests are sending before driver resumes the
>> device. Since the issue can also be observed on Windows, it's quite
>> likely a firmware/hardware limitation.
>
> Does this mean we didn't disable PTM correctly on suspend?  Or is the
> device defective and sending PTM requests even though PTM is disabled?
>

The way I understand the hardware bug, the device is defective, as you
said, the device sends PTM messages when "busmastering" is disabled.

> If the latter, I vote for a quirk that just disables PTM completely
> for this device.
>

My suggestion is that adding this quirk would be a last resort kind of
thing. There are users/customers that depend on the increased time
synchronization accuracy that PTM provides.

> This check in .error_detected() looks out of place to me because
> there's no connection between AER and PTM, there's no connection
> between PTM and the device being enabled, and the connection between
> the device being enabled and being fully resumed is a little tenuous.
>
> If we must do it this way, maybe add a comment about *why* we're
> checking pci_is_enabled().  Otherwise this will be copied to other
> drivers that don't need it.

Makes total sense, from my side.

>
>> So avoid resetting the device if it's not resumed. Once the device is
>> fully resumed, the device can work normally.
>> 
>> Link: https://bugzilla.kernel.org/show_bug.cgi?id=216850
>> Reviewed-by: Guilherme G. Piccoli <gpiccoli@igalia.com>
>> Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
>> 
>> ---
>> v2:
>>  - Fix typo.
>>  - Mention the product name.
>> 
>>  drivers/net/ethernet/intel/igc/igc_main.c | 3 +++
>>  1 file changed, 3 insertions(+)
>> 
>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
>> index 9f93f0f4f752..8c36bbe5e428 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> @@ -7115,6 +7115,9 @@ static pci_ers_result_t igc_io_error_detected(struct pci_dev *pdev,
>>  	struct net_device *netdev = pci_get_drvdata(pdev);
>>  	struct igc_adapter *adapter = netdev_priv(netdev);
>>  
>> +	if (!pci_is_enabled(pdev))
>> +		return 0;
>> +
>>  	netif_device_detach(netdev);
>>  
>>  	if (state == pci_channel_io_perm_failure)
>> -- 
>> 2.34.1
>> 
>

-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
