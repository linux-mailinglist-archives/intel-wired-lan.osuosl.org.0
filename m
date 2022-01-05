Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 33749485B7D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jan 2022 23:16:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B393D830C1;
	Wed,  5 Jan 2022 22:16:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LKU_TaW7ip5g; Wed,  5 Jan 2022 22:16:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C4165824DF;
	Wed,  5 Jan 2022 22:16:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3CA901BF267
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jan 2022 22:16:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3689582660
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jan 2022 22:16:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9RCzyQSkiAo2 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Jan 2022 22:16:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4D191824CB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jan 2022 22:16:04 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 5EAB6B81E03;
 Wed,  5 Jan 2022 22:16:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7814CC36AEB;
 Wed,  5 Jan 2022 22:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1641420960;
 bh=/5CdrMGqcvmU2fXVGxsl475sKEqFdt3t9MSe6vFuV6E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EkRLrlKUx5x/oHZteV1HeI3DpVdOdVR3RFLhig619mLJByBsjVbWJUFkK3M40BDvF
 R8qngirWQbCAIF3YDTV+S1vJbQWe75gbV+5XnObwvtzwCFUmEYCVxt3LfFmwtz7cwO
 1q/D6lvwJinmok3qulNQXKvxlBMDYlUSsCp7AXyVmvDUlUVSHqVIVnP5PZi2xys3M9
 akpdZTanES1Tuv3nwcXoCA1TLxyEiUFRWSKP4gWenqhfzGKky7vQiHYERLnyS6in7r
 wqr/q9XuHP+OG0J1JR4NaiGnhXW4mCICllRnqb8KSQznVXxMUcWanJL4Qlm/xmuV3C
 SgtDHC7SENWbQ==
Date: Wed, 5 Jan 2022 14:15:58 -0800
From: Saeed Mahameed <saeed@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20220105221558.53bxq4q3jdch4wxa@sx1>
References: <20220104034827.1564167-1-kuba@kernel.org>
 <20220104072411.esukmdx7sy3milmx@sx1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220104072411.esukmdx7sy3milmx@sx1>
Subject: Re: [Intel-wired-lan] [PATCH net-next] net: fixup build after bpf
 header changes
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
Cc: leon@kernel.org, linux-rdma@vger.kernel.org, netdev@vger.kernel.org,
 Abdul Haleem <abdhalee@linux.vnet.ibm.com>, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, saeedm@nvidia.com, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jan 03, 2022 at 11:24:11PM -0800, Saeed Mahameed wrote:
>On Mon, Jan 03, 2022 at 07:48:27PM -0800, Jakub Kicinski wrote:
>>Recent bpf-next merge brought in header changes which uncovered
>>includes missing in net-next which were not present in bpf-next.
>>Build problems happen only on less-popular arches like hppa,
>>sparc, alpha etc.
>>
>>I could repro the build problem with ice but not the mlx5 problem
>>Abdul was reporting. mlx5 does look like it should include filter.h,
>>anyway.
>>
>
>I got an internal report on the same thing also, but I couldn't repro
>myself neither, I will ask them to test your patch.
>

The patch seems to have fixed the issue.
Thanks.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
