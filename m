Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C2FDE1CFC3E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2020 19:33:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6A53E20417;
	Tue, 12 May 2020 17:33:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0fWR6p9L-TXL; Tue, 12 May 2020 17:33:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DAA6420C45;
	Tue, 12 May 2020 17:33:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C39E11BF41B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2020 17:33:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BF6FD894AF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2020 17:33:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nhz6wNtT+vUP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 May 2020 17:33:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DC68E894A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2020 17:33:28 +0000 (UTC)
IronPort-SDR: qVJNO43fmBTptL9w4+036wzRzHB4ugahgPFKuGOW2nAy4bsk4yAJwO2Hw9mUNJzHbZfWmyxXWJ
 vCHtoLdcxbCA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 10:33:28 -0700
IronPort-SDR: FwagGtkHsJq83DzEB8w0mYeY1G8z16bJH4UBRKtqxDL2evuUvA+tWsegWA9un0zikDbBP3hGWS
 qtTL3cdINsqQ==
X-IronPort-AV: E=Sophos;i="5.73,384,1583222400"; d="scan'208";a="437181055"
Received: from ksengupt-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.254.97.57])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 10:33:27 -0700
MIME-Version: 1.0
In-Reply-To: <20200429214306.71046-1-andre.guedes@intel.com>
References: <20200429214306.71046-1-andre.guedes@intel.com>
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 12 May 2020 10:33:27 -0700
Message-ID: <158930480743.38976.12790388485955040034@ksengupt-mobl1.amr.corp.intel.com>
User-Agent: alot/0.9
Subject: Re: [Intel-wired-lan] [RFC PATCH] igc: Reject NFC rules with
 multiple matches
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> The way rx queue assignment based on mac address, ethetype and vlan
> priority filtering operates in I225 doesn't allow us to properly support
> NFC rules with multiple matches.
> 
> Consider the following example which assigns to queue 2 frames matching
> the address MACADDR *and* ethertype ETYPE.
> 
> $ ethtool -N eth0 flow-type ether dst <MACADDR> proto <ETYPE> queue 2
> 
> When such rule is applied, we have 2 unwanted behaviors:
> 
>     1) Any frame matching MACADDR will be assigned to queue 2. It
>        doesn't matter the ETYPE value.
> 
>     2) Any accepted frame that has ethertype equals to ETYPE, no matter
>        the mac address, will be assigned to queue 2 as well.
> 
> While we could fix 1) by not enabling queue assignment on the MAC
> address filter, 2) would still happen.
> 
> In current code, multiple-match filters are accepted by the driver, even
> though it doesn't support them properly. This patch adds a check for
> multiple-match rules in igc_ethtool_is_nfc_rule_valid() so they are
> rejected.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
> Hi folks,
> 
> This patch was originally included in the series "igc: Fixes to NFC support
> code", but since it changes the way the driver interacts with user space, I
> decided to sent it separately as RFC to collect your opinions.
> 
> The patch description gives a detailed explanation about the issue. The bottom
> line is: Current code silently accepts a configuration that is not supported.
> This patch changes the driver so EOPNOTSUPP is returned instead of success.
> 
> What I'd like to get your feedback on is:
> 
> Is this considered an user-kernel break? If so, what would be the best way to
> move forward. Keep accepting the configuration but warn user via log message
> about not supporting it?

I'm assuming this is not considered a user-kernel break since I could spot at
least one similar change in igb driver (b4a38d4276e1). I'll rebase and send
this as PATCH.

- Andre
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
