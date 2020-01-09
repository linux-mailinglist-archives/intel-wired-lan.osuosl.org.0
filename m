Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6290B136123
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jan 2020 20:35:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 01C11214E9;
	Thu,  9 Jan 2020 19:35:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pYNPre9vIqNJ; Thu,  9 Jan 2020 19:35:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4974F21FFB;
	Thu,  9 Jan 2020 19:35:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1CEE51BF41B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 19:35:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 179DF21F65
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 19:35:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E5ZJuv0hWpWW for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jan 2020 19:35:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 6A334214E9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 19:35:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 11:35:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,414,1571727600"; d="scan'208";a="223971378"
Received: from jekeller-mobl.amr.corp.intel.com (HELO [134.134.177.84])
 ([134.134.177.84])
 by orsmga003.jf.intel.com with ESMTP; 09 Jan 2020 11:35:11 -0800
To: Jiri Pirko <jiri@resnulli.us>
References: <20200109010818.1326575-1-jacob.e.keller@intel.com>
 <20200109010818.1326575-4-jacob.e.keller@intel.com>
 <20200109070502.GC2235@nanopsycho.orion>
 <aace193a-066b-ef8d-72a0-7489ba989d87@intel.com>
 <20200109185843.GI2235@nanopsycho.orion>
From: Jacob Keller <jacob.e.keller@intel.com>
Organization: Intel Corporation
Message-ID: <8144d121-21be-6ffd-68e1-420e299be1a8@intel.com>
Date: Thu, 9 Jan 2020 11:35:11 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200109185843.GI2235@nanopsycho.orion>
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



On 1/9/2020 10:58 AM, Jiri Pirko wrote:
> Anyway, this patch does like 5 things in one. Please split it in
> multiple patches, each doing one thing.

I sent the two typo fixes separately, and broke the last patch into 3
and sent them to netdev directly.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
