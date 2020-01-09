Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF1CD136070
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jan 2020 19:48:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 856D38838C;
	Thu,  9 Jan 2020 18:48:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9VCzG4aVCtmp; Thu,  9 Jan 2020 18:48:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 19D8C883A8;
	Thu,  9 Jan 2020 18:48:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 817A11BF423
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 18:48:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7A8888838F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 18:48:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5O8bu7LK7Dnp for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jan 2020 18:48:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AA60F8838C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 18:48:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 10:48:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,414,1571727600"; d="scan'208";a="223959217"
Received: from unknown (HELO [134.134.177.84]) ([134.134.177.84])
 by orsmga003.jf.intel.com with ESMTP; 09 Jan 2020 10:48:26 -0800
To: Jiri Pirko <jiri@resnulli.us>
References: <20200109010818.1326575-1-jacob.e.keller@intel.com>
 <20200109070051.GA2235@nanopsycho.orion>
From: Jacob Keller <jacob.e.keller@intel.com>
Organization: Intel Corporation
Message-ID: <c342b0c0-96e0-73fa-43b9-5544ec5195a9@intel.com>
Date: Thu, 9 Jan 2020 10:48:26 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200109070051.GA2235@nanopsycho.orion>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH 0/4] devlink region snapshot triggering
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

On 1/8/2020 11:00 PM, Jiri Pirko wrote:
> Thu, Jan 09, 2020 at 02:08:15AM CET, jacob.e.keller@intel.com wrote:
>> There is also some fix ups for s/shapshot/snapshot/ in documentation
>> and the devlink_snapshot_id_get function.
> 
> You can already trigger health reporter dump from userspace. Why don't
> you use health reporter?
> 

Hmm. Mainly because the specific things I wanted to expose through
regions aren't really "health" information.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
