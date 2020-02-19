Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DB47D163D18
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Feb 2020 07:38:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5D5F28620F;
	Wed, 19 Feb 2020 06:38:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IhOZ1LxFqyxh; Wed, 19 Feb 2020 06:38:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A47C18657C;
	Wed, 19 Feb 2020 06:38:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 83B0F1BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2020 06:38:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7D9A485C86
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2020 06:38:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZExnkox0oaYq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Feb 2020 06:38:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6CE5981EAF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2020 06:38:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 22:38:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,459,1574150400"; d="scan'208";a="269055437"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.185.23.132])
 ([10.185.23.132])
 by fmsmga002.fm.intel.com with ESMTP; 18 Feb 2020 22:38:10 -0800
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
References: <20200217060718.20965-1-sasha.neftin@intel.com>
 <20200218094555.00001cb4@intel.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <4dc4f47f-245d-8788-0ef4-53729f573a47@intel.com>
Date: Wed, 19 Feb 2020 08:38:09 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200218094555.00001cb4@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] e1000e: Fix typo in Alder Lake
 brand name
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/18/2020 19:45, Jesse Brandeburg wrote:
> On Mon, 17 Feb 2020 08:07:18 +0200 Sasha wrote:
>> -#define E1000_DEV_ID_PCH_ADP_1219_LM16		0x1A1E
>                                  ^
>                                  ^^^
> Man this change is so subtle, you should definitely mention in your
> commit message that you're changing a "one" to an "I"
> 
> I wrote a whole response to this mail without seeing the difference
> until the end.
> 
I will send v2 and mention the change.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
