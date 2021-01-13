Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A7882F4296
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Jan 2021 04:41:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 12E0B84028;
	Wed, 13 Jan 2021 03:41:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cZ-momMn4v62; Wed, 13 Jan 2021 03:41:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9DEB4870D3;
	Wed, 13 Jan 2021 03:41:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9F11F1BF420
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Jan 2021 03:41:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9980683070
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Jan 2021 03:41:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1ALjxoWfsfrC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Jan 2021 03:41:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 380A482B51
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Jan 2021 03:41:09 +0000 (UTC)
IronPort-SDR: s1/3qEOxRYy0f6eVzea9XeRio9U7pLve6oOiE0JksNg619OrJfZMYYpJ9/yxA628hKi46g6AIe
 9P4J1XH+GcaA==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="157921284"
X-IronPort-AV: E=Sophos;i="5.79,343,1602572400"; d="scan'208";a="157921284"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 19:41:08 -0800
IronPort-SDR: RPpQgERtz5dorindlGa7GlpxgJcvJLxC8nxtw2YZLLjTUOF8Eu3R5kpZ0E99ngukmg/CCw2djN
 WZKwePMDCx7g==
X-IronPort-AV: E=Sophos;i="5.79,343,1602572400"; d="scan'208";a="348682097"
Received: from jbrandeb-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.252.142.13])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 19:41:08 -0800
Date: Tue, 12 Jan 2021 19:41:07 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <20210112194107.00002d0b@intel.com>
In-Reply-To: <20210112171431.457524-1-arkadiusz.kubalewski@intel.com>
References: <20210112171431.457524-1-arkadiusz.kubalewski@intel.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net v3] i40e: Fix for link-flapping
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Arkadiusz Kubalewski wrote:

> VF queues were not brought up when PF was brought up after being downed
> if the VF driver disabled VFs queues during PF down. This could happen
> in some older or external VF driver implementations.
> The problem was that PF driver used vf->queues_enabled as a condition
> to decide what link-state it would send out which caused the issue.
> Remove the check for vf->queues_enabled in the VF link notify. Now VF
> will always be notified of the current link status. Also remove
> the queues_enabled member from i40e_vf structure as it is not used
> anymore. Also refactor repeated link state reporting code into a
> separate helper function i40e_set_vf_link_state().
> Otherwise VNF implementation was broken and caused a link flap.
> 
> v2: improve commit message
> v3: net tree target

For future patches, please put vX: messages after a ---
which will allow git am to strip the vX: comments.  You can optionally
put the vX: messages in the same section as the diffstat info.

> 
> Fixes: 2ad1274fa35a ("i40e: don't report link up for a VF who hasn't
> enabled")

You probably don't need to wrap the Fixes line, but it probably
doesn't hurt either.

> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

The patch sender's signoff should be last (think chronological order
starting with oldest at the top)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
