Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF9A6F84C5
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 May 2023 16:23:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BD0C9404A8;
	Fri,  5 May 2023 14:23:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BD0C9404A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683296592;
	bh=onj0yS8FsjiAOg5SoT/G7gCtc1JXj4vFl7LRPe5vPnE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SY4dwvsm6TM/FBFN/OKtKupeUZwUj28g9uJz/rwzJ3WkTG0i8nghj+mGeB2H2Tgqy
	 JuscnlNlvZdF/+sKlSy7IsXPmNdfjUIH4VsX6Sd88FKFNoge1yHjJ8FvfWdURAv36t
	 gZv0vTBUaiZ8MuTT/MT/GzFSaWrcqtZCrsOM8d3HTPeffm0ZHuo1/gIPdlsSPtmWyn
	 tYDVyE8mX/7dvUuvCSvmuyCSXL3Veh+S7xHPmJsz0B31nsp+ZskPcY9Z5lKcagOT22
	 iTUIS+sWWrHrnbCHwYBybI26i+ztezywKQ2YmKR9ex1AM/d06s850TR/df/+G7AlJB
	 gACPq1bhRU2VQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PM7B-1Z1Ot8B; Fri,  5 May 2023 14:23:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A716A40187;
	Fri,  5 May 2023 14:23:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A716A40187
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0747F1BF38E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 May 2023 14:23:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EAD2340187
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 May 2023 14:23:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EAD2340187
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QV8Cla0A-KsD for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 May 2023 14:23:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1E16A4026A
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1E16A4026A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 May 2023 14:23:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="377294741"
X-IronPort-AV: E=Sophos;i="5.99,252,1677571200"; d="scan'208";a="377294741"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 07:22:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="700456077"
X-IronPort-AV: E=Sophos;i="5.99,252,1677571200"; d="scan'208";a="700456077"
Received: from unknown (HELO s240.localdomain) ([10.237.94.19])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 07:22:56 -0700
From: Piotr Skajewski <piotrx.skajewski@intel.com>
To: ian.kumlien@gmail.com
Date: Fri,  5 May 2023 16:21:44 +0200
Message-Id: <20230505142144.46622-1-piotrx.skajewski@intel.com>
X-Mailer: git-send-email 2.35.0.rc0
In-Reply-To: <CAA85sZvQV2_aTP=2_TZQOMm0cMfxp+NdLx2_yf_qzB=dUKFuwg@mail.gmail.com>
References: <CAA85sZvQV2_aTP=2_TZQOMm0cMfxp+NdLx2_yf_qzB=dUKFuwg@mail.gmail.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683296586; x=1714832586;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6jdpXc5q7OT2JO2J8xALaYohRQuMJFyqvk+1uRqZwQY=;
 b=cJCYcmGpwvUGkPpztsfis6mAw6RAm/Bdz1aVLcs1zGCLSgV5GwICH6Rf
 8HjEHw92PmszFHc0p5ZxxCkVxR8CB1zNj9bcvUqF4UULXUbxzpkBP+DUe
 v8SZXMZ2tvKNm4VbCUpfrjYoKkeMFqo19urt5aXGj+3Xowk1Is2OMi6j5
 UBDBu2craLubstkPQF0dzaA8oThPeimBgRXjFBMeVOWdksB/uFynTn8yh
 CIcCku2juTd4QLz9gYZdQkcTiNeP6LV3gbDvhThK8xamNIncfkAzsy20Z
 izOHh3jgClrK8ZsXSxUrxRd7+iYB0sLJdO6+7/ntXNWqMnP9x2+lycByb
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cJCYcmGp
Subject: Re: [Intel-wired-lan] [ixgbe] regression: jumbo frames not working
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
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com
Content-Type: multipart/mixed; boundary="===============7193730821409475851=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============7193730821409475851==
Content-Type: text/plain; charset=Y
Content-Transfer-Encoding: 8bit

On Sun, Arp 30, 2023 at 7:01 PM Ian Kumlien <ian.kumlien@gmail.com> wrote:
> On Sun, Apr 30, 2023 at 6:29 PM Jesse Brandeburg
> <jesse.brandeburg@gmail.com> wrote:
>>
>>
>>
>> On Fri, Apr 28, 2023 at 2:13 PM Ian Kumlien <ian.kumlien@gmail.com> wrote:
>>>
>>> Hi,
>>>
>>> Since upgrading to kenel 6.3, I've hit an issue...
>>>
>>> I historically use 9k jumboframes on my network as such:
>>> 3: eno1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP
>>> group default qlen 1000
>>
>>
>> Thanks for the report! Our team is investigating, hopefully we will be able to reproduce and get back to you this week.
>>
>> A detail that would help is lspci -nn -d ::0200 to get a list of the adapter type you're using in case it's relevant.
> 
> 06:00.0 Ethernet controller [0200]: Intel Corporation Ethernet
> Connection X553 1GbE [8086:15e4] (rev 11)
> 06:00.1 Ethernet controller [0200]: Intel Corporation Ethernet
> Connection X553 1GbE [8086:15e4] (rev 11)
> 07:00.0 Ethernet controller [0200]: Intel Corporation Ethernet
> Connection X553 1GbE [8086:15e4] (rev 11)
> 07:00.1 Ethernet controller [0200]: Intel Corporation Ethernet
> Connection X553 1GbE [8086:15e4] (rev 11)
> 
> ethtool -i eno1
> driver: ixgbe
> version: 6.3.0
> firmware-version: 0x80000877
> expansion-rom-version:
> bus-info: 0000:06:00.0
> supports-statistics: yes
> supports-test: yes
> supports-eeprom-access: yes
> supports-register-dump: yes
> supports-priv-flags: yes
> 
>>> But now the largest frame i can send is 2030 bytes (ie ping -s 2002)...
>>>
>>> I don't see any warning from the XDP subsystem so I almost assume
>>> that's not it...

After test we don't see any discrepancies in how jumbo frames work between mentioned kernels.
Please add more details about configuration you are using and steps how to reproduce this issue.


Thanks,
Piotr

--===============7193730821409475851==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============7193730821409475851==--
