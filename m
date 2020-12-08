Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE222D1EEE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Dec 2020 01:24:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 78C1985A25;
	Tue,  8 Dec 2020 00:24:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8VNcIwmQUSt7; Tue,  8 Dec 2020 00:24:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 246BE87A26;
	Tue,  8 Dec 2020 00:24:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EF0731BF327
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 00:24:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C3AD52E2B1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 00:24:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6OiEMX8fHQ9i for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Dec 2020 00:24:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id 3F11E2E0B5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 00:24:04 +0000 (UTC)
IronPort-SDR: UksHCXkvRMGt/SmPZ1wKfmnhtpizm3i1a+mGDrK2HCDQBEK2A+gX1gs7GfgiyTGl7HXVadTZL7
 Zg06zLsk2ryw==
X-IronPort-AV: E=McAfee;i="6000,8403,9828"; a="153043435"
X-IronPort-AV: E=Sophos;i="5.78,401,1599548400"; d="scan'208";a="153043435"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 16:24:03 -0800
IronPort-SDR: FXZs/AawAe8wQxN5ggxkU3QHCStmZCMzejW+1SZPLuF9dm36FU1ukokTFak3LtgaZX7JZodDXs
 6mV532PeRaQw==
X-IronPort-AV: E=Sophos;i="5.78,401,1599548400"; d="scan'208";a="317457183"
Received: from seherahx-mobl1.amr.corp.intel.com (HELO ellie) ([10.209.17.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 16:24:02 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
In-Reply-To: <20201207152126.6f3d1808@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
References: <20201202045325.3254757-1-vinicius.gomes@intel.com>
 <20201202045325.3254757-2-vinicius.gomes@intel.com>
 <20201205094325.790b187f@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
 <87eek11d23.fsf@intel.com>
 <20201207152126.6f3d1808@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
Date: Mon, 07 Dec 2020 16:24:02 -0800
Message-ID: <87blf5ywkd.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 1/9] ethtool: Add support
 for configuring frame preemption
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
Cc: Jose.Abreu@synopsys.com, jiri@resnulli.us, vladimir.oltean@nxp.com,
 po.liu@nxp.com, jhs@mojatatu.com, m-karicheri2@ti.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 xiyou.wangcong@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Jakub Kicinski <kuba@kernel.org> writes:

> On Mon, 07 Dec 2020 14:11:48 -0800 Vinicius Costa Gomes wrote:
>> Jakub Kicinski <kuba@kernel.org> writes:
>> >> + * @min_frag_size_mult: Minimum size for all non-final fragment size,
>> >> + * expressed in terms of X in '(1 + X)*64 + 4'  
>> >
>> > Is this way of expressing the min frag size from the standard?
>> >  
>> 
>> The standard has this: "A 2-bit integer value indicating, in units of 64
>> octets, the minimum number of octets over 64 octets required in
>> non-final fragments by the receiver" from IEEE 802.3br-2016, Table
>> 79-7a.
>
> Thanks! Let's drop the _mult suffix and add a mention of this
> controlling the addFragSize variable from the standard. Perhaps 
> it should in fact be called add_frag_size (with an explanation 
> that the "additional" means "above the 64B" which are required in
> Ethernet, and which are accounted for by the "1" in the 1 + X
> formula)?

Sounds good :-) Will add a comment with the standard reference and
change the name to 'add_frag_size'.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
