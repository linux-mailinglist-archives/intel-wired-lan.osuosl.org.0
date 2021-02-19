Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FDE9320024
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Feb 2021 22:13:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6471360714
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Feb 2021 21:13:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uz-tocroWaAv for <lists+intel-wired-lan@lfdr.de>;
	Fri, 19 Feb 2021 21:13:38 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 9699860726; Fri, 19 Feb 2021 21:13:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C977760719;
	Fri, 19 Feb 2021 21:13:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 02A071BF32E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Feb 2021 21:13:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DF425606B8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Feb 2021 21:13:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O2geISfpqocQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Feb 2021 21:13:23 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 0AC0060709; Fri, 19 Feb 2021 21:13:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AECCE606B8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Feb 2021 21:13:21 +0000 (UTC)
IronPort-SDR: prjHgelTsFmDv6JFqdi09ssQNX0ei/ZcwHA7cxziRZWFOmI6Nx4jhaEbZtUIQ7ZIix+z//MiJJ
 jDBQH+bU7XZA==
X-IronPort-AV: E=McAfee;i="6000,8403,9900"; a="180453231"
X-IronPort-AV: E=Sophos;i="5.81,191,1610438400"; d="scan'208";a="180453231"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2021 13:13:20 -0800
IronPort-SDR: QY4uDOfsK1NgIC29ka2laRiPYLFYhQ9nujjNM4qQbruMYNPzHTiz1pA2U4tQZu7y62g3geCUEu
 ZRZlq7Fr2CLA==
X-IronPort-AV: E=Sophos;i="5.81,191,1610438400"; d="scan'208";a="401197963"
Received: from jbrandeb-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.209.16.143])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2021 13:13:20 -0800
Date: Fri, 19 Feb 2021 13:13:19 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Haiyue Wang <haiyue.wang@intel.com>
Message-ID: <20210219131319.00000079@intel.com>
In-Reply-To: <20210219130001.49600-1-haiyue.wang@intel.com>
References: <20210219130001.49600-1-haiyue.wang@intel.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [Patch v4 00/18] Enable Intel VF flow
 director with DDP
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
Cc: cunming.liang@intel.com, intel-wired-lan@lists.osuosl.org,
 qi.z.zhang@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Haiyue Wang wrote:

> The Intel E810 Series supports a programmable pipeline for a domain
> specific protocols classification, for example GTP by Dynamic Device
> Personalization (DDP) profile.
> 
> The E810 PF has introduced flex-bytes support by ethtool user-def option
> allowing for packet deeper matching based on an offset and value for DDP
> usage.
> 
> For making VF also benefit from this flexible protocol classification, some
> new virtchnl messages are defined and handled by PF, so VF can query this
> new flow director capability, and use ethtool with extending the user-def
> option to configure Rx flow classification.
> 
> The new user-def 0xAAAABBBBCCCCDDDD: BBBB is the 2 byte pattern while AAAA
> corresponds to its offset in the packet. Similarly DDDD is the 2 byte
> pattern with CCCC being the corresponding offset. The offset ranges from
> 0x0 to 0x1F7 (up to 504 bytes into the packet). The offset starts from
> the beginning of the packet.

Why must you use the ethtool user-def interface like this? I suspect
that you should be using tc-u32.

At the very least you should cover why you're *not* using u32 in the
cover letter, otherwise I'm sure the question will come up.

 
> This feature can be used to allow customers to set flow director rules
> for protocols headers that are beyond standard ones supported by ethtool
> (e.g. PFCP or GTP-U).
> 
> Like for matching GTP-U's TEID value 0x10203040:
> ethtool -N ens787f0v0 flow-type udp4 dst-port 2152 \
>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
