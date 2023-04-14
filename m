Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 145AE6E2C39
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Apr 2023 00:01:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 216F160FE9;
	Fri, 14 Apr 2023 22:01:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 216F160FE9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681509713;
	bh=vjB5NIUwLzcX5b4v45p2MmJgsLCucOs7qQph1Nclno0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=msC+nkK8JGdkVHGLOQg++cbS4whudeMgkGFsLLjSU1u5JiDmPi/4l5PL/gFvGu39K
	 W+y+2Yu2Sd8lKJuyImpdsNx6P7aPxPvqivtZz3GnEBS7oCaWjnHXhph4Kz3fbp2TzF
	 3Ytsqe5KCaBZnlPUp3EWlad0Et6HFueQ808JcZHzhJwJxVEXmA1WepOiPieQPAzQND
	 HMkDOw5nggA7EsXngluHiY/Q0wV63gXzrMgOgAfpTJ4MjRU+21/t/1tidPIimTuqiI
	 rcIOVvEAY1cNiUBCanZKXNouUSpo4UNX8SJ5y3/OeNVP0DAEjeqzIOwq6jmANGEhMk
	 5x/Duk82XWujg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5Nu4icfSjpqG; Fri, 14 Apr 2023 22:01:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1731360BBF;
	Fri, 14 Apr 2023 22:01:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1731360BBF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 76F9B1C3F91
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 22:01:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 48814429B6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 22:01:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 48814429B6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A0diRTq6G8A5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Apr 2023 22:01:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA665429B5
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BA665429B5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 22:01:45 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A7D82616CC;
 Fri, 14 Apr 2023 22:01:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8BFFC4339B;
 Fri, 14 Apr 2023 22:01:43 +0000 (UTC)
Date: Fri, 14 Apr 2023 18:01:42 -0400
From: Sasha Levin <sashal@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <ZDnNRs6sWb45e4F6@sashalap>
References: <20230411011354.2619359-1-pavan.kumar.linga@intel.com>
 <ZDb3rBo8iOlTzKRd@sashalap>
 <643703892094_69bfb294a3@willemb.c.googlers.com.notmuch>
 <d2585839-fcec-4a68-cc7a-d147ce7deb04@intel.com>
 <20230412192434.53d55c20@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230412192434.53d55c20@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1681509704;
 bh=X5lZc7G5j7eCYUHAjQJg1pjKJAsEhJF9kZhPc0ywe/U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=i7yTJ3w0e9mAe48x1Qk+uVLvHEQQ6zVjr5Pt8gUbVdHaSrceCfXMaYLu/crnTCY3z
 c+LckeUX+tEtT2V1odaiEihtD6PZ8M9cLzysekcC6uan/wkK+diRJ3wHPWetUNcDX1
 rCqkx8ymxTISU/tKEI7gpkwdV9NXzuLrRszlQeqAFbeokzH13pl+jppxAcnseJluwj
 j29+TvS78VjjLw4UFS5IGVVtvQG2vlM5ZhIf3Q++l4hfnkH2K2tvV8YpE+zcAqsdX2
 HjgHEVfmfPLc4AVLesiNfQWTAqsqrquwBBY/fw28Z4f2VnYzrihedEfCCxLdGTQ8ZJ
 R27S7KVI+dryA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=i7yTJ3w0
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 00/15] Introduce Intel
 IDPF driver
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
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>, pabeni@redhat.com,
 willemb@google.com, jesse.brandeburg@intel.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, decot@google.com, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Apr 12, 2023 at 07:24:34PM -0700, Jakub Kicinski wrote:
>On Wed, 12 Apr 2023 19:03:22 -0500 Samudrala, Sridhar wrote:
>> On 4/12/2023 2:16 PM, Willem de Bruijn wrote:
>> > Sasha Levin wrote:
>> >> On Mon, Apr 10, 2023 at 06:13:39PM -0700, Pavan Kumar Linga wrote:
>> >> How will this work when the OASIS driver is ready down the road?
>> >>
>> >> We'll end up with two "idpf" drivers, where one will work with hardware
>> >> that is not fully spec compliant using this Intel driver, and everything
>> >> else will use the OASIS driver?
>> >>
>> >> Does Intel plan to remove this driver when the OASIS one lands?
>> >>
>> >> At the very least, having two "idpf" drivers will be very confusing.
>> >
>> > One approach is that when the OASIS v1 spec is published, this driver
>> > is updated to match that and moved out of the intel directory.
>>
>> Yes. We don't want to have 2 idpf drivers in the upstream kernel.
>> It will be an Intel vendor driver until it becomes a standard.
>> Hope it will be OK to move the driver out of the intel directory when
>> that happens.
>
>As I said previously in [0] until there is a compatible, widely
>available implementation from a second vendor - this is an Intel
>driver and nothing more. It's not moving anywhere.

My concern isn't around the OASIS legal stuff, it's about the users who
end up using this and will end up getting confused when we have two (or
more) in-kernel "IDPF" drivers.

I don't think that moving is an option - it'll brake distros and upset
users: we can't rename drivers as we go because it has a good chance of
breaking users.

>I think that's a reasonable position which should allow Intel to ship
>your code and me to remain professional.

No concerns about OASIS or the current code, I just don't want to make
this a mess for the users.

-- 
Thanks,
Sasha
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
