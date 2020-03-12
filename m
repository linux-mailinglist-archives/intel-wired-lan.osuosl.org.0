Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D067018267C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Mar 2020 02:07:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 520F58615E;
	Thu, 12 Mar 2020 01:07:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NKnFeTlRcVez; Thu, 12 Mar 2020 01:07:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 47DC086224;
	Thu, 12 Mar 2020 01:07:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DEAC41BF473
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 01:07:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D5146889B7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 01:07:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3SsWOvLEchOV for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Mar 2020 01:07:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 48E4188788
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2020 01:07:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 18:07:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,542,1574150400"; d="scan'208";a="389444276"
Received: from jekeller-mobl1.amr.corp.intel.com (HELO [134.134.177.106])
 ([134.134.177.106])
 by orsmga004.jf.intel.com with ESMTP; 11 Mar 2020 18:07:36 -0700
To: Jakub Kicinski <kuba@kernel.org>
References: <20200311213319.783841-1-jacob.e.keller@intel.com>
 <20200311213319.783841-8-jacob.e.keller@intel.com>
 <20200311165057.3f69e090@kicinski-fedora-PC1C0HJN>
From: Jacob Keller <jacob.e.keller@intel.com>
Organization: Intel Corporation
Message-ID: <a4fd8740-54f0-0e83-7aba-aad715fc2af1@intel.com>
Date: Wed, 11 Mar 2020 18:07:36 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200311165057.3f69e090@kicinski-fedora-PC1C0HJN>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH 7/8] ice: add basic handler for
 devlink .info_get
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
Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 3/11/2020 4:50 PM, Jakub Kicinski wrote:
> On Wed, 11 Mar 2020 14:33:18 -0700 Jacob Keller wrote:
>> +    * - ``fw.bundle``
>> +      - running
>> +      - 0x80002ec0
>> +      - Unique identifier of the firmware image file that was loaded onto
>> +        the device. Also referred to as the EETRACK identifier of the NVM.
> 
> Ugh, I think I mislead you in the previous discussion..
> 
> Could you s/fw.bundle/fw.bundle_id/ and make it generic? NFP has the
> "_id" at the end which I clearly forgot about..
> 

Sure thing, I hadn't noticed that either. Will do.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
