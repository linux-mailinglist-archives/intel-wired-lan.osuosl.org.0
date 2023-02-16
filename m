Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F07699182
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Feb 2023 11:36:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 036EB40C9E;
	Thu, 16 Feb 2023 10:36:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 036EB40C9E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676543814;
	bh=TdFVREXQ/nVH3GXWaM8ql5qqmEIcqUCmvNBT6Mc3xAw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=J7q0xbNSRXMA1Zl+BYtzTYhjsALSyeHmoL0rlwgi0axx4e8tDwL8+4eIDzbNXsrHh
	 AwcdFympVRQJ/aMLeH/qlH7dRUATkhG0joZBsDjnd6Mg4pZnGEA+VdZJ5YCI8vn3go
	 Oo7wBGgWIj2zWO13yURWjww28xGy9PN8e5NPFnHEXH9ZBap8kg7ebNIZI3LQ0hL/JG
	 QIWwhZFyk17FqdJla1+F2akNnFe50MTHjLISStIFyArisAi1rWIUnAcAF527Bl5Rt2
	 yMpk4oSlzT5n2CBQWrl8A3B7aRk2Ua7/w0INm27+quWr6Diijv2KX6zGKxxOOqgSAC
	 RB0GTsLFWbOMQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YQRnvVwzPjcV; Thu, 16 Feb 2023 10:36:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0F9CE4061F;
	Thu, 16 Feb 2023 10:36:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0F9CE4061F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 04A1B1BF333
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 10:36:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DF34060ABE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 10:36:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF34060ABE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x6EsczCTE5h9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Feb 2023 10:36:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 01BDF6070A
Received: from wp530.webpack.hosteurope.de (wp530.webpack.hosteurope.de
 [80.237.130.52])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 01BDF6070A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 10:36:47 +0000 (UTC)
Received: from [2a02:8108:8980:2478:8cde:aa2c:f324:937e]; authenticated
 by wp530.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1pSbd5-0002bB-KJ; Thu, 16 Feb 2023 11:36:43 +0100
Message-ID: <a19dc705-3f78-4b5b-0e5d-bf99a7e7afdc@leemhuis.info>
Date: Thu, 16 Feb 2023 11:36:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US, de-DE
From: "Linux regression tracking (Thorsten Leemhuis)"
 <regressions@leemhuis.info>
To: Dave Ertman <david.m.ertman@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20230215191757.1826508-1-david.m.ertman@intel.com>
 <eca2d453-5b0b-b012-dcf8-be6e197536db@leemhuis.info>
In-Reply-To: <eca2d453-5b0b-b012-dcf8-be6e197536db@leemhuis.info>
X-bounce-key: webpack.hosteurope.de; regressions@leemhuis.info; 1676543808;
 da940f3e; 
X-HE-SMSGID: 1pSbd5-0002bB-KJ
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: avoid bonding causing
 auxiliary plug/unplug under RTNL lock
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
Reply-To: Linux regressions mailing list <regressions@lists.linux.dev>
Cc: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>,
 Linux kernel regressions list <regressions@lists.linux.dev>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Sorry, forgot something

On 16.02.23 11:33, Linux regression tracking (Thorsten Leemhuis) wrote:
> On 15.02.23 20:17, Dave Ertman wrote:
>> RDMA is not supported in ice on a PF that has been added to a bonded
>> interface. To enforce this, when an interface enters a bond, we unplug
> [...]
>> Reported-by: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
>> Link: https://lore.kernel.org/linux-rdma/68b14b11-d0c7-65c9-4eeb-0487c95e395d@leemhuis.info/
> 
> FWIW, that should be
> 
> Link:
> https://lore.kernel.org/netdev/CAK8fFZ6A_Gphw_3-QMGKEFQk=sfCw1Qmq0TVZK3rtAi7vb621A@mail.gmail.com/
> 
> instead, as that's Jaroslav's report
> 
>> Fixes: 5cb1ebdbc434 ("ice: Fix race condition during interface enslave")
>> Fixes: 425c9bd06b7a ("RDMA/irdma: Report the correct link speed")

As this was a regression that was noticed in 6.1.2, this afaics also needs:

Cc: stable@vger.kernel.org # 6.1.x

[no, fixes tags alone do not suffice, see docs]

Ciao, Thorsten
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
