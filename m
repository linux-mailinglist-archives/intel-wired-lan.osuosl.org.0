Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 097B1144BC1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Jan 2020 07:28:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 92BD62042B;
	Wed, 22 Jan 2020 06:28:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dIfMgNELxI7J; Wed, 22 Jan 2020 06:28:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 71F5E20784;
	Wed, 22 Jan 2020 06:28:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 91CC81BF59E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 06:28:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8D62D85F7F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 06:28:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m9nJvXNLtOqC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Jan 2020 06:28:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6757685F33
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 06:28:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 22:28:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,348,1574150400"; d="scan'208";a="399913166"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.185.23.132])
 ([10.185.23.132])
 by orsmga005.jf.intel.com with ESMTP; 21 Jan 2020 22:28:42 -0800
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20200120063350.36467-1-sasha.neftin@intel.com>
 <87o8uw31zr.fsf@linux.intel.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <545eced6-a1ef-185d-41a5-3289cc045107@intel.com>
Date: Wed, 22 Jan 2020 08:28:41 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <87o8uw31zr.fsf@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1] igc: Complete to commit Add basic
 skeleton for PTP
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

On 1/21/2020 23:59, Vinicius Costa Gomes wrote:
> Hi Sasha,
> 
> Sasha Neftin <sasha.neftin@intel.com> writes:
> 
>> commit 5f2958052c58 ("igc: Add basic skeleton for PTP")
>> Add ptp suspend method to the igc_shutdown.
> 
> I guess the commit message could use a bit more text, something like
> this:
> 
> "Commit 5f2958052c58 ("igc: Add basic skeleton for PTP") added basic
> support for PTP, what's missing is support for suspending. By cleaning
> the runtime storage for timestamp this avoids a possible invalid memory
> access when the system comes back from suspend."
Thanks Vinicius - I will extend the commit message in v2.
> 
> Apart from that, the code looks good.
> 
> Is this the only thing missing for suspend/resume to work? If so, that's
> cool :-)
> 
> 
> Cheers,
> --
> Vinicius
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
