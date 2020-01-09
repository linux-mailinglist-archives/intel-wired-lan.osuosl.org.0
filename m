Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1691313607B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jan 2020 19:51:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9A3E721F65;
	Thu,  9 Jan 2020 18:51:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cGgaazZrlP0T; Thu,  9 Jan 2020 18:51:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A37DF21563;
	Thu,  9 Jan 2020 18:51:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F04CA1BF423
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 18:51:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EC8AC864EE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 18:51:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2r6upJbnG8u7 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jan 2020 18:51:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 31FBD864EC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 18:50:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 10:50:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,414,1571727600"; d="scan'208";a="223959499"
Received: from unknown (HELO [134.134.177.84]) ([134.134.177.84])
 by orsmga003.jf.intel.com with ESMTP; 09 Jan 2020 10:50:23 -0800
To: Jiri Pirko <jiri@resnulli.us>
References: <20200109010818.1326575-1-jacob.e.keller@intel.com>
 <20200109010818.1326575-4-jacob.e.keller@intel.com>
 <20200109070502.GC2235@nanopsycho.orion>
From: Jacob Keller <jacob.e.keller@intel.com>
Organization: Intel Corporation
Message-ID: <aace193a-066b-ef8d-72a0-7489ba989d87@intel.com>
Date: Thu, 9 Jan 2020 10:50:23 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200109070502.GC2235@nanopsycho.orion>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH 3/4] devlink: add support for
 triggering snapshots from userspace
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
Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, valex@mellanox.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 1/8/2020 11:05 PM, Jiri Pirko wrote:
> Thu, Jan 09, 2020 at 02:08:18AM CET, jacob.e.keller@intel.com wrote:
>> At region creation time, drivers may optionally define
>> a trigger_snapshot function callback. If not defined, the
>> DEVLINK_CMD_REGION_TRIGGER_SNAPSHOT will simply report EOPNOTSUPP.
> 
> Similar mechanism is already implemented for health reporters. Why that
> wouln't work for you?
> 

Mostly, I didn't feel that the necessary information (flash contents)
really made sense as a health report. The intent is to enable diagnostic
tools to read the contents of the flash on a device.

I'm fine using the health interface but in this case features like
recovery method, etc do not make sense at all as it would not be
triggered in response to error conditions.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
