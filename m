Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B42CF82C5DE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jan 2024 20:28:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4120560D4F;
	Fri, 12 Jan 2024 19:28:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4120560D4F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705087683;
	bh=nvCx8/7esfX6t4l0yfeOH4JGQFb1VpHpvLJuqyFwK1A=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kHUXAQGjVTxTodsR84CBT8AhaFzwAgYA0hS4ulw2XKIl3Y795WNMWtioXA1B7xOoj
	 ZdRIGsAYFuptYkWGGyc4cHY8ri7gmd67hNYbHQAsXA/onGdTi5RscbD4RiYtjxXdZk
	 yXLZzCjIKI6Xp0tX/VnJblz8wXSei8EG0usfx1dDmWptgpdL0AMUouIbqCSY37OiEl
	 J2uIyQS69GFlBqurLjdFvbpTgmaNX4mKf6pPPbMFQyGsQdOcjp+jFHfG4HA+1VjBG9
	 BRPYNJ1cpVoM5UHHgg5Ni2vh5nAWl/T2//H3uvWPI/CZrCTgoIznEuN/xZko7USAfl
	 copQooN4e8yCQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3mSLyXbYBeV1; Fri, 12 Jan 2024 19:28:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 262EF60BE0;
	Fri, 12 Jan 2024 19:28:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 262EF60BE0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 790211BF489
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jan 2024 19:27:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 41220403B8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jan 2024 19:27:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 41220403B8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ysv6VP-c7-f0 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Jan 2024 19:27:54 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2411540280
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jan 2024 19:27:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2411540280
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id DD5EC61CE8;
 Fri, 12 Jan 2024 19:27:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E296C433C7;
 Fri, 12 Jan 2024 19:27:51 +0000 (UTC)
Date: Fri, 12 Jan 2024 19:27:48 +0000
From: Simon Horman <horms@kernel.org>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <20240112192748.GB392144@kernel.org>
References: <20240111003927.2362752-1-anthony.l.nguyen@intel.com>
 <20240111131142.GA45291@kernel.org>
 <81e01a6b-2dd4-731a-570c-58944c5fc9b0@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <81e01a6b-2dd4-731a-570c-58944c5fc9b0@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1705087672;
 bh=/htuLTQELgiq2v9t2djukaAwxAo9F9LALpfsK5RHuVo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Jb2Cm4XiRM0rFTwhfu9xiC+nda1zDdFa8R2+umuEDwKAzexXPyeRvw6j12kM0CUyi
 YcRjJDXCsA8C7rHMGAhmL58WK9CkwprJ+x6JbjNP17V7wgFiaADKpuPbFty64Qsfeq
 ocggNifBBhmrOZZxTK56qPHONTAYfdApr6TBnMD8iJH/iGDcEPVzhZJ27txvUoGrUZ
 ElNIzk7JfvdbotQIuACUmkZYFxJMrWD/Xjuyon+wAoLRWPAoFlTXl6Vv+zAy5qeffO
 PuiQnZwTcKhfVwcmvt6NkqCvTUTLOHrUMtd1Zb3Jqv98Yk5o3rgxRWgP7t07X0JRt2
 Glxr6i2QJLcIQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Jb2Cm4Xi
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: Include types.h to some
 headers
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
Cc: ivecera@redhat.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Martin Zaharinov <micron10@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jan 11, 2024 at 09:00:30AM -0800, Tony Nguyen wrote:
> 
> 
> On 1/11/2024 5:11 AM, Simon Horman wrote:
> > On Wed, Jan 10, 2024 at 04:39:25PM -0800, Tony Nguyen wrote:
> > > Commit 56df345917c0 ("i40e: Remove circular header dependencies and fix
> > > headers") redistributed a number of includes from one large header file
> > > to the locations they were needed. In some environments, types.h is not
> > > included and causing compile issues. The driver should not rely on
> > > implicit inclusion from other locations; explicitly include it to these
> > > files.
> > > 
> > > Snippet of issue. Entire log can be seen through the Closes: link.
> > > 
> > > In file included from drivers/net/ethernet/intel/i40e/i40e_diag.h:7,
> > >                   from drivers/net/ethernet/intel/i40e/i40e_diag.c:4:
> > > drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h:33:9: error: unknown type name '__le16'
> > >     33 |         __le16 flags;
> > >        |         ^~~~~~
> > > drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h:34:9: error: unknown type name '__le16'
> > >     34 |         __le16 opcode;
> > >        |         ^~~~~~
> > > ...
> > > drivers/net/ethernet/intel/i40e/i40e_diag.h:22:9: error: unknown type name 'u32'
> > >     22 |         u32 elements;   /* number of elements if array */
> > >        |         ^~~
> > > drivers/net/ethernet/intel/i40e/i40e_diag.h:23:9: error: unknown type name 'u32'
> > >     23 |         u32 stride;     /* bytes between each element */
> > > 
> > > Reported-by: Martin Zaharinov <micron10@gmail.com>
> > > Closes: https://lore.kernel.org/netdev/21BBD62A-F874-4E42-B347-93087EEA8126@gmail.com/
> > > Fixes: 56df345917c0 ("i40e: Remove circular header dependencies and fix headers")
> > > Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> > > Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> > 
> > Hi Tony,
> > 
> > I agree this is a good change to make.
> > But I am curious to know if you were able to reproduce
> > the problem reported at the link above.
> > Or perhaps more to the point, do you have a config that breaks
> > without this patch?
> 
> Hi Simon,
> 
> Unfortunately, I was not able to reproduce the problem. Since it was
> fairly straightforward on what was happening, I made the patch and Martin
> confirmed it resolved his issue.

Thanks, I agree this seems straightforward.

Reviewed-by: Simon Horman <horms@kernel.org>
