Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F2495A3348
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Aug 2022 03:01:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9EB9760AE5;
	Sat, 27 Aug 2022 01:01:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9EB9760AE5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661562107;
	bh=nt4uPPzWn8CLZY1rH4NzvVBdOnjQw9y5shyV/Ak7HBU=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ezQ9iAtoGxV60edMKeUe5UOflEq0hzssKGRpcclGpktmiRHBLra03RDXQq39/zydZ
	 LAGOoDu86F0RDX/3JfhdGXOCBnrRZajGx2CrTOBGXMEHfQvoEExnU/+ZXGe2U2N51k
	 aHKPXTvRUWFxJeAayAHnDrCHDqNhoa5KqAKUEQaNfFrRfkrow/HTIDhVD0J/ZNeglJ
	 90lq/u8m1IianPOsKcwYUDf1h4dIEWSGxQDlKSHHyF3BunWklM/dnQkKW/exfm8RyU
	 1fPAzxzJsfkXcyjzxmygmpRJGpm6ye/kwkJPnZUpv7FGAnucWsth+fpj3/xB5lkh58
	 llYMWV3WNu7zg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8KCOAJJKbGsD; Sat, 27 Aug 2022 01:01:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A124C60AD0;
	Sat, 27 Aug 2022 01:01:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A124C60AD0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 870EE1C2745
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Aug 2022 01:01:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6001660AD0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Aug 2022 01:01:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6001660AD0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lxDrser_oRxQ for <intel-wired-lan@lists.osuosl.org>;
 Sat, 27 Aug 2022 01:01:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 94F9660A94
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 94F9660A94
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Aug 2022 01:01:40 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 7E788B83366;
 Sat, 27 Aug 2022 01:01:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41CD4C43470;
 Sat, 27 Aug 2022 01:01:35 +0000 (UTC)
Date: Fri, 26 Aug 2022 18:01:34 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <20220826180134.24b3648a@kernel.org>
In-Reply-To: <YwjZ+h82UrF2MrxO@nanopsycho>
References: <20220826110059.119927-1-wojciech.drewek@intel.com>
 <YwircDhHhOfqdHy/@nanopsycho>
 <MW4PR11MB5776E6C92351788A0E55B6CBFD759@MW4PR11MB5776.namprd11.prod.outlook.com>
 <YwjZ+h82UrF2MrxO@nanopsycho>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1661562096;
 bh=t8uJtVYGVJrGtCLnX/H7b8u7UYthosyQkxfbjmbRSTY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=fOrsCGHE6DeI7Q1LkvEeK5VxiWNF103FkLlU4Lz0cUKkOnBfvmRQmqX7FP05r9Eni
 fYKJCf+VHsn14T0BGzPraU2rs0pVSdHZwB0W9OvV+ALXUfd/bwO/pksHcnNN/aaH9K
 INR8iXe8Jn6Hi55Y3VuFIAWrU3e5Y9a/X5WtG8jJwNnrj6OtyFmTRTnwr64yakiksC
 X6lJdYWoU2kp8Ypg5ID88G0fu4j+4WR1KzaZL6cPDP223pVHEDijS4YdxVDWagtqtl
 UHv1lczMAKEjigEKYMvLsHwo7Ng4633V3suGzMAlKqVGXO6blEkYibSXPdOzQebhYC
 djZdmCHN/ZeYQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=fOrsCGHE
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next 0/5] ice: L2TPv3 offload
 support
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
Cc: "simon.horman@corigine.com" <simon.horman@corigine.com>,
 "kurt@linutronix.de" <kurt@linutronix.de>,
 "komachi.yoshiki@gmail.com" <komachi.yoshiki@gmail.com>,
 "jchapman@katalix.com" <jchapman@katalix.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "boris.sukholitko@broadcom.com" <boris.sukholitko@broadcom.com>,
 "louis.peens@corigine.com" <louis.peens@corigine.com>,
 "gnault@redhat.com" <gnault@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "vladbu@nvidia.com" <vladbu@nvidia.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "pablo@netfilter.org" <pablo@netfilter.org>,
 "baowen.zheng@corigine.com" <baowen.zheng@corigine.com>,
 "maksym.glubokiy@plvision.eu" <maksym.glubokiy@plvision.eu>,
 "paulb@nvidia.com" <paulb@nvidia.com>, "jhs@mojatatu.com" <jhs@mojatatu.com>,
 "xiyou.wangcong@gmail.com" <xiyou.wangcong@gmail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 26 Aug 2022 16:34:34 +0200 Jiri Pirko wrote:
> >Sorry, I'll include more precise description in the next version.
> >DDP (Dynamic Device Personalization) is a firmware package that contains definitions
> >protocol's headers and packets. It allows you  to add support for the new protocol to the
> >NIC card without rebooting.  If the DDP package does not support L2TPv3 then hw offload 
> >will not work, however sw offload will still work.  
> 
> Hmm, so it is some FW part? Why do we care about it here in patchset
> description?

We generally encourage people to put as much context in the commit
messages and cover letters as possible. Nothing wrong with saying
that a specific parser microcode is needed, IMHO.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
