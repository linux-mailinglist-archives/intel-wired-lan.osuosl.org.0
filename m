Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F05F52AFBCB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Nov 2020 01:38:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9394886CBF;
	Thu, 12 Nov 2020 00:38:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sTrISDoiJuOr; Thu, 12 Nov 2020 00:38:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B8F4586AD1;
	Thu, 12 Nov 2020 00:38:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 791981BF9B6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 00:38:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 60B1B20394
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 00:38:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F1XYBWOpAbpp for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Nov 2020 00:38:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id 391201FEF0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 00:38:27 +0000 (UTC)
IronPort-SDR: RFpr/3TP4FkbVG1M77/jd85PWYPi6wXkXRzMcVnBkDWc44V+BfoI2UD7scEs6+l3eEFAs4V0AY
 Nx5np3uFVCsw==
X-IronPort-AV: E=McAfee;i="6000,8403,9802"; a="254947227"
X-IronPort-AV: E=Sophos;i="5.77,471,1596524400"; d="scan'208";a="254947227"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2020 16:38:20 -0800
IronPort-SDR: +jynYNDeVo568Z4aC+hqE2ol7auSkKODpbRi6TeOFSWCcCCjnkWVKFbIQ17I7Lk0cNihWWJbkZ
 TXid8ZgaxYWw==
X-IronPort-AV: E=Sophos;i="5.77,471,1596524400"; d="scan'208";a="328306845"
Received: from fgueva1x-mobl.amr.corp.intel.com (HELO ellie) ([10.212.101.141])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2020 16:38:18 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Miroslav Lichvar <mlichvar@redhat.com>
In-Reply-To: <20201110180719.GA1559650@localhost>
References: <20201110061019.519589-1-vinicius.gomes@intel.com>
 <20201110061019.519589-4-vinicius.gomes@intel.com>
 <20201110180719.GA1559650@localhost>
Date: Wed, 11 Nov 2020 16:38:16 -0800
Message-ID: <87imab8l53.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH next-queue v2 3/3] igc: Add support
 for PTP getcrosststamp()
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
Cc: bhelgaas@google.com, linux-pci@vger.kernel.org, andre.guedes@intel.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

Miroslav Lichvar <mlichvar@redhat.com> writes:

> On Mon, Nov 09, 2020 at 10:10:19PM -0800, Vinicius Costa Gomes wrote:
>> i225 has support for PCIe PTM, which allows us to implement support
>> for the PTP_SYS_OFFSET_PRECISE ioctl(), implemented in the driver via
>> the getcrosststamp() function.
>
> Would it be possible to provide the PTM measurements with the
> PTP_SYS_OFFSET_EXTENDED ioctl instead of PTP_SYS_OFFSET_PRECISE?
>
> As I understand it, PTM is not cross timestamping. It's basically
> NTP over PCIe, which provides four timestamps with each "dialog". From
> the other constants added to the header file it looks like they could
> all be obtained and then they could be converted to the triplets
> returned by the EXTENDED ioctl.
>

There might be a problem, the PTM dialogs start from the device, the
protocol is more or less this:

 1. NIC sends "Request" message, takes T1 timestamp;
 2. Host receives "Request" message, takes T2 timestamp;
 3. Host sends "Response" message, takes T3 timestamp;
 4. NIC receives "Response" message, takes T4 timestamp;

So, T2 and T3 are "host" timestamps and T1 and T4 are NIC timestamps.

That means that the timestamps I have "as is" are a bit different than
the expectations of the EXTENDED ioctl().

Of course I could use T3 (as the "pre" timestamp), T4 as the device
timestamp, and calculate the delay[1], apply it to T3 and get something
T3' as the "post" timestamp (T3' = T3 + delay). But I feel that this
"massaging" would defeat the purpose of using the EXTENDED variant.

Does it make sense? Am I worrying too much?

[1] 
	delay = ((T4 - T1) - (T3 - T2)) / 2



Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
