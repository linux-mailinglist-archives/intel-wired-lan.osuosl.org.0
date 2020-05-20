Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 610A01DC164
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2020 23:32:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 107938682C;
	Wed, 20 May 2020 21:32:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2KMr5OUyqjW3; Wed, 20 May 2020 21:32:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7463186969;
	Wed, 20 May 2020 21:32:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A19F71BF3F2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 21:32:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9C341889A3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 21:32:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TuTuMWhx37qJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 May 2020 21:32:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DD58588995
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 21:32:33 +0000 (UTC)
IronPort-SDR: BgkoioRIPdueuwr9+VunxvXv/ueUAaN3IWBAeSHYlJOBNuKh/SuvW2mTM31HfaqJwyQpeqF2Da
 b7I25Ylx6rrA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2020 14:32:32 -0700
IronPort-SDR: dwvjOkxGi/G1LDJCD15yko0ECXelnv6/ROMwP6ch4TrXjU7b6iC4UWDfoL/9eHHYw4CN9fKsV1
 WgaEv/bouwng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,415,1583222400"; d="scan'208";a="466679054"
Received: from alopezch-mobl.amr.corp.intel.com (HELO ellie) ([10.213.162.205])
 by fmsmga006.fm.intel.com with ESMTP; 20 May 2020 14:32:32 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Joergen Andreasen <joergen.andreasen@microchip.com>
In-Reply-To: <20200520125232.s3zrmlnesqjilcf6@soft-dev16>
References: <20200516012948.3173993-1-vinicius.gomes@intel.com>
 <158992799425.36166.17850279656312622646@twxiong-mobl.amr.corp.intel.com>
 <87y2pnmr83.fsf@intel.com> <20200520125232.s3zrmlnesqjilcf6@soft-dev16>
Date: Wed, 20 May 2020 14:32:31 -0700
Message-ID: <87blmimgwg.fsf@intel.com>
MIME-Version: 1.0
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
Cc: Jose.Abreu@synopsys.com, Andre Guedes <andre.guedes@intel.com>,
 netdev@vger.kernel.org, po.liu@nxp.com, m-karicheri2@ti.com,
 intel-wired-lan@lists.osuosl.org, vladimir.oltean@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Joergen Andreasen <joergen.andreasen@microchip.com> writes:

>> So I thought I was better to let the driver decide what values are
>> acceptable.
>> 
>> This is a good question for people working with other hardware.
>> 
>
> I think it's most intuitive to use the values for AddFragSize as described in
> 802.3br (N = 0, 1, 2, 3).
> You will anyway have to use one of these values when you want to expose the
> requirements of your receiver through LLDP.
>

Thanks. Seems that keeping this value restricted to multiples of 64 is
the way to go. Will fix for the next version of the series.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
