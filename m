Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9143E22B27
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 May 2019 07:31:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 80707220CA;
	Mon, 20 May 2019 05:31:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UCnsdCKmSrBS; Mon, 20 May 2019 05:31:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8459F22115;
	Mon, 20 May 2019 05:31:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 846111BF4E5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 May 2019 05:31:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7FD03848C2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 May 2019 05:31:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id udy1lJ9kglP6 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 May 2019 05:31:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D5337848AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 May 2019 05:31:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 May 2019 22:31:35 -0700
X-ExtLoop1: 1
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.185.23.132])
 ([10.185.23.132])
 by orsmga001.jf.intel.com with ESMTP; 19 May 2019 22:31:33 -0700
To: Paul Menzel <pmenzel@molgen.mpg.de>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>
References: <8ef1b846-caf6-45de-33aa-a46406548167@molgen.mpg.de>
 <057ec48b-6d98-7177-d280-15679c8e66ac@molgen.mpg.de>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <9e2407a7-09c6-884d-e3e0-0af808552831@intel.com>
Date: Mon, 20 May 2019 08:31:32 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.3
MIME-Version: 1.0
In-Reply-To: <057ec48b-6d98-7177-d280-15679c8e66ac@molgen.mpg.de>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] Reduce e1000e boot time by tightening
 sleep ranges
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
Cc: intel-wired-lan@lists.osuosl.org, Arjan van de Ven <arjan@linux.intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/17/2019 17:58, Paul Menzel wrote:
> Dear Jeff,
> 
> 
> Mozilla Thunderbird probably mangled the patch, so please find it attached.
> 
> 
> Kind regards,
> 
> Paul
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> 
The e1000e driver supports a pretty long list of 1G devices. We are 
afraid that initialization flow could be a break for some devices. 
Although this works on BDW,  we cannot confirm this for all other devices.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
