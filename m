Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C47C6D5538
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Apr 2023 01:30:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6EA9F4092B;
	Mon,  3 Apr 2023 23:30:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6EA9F4092B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680564636;
	bh=na3QO61AI2aj4h1bttLPzWoLzxaSL+kfPv8e1V6Wxuk=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jn3kI5Bv5XsLovlWUJYkJiIzg2yarSw32WIutN21Ps6cWx/QEAeOO7cirjz0+bVpH
	 sNtO3ihRSyDig5XewLeKVMEqnlmUg/XoCcS49+iQZfnLkwOkN+6qZzbPkIREwbD3F3
	 vS4eA3kfVYqpjmGljVY5n7TztkIprsxCn7XE4ZD0+3XfPOCKMbIm3M/6NCzmGcMTGF
	 D57YPyp+4YAD76+nH/sWpbcULylU4J+AM8ZdsuswZQOR8a7wEDerNJZZrgGTcZNfaQ
	 GgqpdhSZ0NK6z5kvEvFQiBTH1Bc6celiObNqEpBHipBvjv0wHfW5XqPXWxgVvR9gCf
	 44zER8dZRHOAg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J_sXW1tihCN9; Mon,  3 Apr 2023 23:30:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C421C4086A;
	Mon,  3 Apr 2023 23:30:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C421C4086A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EF3491BF36A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Apr 2023 23:30:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D2D474086A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Apr 2023 23:30:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D2D474086A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3K0r7hrlCyZs for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Apr 2023 23:30:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 05E344085D
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 05E344085D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Apr 2023 23:30:28 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id DF1CF62B87;
 Mon,  3 Apr 2023 23:30:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DCE88C433D2;
 Mon,  3 Apr 2023 23:30:26 +0000 (UTC)
Date: Mon, 3 Apr 2023 16:30:25 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Shannon Nelson <shannon.nelson@amd.com>
Message-ID: <20230403163025.5f40a87c@kernel.org>
In-Reply-To: <eb945338-915a-64cd-52c5-3d818ba45667@amd.com>
References: <20230329140404.1647925-1-pavan.kumar.linga@intel.com>
 <20230329140404.1647925-2-pavan.kumar.linga@intel.com>
 <49947b6b-a59d-1db1-f405-0ab4e6e3356e@amd.com>
 <20230403152053.53253d7e@kernel.org>
 <eb945338-915a-64cd-52c5-3d818ba45667@amd.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1680564627;
 bh=pZArOfDnQ6kQlIKZx74Cr/CYk/MKaLaNiAeOKGr+SLk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=q0YcpWtMQCZAvQm4e5uID3gEYCsbXeHO6jVnsbkRy5hUC34LT9ei56vE225BKDlOr
 KOPU3/hJa+/lcTlIV+1WNyphm1RoSCpqhiY36ryj+nQbo59CPuk3fopDomqrdOxCrs
 KevviXjPvyVYpnuxRtkRI6RbKeWz7J6/NzEy18MOcphr50OugzpD1VkKsmUwm6CEyE
 lcIxGv84/s4TMd0sf6eNWteyzksxhBmONUojssbT15k/VvyilUIhzcnl8gGC3M/Ice
 cE8KFl85ZpeWMMfPZPDkM2zwpPbJthioNR1gN+VQNoMA+kKa5M7FL0LHbTFolrxHRP
 o/bwvuJACQRPA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=q0YcpWtM
Subject: Re: [Intel-wired-lan] [PATCH net-next 01/15] virtchnl: add virtchnl
 version 2 ops
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
Cc: willemb@google.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Phani Burra <phani.r.burra@intel.com>,
 decot@google.com, shiraz.saleem@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 3 Apr 2023 15:54:33 -0700 Shannon Nelson wrote:
> > The noise about this driver being "a standard" is quite confusing.
> > 
> > Are you considering implementing any of it?
> > 
> > I haven't heard of anyone who is yet, so I thought all this talk of
> > a standard is pretty empty from the technical perspective :(  
> 
> Just that they seem to be pushing it to become a standard through OASIS,
> as they infer by pointing to their OASIS docs in this patch, and I was 
> under the (mistaken?) impression that this would be the One Driver for 
> any device that implemented the HW/FW interface, kinda like virtio.  If 
> that's true, then why would the driver live under the Intel directory?

Fair point. But standards are generally defined by getting interested
parties together and agreeing. Not by a vendor taking a barely deployed
implementation to some unfamiliar forum and claiming it's a standard.

I think it should be 100% clear that to netdev this is just another
(yet another?) Ethernet driver from Intel, nothing more.
Maybe I should say this more strongly, given certain rumors... Here:

Reviewing / merging of this driver into the tree should not be
interpreted as netdev recognizing or supporting idpf as any sort
of a standard. This is our position until the driver is in fact
adopted by other vendors. Attempts to misrepresent our position 
and any claims that merging of this *vendor driver* constitutes 
adoption of the standard will result in removal of the driver.


Is that helpful? There seems to be a lot of FUD around IDPF.
I'd prefer to stay out of it.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
