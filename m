Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D02E591C1F
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 Aug 2022 19:18:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 86531416E4;
	Sat, 13 Aug 2022 17:18:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 86531416E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660411118;
	bh=J1x9ZFwGyq7yz+KgoKgvnlqX6mKfyP/2cheEWYZHW1E=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cQlNU/Px6c7ExNxkkaNvXELaGxjk0WJzic8QLm7nyaSH8XuM24bA31kK2qQz2aG5Y
	 wWt0h3WP2VyZKbm11f2OuWXf0RT3sM1pTE1FuqZ1A9n7easJjaiV14G83B3fVHr52O
	 i3yv6EBTN4n4GXK/nVmJfJ8qR4gzbQmFTFCgiilHQXv0pdT7j8jba9jlhX8iXOOZAH
	 jZ8h8T7EhJm4VUjZiCIDboThfLljJVYil3kPPTajOCL3uUWU/pddGpqL9gBL6IjFTA
	 rsFdkQcYUbQ3Aep4B3/vSS05NVbfIHI6SkNI8t+AiHt5rCrhN53PcS/Cf7aONvCEaW
	 NsRi5UbEBgPig==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gcmwkfkIEPAP; Sat, 13 Aug 2022 17:18:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EDE9041686;
	Sat, 13 Aug 2022 17:18:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EDE9041686
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 805741BF372
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Aug 2022 17:18:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5766B41686
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Aug 2022 17:18:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5766B41686
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HMkUWiqz2eAg for <intel-wired-lan@lists.osuosl.org>;
 Sat, 13 Aug 2022 17:18:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA6C540878
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CA6C540878
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Aug 2022 17:18:30 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A610160F19;
 Sat, 13 Aug 2022 17:18:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C487C433D6;
 Sat, 13 Aug 2022 17:18:27 +0000 (UTC)
From: James Hogan <jhogan@kernel.org>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Date: Sat, 13 Aug 2022 18:18:25 +0100
Message-ID: <2301866.ElGaqSPkdT@saruman>
In-Reply-To: <87o7wpxb1m.fsf@intel.com>
References: <20220811151342.19059-1-vinicius.gomes@intel.com>
 <4759452.31r3eYUQgx@saruman> <87o7wpxb1m.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1660411109;
 bh=1p/xXDVLxA/uqY4ZM7s4TrkCpUzYZCj8oCu8kaTLTig=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=E2VXXi/8J0FbtmmYWTiqFxhp7oPW5gH3em4ypMWRTI7ZAvQbUK0p3xcXCFRj1W6Sl
 TZVZbZTk1SyUBo2FcVCrgT9uHgAMN8ihir+3/iZJkm+Xe1SDS+OF9z/o9xZzAx4U+0
 CPIsg8y6txCbuG++luytPwAo1QFuk8AKCp4c3Tn3nFeAyv0SRxyp/m6s5RQmuBgJfn
 kn67iC4+WDuL+VIO8xWXRdekcw31A7BwxN16SkvEnlt/1eUaMjowHKThjkH1cCT4eR
 IsSYZO+ONWH9Cap1kRNS/j4L3l9Aus1KXZErLRFzaFhtBk0lzZ7g8E/syVToMWQ1li
 XVkruo9JIbE2Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=E2VXXi/8
Subject: Re: [Intel-wired-lan] [WIP v2] igc: fix deadlock caused by taking
 RTNL in RPM resume path
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Saturday, 13 August 2022 01:05:41 BST Vinicius Costa Gomes wrote:
> James Hogan <jhogan@kernel.org> writes:
> > On Thursday, 11 August 2022 21:25:24 BST Vinicius Costa Gomes wrote:
> >> It was reported a RTNL deadlock in the igc driver that was causing
> >> problems during suspend/resume.
> >> 
> >> The solution is similar to commit ac8c58f5b535 ("igb: fix deadlock
> >> caused by taking RTNL in RPM resume path").
> >> 
> >> Reported-by: James Hogan <jhogan@kernel.org>
> >> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> >> ---
> >> Sorry for the noise earlier, my kernel config didn't have runtime PM
> >> enabled.
> > 
> > Thanks for looking into this.
> > 
> > This is identical to the patch I've been running for the last week. The
> > deadlock is avoided, however I now occasionally see an assertion from
> > netif_set_real_num_tx_queues due to the lock not being taken in some cases
> > via the runtime_resume path, and a suspicious rcu_dereference_protected()
> > warning (presumably due to the same issue of the lock not being taken).
> > See here for details:
> > https://lore.kernel.org/netdev/4765029.31r3eYUQgx@saruman/
> 
> Oh, sorry. I missed the part that the rtnl assert splat was already
> using similar/identical code to what I got/copied from igb.
> 
> So what this seems to be telling us is that the "fix" from igb is only
> hiding the issue,

I suppose the patch just changes the assumption from "lock will never be held 
on runtime resume path" (incorrect, deadlock) to "lock will always be held on 
runtime resume path" (also incorrect, probably racy).

> and we would need to remove the need for taking the
> RTNL for the suspend/resume paths in igc and igb? (as someone else said
> in that igb thread, iirc)

(I'll defer to others on this. I'm pretty unfamiliar with networking code and 
this particular lock.)

Cheers
James


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
