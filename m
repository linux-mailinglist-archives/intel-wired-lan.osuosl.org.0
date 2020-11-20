Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2A42BB4C5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Nov 2020 20:07:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D073F8733E;
	Fri, 20 Nov 2020 19:07:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lu5Ecoxgi54x; Fri, 20 Nov 2020 19:07:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 311EA8732C;
	Fri, 20 Nov 2020 19:07:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0DEAF1BF2BC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Nov 2020 19:07:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E2E632E124
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Nov 2020 19:07:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5PoYzBAjxuL5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Nov 2020 19:07:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id C8FC32E114
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Nov 2020 19:07:28 +0000 (UTC)
IronPort-SDR: 864VpjFCMsi5FlFP+BXGjHPJ8MCcfAL6R7vN5VoMVapGXePFm92NOY69mcHJx7fpCqpJ1QKEez
 /8W4WmlzPOdw==
X-IronPort-AV: E=McAfee;i="6000,8403,9811"; a="158566085"
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="158566085"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 11:07:27 -0800
IronPort-SDR: AsRrJPokzC90Pm0ifA4RIAi1RGX7TZd6txpeqY2EQgu+LwCI0I3uPN7WpmslQ6e3Fr6bVt2Mkp
 8jPx+q4L59DQ==
X-IronPort-AV: E=Sophos;i="5.78,357,1599548400"; d="scan'208";a="545552447"
Received: from deeppate-mobl1.amr.corp.intel.com (HELO ellie) ([10.212.22.160])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 11:07:26 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
In-Reply-To: <20201118075534.2a5e63c4@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
References: <20201114025704.GA15240@hoboy.vegasvil.org>
 <874klo7pwp.fsf@intel.com> <20201117014926.GA26272@hoboy.vegasvil.org>
 <87d00b5uj7.fsf@intel.com>
 <20201118075534.2a5e63c4@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
Date: Fri, 20 Nov 2020 11:07:21 -0800
Message-ID: <87361326fq.fsf@intel.com>
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
Cc: andre.guedes@intel.com, linux-pci@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, bhelgaas@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Jakub,

Jakub Kicinski <kuba@kernel.org> writes:

> On Tue, 17 Nov 2020 17:21:48 -0800 Vinicius Costa Gomes wrote:
>> > Also, what is the point of providing time measurements every 1
>> > millisecond?  
>> 
>> I sincerely have no idea. I had no power on how the hardware was
>> designed, and how PTM was implemented in HW.
>
> Is the PTMed latency not dependent on how busy the bus is?
> That'd make 1ms more reasonable.

At least from the values of the registers I couldn't see any difference
if I was fully using the 2.5G ethernet link or not.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
