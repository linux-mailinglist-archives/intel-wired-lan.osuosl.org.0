Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E80D9784844
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Aug 2023 19:15:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 79DE240BF4;
	Tue, 22 Aug 2023 17:15:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 79DE240BF4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692724524;
	bh=4QIPsZ+JJHa0gODl6ZwB6X4DAXyqgP5lJb25XARBHw4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iO5JsNkWv54L32P1/oD+02Ipx8rM8eqDuWzRi2NayRAvZu06bdXnjAAAuJ1JTGLOD
	 5/cmQDVqOK7U9NCoFirOf/ShJig9Ju3qigrb9EyXd2c3VZvsGmm+8HmZWSb0GFhgc+
	 fJEhfgAU1YKYKedZW2x7IMQZOy4JutX28aArZJzxvyh3bBdzMPwp/UbP0tIK3KN6zQ
	 Vb6nGzyWwW03zF0VBr04w7FBEz1UwR4qCxE5MMiWNAjGsSZUy/5rLf0VrMP5SNHJkC
	 d8NKx8g+iEUWgUwiO4rBIeAUmxvxjPltcBPZQwyEt64vtFk7t8REclF5gpUKjXJo/h
	 NxMWKgXF+Xzxw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j2_D9TLQBQB7; Tue, 22 Aug 2023 17:15:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5950D40BEC;
	Tue, 22 Aug 2023 17:15:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5950D40BEC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D42311BF34A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 17:15:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AC1CD611B3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 17:15:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC1CD611B3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ud1QS_lpClct for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Aug 2023 17:15:18 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F2DFF60A5F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Aug 2023 17:15:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F2DFF60A5F
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3BDB5612B9;
 Tue, 22 Aug 2023 17:15:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 260D0C433C7;
 Tue, 22 Aug 2023 17:15:15 +0000 (UTC)
Date: Tue, 22 Aug 2023 20:15:12 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20230822171512.GO6029@unreal>
References: <20230817141746.18726-1-karol.kolacinski@intel.com>
 <20230817141746.18726-2-karol.kolacinski@intel.com>
 <20230819115249.GP22185@unreal>
 <20230822070211.GH2711035@kernel.org>
 <20230822141348.GH6029@unreal>
 <f497dc97-76bb-7526-7d19-d6886a3f3a65@intel.com>
 <20230822154810.GM6029@unreal>
 <8a0e05ed-ae10-ba2f-5859-003cd02fba9c@intel.com>
 <20230822160651.GN6029@unreal> <20230822095301.31aeeaf2@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230822095301.31aeeaf2@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1692724516;
 bh=M6RtlzTT8KLxbjFSf6ftJNn0kyweLFk9Z4vKdjaRKK8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MSETz7GQ3Yx53+vwrR9Fy+BXAD7ssrOkiO5bp1NG350ad8q/hqftNAhPwnFRWhiYc
 ZKCoTYI5AyWM89HdHR2bkWIUqk9Psyp2bYwkhsLBT+DaE+8WEaZgUBRGvi26q2S2xq
 fRnXNZDqWgDB8y9brXVIxAeVW9CFXUapIWtZu5A2cNyErPcPqg87+30rKGxdwWR9Aa
 OcRlHTaNYpKUtCEddoNk128hxGaU5alsUfeoiuBJo6RRr7R0dmn9UKtFZt0IT/kmdc
 kCLBroTQeSZnGbiqei0uTMCp6yL/XNl3KQA1EUPzC6Wn2tH3trXIrO1UUDRq+41guc
 hyXWqbcItxvsA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=MSETz7GQ
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 1/9] ice: use
 ice_pf_src_tmr_owned where available
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jiri Pirko <jiri@nvidia.com>, jesse.brandeburg@intel.com,
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 Simon Horman <horms@kernel.org>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 22, 2023 at 09:53:01AM -0700, Jakub Kicinski wrote:
> On Tue, 22 Aug 2023 19:06:51 +0300 Leon Romanovsky wrote:
> > Can I suggest change in the process?
> > 1. Perform validation before posting
> > 2. Intel will post their patches to the netdev@ ML.
> > 3. Tony will collect reviewed patches from netdev@
> > 4. Tony will send clean PRs (without patches) from time to time to
> > netdev maintainers for acceptance.
> > 
> > It will allow to all of us (Intel, Nvidia e.t.c) to have same submission
> > flow without sacrificing open netdev@ review which will be done only once.
> > 
> > Jakub/Dave, is it possible?
> 
> That sounds worse than what they are doing today. And I can't help
> but think that you're targeting them because I asked you to stop posting
> directly for net-next. Vendetta is not a good guide for process changes.

Are you real? I had this idea even BEFORE you started to be netdev@
maintainer and had put it on paper BEFORE your request.

Should I add you to our internal conversation about it so you will be
able to see dates by yourself?

Thanks
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
